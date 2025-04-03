from dataclasses import dataclass
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
# @dataclass
# class Gaussians:
#     means: Float[Tensor, "batch gaussian dim"]
#     covariances: Float[Tensor, "batch gaussian dim dim"]
#     harmonics: Float[Tensor, "batch gaussian 3 d_sh"]
#     opacities: Float[Tensor, "batch gaussian"]

@dataclass
class Gaussians:
    def __init__(self, means: Float[Tensor, "batch gaussian dim"],
                 covariances: Float[Tensor, "batch gaussian dim dim"],
                 harmonics: Float[Tensor, "batch gaussian 3 d_sh"],
                 opacities: Float[Tensor, "batch gaussian"]):
        self.means = means
        self.covariances = covariances
        self.harmonics = harmonics
        self.opacities = opacities
        

    def copy(self) -> "Gaussians":
        # 使用当前对象的参数创建一个新的 Gaussians 实例
        return Gaussians(
            means=self.means.clone(),
            covariances=self.covariances.clone(),
            harmonics=self.harmonics.clone(),
            opacities=self.opacities.clone()
        )
    
    def to_parameter_dict(self) -> Dict[str, Tensor]:
        """
        将存储的协方差矩阵分解回原始参数格式
        返回包含以下键的字典:
        - 'means'     : 原始均值
        - 'quats'     : 标准化后的旋转四元数
        - 'scales'    : 指数化后的缩放因子
        - 'opacities' : sigmoid后的不透明度
        - 'sh0'       : 0阶球谐系数
        - 'shN'       : 高阶球谐系数
        """
        # 分解协方差矩阵到旋转和缩放
        quats, scales = self._cov_to_quat_scale()
        
        # 拆分球谐系数
        sh0 = self.harmonics[0, ..., :1].transpose(1, 2)   # 0阶球谐 (l=0)
        shN = self.harmonics[0, ..., 1:].transpose(1, 2)   # 高阶球谐 (l>=1)
        
        return {
            'means': self.means[0].to(torch.float32),
            'quats': F.normalize(quats, p=2, dim=-1).to(torch.float32),
            'scales': torch.exp(scales).to(torch.float32),
            'opacities': self.opacities[0].to(torch.float32),
            'sh0': sh0.to(torch.float32),
            'shN': shN.to(torch.float32)
        }

    def _cov_to_quat_scale(self) -> tuple[Tensor, Tensor]:
        """将协方差矩阵分解为旋转四元数和缩放因子"""
        # 协方差矩阵分解: cov = R @ diag(S^2) @ R^T
        # 使用奇异值分解(SVD)
        U, S, Vh = torch.linalg.svd(self.covariances[0])
        
        # 确保旋转矩阵是正交且行列式为1的
        rot_mat = U @ Vh  # 正交矩阵
        det = torch.det(rot_mat)
        rot_mat = rot_mat * det[..., None, None]  # 强制行列式为1
        # 将旋转矩阵转换为四元数
        quats = torch.from_numpy(_rotmat_to_quat_numpy(rot_mat.cpu().numpy())).to("cuda:0")
        
        # 缩放因子取奇异值的平方根 (S已排序)
        scales = torch.sqrt(S)
        return quats, scales
    

    
def _rotmat_to_quat_numpy(rot_mat: np.ndarray) -> np.ndarray:
    """SciPy实现 (需转换数据类型)"""
    return Rotation.from_matrix(rot_mat).as_quat()  # 格式为(x,y,z,w)

