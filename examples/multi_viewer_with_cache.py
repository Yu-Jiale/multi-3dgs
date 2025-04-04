import argparse
import math
import time
from typing import Tuple, Dict
import threading
from cachetools import LRUCache, cached
import nerfview
import torch
import viser
from util import load_ply, timer, decompression
import joblib
from gsplat.distributed import cli
from gsplat.rendering import rasterization
from tqdm import tqdm
import asyncio

class MultiFrameRenderer:
    def __init__(self, args):
        # args, device
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
        self.args = args
        self.frame_paths = self.args.ckpt
        # frames
        self.current_frame = 0
        self.fps = 30
        # flag
        self.playing = False
        self.is_autoplaying = False
        # cache
        self.cache_lock = threading.Lock()
        # gui
        self.gui_elements = {}
        self.viewer = None
        # functions
        self.key_frames = self.load_key_frames()
        threading.Thread(target=lambda: asyncio.run(self.async_preload_frames()), daemon=True).start()
        self.cache_hit = 0
    
    """
    Functions for loading and managing frame data:
    
    1. load_key_frames:
       - Loads key frames from the provided key checkpoint paths.
       - Uses joblib to load the data and stores it in a list.
    
    2. load_single_frame:
       - Loads a single frame from the given checkpoint path.
       - Supports decompression for .joblib files.
       - Uses an LRUCache to cache loaded frames for performance.
    
    3. get_current_frame_data:
       - Retrieves the data for the current frame.
       - Ensures thread-safe access to the cached frame data.
       
    4. async_preload_frames:
        - Preloads frames asynchronously for smoother playback.
        - Loads the next second frames into the cache.
        - Ensures thread-safe access to the cache during preloading.
    """
    def load_key_frames(self) -> Dict[str, torch.Tensor]:
        key_frames = []
        for i in tqdm(range(0, len(self.args.key_ckpt)), desc="Loading key frames"):
            key_ckpt = self.args.key_ckpt[i]
            key_frame = joblib.load(key_ckpt)
            key_frames.append(key_frame)
        print("Key frames loaded")
        return key_frames
    
    @cached(cache=LRUCache(maxsize=64), lock=threading.Lock())
    def load_single_frame(self, ckpt_path: str) -> Dict[str, torch.Tensor]:
        if ckpt_path.endswith(".joblib"):
            res = joblib.load(ckpt_path)
            return decompression(self.key_frames[self.current_frame//32], res)
        # if ckpt_path.endswith(".ply"):
        #     return load_ply(ckpt_path)
        # ckpt = torch.load(ckpt_path, map_location=self.device)
        # if isinstance(ckpt, dict):
        #     ckpt = ckpt["splats"]
        #     return {
        #         'means': ckpt["means"],
        #         'quats': F.normalize(ckpt["quats"], p=2, dim=-1),
        #         'scales': torch.exp(ckpt["scales"]),
        #         'opacities': torch.sigmoid(ckpt["opacities"]),
        #         'sh0': ckpt["sh0"],
        #         'shN': ckpt["shN"]
        #     }
        # return ckpt.to_parameter_dict()

    def get_current_frame_data(self) -> Dict[str, torch.Tensor]:
        current_path = self.frame_paths[self.current_frame]
        
        with self.cache_lock:
            frame_data = self.load_single_frame(current_path)
        if (self, current_path) in self.load_single_frame.cache:
            self.cache_hit += 1
        print(f"Cache hit: {self.cache_hit}, Current frame: {self.current_frame}")
        return {k: v.clone() for k, v in frame_data.items()}
    
    async def async_preload_frames(self):
        current = self.current_frame
        print(f"Preloading frames from {current} to {current + self.fps}")
        tasks = []
        for i in range(1, self.fps + 1):
            frame_idx = current + i
            if frame_idx >= len(self.frame_paths):
                break
            next_path = self.frame_paths[frame_idx]
            tasks.append(self.async_load_frame(next_path))
        await asyncio.gather(*tasks)
        print(f"Preloaded frames from {current} to {current + self.fps}")

    async def async_load_frame(self, path):
        frame_data = await asyncio.to_thread(self.load_single_frame, path)
        with self.cache_lock:
            if path not in self.load_single_frame.cache:
                self.load_single_frame.cache[path] = frame_data
    
    
    """
    Functions for GUI creation and playback control:

    1. create_gui:
    - Creates the GUI elements for controlling playback.
    - Includes a time slider, play/pause button, and FPS slider.
    - Binds the GUI elements to their respective event handlers.

    2. on_time_slider_change:
    - Handles updates to the time slider.
    - Triggers asynchronous preloading of frames when necessary.
    - Updates the current frame and stops playback if autoplay is not active.

    3. toggle_play:
    - Toggles the playback state between playing and paused.
    - Resets to the first frame if playback reaches the end.
    - Starts the playback animation in a separate thread.

    4. play_animation:
    - Handles the playback animation by updating frames at the specified FPS.
    - Updates the time slider and triggers rendering for each frame.
    - Stops playback when the last frame is reached.
    """
    def create_gui(self, server: viser.ViserServer):
        with server.gui.add_folder("Controls", visible=True) as controls_folder:
            self.gui_elements['time_slider'] = server.gui.add_slider(
                "Time Line", min=0, max=len(self.frame_paths)-1, step=1, initial_value=0
            )
            self.gui_elements['play_button'] = server.gui.add_button("▶️ /  II")
            self.gui_elements['fps_slider'] = server.gui.add_slider(
                "FPS", min=1, max=60, step=1, initial_value=self.fps
            )
        
        self.gui_elements['time_slider'].on_update(lambda _: self.on_time_slider_change())
        self.gui_elements['play_button'].on_click(lambda _: self.toggle_play())
        self.gui_elements['fps_slider'].on_update(lambda _: setattr(self, 'fps', self.gui_elements['fps_slider'].value))
    
    def on_time_slider_change(self):
        if self.current_frame % (self.fps//2 + 1) == 0:
            threading.Thread(target=self.async_preload_frames, daemon=True).start()
        if self.is_autoplaying:
            return
        self.current_frame = int(self.gui_elements['time_slider'].value)
        self.playing = False
        self.viewer.rerender(None)
    
    def toggle_play(self):
        self.playing = not self.playing
        if self.current_frame >= len(self.frame_paths)-1:
            self.current_frame = 0
            self.gui_elements['time_slider'].value = 0
            self.viewer.rerender(None)
            self.playing = True
        if self.playing:
            threading.Thread(target=self.play_animation, daemon=True).start()
    
    def play_animation(self):
        self.is_autoplaying = True
        last_time = time.time()
        while self.playing:
            target_delay = 1 / self.fps
            current_time = time.time()
            
            target_time = last_time + target_delay
            if current_time < target_time:
                time.sleep(target_time - current_time)
            last_time = target_time
            print(f"Playing frame {self.current_frame}")
            if self.current_frame < len(self.frame_paths)-1:
                self.current_frame += 1
                self.gui_elements['time_slider'].value = self.current_frame
                self.viewer.rerender(None)
            else:
                self.playing = False
            
        self.is_autoplaying = False


def main(local_rank: int, world_rank, world_size: int, args):
    renderer = MultiFrameRenderer(args)
    server = viser.ViserServer(port=args.port, verbose=False)
    renderer.create_gui(server)
    
    @timer
    @torch.no_grad()
    def viewer_render_fn(camera_state: nerfview.CameraState, img_wh: Tuple[int, int]):
        frame_data = renderer.get_current_frame_data()
        # print(f"Rendering frame {renderer.current_frame}")
        width, height = img_wh
        c2w = torch.from_numpy(camera_state.c2w).float().to(renderer.device)
        K = torch.from_numpy(camera_state.get_K(img_wh)).float().to(renderer.device)
        viewmat = c2w.inverse()
        
        render_colors, _, _ = rasterization(
            frame_data['means'],
            frame_data['quats'],
            frame_data['scales'],
            frame_data['opacities'],
            torch.cat([frame_data['sh0'], frame_data['shN']], dim=-2),
            viewmat[None],
            K[None],
            width,
            height,
            sh_degree=int(math.sqrt(frame_data['sh0'].shape[-2]) - 1),
            render_mode="RGB",
            radius_clip=3,
        )
        return render_colors[0, ..., :3].cpu().numpy()
    
    viewer = nerfview.Viewer(
        server=server,
        render_fn=viewer_render_fn,
        mode="rendering",
    )
    renderer.viewer = viewer
    
    while True:
        time.sleep(1)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ckpt", type=str, nargs="+", required=True, 
                       help="List of .joblib files for each residual frame")
    parser.add_argument("--key_ckpt", type=str, nargs="+", required=True, 
                       help="List of .joblib files for each key frame")
    parser.add_argument("--port", type=int, default=8080)
    args = parser.parse_args()
    
    cli(main, args, verbose=True)