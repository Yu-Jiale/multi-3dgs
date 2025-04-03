import torch.nn.functional as F
from jaxtyping import Float
from torch import Tensor
import torch
from typing import Dict
import ipdb
from scipy.spatial.transform import Rotation
import numpy as np
from plyfile import PlyData
from torch import nn
import joblib


def load_ply(path):
    plydata = PlyData.read(path)

    xyz = np.stack((np.asarray(plydata.elements[0]["x"]),
                    np.asarray(plydata.elements[0]["y"]),
                    np.asarray(plydata.elements[0]["z"])),  axis=1)
    opacities = np.asarray(plydata.elements[0]["opacity"])[..., np.newaxis]

    features_dc = np.zeros((xyz.shape[0], 3, 1))
    features_dc[:, 0, 0] = np.asarray(plydata.elements[0]["f_dc_0"])
    features_dc[:, 1, 0] = np.asarray(plydata.elements[0]["f_dc_1"])
    features_dc[:, 2, 0] = np.asarray(plydata.elements[0]["f_dc_2"])

    extra_f_names = [p.name for p in plydata.elements[0].properties if p.name.startswith("f_rest_")]
    extra_f_names = sorted(extra_f_names, key = lambda x: int(x.split('_')[-1]))
    features_extra = np.zeros((xyz.shape[0], len(extra_f_names)))
    for idx, attr_name in enumerate(extra_f_names):
        features_extra[:, idx] = np.asarray(plydata.elements[0][attr_name])
    # Reshape (P,F*SH_coeffs) to (P, F, SH_coeffs except DC)
    features_extra = features_extra.reshape((features_extra.shape[0], 3, -1))

    scale_names = [p.name for p in plydata.elements[0].properties if p.name.startswith("scale_")]
    scale_names = sorted(scale_names, key = lambda x: int(x.split('_')[-1]))
    scales = np.zeros((xyz.shape[0], len(scale_names)))
    for idx, attr_name in enumerate(scale_names):
        scales[:, idx] = np.asarray(plydata.elements[0][attr_name])

    rot_names = [p.name for p in plydata.elements[0].properties if p.name.startswith("rot")]
    rot_names = sorted(rot_names, key = lambda x: int(x.split('_')[-1]))
    rots = np.zeros((xyz.shape[0], len(rot_names)))
    for idx, attr_name in enumerate(rot_names):
        rots[:, idx] = np.asarray(plydata.elements[0][attr_name])

    means = nn.Parameter(torch.tensor(xyz, dtype=torch.float, device="cuda"))
    sh0 = nn.Parameter(torch.tensor(features_dc, dtype=torch.float, device="cuda").transpose(1, 2).contiguous())
    shN = nn.Parameter(torch.tensor(features_extra, dtype=torch.float, device="cuda").transpose(1, 2).contiguous())
    opacities = nn.Parameter(torch.sigmoid(torch.tensor(opacities, dtype=torch.float, device="cuda").view(-1)))
    scales = nn.Parameter(torch.exp(torch.tensor(scales, dtype=torch.float, device="cuda")))
    quats = nn.Parameter(torch.tensor(rots, dtype=torch.float, device="cuda"))
    return {
            'means': means,
            'quats': quats,
            'scales': scales,
            'opacities': opacities,
            'sh0': sh0,
            'shN': shN
        }
    
import time
from functools import wraps
from typing import Callable, Optional, Union

def timer(
    func: Optional[Callable] = None, 
    *,
    unit: str = 'auto',
    output: Union[str, Callable, None] = 'print'
) -> Callable:
    """函数执行时间测量装饰器
    
    参数:
        func (Callable): 被装饰的函数 (由装饰器语法自动处理)
        unit (str): 时间单位，可选 ['ns', 'μs', 'ms', 's', 'm', 'auto']，默认自动
        output (Union[str, Callable, None]): 输出方式，支持以下类型:
            - 'print' : 打印到标准输出 (默认)
            - None    : 不输出，仅返回耗时
            - Callable: 自定义输出函数，接受格式化的字符串参数
            - 文件对象: 写入到文件
    
    返回:
        Callable: 装饰后的函数，返回原始函数结果的同时输出执行时间
    """
    # 处理装饰器参数
    if func is None:
        return lambda f: timer(f, unit=unit, output=output)
    
    # 单位转换参数 (单位: 秒)
    unit_settings = {
        'ns': 1e-9,
        'μs': 1e-6,
        'ms': 0.001,
        's': 1,
        'm': 60
    }

    @wraps(func)
    def wrapper(*args, **kwargs) -> tuple:
        # 执行函数并计时
        start_time = time.perf_counter()
        result = None
        exception = None
        try:
            result = func(*args,**kwargs)
        except Exception as e:
            exception = e
        finally:
            elapsed = time.perf_counter() - start_time

            # 处理时间单位
            if unit == 'auto':
                if elapsed < 1e-6:
                    u, factor = 'ns', 1e9
                elif elapsed < 1e-3:
                    u, factor = 'μs', 1e6
                elif elapsed < 1:
                    u, factor = 'ms', 1e3
                elif elapsed < 60:
                    u, factor = 's', 1
                else:
                    u, factor = 'm', 1/60
                elapsed_time = elapsed * factor
            else:
                u = unit.lower()
                if u not in unit_settings:
                    raise ValueError(f"无效单位: {unit}，有效单位: {list(unit_settings.keys())}")
                factor = 1 / unit_settings[u]
                elapsed_time = elapsed * factor

            # 生成报告信息
            report = f"函数 {func.__name__} 执行耗时: {elapsed_time:.3f}{u}"
            # 处理输出
            if output == 'print':
                print(report)
            elif callable(output):
                output(report)
            elif hasattr(output, 'write'):
                output.write(report + '\n')

        if exception is not None:
            raise exception
        return result

    return wrapper

def decompression(ref, res):
    for key in res.keys():
        int8_tensor = res[key]
        dequantized = int8_tensor.dequantize()
        res[key] = dequantized + ref[key]
    return res
        
