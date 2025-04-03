from util import load_ply
import ipdb
from pympler import asizeof
import torch
import joblib
import time
from tqdm import tqdm


def compress_means(ref_means, cur_means):
    
    means_residual = cur_means - ref_means
    scale = means_residual.abs().max().item() / 127
    zero_point = 0
    # print(f"自动计算参数: scale={scale:.16f}, zero_point={zero_point}")
    int8_tensor = torch.quantize_per_tensor(
        means_residual, scale, zero_point, torch.qint8
    )
    dequantized = int8_tensor.dequantize()
    error = torch.mean(torch.abs(means_residual - dequantized))
    # print(f"反量化误差: {error:.16f}")
    return int8_tensor


# for i in tqdm(range(0,101)):
#     ref_frame = load_ply("data/gs/gaussian_vals_{:08d}.ply".format(i//32))
#     cur_frame = load_ply("data/gs/gaussian_vals_{:08d}.ply".format(i))
#     res_dict = {}
#     for key in ref_frame.keys():
#         # print(f"key: {key}")
#         res = compress_means(ref_frame[key], cur_frame[key])
#         res_dict.update({key: res})

#     joblib.dump(res_dict, f"data/temp/res{i}.joblib")

for i in tqdm(range(0,101,32)):
    key_frame = load_ply("data/gs/gaussian_vals_{:08d}.ply".format(i))
    joblib.dump(key_frame, f"data/temp/key_frame{i}.joblib")
