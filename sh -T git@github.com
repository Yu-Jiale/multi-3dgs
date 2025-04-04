[33mcommit 347d4e397239d84739c384aa95eba49c292c8f89[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: Yu-Jiale <1293007148@qq.com>
Date:   Thu Apr 3 21:17:52 2025 +0800

    multiframe renderer v1

[33mcommit e86f3926e87da09c90f8c438f4b522ab87f68258[m[33m ([m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Mar 26 13:06:18 2025 -0700

    fix tight opa (#606)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 6db4e3dad211e92ff60bca69c9c11809a9e7f303[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Mar 26 02:17:45 2025 -0700

    Disable Auto Precompiled Header. Support Enabling it Manually. (#603)
    
    * fix setup.py
    
    * disable pch by default
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit ae729d3eede94927eb44ff79577efdd75dd50428[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Mar 26 02:09:18 2025 -0700

    fix setup.py (#602)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit c84d0e5caa76fe82e7cf7ce3b99da9ccec9145db[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Mar 25 12:16:56 2025 -0700

    fix ALPHA_THRESHOLD (#598)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 9e8baa79a4201c0905bd29a4c39a6014568ad671[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Mar 25 11:27:44 2025 -0700

    Optionally leverage opacity to tight the radii bounding box  (#597)
    
    * define ALPHA_THRESHOLD
    
    * test pass
    
    * format
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit d011d043a82a51dc3254a4cff7f7ae5a97a5ec1b[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Mar 25 10:13:23 2025 -0700

    Rect cull (#596)
    
    * start running benchmark
    
    * minor
    
    * benchmark only bonsai
    
    * update to use cov2d
    
    * fix
    
    * cleanup
    
    * fix 2dgs
    
    * revert benchmark scripts
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 7573e95b9b59eabad4f4af99783abdae0c705c83[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Mar 24 07:45:42 2025 -0700

    fix save ply if else (#594)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 2043ddcfc27e979b8ba35050eb3557f75524257d[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Mar 18 21:29:16 2025 +0800

    Update _backend.py (#589)

[33mcommit cbe932b7a11b7b8db8814eea5d9921d50b0ef0b8[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Mar 18 18:55:06 2025 +0800

    remove env yml (#588)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 45b0d56da348af87b89bdef5140ceeeff6b9ac7e[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Mar 18 18:49:43 2025 +0800

    move env yml to examples/ (#587)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 2139f5bc70197ca59200207df62d665c3cd5fdf6[m
Author: janusch <33876434+MrNeRF@users.noreply.github.com>
Date:   Tue Mar 18 11:45:54 2025 +0100

    Fixes build issues but only works with pytorch >= 2.2 (#585)
    
    * Fixes build issues but only works with pytorch > 2.2
    
    * not sure how that happened
    
    * minor
    
    * only enable precompiled header with torch>=2.2
    
    * format
    
    ---------
    
    Co-authored-by: Lei Lei <18294546+Crescent-Saturn@users.noreply.github.com>
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 22717071ffe91cfacedf11d0094d26ed3a5e6e85[m
Author: Lei Lei <18294546+Crescent-Saturn@users.noreply.github.com>
Date:   Sun Mar 16 15:48:46 2025 -0400

    fix: wrong torch cat dim when saving colors+depths (#508)
    
    A minor type in example/simple_trainer_2dgs.py

[33mcommit 4fd5013e815069f08e0953b77725e3d46749061c[m
Author: MotivaCG <victor@motivacg.com>
Date:   Sun Mar 16 20:46:43 2025 +0100

    Add disable_video flag for simple_trainer (#557)

[33mcommit 361e619da4ee55e7d220b81a459f0840cce77324[m
Author: Jonathan Schmidt <jonathan.schmidt@tum.de>
Date:   Sun Mar 16 20:34:25 2025 +0100

    Fix channel padding for distortion and median depth computation (#559)
    
    * Fix channel padding for distortion and median depth computation
    
    * Update _wrapper.py
    
    ---------
    
    Co-authored-by: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
    Co-authored-by: Ruilong Li(李瑞龙) <ruilongli@berkeley.edu>

[33mcommit 6ea555a4b480209db6f72e16c55b59e07327c6b4[m
Author: Frank_Liu <lxteng2016@126.com>
Date:   Sun Mar 16 15:29:17 2025 -0400

    fix the offset of K in projection packed fwd 2dgs kernel (#569)
    
    * fix the offset of K in projection packed fwd 2dgs kernel
    
    * fix
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 01e9080e6ad95a28bff068dffd01fd49cbbbd9e5[m
Author: Max Raenchuk <raenchuk.max@gmail.com>
Date:   Sun Mar 16 22:24:19 2025 +0300

    Fix incorrect comments for view matrices (#579)
    
    * Fix incorrect comments for view matrices
    
    * fix
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 6278eb6247010c5015dc7bf102405a1958a27da7[m
Author: Kiki R <kkrzkrk@gmail.com>
Date:   Mon Mar 17 02:12:36 2025 +0700

    Fix minor typo in rasterization.rst (#580)
    
    The jacobian for the perspective projection (with principal point int the center) $u=f_x x/z$ and $v=f_y y/z$ is
    $$J = \begin{bmatrix}
    \frac{\partial u}{\partial x} & \frac{\partial u}{\partial y} & \frac{\partial u}{\partial z} \\[1mm]
    \frac{\partial v}{\partial x} & \frac{\partial v}{\partial y} & \frac{\partial v}{\partial z}
    \end{bmatrix}=\begin{bmatrix}
        f_{x}/z & 0 & -f_{x} x/z^{2} \\
        0 & f_{y}/z & -f_{y} y/z^{2} \\
        0 & 0 & 0
    \end{bmatrix}$$

[33mcommit b3be2aaf0ba38280e0a40313213cefb8aa4a01be[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Mar 17 02:50:05 2025 +0800

    refactor CUDA code for faster compilation and easier extensibility (#583)
    
    * use pch and setup timer
    
    * cleanup compiling ~170sec
    
    * UT is in
    
    * toy case for compiling
    
    * cleanup proj_fused and proj_naive
    
    * proj_fused_packed is in
    
    * sh is in
    
    * selective_adam
    
    * isect_tiles
    
    * refact: null example
    
    * fix null kernel
    
    * refact: projection_3dgs_fwd
    
    * refact: projection_3dgs_bwd
    
    * projection_3dgs_fused_fwd
    
    * projection_3dgs_fused_bwd
    
    * fix: cg
    
    * minor update to compensations
    
    * projection_3dgs_packed_fwd
    
    * minor fix
    
    * projection_3dgs_packed_bwd
    
    * 3DGS -> ewa_3d
    
    * ewa_3d -> ewa_3dgs
    
    * spherical_harmonics
    
    * use AT_DISPATCH_FLOATING_TYPES
    
    * skip kernel launch with zero elements
    
    * minor fix
    
    * fix sh parallel
    
    * selective adam
    
    * rename: selective adam -> adam
    
    * minor fix
    
    * isect funcs
    
    * Cameras
    
    * quat_scale_to_covar_preci
    
    * remove 'kernel(s)' in file name
    
    * rasterize_to_pixels_3dgs
    
    * relocation
    
    * fix bugs. run test_basic. WIP _rasterize_to_pixels
    
    * fix bug. basic tests all pass
    
    * double buffer: copy_ -> set_
    
    * projection_2dgs_fused
    
    * projection_2dgs_{fused, packed}
    
    * rasterize_to_pixels_2dgs
    
    * 2DGS is in. test all passed.
    
    * cleanup
    
    * fix
    
    * cleanup
    
    * formatter
    
    * formatter script
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 640a4fe546f5cadd8835acf259fce9a672ffecf4[m
Merge: 84aaccb bd64a47
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Mar 11 03:35:22 2025 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit bd64a47414e182dc105c1a2fdb6691068518d060[m
Author: FantasticOven2 <91100968+FantasticOven2@users.noreply.github.com>
Date:   Mon Feb 24 10:09:59 2025 -0800

    minor fix to 2dgs corner case (#543)
    
    * minor fix to 2dgs corner case
    
    * reformat
    
    * torch.zeros

[33mcommit ddf88c6ac3e1890146f3dc0bcfae4b7d36b0e34a[m
Author: MotivaCG <victor@motivacg.com>
Date:   Thu Feb 13 12:25:41 2025 +0100

    Update nerfview version (#558)

[33mcommit 0880d2b471e6650d458aa09fe2b2834531f6e93b[m
Author: Jeffrey Hu <hujh14@gmail.com>
Date:   Wed Jan 15 08:36:31 2025 -0800

    Avoid jpeg compression artifacts when training Mip-NeRF360. (#507)
    
    * resize to png
    
    * helper function
    
    * print statement

[33mcommit 1a1e0cc9c80dbfd33f2f62353660a545796bc67f[m
Author: janusch <33876434+MrNeRF@users.noreply.github.com>
Date:   Fri Jan 10 20:43:40 2025 +0100

    Implement gaussian splatting ply file saving (#427)
    
    * implement ply saving
    
    * fix colors
    
    * Add own flag for saveing ply files
    
    * fix appearance embeddings
    
    * remove open3d
    
    * align order with INRIA ply
    
    * filter Nan and infs
    
    * add flag to save ply and move save_ply to utils
    
    ---------
    
    Co-authored-by: maturk <matiasturkulainen@gmail.com>

[33mcommit 2df0a95f85bc415d73e8e5e5992031150ea7e8a6[m
Author: Pablo Martin <pablo@develagora.com>
Date:   Mon Dec 30 10:06:56 2024 +0100

    reduce ram usage using fisheye as camera model (#521)

[33mcommit f125497c7710a4b53e77608c3790438296cc693a[m
Author: Raveeroj B. <raveeroj.b@rjbl.dev>
Date:   Mon Dec 30 15:55:43 2024 +0700

    Fix evaluation scripts (#510)

[33mcommit ff2da2e2a5dac795094edf8d5f867ba1d3c6931a[m
Author: Desmond Liu <lzy7155@gmail.com>
Date:   Fri Dec 13 19:51:50 2024 +0100

    Fix proj.cuh include guard (#504)
    
    * fix include guard in proj.cuh
    
    * fix include guard in proj.cuh

[33mcommit 795161945b37747709d4da965b226a19fdf87d3f[m
Author: Jenia Golbstein <jenia@novellusdx.com>
Date:   Sat Nov 23 22:27:10 2024 +0300

    use mask in 2dgs (#497)

[33mcommit 0f42139ad17dd9b61a904f86ff701cb93ff2edf9[m
Author: Jenia Golbstein <jenia@novellusdx.com>
Date:   Sat Nov 23 22:26:42 2024 +0300

    bugfix in rasterization2d_inria (#499)

[33mcommit 84aaccb6c301de9e74be3b66f63c2e69ee50058e[m
Merge: 3252f6e dd66cbd
Author: Ruilong Li <397653553@qq.com>
Date:   Wed Nov 20 21:05:16 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit dd66cbd597f376f103e90de8b6265087b482eac1[m
Author: Wen Jiang <wenjiangpr@gmail.com>
Date:   Fri Nov 8 19:51:32 2024 -0500

    Fix inconsistency in the comments (#441)

[33mcommit e6d53183786d866af39c6baedb06db2ac0144517[m
Author: Junchen Liu <liujunchen0214@gmail.com>
Date:   Fri Nov 8 16:49:09 2024 -0800

    Reorganize file structure (#480)
    
    * minor fix
    
    * create include folder
    
    * seperate header files

[33mcommit 606dff17efb156d6e5b1a9c43120f46616403ce8[m
Author: Georg Hess <hessgeorg9@gmail.com>
Date:   Sat Nov 9 01:47:07 2024 +0100

    remove unused code (#482)

[33mcommit 36ef2dd40512e335215f8ebb8da86c162bb160cf[m
Author: Nikhil Mohan <47728081+nikmo33@users.noreply.github.com>
Date:   Thu Nov 7 09:01:22 2024 +0000

    add-support-for-non-trainable-params (#456)
    
    * cleanup
    
    * comments

[33mcommit 3252f6ef2b9a5c281f8e9e7d73c723f66ca7fb7f[m
Merge: ef9c9b5 ec3e715
Author: Ruilong Li <397653553@qq.com>
Date:   Sat Oct 19 03:20:39 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit ec3e715f5733df90d804843c7246e725582df10c[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Oct 16 01:46:06 2024 -0400

    Fix PyPI upload missing whl file (#454)

[33mcommit ef9c9b54fc8cb89415bf13fe9268c0a7157f6f47[m
Author: Ruilong Li <397653553@qq.com>
Date:   Wed Oct 16 05:44:47 2024 +0000

    fix for pypi upload

[33mcommit d4020bcc869b9390ccb3f35906056640e7cf208a[m
Author: Rahul Goel <54021162+rahul-goel@users.noreply.github.com>
Date:   Wed Oct 2 11:03:21 2024 +0200

    Selective Adam (#432)
    
    * gaussian sparse adam
    
    * update
    
    * merge conflict fix
    
    * masking for packed
    
    * separete directory for optimizers
    
    * add docstring
    
    * t3dgs
    
    * move N inside step

[33mcommit e19da379f24a34dd63944da58b8407c9305740ef[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Oct 1 14:52:42 2024 -0700

    Update __init__.py

[33mcommit 0a200cdb8293a035b804b87e4ae6987cb3b4222b[m
Author: Koki Hokao <86301305+khokao@users.noreply.github.com>
Date:   Mon Sep 30 18:40:07 2024 +0900

    Fix 2DGS for Correct Normal and Median Depth Calculation (#430)
    
    * Fix: Add missing camera offsets for render outputs in 2DGS kernel
    
    * Fix: Correct render_normals transformation
    
    * black formatting

[33mcommit 22540f7fa332f5ef919a1c89bc33fdba28c95959[m
Author: Rahul Goel <54021162+rahul-goel@users.noreply.github.com>
Date:   Mon Sep 30 11:00:35 2024 +0200

    densify after optimizer step. fixes #426 (#431)

[33mcommit bbc9e98fa9add8b355b91b69096ec3b1271a9f46[m
Author: DylanWaken <109344556+DylanWaken@users.noreply.github.com>
Date:   Sun Sep 29 20:48:34 2024 -0700

    A set of comments and annotations to 2DGS CUDA kernels (#429)
    
    * annotations for cuda kernels
    
    * remove questions

[33mcommit 05829ef9ce4780a82e75314950f567be7ef857ad[m
Author: akanazawa <akanazawa@users.noreply.github.com>
Date:   Fri Sep 27 13:21:37 2024 -0700

    Update README.md
    
    update on the white pper

[33mcommit ee6b6df422b0717305dd69a99063d44f45051b80[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 27 00:38:53 2024 -0700

    Update README.md

[33mcommit e4c751f484e41e0d512f91dcb79f9cc877f7d297[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 27 00:37:27 2024 -0700

    Update README.md

[33mcommit 6022cf45a19ee307803aaf1f19d407befad2a033[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 27 00:07:45 2024 -0700

    Update README.md

[33mcommit 4d3a3b69db4de0326f983ccf7b7b255271a17b01[m[33m ([m[1;33mtag: v1.4.0[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Sep 26 22:29:58 2024 -0700

    Workflow fix (#424)
    
    * fix workflow
    
    * fix
    
    * fix
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit b6b43e49181e05b8f1ff9c39c0c833fc5351eac5[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Sep 26 20:56:10 2024 -0700

    Workflow fix (#423)
    
    * fix workflow
    
    * fix
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit a88b347727f9a65f49a227417ca2bedf4ae3ad95[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Sep 26 20:53:22 2024 -0700

    fix workflow (#422)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 9c700351557e8b5364f64d4a047cd6517334b243[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Sep 26 19:24:51 2024 -0700

    1.4.0 (#421)

[33mcommit cf4c1a02fadeb7c786461d42803626f6bfb9bb60[m
Author: Martin de La Gorce <martin.delagorce@gmail.com>
Date:   Fri Sep 27 03:19:11 2024 +0100

    Publish precompiled wheels in Github release and add wheel index (#365)
    
    * publish precompiled wheels
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * test on linux
    
    * Update building.yml
    
    * Update publish.yml
    
    * try to fix
    
    * trying TORCH_CUDA_ARCH_LIST=7.5
    
    * try to fix
    
    * try fixing
    
    * move export TORCH_CUDA_ARCH_LIST=8.2
    
    * try fix
    
    * using export TORCH_CUDA_ARCH_LIST="8.0;8.6"
    
    * Update publish.yml
    
    * using TORCH_CUDA_ARCH_LIST="8.0"
    
    * TORCH_CUDA_ARCH_LIST="7.5"
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * TORCH_CUDA_ARCH_LIST="6.2;7.2;7.5;8.7;8.9;9.0"
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update building.yml
    
    * TORCH_CUDA_ARCH_LIST="6.2"
    
    * export TORCH_CUDA_ARCH_LIST="7.2;7.5"
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update building.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update building.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * trying to set TORCH_CUDA_ARCH_LIST in the setup.py file
    
    * Update setup.py
    
    * test
    
    * simplify
    
    * use ORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;9.0" with cu118
    
    * trying wheel build with cuda 11.7
    
    * trying TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;9.0" with cuda 11.7
    
    * trying export TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;9.0" with cuda 11.6
    
    * trying export TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;9.0" with cuda 11.5
    
    * trying export TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;9.0" with cuda 11.3
    
    * test TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6" with cuda 11.3
    
    * testing TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6" with cuda 11.5
    
    * testing TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6" with cuda 11.6
    
    * testing TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6" with cuda 11.3
    
    * testing TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6" with cuda 11.7
    
    * trying python 3.9 and 3.11
    
    * Update publish.yml
    
    * Update publish.yml
    
    * trying python 3.8
    
    * trying python 3.7
    
    * fix python3.7
    
    * test python 3.11
    
    * Update publish.yml
    
    * Update publish.yml
    
    * testing python 3.7
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * test cu113
    
    * test cu115
    
    * test cu116
    
    * test cu117
    
    * test cu118
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * create 2 pipelines
    
    * change pipeline names
    
    * Update publish_source_and_no_cuda_wheel.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_source_and_no_cuda_wheel.yml
    
    * trying to upload in github release
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * test BUILD_NO_CUDA=1
    
    * test BUILD_NO_CUDA=1
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * trying to uploade the wheels to release
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * Update publish_precompiled_wheels.yml
    
    * back to single file
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Create wheels_index.html
    
    * Update wheels_index.html
    
    * deal with +
    
    * Update publish.yml
    
    * Update publish.yml
    
    * Update publish.yml
    
    * adding links to packages
    
    * document installation using a precompiled wheel
    
    * Update packages.html
    
    * Create wheels_index.html
    
    * Update wheels_index.html
    
    * trying using %2B in urls
    
    * moving index
    
    * trying to make it work with index url
    
    * add ptXcuX subpages
    
    * Update INSTALL_WIN.md
    
    * trying to reuse the build workflow
    
    * try publish on manual release
    
    * Update publish.yml
    
    * Update publish.yml
    
    * trying reusable workflow
    
    * trying to make it work
    
    * try reusable workflow
    
    * Update publish.yml
    
    * Update publish.yml
    
    * testing with few wheels
    
    * Update building.yml
    
    * Update building.yml
    
    * Update building.yml
    
    * Update publish.yml
    
    * Update building.yml
    
    * add script and github steps to generate the simple index pages
    
    * remove the html pages from the PR
    
    * remove wheels for python 3.8 and 3.9 from the releases
    
    * ruff format
    
    * Update publish.yml
    
    * fixing typos
    
    * Update generate_simple_index_pages.py
    
    * wheels -> whl
    
    * test
    
    * test
    
    * fix
    
    * some updates
    
    * fix
    
    * ninja-build
    
    * revert
    
    * fix
    
    * artifact v3
    
    * all version with python3.10
    
    * wheels -> whl
    
    ---------
    
    Co-authored-by: martin de la gorce <madelago@microsoft.com>
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 721382b89f4a38bbbe2d91819b9610302bf02243[m
Author: Jeffrey Hu <hujh14@gmail.com>
Date:   Thu Sep 26 17:41:43 2024 -0500

    Implement Fisheye-GS. (#398)
    
    * baseline
    
    * fisheye forward works
    
    * torch implementation of fisheye projection
    
    * test basic
    
    * close 0.3%
    
    * 19 mismatched
    
    * pass tests
    
    * comment out
    
    * crashing
    
    * remove dead code
    
    * reduce diff
    
    * video
    
    * distortion not handled correctly
    
    * test remap
    
    * remove hardcoded roi
    
    * cleanup tests
    
    * fix bug
    
    * bug
    
    * edit imsize_dict
    
    * format c++
    
    * T
    
    * use mask
    
    * remove test_remap
    
    * mask roi
    
    * scripts
    
    * reduce diff
    
    * minor
    
    * weird ortho bug
    
    * vectorize
    
    * ellipse
    
    * unify python side camera_model
    
    * fisheye packed mode
    
    * cuda enum
    
    * use c++ enum
    
    * download dataset
    
    * refactor dataset download to download zipnerf
    
    * use lists
    
    * use bilateral grid as default for zipnerf

[33mcommit b627cd4046069a8947db29384dd9b962351f400e[m
Author: janusch <33876434+MrNeRF@users.noreply.github.com>
Date:   Wed Sep 25 23:03:18 2024 +0200

    Make commands easier in README (#420)

[33mcommit cc2fb4c5690fe9e70a086214001fafa0c9f06a4c[m
Author: Christian Richardt <christian@richardt.name>
Date:   Wed Sep 18 19:18:42 2024 +0200

    Update CITATION.bib (#410)
    
    * Update CITATION.bib
    
    Ensure correct capitalisation of "Gaussian".
    
    * Update README.md

[33mcommit 5240ff5fb0694914c88553847d01fb64d997b681[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Sep 17 08:10:15 2024 -1000

    Update rendering.py (#407)
    
    Fix #406

[33mcommit d7c73374f151816079eefcbde44b5a1e59a5da84[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Sep 16 10:30:12 2024 -0700

    Update README.md

[33mcommit 092789fedc86c7af5b18c35ca7f2fce3cd845e87[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Sep 16 07:06:49 2024 -1000

    Bump fused-ssim commit (#405)
    
    Fix #399

[33mcommit 6bcc2e91fd481da386471d6631a1de6e1a9ffc13[m
Author: Jeffrey Hu <hujh14@gmail.com>
Date:   Fri Sep 13 11:44:36 2024 -0700

    Implement Bilateral Guided Gaussian Splatting. (#291)
    
    * move exposure optimization onto main
    
    * benchmark script
    
    * traj utils
    
    * matmul
    
    * missing __init__
    
    * minor
    
    * util
    
    * remove n_max
    
    * n_max bugs
    
    * benchmark script
    
    * req
    
    * minor
    
    * ellipse
    
    * cleanup
    
    * uncomment
    
    * canvas list
    
    * simple_trainer
    
    * remove benchmark_mcmc
    
    * minor
    
    * refactor
    
    * change meshgrid
    
    * lr
    
    * revert hyperparameters
    
    * use warmup
    
    * move lib_bilagrid and remove custom betas

[33mcommit da0a201b8eafacb127fd8f09c56f2989b453a9ab[m
Author: maturk <30566358+maturk@users.noreply.github.com>
Date:   Thu Sep 12 23:42:22 2024 +0300

    citation.bib (#400)
    
    * citation
    
    * citation

[33mcommit 2d6a967f92187daaa19f198613a7309e4d1a00dc[m
Author: FantasticOven2 <91100968+FantasticOven2@users.noreply.github.com>
Date:   Wed Sep 11 21:41:46 2024 -0700

    2DGS (#208)
    
    * cuda legacy with 2DGS
    
    * clean up changes
    
    * add torch implementation
    
    * adding _wrapper for cuda legacy
    
    * working on forward (projection)
    
    * working on forward (rasterization)
    
    * rasterize forward continue
    
    * starting backward (rasterization)
    
    * stubs for 2dgs testing
    
    * ctn.rasterize (backward)
    
    * start projection backward
    
    * setup simple 2D experiments and debug forward
    
    * ctn. forward debugging
    
    * ctn. forward debugging
    
    * 2d example works
    
    * add slant view
    
    * variable num points for 2D example
    
    * working on bwd
    
    * working on backward
    
    * working on backward
    
    * working on bwd
    
    * continue adding tests and torch impl for 2dgs
    
    * pipeline running nning
    
    * debugging gradient
    
    * image fitting working
    
    * 3D works
    
    * setting up numerical tests
    
    * add projection numerical test
    
    * adding torch impl and tests for rasterization
    
    * updating 2dgs numerical tests -- rasterize_indices_in_range_2dgs is buggy, reverted to 3dgs one for now
    
    * correct rasterize_to_indices_in_range_2dgs
    
    * working on 2dgs rasterization numerical tests
    
    * resolving rasterization numerical test differences
    
    * linter
    
    * migrating main PR 240 for background
    
    * fixed bug in rasterize_to_indices_2dgs
    
    * still failing forward but diffs are much smaller ~2e-5
    
    * adding gitignore and removing committed images
    
    * adding backward tests, currently all failing, will look later
    
    * fixed viewmat, pass the correct viewmat, not its transpose
    
    * added densification
    
    * start normal rendering and potential deadlock
    
    * normal dual visible
    
    * depth to normal
    
    * start normal loss gradient
    
    * normal loss gradient
    
    * ctn. normal consistency gradient
    
    * normal gradient works, need to debug the output normal
    
    * normal consistency done
    
    * adding depth distortion loss
    
    * added L1 distortion
    
    * fixed normal bug
    
    * working on numerical tests, now only v_ray_Ms didn't pass
    
    * find the potential deadlock bug
    
    * passing basic numerical tests
    
    * working on halting problem
    
    * fixed hanging problem due to thread sync
    
    * code optimization
    
    * add normal tests
    
    * save changes
    
    * improve densification gradient, now working on migration to main brach organization
    
    * save changes
    
    * update to main version
    
    * clean tests
    
    * adding packed projection
    
    * adding distortion
    
    * adding tests for packed version, forward passed, backward bug
    
    * cleanup
    
    * remove submodule
    
    * all tests passed
    
    * added packed tests
    
    * sync with main
    
    * update readme
    
    * update default reg params
    
    * remove mcmc script
    
    * minor cleanup
    
    * black format
    
    * fixed bug in packed version, working on cleanup
    
    * adding median depth
    
    * support median depth
    
    * backup
    
    * cleanup
    
    * cleaned up most of the code
    
    * more cleanup
    
    * add docstring
    
    * adding argument for densification gradient variable
    
    * done cleanup
    
    * update return type
    
    * additional cleanup
    
    * fixed floaters in normal rendering
    
    * adding docs
    
    * adding docs
    
    * generate teaser vid
    
    * all done
    
    * update to align with main
    
    * test passes
    
    * format
    
    * cleanup torch_impl
    
    * cleanup utils and rasterization fn
    
    * black format
    
    * script cleanup
    
    * image fitting cleanup
    
    * image fitting cleanup
    
    * add matplotlib to requirements
    
    * cleanup
    
    * resolve ruilong's note
    
    * rename ray_M to ray_transform
    
    * update doc
    
    * update doc
    
    * adding docstring
    
    * remove renders
    
    * black formatting
    
    * black format 22.3
    
    * remove renders folder in examples
    
    ---------
    
    Co-authored-by: Vickie Ye <vye@berkeley.edu>
    Co-authored-by: Ruilong Li <397653553@qq.com>
    Co-authored-by: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>

[33mcommit 9d9e8ffecc1382f3b08fbe96f56da55a08eedee2[m
Author: Rahul Goel <54021162+rahul-goel@users.noreply.github.com>
Date:   Wed Sep 11 21:09:48 2024 +0200

    Fused differentiable SSIM (#396)
    
    * add fused ssim
    
    * remove submdoule, add requirement

[33mcommit d0dca4f9d61233a220e88fe3ecbcaa7dfb0acabd[m
Author: Christian Richardt <christian@richardt.name>
Date:   Tue Sep 10 17:45:50 2024 -0400

    Make download script work on Windows, too (#397)
    
    1. Recent versions of Windows 10 don't have `wget` but do have `curl`, so now we can download files across the major platforms.
    2. Windows 10 also doesn't have the `unzip` program, but a version of `tar` (apparently bsdtar), which supports `.zip` files (unlike the GNU tar on the Linux box I tested on). So need to use different code paths depending on platform.
    
    Tested on Windows 10 22H2 and Linux.

[33mcommit cc800d7750a891ab8684eac4ddbcf90b79d16295[m
Author: Christian Richardt <christian@richardt.name>
Date:   Sat Sep 7 12:12:06 2024 -0400

    Fix typo (#392)

[33mcommit c14d720c561abaf6ff9ce131d284a59104dda5f5[m
Author: Ultized <39212518+Ultized@users.noreply.github.com>
Date:   Thu Sep 5 01:32:10 2024 +0800

    fix reshape error when multi GPU  bachsize > 1  not packed (#382)
    
    * fix reshape error when multi GPU not packed
    
    * Update rendering.py
    
    Conforms to black format

[33mcommit f2b7acc7f6bbc0c77f2d9ea7b52d48e01e4fac8e[m
Author: nnop <ihacku@163.com>
Date:   Thu Sep 5 01:08:28 2024 +0800

    Fix points projection when sampling patches for training (#386)
    
    fix https://github.com/nerfstudio-project/gsplat/issues/381

[33mcommit de25066bf635d5a9662ec8a830b46c7c0a04ecb0[m
Author: Joji <JojiJoseph@users.noreply.github.com>
Date:   Wed Sep 4 00:16:00 2024 +0530

    Update simple_trainer.py (#379)
    
    Add an option to disable world space normalization in simple_trainer

[33mcommit 57c77b9aa3b3df03093416299b0399ae739af3d5[m
Author: Jeffrey Hu <hujh14@gmail.com>
Date:   Tue Sep 3 11:45:34 2024 -0700

    Add option to render camera trajectory as an ellipse. (#380)
    
    * ellipse
    
    * cleanup
    
    * uncomment
    
    * canvas list

[33mcommit 9c6e591ccbfb583d49386cd7c49c346f77531408[m
Author: jckhng <jckhng@users.noreply.github.com>
Date:   Wed Sep 4 02:41:59 2024 +0800

    * correct a typo to fix #373 (#383)

[33mcommit 61be4a7443e17b4ff51aff6fc441e9d2ea2e95e4[m
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Aug 30 04:39:48 2024 +0000

    support covars in rasterization

[33mcommit 4efec831b0db8276fc91cbb0ae528942ae1c3386[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Aug 26 06:34:15 2024 -1000

    eval supports multi-GPU (#371)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 1fee457d443651ab59f293e678f2b15abb31bf76[m
Author: Ruilong Li <397653553@qq.com>
Date:   Mon Aug 26 16:26:18 2024 +0000

    doc minor update

[33mcommit 101a3510bf01442cb04fe21e22d0979aef4f9ae6[m
Author: Christian Helms <37687893+christian-helms@users.noreply.github.com>
Date:   Mon Aug 26 18:23:36 2024 +0200

    fix (apparant) typos in compression docs (#370)

[33mcommit fdcb7d180715156e6082ed90bcb57b9b3ac36c26[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Sun Aug 25 20:18:34 2024 -1000

    Update build workflow (#369)
    
    * update building workflow
    
    * remove cuda_legacy
    
    * set max jobs to 4
    
    * support cu124 and cu121
    
    * temp
    
    * temp
    
    * temp
    
    * fix
    
    * temp
    
    * better
    
    * format
    
    * MAX_JOBS=2
    
    * minor
    
    * full build for torch 2.4.0
    
    * all versions
    
    * exclude invalid options
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 507f26e118afb78ef0224ad5e0d0701f1b973853[m[33m ([m[1;33mtag: v1.3.0[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Aug 23 09:16:23 2024 -1000

    Update to 1.3.0 (#366)

[33mcommit 8f8e397f80d46bf0ebc9dc77e4c7721d7c76b634[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Aug 21 17:55:43 2024 -1000

    tt compression script (#357)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 44544f7bdbbb9f0002e86025967e6e7dc877942d[m
Author: J.Y. <132313008+jb-ye@users.noreply.github.com>
Date:   Wed Aug 21 20:50:28 2024 -0400

    Fix bug related to refine_scale2d and introduce a new parameter pause refine after reset (#354)

[33mcommit 5ec2670fcea2cf993b09f7fae6b49b3526ce0f55[m
Author: Vladyslav Zavadskyi <16824835+VladislavZavadskyy@users.noreply.github.com>
Date:   Wed Aug 21 21:28:32 2024 +0300

    Added orthographic projection (#349)

[33mcommit 45d196a3611e627c498f237c27014cdaf42d94d2[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Aug 20 20:33:29 2024 -1000

    data parser for t&t dataset (#347)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 8e39e4157712f53082480c978a89760975f8e107[m
Author: Ruilong Li <397653553@qq.com>
Date:   Wed Aug 21 05:25:21 2024 +0000

    fix test

[33mcommit af1021708e0dadd297f7de9b149452c2978572d9[m
Author: Sosuke Kobayashi <soskek@users.noreply.github.com>
Date:   Wed Aug 21 10:04:13 2024 +0900

    Add np.random.choice fallback for many Gaussians exceeding torch.multinomial limits (#338)
    
    * use np.random.choice for >2**24 multinomial
    
    * format

[33mcommit 435305ef25379dcd524720391f7436c34fb8f08a[m
Author: Master-cai <37432881+Master-cai@users.noreply.github.com>
Date:   Wed Aug 21 01:59:14 2024 +0800

    correct distCoeffs of SIMPLE_RADIAL (#337)

[33mcommit 1967ca877534a4a695ffc698dd6c12f4ff0d64f7[m
Author: Zhiguo Tang <zhiguo.tang@deepmirror.com>
Date:   Mon Aug 19 21:32:55 2024 +0800

    fix typo (#342)

[33mcommit db444b904976d6e01e79b736dd89a1070b0ee1d0[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Fri Aug 16 10:26:23 2024 -0700

    use flatten; a couple more places (#334)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit e9272e6c954296e7cae163555d392295b08af231[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Aug 15 11:02:17 2024 -1000

    Cleanup C/CUDA code for C users (#333)
    
    * namespace gsplat
    
    * add cmakelists.txt
    
    * minor comment
    
    * Update CMakeLists.txt
    
    * update sh args to const
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 96db2d613ccbd5af91b9e45d606f4bc7164c91a0[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Thu Aug 15 13:56:52 2024 -0700

    Simplify `tyro` usage in `simple_trainer.py` (#332)
    
    * Simplify `tyro` usage in `simple_trainer.py`
    
    * Remove unnecessary space
    
    * Revert glm commit
    
    * black
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 91bcbfa4af4088c1331345bd196d478eb5a9898d[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Aug 15 05:19:34 2024 +0000

    minor

[33mcommit 2ff8d61ea23dfde0770911bc6106e9aa75640561[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Aug 15 05:09:28 2024 +0000

    eval 9 scenes for compression

[33mcommit 1dca18461e9dc21a301dd3fc5ad3b2aeb3fc6f20[m
Author: Jeffrey Hu <hujh14@gmail.com>
Date:   Wed Aug 14 08:44:30 2024 +0200

    Compressing gaussian splats (#309)
    
    * plas
    
    * sort
    
    * working
    
    * crappy compression
    
    * cool vis
    
    * vis grid
    
    * vis
    
    * compress
    
    * sort strategy wip
    
    * sort strategy
    
    * sort attr
    
    * detach
    
    * png compression is working
    
    * shN png
    
    * blur attributes
    
    * kmeans
    
    * refactor
    
    * good psnr
    
    * means_u and means_l
    
    * count sorted more carefully
    
    * cleanup
    
    * bug
    
    * sort and quantize as post is pretty effective
    
    * simple
    
    * powers of 2
    
    * simple sort and quantize is best
    
    * 6 bits
    
    * wip
    
    * sort splats
    
    * fine tune codebook works
    
    * save sorted ckpt
    
    * kmeans might not be worth it
    
    * wip
    
    * simplify
    
    * reduce diff
    
    * wip
    
    * stage
    
    * sumarize stats
    
    * kwargs
    
    * crop
    
    * cleanup
    
    * 1m
    
    * fix shape bug
    
    * support any types
    
    * minor
    
    * 1m
    
    * compress and decompress npz
    
    * move imports inside of functions
    
    * verbose
    
    * req txt
    
    * support simple trainer as well
    
    * sh0
    
    * utils
    
    * refactor
    
    * png compression
    
    * trainers
    
    * shape zero
    
    * minor
    
    * minor
    
    * minor
    
    * 1m
    
    * minor
    
    * kwargs
    
    * minor
    
    * dict -> Dict
    
    * dict -> Dict
    
    * compression_strategy -> compression
    
    * minor
    
    * set rank in compress_dir
    
    * minor fix
    
    * clang
    
    * minor
    
    * minor
    
    * minor
    
    * cleanup scripts
    
    * doc
    
    * minor doc
    
    * black
    
    * add tests
    
    * black
    
    * simple trainer reg fix
    
    * imageio import as v2
    
    * lpips_net arg
    
    * compression scripts and results
    
    * fix typo
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 3ac332b785e9bfb20426ed3838b24f34cf3b20f3[m
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Aug 13 02:35:26 2024 +0000

    simple trainer reg fix

[33mcommit 98349d17c36f4540b7ee51b51b1507d414477a7e[m
Author: Ruilong Li <397653553@qq.com>
Date:   Mon Aug 12 17:07:04 2024 +0000

    minor scripts update

[33mcommit 1573ff0ca8476ddacc35ea5ccb603d88baee89f6[m
Author: Ruilong Li <397653553@qq.com>
Date:   Mon Aug 12 17:03:51 2024 +0000

    minor

[33mcommit 04714052ff1a61dd8c0f699821af2758c56caf33[m
Author: Ruilong Li <397653553@qq.com>
Date:   Mon Aug 12 00:05:04 2024 +0000

    minor fix for default strategy

[33mcommit fc1a3ca8b901279461a8dca2676eb9d600c18b7c[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Fri Aug 9 19:44:32 2024 -0700

    Consolidate simple_trainer.py and simple_trainer_mcmc.py (#325)
    
    * Consolidate simple_trainer.py and simple_trainer_mcmc.py
    
    * ruff
    
    * black
    
    * black
    
    * reset glm
    
    * Revert docstring changes, fix docs Makefile
    
    * simple_trainer.py -> simple_trainer.py default
    
    * minor fixes
    
    * format
    
    * mcmc script
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 8bd343fef7220edfaffd9aed4ed1971a56233904[m
Author: Andrea Simonelli <simonelli.andrea23@gmail.com>
Date:   Thu Aug 8 20:33:42 2024 +0200

    Fix typo in examples/simple_viewer.py (#321)

[33mcommit a6c2b5259e5e1f2fc75acd6bbbe5ce22400d1dd6[m
Author: Ikko Eltociear Ashimine <eltociear@gmail.com>
Date:   Fri Aug 9 03:31:52 2024 +0900

    docs: update README.md (#322)
    
    dependences -> dependencies

[33mcommit a991bb8092372147b0b815960b5721c99c7cf1e8[m
Author: Keunhong Park <github@void.im>
Date:   Wed Aug 7 11:34:19 2024 -0700

    Make sure the build directory exists. (#319)
    
    Needed with work with the `TORCH_EXTENSIONS_DIR` environment variable.

[33mcommit 7816033ef1ec0b1fe890cb251412efde19e37f36[m[33m ([m[1;33mtag: v1.2.0[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Aug 2 21:24:30 2024 -1000

    Update version.py (#313)

[33mcommit f92fd3f5b2f8e21e125f31085531176236341723[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Aug 2 21:21:42 2024 -1000

    Support Multi-GPU training based on the paper "On Scaling Up 3D Gaussian Splatting Training"  (#253)
    
    * checkin the code
    
    * nicer API
    
    * mcmc script now can works with multigpu
    
    * trainer supports multi gpu
    
    * get rid of reduduant code
    
    * func doc
    
    * support packed mode
    
    * format
    
    * more exp
    
    * multi GPU viewer
    
    * optim
    
    * cleanup
    
    * cleanup
    
    * merge main
    
    * MCMC
    
    * doc
    
    * scripts
    
    * scripts and performance
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 8a0e500c801a2fc6131941ae40830ec71e32776c[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Aug 2 14:23:31 2024 -1000

    prevent race condition when JIT in multiprocess (#312)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 40fd2fe240fdd4d3b83ef2ce6726c1aa9cfb0da4[m
Author: JonathonLuiten <jonoluiten@gmail.com>
Date:   Thu Aug 1 13:38:21 2024 -0400

    Fix projection for images with non-centered camera (e.g. crops) (#305)
    
    * Fix projection for images with non-centered camera (e.g. crops)
    
    The current code assumes [cx,cy] are at [w/2, h/2], if this is not the case (very common if you want to render a non-centered crop) the code gives VERY bad and incorrect results. This quick fix uses the proper [cx, cy].
    
    * fix crop for backward
    
    * continous fix. also torch impl.
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit d5953f47f97fd03cbcd6fc7b55afb02e31665b97[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jul 31 15:54:50 2024 -0700

    Fix typo in eval.rst

[33mcommit 19d8da517b09a3e087971fbad609a67fb51ad07c[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jul 31 11:32:48 2024 -1000

    Update requirements.txt (#308)

[33mcommit 1cc3d22d2e5455988b06e1fc8b7c00e3ea5f32f2[m
Author: maturk <30566358+maturk@users.noreply.github.com>
Date:   Mon Jul 29 23:38:37 2024 +0300

    abgrad, mcmc, antialiased eval (#300)

[33mcommit 5fc940b648e32218ba0979355d7e4d7910f54476[m[33m ([m[1;33mtag: v1.1.1[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Jul 19 09:42:06 2024 -0700

    Update version.py (#296)

[33mcommit bd76d99817d66954e0ed596b43f20c838f6371fa[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Jul 19 09:41:11 2024 -0700

    remove unused arg n_max in MCMC (#295)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 56f186749edf500fbd023b4b73cd82beef17de3a[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jul 18 08:39:45 2024 -0700

    add _rasterization() that relies on torch autograd (#292)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 4c5a969763ee05e7ce851f740584b3e635e2346b[m
Author: Ruilong Li <397653553@qq.com>
Date:   Wed Jul 17 23:50:30 2024 +0000

    fix workflow

[33mcommit 9979ed6f73fa0fd46a271923e214b35269f5feb6[m[33m ([m[1;33mtag: v1.1.0[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jul 17 16:36:58 2024 -0700

    Bump to 1.1.0 (#290)

[33mcommit 68ff2c185c6b5b49ffbc343aa0d2169d72baffd4[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jul 17 16:23:33 2024 -0700

    Abstracting out the GS heuristics into a Strategy class (#278)
    
    * [DRAFT] gsplat refactor (#269)
    
    * initial commit, rough design of modules
    
    * moved strategy.py into gsplat dir
    
    * latest commit for 1:1 meeting
    
    * removed ops, losses, and strategies now inherit from an abstract 'Strategy' class
    
    * GSs init handled in private method
    
    * format
    
    * class Gaussian3D
    
    * WIP: _strategy
    
    * simple_trainer no longer uses Gaussians object and instead uses ParameterDict with newly-added 'activations' dict
    
    * simple_trainer no longer uses Gaussians object and instead uses ParameterDict with newly-added 'activations' dict
    
    * created mcmc and revised strategy, simplified training scripts
    
    * update _strategy
    
    * minor
    
    * implemented ruilongs' suggested changes, no longer using separate class for revised ADS heuristics
    
    * added docstrings, removed overriding activations attribute, fixed device argument passing
    
    * mcmc and default are all trainable
    
    * cleanup
    
    * minor
    
    * minor
    
    * minor
    
    * minor
    
    * hardcode activations into strategy
    
    * minor cleanup
    
    * minor
    
    * seperate the strategy in to individual files
    
    * change optimizers from List to Dict
    
    * switch to dataclass
    
    * stateless strategy
    
    * minor cleanup
    
    * revised_opacity
    
    * _update_param_with_optimizer
    
    * individual ops
    
    * means3d -> means
    
    * starting docs
    
    * docs
    
    * docs
    
    * docs
    
    * docs
    
    * docs
    
    * minor fix to pass test
    
    * move BINOMS to strategy state
    
    * nits
    
    * nit fix
    
    * viewcode
    
    * relocation func cleanup
    
    * nits in docs
    
    * cleanup imports
    
    * minor cleanup
    
    * support screen size pruning / splitting
    
    ---------
    
    Co-authored-by: Ryan Tabrizi <30701017+rtabrizi@users.noreply.github.com>
    Co-authored-by: Ruilong Li <397653553@qq.com>
    Co-authored-by: rtabrizi <rtabrizi@berkeley.edu>

[33mcommit e1de4c377307c6d405cabb622e26755e3cbea0bc[m
Author: Xiwen Min <68890035+alexis-mmm@users.noreply.github.com>
Date:   Wed Jul 17 18:22:08 2024 -0400

    Add optional masks in `rasterize_to_pixels()` to support Grendel (#284)
    
    * Add optional masks in `rasterize_to_pixels()` to support Grendel
    
    * Fix `masks` for general use
    1. Render background color in masked area.
    2. Check: `masks` and `isect_offsets` should have the same shape.
    
    * Fix typo
    
    ---------
    
    Co-authored-by: Xiwen Min <xm2336@log-2.hpc.nyu.edu>
    Co-authored-by: Xiwen Min <xm2336@log-3.hpc.nyu.edu>

[33mcommit c89b14e82bf9a900e7709707c242c5039f94965b[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jul 17 15:03:27 2024 -0700

    fix test_fully_fused_projection_packed test (#289)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 7562a399b76e1a3283503d14230164f3f0595162[m
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Jul 16 00:16:05 2024 +0000

    format C files

[33mcommit e62331179b6b42e7a2df4dc6b675174f186c030f[m
Author: Francis Williams <fwilliams@users.noreply.github.com>
Date:   Mon Jul 8 11:27:00 2024 -0400

    Start adding support for double, float16, and bfloat16 (#270)
    
    * isect_tiles f16 dispatch
    
    * fix
    
    * perps proj bwd
    
    * persp proj fwd
    
    * fix cast
    
    * quat scale to covar preci bwd
    
    * quat scale to covar preci fwd
    
    * world to cam bwd
    
    * world to cam fwd

[33mcommit c48f4235eb13ef88f61cb5acda9291ae966db342[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Sat Jul 6 17:44:35 2024 -0700

    float3 -> vec3<float>; float2 -> vec2<float>; (#267)
    
    * format on C files
    
    * float3 -> vec3<float>; float2 -> vec2<float>;
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 840f35856fb4bd42b6aaacf3d36e4d03257853d4[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jul 4 12:02:31 2024 -0700

    set the MAX_JOBS to 10 if not set. (#262)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 53af38371a610795111d5c77a4a49b95bccc2794[m
Author: Francis Williams <fwilliams@users.noreply.github.com>
Date:   Thu Jul 4 15:02:20 2024 -0400

    use aten atomics so we template (#261)

[33mcommit 132ce9b15dbfb6e33d5067a3df740caafd18bbfd[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jul 4 11:26:16 2024 -0700

    fix glm path in JIT building (#260)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 0f9dddc2456ac58c641dcf1df8047a8cf0dd2795[m
Author: Francis Williams <fwilliams@users.noreply.github.com>
Date:   Thu Jul 4 14:09:07 2024 -0400

    template everything but don't actually support multiple precisions yet (#259)
    
    * Separate C source into many translation units to enable faster compilation and easier code readability
    
    * use ninja for parallel builds, fix include paths for glm
    
    * template utils.cuh to support multiple precisions
    
    * template helpers.cuh
    
    * template spherical_harmonics
    
    * world_to_cam templates
    
    * template compute_sh
    
    * template fused_proj_fwd
    
    * fused proj fwd template
    
    * fused projection packed bwd template
    
    * projection fwd packed template
    
    * isect_tiles template
    
    * persp proj bwd
    
    * persp_proj_fwd
    
    * quat scale to covar preci bwd
    
    * quat scale to covar preci fwd template
    
    * rasterize_to_indices_in_range
    
    * remove disgusting switch
    
    * remove gross switch
    
    * template rasterize fwd
    
    * rasterize bwd template
    
    * fix black CI

[33mcommit 041a899222a0a36d3b254d544f03ee838ac401ea[m
Author: Francis Williams <fwilliams@users.noreply.github.com>
Date:   Thu Jul 4 13:40:58 2024 -0400

    Fwilliams/fix headers and ninja (#256)
    
    * Separate C source into many translation units to enable faster compilation and easier code readability
    
    * use ninja for parallel builds, fix include paths for glm
    
    * template utils.cuh to support multiple precisions
    
    * template helpers.cuh
    
    * fix black CI
    
    * Revert "template helpers.cuh"
    
    This reverts commit 48e8ab7ec36b00c26f363218dbd44e7148306775.
    
    * Revert "template utils.cuh to support multiple precisions"
    
    This reverts commit 452c4e89ece6a774059d4db5553bff555e592900.

[33mcommit 2f0bb12f614eb28a5dea2a5422809bc9c388fdb2[m
Author: Francis Williams <fwilliams@users.noreply.github.com>
Date:   Wed Jul 3 18:56:27 2024 -0400

    Separate C source into many translation units to enable faster compilation and easier code readability (#255)

[33mcommit de84c086d6e9e559a63fb5195d9c982e2392e70b[m
Author: Masahiro Ogawa <masahiro.ogaw@gmail.com>
Date:   Wed Jul 3 06:27:19 2024 +0900

    download dataset and numpy version requirement (#251)
    
    * add poetry files, and fix numpy error and no data error.
    
    * rm pyproject
    
    * generic download script
    
    * generic download script
    
    * mipnerf -> mipnerf360
    
    ---------
    
    Co-authored-by: maturk <matiasturkulainen@gmail.com>

[33mcommit 18a9aa384bccf165aba3ea12db27e6ec7d6bf202[m
Author: Zhensheng Yuan <564361+yzslab@users.noreply.github.com>
Date:   Mon Jul 1 03:55:29 2024 +0800

    Clamp `ration` (#247)
    
    * https://github.com/ubc-vision/3dgs-mcmc/issues/8
    * https://github.com/ubc-vision/3dgs-mcmc/pull/9

[33mcommit fc92cc5efa4584f3f49eda37cd516f72aa8aa20c[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Sat Jun 29 22:53:51 2024 -0700

    sqrt int to float (#246)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit b49885f4ed607fc649bf5f204c5b9fb9f9a47018[m
Merge: 0000df5 4b32664
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Jun 28 18:37:20 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit 4b32664a1f006bee9419aa9ce70e8021c300a893[m
Author: Jeffrey Hu <hujh14@gmail.com>
Date:   Fri Jun 28 11:33:16 2024 -0700

    Implement 3DGS-MCMC in gsplat. (#238)
    
    * Integrate 3dgs-mcmc into gsplat. (#1)
    
    * Initialize from random point cloud (#2)
    
    * Clean up simple trainer changes. (#3)
    
    * formatting
    
    * Create dedicated mcmc train script. (#4)
    
    * minor
    
    * scene scale bug
    
    * scheduler
    
    * PR comments wip (#5)
    
    * Some cuda changes (#6)
    
    * data to data_ptr
    
    * use scale_rot_to_cov3d from cuda_legacy
    
    * quat_scale_to_covar_preci
    
    * removed _sample_new_gaussians
    
    * remove old prefix
    
    * zeros_like
    
    * empty_like
    
    * cuda stream
    
    * min opacity

[33mcommit 0000df581114639dca8170999793b2badccd7e66[m
Merge: 6df6dba 0ac847d
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Jun 28 18:23:25 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit 0ac847d6efde31dba8c289c67241321a3cf9821f[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jun 27 19:09:04 2024 -0700

    Fix `max_range` in `_torch_impl._rasterize_to_pixels()` (#242)
    
    * use dynamic shared mem to allow for adjusting tile_size
    
    * fix max_range in torch impl
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 6df6dba41d8abc19ab6228256085effad4881a97[m
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Jun 28 01:48:27 2024 +0000

    fix max_range in torch impl

[33mcommit 4bcaec34a1b9143409d7171f31e2a0af29e1a900[m
Merge: b262702 e1ee4cc
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Jun 28 01:39:00 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit e1ee4cc19174314cc9f84d39cfb3525eff5d5432[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jun 27 13:33:07 2024 -0700

    Update simple_trainer.py

[33mcommit f7774f968a52862d94a11d2a689e6432c7b7e299[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jun 27 13:30:46 2024 -0700

    Update simple_trainer.py

[33mcommit 880425c309a3a063d543fe63b37cb8695e1bbc5e[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Jun 27 00:12:42 2024 -0700

    updating background for different rendering modes [D, ED, RGB+D, RGB+… (#240)
    
    * updating background for different rendering modes [D, ED, RGB+D, RGB+ED] to be compatible for rasterization
    
    * updating formatting to black 22.3.0

[33mcommit b262702d4778957968bd45ff29c412a9016aebb4[m
Merge: 65c9500 2aa70c2
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Jun 27 06:24:09 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit 2aa70c2168ebcbbf86743b4d818e280ca6239580[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Sat Jun 22 21:30:44 2024 -0700

    use dynamic shared mem to allow for adjusting tile_size (#229)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 02f0c6f15d7c6d074fa3d1072207b3ff9c7e5baa[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Sat Jun 22 21:30:21 2024 -0700

    clean up the shape of the colors (#228)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 3b38568e43c48b83601d9344aa16de2008e5056a[m
Author: Anthony Opipari <96923321+opipari@users.noreply.github.com>
Date:   Sat Jun 22 00:25:17 2024 -0400

    Minor fix for _RasterizeToPixels back to avoid NaNs (#235)

[33mcommit 65c95007420cc7b5659ed06b6a24a0626f5b5270[m
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Jun 18 20:35:42 2024 +0000

    use dynamic shared mem to allow for adjusting tile_size

[33mcommit 4723fe8edfac5fd8fb5c21a6076ac321b2208127[m[33m ([m[1;31morigin/density[m[33m)[m
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Jun 18 17:02:13 2024 +0000

    update timing

[33mcommit a6b069e3c9ec673f06471a0b0d3e1b0ca9d7db50[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Jun 18 09:59:13 2024 -0700

    update readme video

[33mcommit 6194152d14a982aee10b6654c19fbd9f1ae2aee2[m[33m ([m[1;31morigin/timing_update[m[33m)[m
Merge: 8eb7813 3a18458
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Jun 18 16:53:39 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit 8eb78138d43a4b85ac2fdb41510d4c4010fce860[m
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Jun 18 16:53:32 2024 +0000

    update timing eval

[33mcommit 3a184580a0509da80d8d7a56178ab5c6bb736575[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Jun 13 14:42:27 2024 -0700

    Fix conflict tic()

[33mcommit d01e6c0561f5c51d4372ff6b1d3c45f7b1e28fd5[m
Author: Zirui Wu <wuzirui@tztyun.org>
Date:   Thu Jun 13 05:22:45 2024 +0800

    workaround for n-dim rendering with n>32 (#217)
    
    * feat: workaround for n-dim rendering with n>32
    
    * add comments
    
    * fix format check

[33mcommit 6acdce49bd210fc611996a71bb8ac8c4aa895044[m
Merge: 7145636 d7e42a9
Author: Ruilong Li <397653553@qq.com>
Date:   Wed Jun 12 01:15:00 2024 +0000

    Merge branch 'main' of https://github.com/nerfstudio-project/gsplat

[33mcommit d7e42a9ba4a313acc58f88309bd1e6c9acab85ca[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Jun 11 15:33:41 2024 -0700

    support 2^n+1 channels for rasterize_to_pixels (#218)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 71456369371e0d0d95f0c8c46d48d4e053723b56[m
Author: Ruilong Li <397653553@qq.com>
Date:   Tue Jun 11 22:31:50 2024 +0000

    support 2^n+1 channels for rasterize_to_pixels

[33mcommit e61b9c89ef008d0f3753b90d3f5b10a330778adc[m
Author: Yifan Lu <458887872@qq.com>
Date:   Tue Jun 11 12:05:51 2024 +0800

    Fix wrong description in rasterization API doc (#216)

[33mcommit 3bb10d24a016e6b6d27898d4f0b38961e8305a24[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Jun 10 09:23:34 2024 -0700

    Minor fix for _QuatScaleToCovarPreci back with sparse grad (#214)

[33mcommit c8eedf785b89af53ee0bfef6b219883598eff572[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Jun 10 08:29:10 2024 -0700

    Update README.md

[33mcommit 1f067b4eb2c592749a1e67a07e1ca1012d5c58fa[m
Author: Congrong Xu <50019703+KevinXu02@users.noreply.github.com>
Date:   Mon Jun 10 08:27:50 2024 -0700

    Added a guidance for installing gsplat on Windows (#213)
    
    * Update README.md
    
    * Create INSTALL_WIN.md
    
    * Update README.md
    
    * Update INSTALL_WIN.md
    
    * Update README.md
    
    * Update README.md
    
    * Update INSTALL_WIN.md

[33mcommit ef592c28b579cffb6c6eb7bd05af908827a3e4c6[m
Author: Ikko Eltociear Ashimine <eltociear@gmail.com>
Date:   Mon Jun 10 04:25:31 2024 +0900

    docs: update README.md (#210)
    
    easist -> easiest

[33mcommit 07d9188590ae1ee1e9ff7794a4217cc4591b44cf[m
Author: Hang <hangg.sv7@gmail.com>
Date:   Fri Jun 7 17:07:51 2024 -0700

    Update 3DGS examples to use the latest nerfview from pypi (#206)

[33mcommit c7b0a383657307a13dff56cb2f832e3ab7f029fd[m[33m ([m[1;33mtag: v1.0.0[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Jun 7 09:51:58 2024 -0700

    Update README.md (#204)

[33mcommit dfa66a54fb3d740c98b9daeac3ec8d29d640e971[m
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Jun 7 16:08:28 2024 +0000

    update links from latest to main

[33mcommit 850872fd1784a592b787a3f874795e4bcdd85827[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Jun 7 08:54:04 2024 -0700

    V 1.0 Major Update (#183)
    
    * init commit of cuda v2 upgrade
    
    * example script complete functionalities
    
    * support undistort
    
    * render_traj
    
    * render_traj with depth
    
    * add comments
    
    * minor readme
    
    * minor
    
    * minor cleanup
    
    * abs grad supported and benchmarked
    
    * more benchmarks on AbsGrad
    
    * clean up sparse grad
    
    * benchmark on U4
    
    * fix setup.py
    
    * minor bug fix
    
    * bug fix
    
    * fix setup
    
    * fix import
    
    * sh fix
    
    * code structure cleanup
    
    * restructure examples
    
    * bug fix
    
    * bug fix
    
    * minor
    
    * fix glm import bug
    
    * fix glm import
    
    * fix import
    
    * fix relative path in setup.py
    
    * no abs path in setup
    
    * use abs path to find glm
    
    * not abs path
    
    * submodule
    
    * support antialiasing
    
    * fix for compensation init
    
    * update markdown
    
    * merge packed rast with unpacked
    
    * packed fulled merged in rasterize_to_pixels
    
    * merge packing for isect_tiles
    
    * sparse grad cleans up
    
    * sparse grad and supports unnorm quat
    
    * update trainer for sparse grad
    
    * doc for rasterization
    
    * example code in rasterization
    
    * docs update
    
    * migration instructions
    
    * docs
    
    * docs
    
    * docs
    
    * benchmark on mipnerf360
    
    * benchmark done
    
    * fix timing in benchmark table
    
    * update benchmark
    
    * evaluation doc cleanup
    
    * cleanup doc
    
    * cleanup image fitting example
    
    * example doc for colmap
    
    * minor
    
    * a bit cleanup
    
    * simple viewer example
    
    * index doc update
    
    * bug fix for render_traj
    
    * switch to tyro
    
    * format
    
    * fix trainer
    
    * train script minor cleanup
    
    * minor cleanup trainer script
    
    * minor cleanup
    
    * minor cleanup
    
    * profiling update
    
    * profile script cleanup
    
    * profile update
    
    * profiling code update
    
    * full profiling
    
    * profiling doc
    
    * profile doc update
    
    * update doc
    
    * profile doc
    
    * update doc
    
    * profiling doc
    
    * cleanup doc
    
    * doc
    
    * minor cleanup
    
    * properly expose _functions
    
    * minor
    
    * minor
    
    * sh supports grad w.r.t dirs
    
    * cleans up #pragma unroll
    
    * doc cleanup for _torch_impl
    
    * doc cleanup for _wrapper
    
    * minor cleanup
    
    * doc for rasterization
    
    * minor doc cleanup
    
    * default to colors = torch.clamp_min(colors + 0.5, 0.0)
    
    * bump version
    
    * acknowledge nerfview
    
    * fix video auto scale
    
    * add contributors
    
    * update url
    
    * update migration doc
    
    * minor doc update
    
    * typos
    
    * set version to 0.1.12
    
    * relax tests a little bit
    
    * set version to 1.0.0
    
    * rename latest to main
    
    * cleanup scripts
    
    * fix berkeley typo
    
    * minor cleanup
    
    * black format
    
    * JIT only if necessary
    
    * doc update
    
    * support multi camera for colmap
    
    * support multi-camera
    
    * fix width & height for multi camera colmap
    
    * add exploration doc
    
    * update readme
    
    * cleanup readme v2
    
    * test is only enabled with CUDA devices
    
    * minor
    
    * minor fix
    
    * bug fix for sh to rgb +0.5
    
    * bug fix for K in eval
    
    * bug fix for multi camera
    
    * fix imsize for multi camera
    
    * minor modification on dataset class
    
    * colmap parser supports recursive rel path
    
    * format
    
    * minor
    
    * minor
    
    * bug fix for multi camera
    
    * minor
    
    * zero init compensations in packed projection
    
    * mark Optional inputs for projection
    
    * black format
    
    * nits
    
    * cleanup profiling code comments
    
    * _QuatScaleToCovarpreci -> _QuatScaleToCovarPreci
    
    * create_splats_with_optimizers return type fix
    
    * fix typo
    
    * colmap dataset minor
    
    * colmap parser image_id
    
    * --random_bkgd argument
    
    * support batch size training; cleanup scheduler
    
    * support --patch_size
    
    * format
    
    * enable pose optim
    
    * black format
    
    * minor cleanup
    
    * add cam opt and app opt modules
    
    * support appearance and pose opt in script
    
    * minor fix
    
    * add --global_scale
    
    * format
    
    * rename cindices and gindices
    
    * gauss_ids -> flatten_ids in isect_offset_encode
    
    * rename projection -> fully_fused_projection
    
    * rename _Projection-> _FullyFusedProjection
    
    * rename rasterize_to_indices_iter -> rasterize_to_indices_in_range
    
    * cleaning up warnings: int -> uint32_t
    
    * minor
    
    * renaming the rest of cindices/rindices
    
    * camera_ids and gaussian_ids: int32 -> int64
    
    * rename: compute_means2d_absgrad -> absgrad
    
    * support tensorboard in simple trainer
    
    * format
    
    * minor
    
    * move ninja to necessary requirement
    
    * minor
    
    * profiling mem history
    
    * minor cleanup for warning
    
    * use DoubleBuffer for radixsort. mem efficient
    
    * memory_history includes backward
    
    * support depth loss
    
    * black format
    
    * cu file formats
    
    * minor dataset fix
    
    * Update nerfview scripts (#202)
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>
    Co-authored-by: JunchenLiu <liujunchen0214@gmail.com>
    Co-authored-by: Brent Yi <yibrenth@gmail.com>
    Co-authored-by: Hang <hangg.sv7@gmail.com>

[33mcommit dcc4dc30592487ca807351f3670b7f685ca421d5[m
Author: Zhizheng Xiang (向 志政) <xiang.zhizheng@image.iit.tsukuba.ac.jp>
Date:   Fri Jun 7 00:22:49 2024 +0900

    Support for Python 3.7.13 (#198)
    
    * fetch py3.7
    
    * black check done

[33mcommit 7b6309645ebab69febbe85a83568435d11afe8cf[m
Author: Forrest Iandola <fiandola@gmail.com>
Date:   Wed Jun 5 12:00:38 2024 -0700

    add Ninja to requirements (#199)

[33mcommit a9fa5d6a67b70d8809b9140581e186fac0ef5214[m
Author: Alex Jean <ajean757@gmail.com>
Date:   Sat Jun 1 22:01:00 2024 -0700

    Fixed broken link in README.md (#195)
    
    Link to evaluation page was broken, replaced with latest results

[33mcommit 0e09fa581e389d4cb96f7981a17c34c840cedae1[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu May 30 10:05:35 2024 -0700

    Update doc.yml

[33mcommit 2d456983e345ebbfa65ab3b119a02113b84b4cf6[m[33m ([m[1;33mtag: v0.1.12[m[33m)[m
Author: Ruilong Li <397653553@qq.com>
Date:   Wed May 29 21:33:02 2024 +0000

    bump to 0.1.12

[33mcommit 0acd460876caa2b84356a2adc14c503bf73baca4[m
Author: Yuchen Fan <fyc0624@gmail.com>
Date:   Tue May 28 22:21:30 2024 -0700

    create JIT compilation configs if necessary (#164)

[33mcommit d5af8be04d268a72f9a246a30e6a1a5134ae1d63[m
Author: Simon Fraser <36797898+SimonF24@users.noreply.github.com>
Date:   Tue May 28 22:20:00 2024 -0700

    Update project_pix to use eps (#192)

[33mcommit 74aba6361d2ebc2e3a9ea4e879d541065e53b01b[m
Author: Otto Seiskari <otto.seiskari@gmail.com>
Date:   Tue May 28 23:57:29 2024 +0300

    Improve numerical stability of _torch_impl.project_cov3d_ewa (#182)
    
    * Improve numerical stability of _torch_impl.project_cov3d_ewa
    
    * Linter fix: reformat _torch_impl.py

[33mcommit b89c181dd3d538236a59fe0ba94de82cd98d48d1[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Mon May 27 11:35:14 2024 -0700

    Fix version value for Sphinx (#191)

[33mcommit 1edff9317367fcb00a0242c6d2318d035b33518e[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon May 27 11:18:56 2024 -0700

    fix github link (#190)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 283c83153366ea1b510f91c96bc65538a84afd2d[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon May 27 11:12:45 2024 -0700

    Doc update (#189)
    
    * move github button to left
    
    * fix brand
    
    * docs update
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 77b0940b69da9fad769cd728683680ae1fe38c9c[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon May 27 11:03:08 2024 -0700

    Doc update (#188)
    
    * move github button to left
    
    * fix brand
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 8f1d27e1bd19fb30a40088395d171e41e4e30263[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon May 27 11:00:28 2024 -0700

    move github button to left (#187)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 58a6c03dc20df4c2281e750267810922ef213a43[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon May 27 10:43:45 2024 -0700

    Doc version (#186)
    
    * enable doc versioning
    
    * minor fix
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 4b296bd537de81b8b0597c3a4d2eac475e1c2bab[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon May 27 10:39:57 2024 -0700

    enable doc versioning (#185)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 409bcd3cf63491710444e60c29d3c44608d8eafd[m
Author: Congrong Xu <50019703+KevinXu02@users.noreply.github.com>
Date:   Tue May 7 08:22:27 2024 -0700

    Add backward gradient for background (#170)
    
    * bg grad
    
    * delete lines for debug
    
    * .
    
    * only compute bg grad when needed
    
    * reformat

[33mcommit 2ddee2a7d62d079dc2e169b5aca86c795db9753e[m[33m ([m[1;33mtag: v0.1.11[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Apr 29 11:18:06 2024 -0700

    Implement AbsGS (#166)
    
    * absgrad
    
    * add version bump
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>
    Co-authored-by: Jianbo Ye <jianboye@amazon.com>
    Co-authored-by: Justin Kerr <justin.g.kerr@gmail.com>

[33mcommit 8a1903446361bf7eeb38a25fdb6fa1e6a94f769f[m
Author: YertleTurtleGit <34098804+YertleTurtleGit@users.noreply.github.com>
Date:   Mon Apr 29 18:24:20 2024 +0200

    return result array for lower sh degrees (#171)

[33mcommit 0cef46cb4e1758a11c6317246ff165dd147989a3[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Mon Apr 22 10:03:44 2024 -0400

    Fast SH implementation (#165)
    
    * implement and profile new sh
    
    * rewrite fast sh
    
    * clean up
    
    * fix naming of tmp variable
    
    * reformat
    
    * clean and add comments
    
    * minor
    
    * profile sh
    
    * format
    
    * fix typo
    
    * auto diff check for fast sh
    
    * minor
    
    ---------
    
    Co-authored-by: Jianbo Ye <jianboye@amazon.com>
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit c54fe8b5fa54f0c1b64c576da62516265e4d3dc8[m[33m ([m[1;33mtag: v0.1.10[m[33m)[m
Author: Maxim Bonnaerens <maxim@bonnaerens.be>
Date:   Tue Apr 2 16:24:33 2024 +0200

    Check for normalized quats. (#155)

[33mcommit 4609d3bfa3fddb9f2c50af5250a677db67cbf49e[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Tue Apr 2 09:58:49 2024 -0400

    Fix missing +0.5 in calculating uv coordinate (#151)

[33mcommit 2135488e27f2ee3c00de13d16b583605050614f0[m[33m ([m[1;33mtag: v0.1.9[m[33m)[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Thu Mar 28 11:46:59 2024 -0700

    version bump (#150)

[33mcommit 2d69aaf704cc7208b0d7a90794d286c49d758e70[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Wed Mar 27 09:52:40 2024 -0700

    remove projmat from API (#149)
    
    * remove 'projmat' arg

[33mcommit 1516b9daf9742826fb77c11a4c07dfcb27713329[m
Author: Otto Seiskari <otto.seiskari@gmail.com>
Date:   Tue Mar 26 19:06:05 2024 +0200

    Implement approximate gradient for viewmat (#127)
    
    Allows camera pose optimization in Nerfstudio

[33mcommit 797a3630d23d601ab6b8ff4231d5b584b5b652c0[m
Author: Otto Seiskari <otto.seiskari@gmail.com>
Date:   Tue Mar 26 19:03:26 2024 +0200

    Remove redundant projection matrix (#97)
    
    * Remove projection matrix
    
    Which was redundant with the pinhole intrinsics parameters fx, fy, cx, cy.
    Leave the projmat parameter to ProjectGaussians for backwards compatibility.
    
    * Remove projmat also from _torch_impl to fix tests

[33mcommit 328cc3e5e5af37ccb839e87bbebc9ead4eb6184b[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Mon Mar 18 10:24:13 2024 -0700

    Small CUDA changes for nd rasterization (#144)
    
    * small improvements to nd speed

[33mcommit fecca4f02752dd65f6349396d88243e640dd22f1[m[33m ([m[1;33mtag: v0.1.8[m[33m)[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Mon Mar 4 21:55:33 2024 -0500

    add backprop grad for opacity compensation (#140)

[33mcommit 94cbd12ca6a113585fdc433c98093d60f0aee9b3[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Mon Mar 4 14:22:13 2024 -0500

    Fix v_mean3d in project_gaussians and v_conic calculation in *rasterize_backward_kernel (#139)

[33mcommit c45cbdc86fbf1b8b7dc41a33b6f741e9d08f08dc[m[33m ([m[1;33mtag: v0.1.7[m[33m)[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Wed Feb 28 14:54:27 2024 -0500

    Fix backprop grad of cov2d and unit tests (#136)

[33mcommit 24215cb23e2bb5bdcfc9cdf67b98ce8e49a718b1[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Sat Feb 24 11:16:00 2024 -0800

    add device guard (#135)

[33mcommit a45e203ad0935c30c6c1050f621e01187ecdd41e[m
Author: AdamRashid96 <71362382+AdamRashid96@users.noreply.github.com>
Date:   Thu Feb 22 15:05:01 2024 -0800

    Eval table (#134)
    
    * table
    
    * test table
    
    * tables
    
    * eval description
    
    * readme

[33mcommit 487b0a86bbbd25f1433f7e8ed8f95276cfd5318f[m[33m ([m[1;33mtag: v0.1.6[m[33m)[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Tue Feb 20 13:47:27 2024 -0800

    0.1.6 bump (#131)

[33mcommit 46bd547d9ee29bf209f3fb1106775ae1caca5ca6[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Tue Feb 20 13:40:20 2024 -0800

    Speed up ND rasterization (#130)
    
    * refactor block size to be dynamic, hide tile_bounds from interface, update tests to reflect this change
    
    * allocate as much shared memory as possible based on block size
    
    * revert to old method, replace workspace with shared mem
    
    * speedup on nd backward w/ some warp operations
    
    * add fp16 headers
    
    * 128->3 in simple trainer
    
    * lint
    
    * remove comment
    
    * remove cudaPeekAtLastError

[33mcommit 10bc1d0cb46b5b04d8478fd1dbebb16f3699c91c[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Tue Feb 20 12:57:13 2024 -0800

    Refactor interfaces to hide tile_bounds and allow dynamic block_size (#129)
    
    * refactor block size to be dynamic, hide tile_bounds from interface, update tests to reflect this change
    
    * block_size->block_width, lint
    
    * lint

[33mcommit aa1ff651cf0bfdc0919bf55c3176d58c7c8043cd[m[33m ([m[1;33mtag: v0.1.5[m[33m)[m
Author: Brunwo <bwagner57@gmail.com>
Date:   Tue Feb 13 20:10:45 2024 +0100

    fixed missing return type in simple_trainer.py (#126)

[33mcommit 2d335201809eaa7033dd4fd140bd6325c24bc37d[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Fri Feb 9 10:48:25 2024 -0500

    Fix core tests (#125)

[33mcommit d7fe65436e7e786f569b5eb83d49a73d6483008a[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Thu Feb 8 20:44:12 2024 -0500

    Bump version to 0.1.5 to annotate updated interface of project_gaussian() (#124)

[33mcommit bb01f14c43cda933315c0dfab33eedfd5f2665e1[m
Author: J.Y <132313008+jb-ye@users.noreply.github.com>
Date:   Thu Feb 8 15:08:21 2024 -0500

    Compute density compensation for screen space blurring (#117)

[33mcommit 9fffa1a27a92eaaf8ff7c10a20f2fa95d893645d[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Feb 8 11:43:38 2024 -0800

    updating project gaussians torch impl and numerical tests (#118)
    
    * updating project gaussians torch impl and numerical tests
    
    * zero out gaussians not in view when projecting
    
    * update tests to also check masked regions
    
    * switch in-place with torch.where
    
    * rm torch compile
    
    * lint
    
    ---------
    
    Co-authored-by: Justin Kerr <justin.g.kerr@gmail.com>

[33mcommit 210ed538629ad4e80c033c6fd690149ff2a7ac78[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Thu Feb 1 20:06:15 2024 +0200

    fix typing (#116)

[33mcommit e13eff49073edfc54f9d995922694eaeb7c2e859[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jan 31 17:24:34 2024 -0800

    fix get_tile_bin_edges; revert ndc2pix (#113)

[33mcommit 0f71be883fd3c4b61a99ba72afa1f9cd95f1cc2e[m[33m ([m[1;33mtag: v0.1.4[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jan 31 13:31:54 2024 -0800

    Bump to 0.1.4

[33mcommit 25be7a323b4cac063278ff24e176fa808336a2b3[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jan 31 13:16:16 2024 -0800

    Fix rendering bug (#112)
    
    * fix get_tile_bin_edges
    
    * ndc2pix -0.5 to +0.5
    
    * format

[33mcommit 2e6ae0e7502c4ed789c28653c2f546cd0b235e4f[m[33m ([m[1;33mtag: v0.1.3[m[33m)[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Thu Jan 25 10:54:48 2024 -0800

    version bump (#110)

[33mcommit 87159918cfa7459bbebeb114dd4f1bb9c9310d3e[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Jan 24 18:56:42 2024 -0800

    handling case in rasterization if there are no intersections in view (#109)

[33mcommit 45b253f43a8d65904e2df5aaccccb584bd49fc77[m
Author: Ruilong Li <ruilongli94@gmail.com>
Date:   Wed Jan 24 22:03:35 2024 +0000

    format

[33mcommit a4586773591a876e4ceebd2ef0c4756c0c2fbf27[m
Author: Piero Toffanin <pt@masseranolabs.com>
Date:   Mon Jan 22 16:46:12 2024 -0500

    Fix build detection on Windows (#106)

[33mcommit 97732cd561e43191c3b6148c96767bb7695aa6e7[m
Author: AI葵 <kwea123@gmail.com>
Date:   Sun Jan 21 19:06:24 2024 +0800

    fix simple trainer (#105)
    
    Co-authored-by: Quei-An Chen <quei-an@lumalabs.ai>

[33mcommit 3776352cfcbb42d65e20f06b622974b2db3c1736[m
Author: Hardik Dava <39372750+hardikdava@users.noreply.github.com>
Date:   Wed Jan 17 23:10:49 2024 +0100

    Test and example trainer updated (#102)
    
    * Update simple_trainer.py
    
    * Update test_rasterize.py

[33mcommit 5020ed6fe504eaac1c15351c260fcb7d0648fb27[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Jan 17 13:26:58 2024 -0800

    fix type annot (#104)

[33mcommit 0c305abd816c74245ecdbb66395c841be72407cf[m[33m ([m[1;33mtag: v0.1.2.1[m[33m)[m
Author: Zhuoyang Pan <102644383+Zhuoyang-Pan@users.noreply.github.com>
Date:   Tue Jan 16 10:46:07 2024 -0800

    Update forward & backward for rendered alpha image (#70)
    
    * finish alpha forward & backward
    
    * black format
    
    * fix some merging issues
    
    * remove unnecessary .cuda()
    
    * add return_alpha keyword
    
    * add some notes
    
    * black reformat

[33mcommit e8696bd7d7669f84e1add2733d3798f96c800919[m[33m ([m[1;33mtag: v0.1.2[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Mon Jan 8 19:11:50 2024 -0800

    Update version.py

[33mcommit 8642e0c5b90549b61881ce8cad9594d662e95f7d[m
Author: Ruilong Li <ruilongli94@gmail.com>
Date:   Tue Jan 9 02:55:52 2024 +0000

    format

[33mcommit cc98282cc234c5a309e7d0f8fdb4ba2d656ec89e[m
Author: Ruilong Li <ruilongli94@gmail.com>
Date:   Tue Jan 9 02:55:21 2024 +0000

    merge nd_rast to rast

[33mcommit 857f407dc915bba05e029e689671e25503a1d20b[m
Author: Ruilong Li <ruilongli94@gmail.com>
Date:   Tue Jan 9 02:46:35 2024 +0000

    cleanup

[33mcommit 0527c6e422b214d22f9d422479d85e7a0347bffd[m
Author: Ruilong Li <ruilongli94@gmail.com>
Date:   Tue Jan 9 02:16:11 2024 +0000

    cleanup classes to functions

[33mcommit bae873819fe2d50b4bf097117842d15f17d3a572[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Jan 3 11:35:58 2024 -0800

    fixing edge case with single intersection (#95)

[33mcommit 9b56b475e8459d56e3b020e57676e409cac26aab[m[33m ([m[1;33mtag: v0.1.1[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Dec 29 14:12:34 2023 -0800

    bump to 0.1.1 (#94)

[33mcommit 013352027b02360036addb2beadebf92f67feb3e[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Dec 29 14:08:23 2023 -0800

    Update nd_rasterize.py (#93)
    
    fix #83

[33mcommit e7513c833a08ca73ce20f4f6de2ff2f74b013e83[m
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Dec 15 13:37:23 2023 -0800

    rm ninja build lock

[33mcommit 7822c32cdc00caf1a1f0ad8543bcf9c1233deb5e[m
Author: akanazawa <akanazawa@users.noreply.github.com>
Date:   Thu Dec 14 16:26:19 2023 -0800

    Update README.md

[33mcommit dbd0cab31d0ad2e811c8b7511fc03dc65dcecf6a[m[33m ([m[1;33mtag: v0.1.0[m[33m)[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Wed Dec 13 12:15:33 2023 -0800

    Bump version to 0.1.0 (#82)

[33mcommit 6c92edd0e5ff808c9b171d9e38c1bf29e844ec7d[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Dec 7 15:15:28 2023 -0500

    Add LICENSE

[33mcommit 2a5a3cb1ebbe24e34fcea3445a8fe40ca3497cbb[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Dec 7 15:14:46 2023 -0500

    Update README.md

[33mcommit 189461353980775c3d407b607ca660a2de593a93[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Dec 5 10:39:58 2023 -0800

    Unnecessary CUDA code cleanup (#78)
    
    * cleanup
    
    * bkgd fix
    
    * get rid of cumsum
    
    * cleanup naming
    
    * cleanup namings
    
    * rm unused import
    
    * no cub import
    
    * black
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 6e470d1aa788d89406ad3e9c23a114fe21418839[m
Author: Ikko Eltociear Ashimine <eltociear@gmail.com>
Date:   Wed Dec 6 02:05:45 2023 +0900

    Update README.md (#80)
    
    libary -> library

[33mcommit 3f4f386aab71b127cf4174d5ff978187c006bd1a[m
Author: akanazawa <akanazawa@users.noreply.github.com>
Date:   Tue Nov 7 18:06:43 2023 -0800

    Update README.md

[33mcommit c41ca5953f56887e9ae71f7b67f4751939284852[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Nov 7 18:01:58 2023 -0800

    adding citation cff (#72)
    
    * adding citation cff
    
    * Update CITATION.cff

[33mcommit cf0459d50e730ebbd0f2f106c9a2e40bf44523cb[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Wed Nov 1 09:46:31 2023 -0700

    CUDA optimizations (#67)
    
    * warp aggregated reduce in rasterize backwards, constant mem in SH
    
    * refactor shared mem as float3 loads
    
    * __restrict__ prefixes
    
    * SH refactor to avoid contiguous call
    
    * add lineinfo, fast-math to compile
    
    * lineinfo option
    
    * add timing to simple_trainer
    
    ---------

[33mcommit 3a22dd497eaebf57394b7ee84f3a75b2d32d6ce1[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Thu Oct 19 22:07:09 2023 +0300

    no inplace operations, differentiable now (#59)

[33mcommit be52802642cd4dbde71b25e02a0ae5442fd0a9b8[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Wed Oct 18 09:51:39 2023 +0300

    nd_rasterizer docs and exposed to __init__ module (#51)

[33mcommit d96d59d47b8de3bd0a86afd50f63945d4fb7b3f9[m
Author: machenmusik <machenmusik@users.noreply.github.com>
Date:   Tue Oct 17 20:54:21 2023 -0400

    Avoid nvcc compilation error (#55)
    
    Added define as per https://github.com/facebookresearch/pytorch3d/issues/1614#issuecomment-1720411236
    
    Co-authored-by: Chen, Michael <Michael_Chen@cable.comcast.com>

[33mcommit a22056aff38b510f0e69caa8dad1ed435d0bcbbc[m
Author: imlixinyang <1034298388@qq.com>
Date:   Tue Oct 17 18:02:53 2023 +0800

    remove point-wise init in simple_trainer.py. (#53)
    
    * remove point-wise init in simple_trainer.py.
    
    * black formatting
    
    ---------
    
    Co-authored-by: maturk <matiasturkulainen@gmail.com>

[33mcommit a8a7c45d338cfcf4c0573956e46f97bb91f3c0ff[m
Author: William Stein <wstein@gmail.com>
Date:   Sat Oct 14 08:07:07 2023 -0700

    fix trivial typo (#49)

[33mcommit 82da7f0690dbf54145e7d7b4833a90232f811919[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Oct 14 00:02:24 2023 +0000

    moving experimental into separate branch

[33mcommit c1f1d702a772efafa55fbd64cd413ad89b8f9513[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Oct 14 00:01:23 2023 +0000

    moving experimental into branch

[33mcommit 29e034ba4358eed14c5f4dba2290be5f584303ce[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 13 23:58:05 2023 +0000

    initial pass of passing through gradients for projection matrix

[33mcommit 2e7d14594badbda52c9167a39a63d54e7fc1d983[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 13 16:52:33 2023 -0700

    cleanup CMakelists.txt (#42)
    
    * clean up cmakelists
    
    * remove unnecessary dependency
    
    ---------
    
    Co-authored-by: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>

[33mcommit 9adf486c226d8e7d2fb2043c4ac046592c4993b7[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 14:11:10 2023 -0700

    Workflow for all permutation building test (#47)

[33mcommit aadf3e9f225947e82236489459396c56cac1c545[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 13:48:30 2023 -0700

    fix for windows (#46)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 3414eff460d4dcfe3ee8c2f392ae7920598a4e46[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 13:24:58 2023 -0700

    Keep fixing float3 error (#45)

[33mcommit c7c7ad25027327d93a829ff7b939fc667ead6812[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 12:49:00 2023 -0700

    float3 fix (#44)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 4926915ee3d1d02686812fc4d98e6b3c829b4aac[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 11:56:53 2023 -0700

    include cstdint for c++11 (#43)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit dadf5160edaade694b15aac20abdd5d06d005f64[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 11:00:15 2023 -0700

    num_sh_bases() is used in both host and device (#41)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit f6b07c8cda3530f0a9206b0a0a29215eb158c27f[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 13 10:47:14 2023 -0700

    Create LICENSE
    
    adding Apache 2.0 license

[33mcommit a7a82229afb0a9251d3daf2d651fbeafdc067eac[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 10:39:31 2023 -0700

    add submodules in workflow (#40)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit c9062d1f88e39d9b0e7084c71efdd00af53e1671[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 10:18:58 2023 -0700

    some helper files for build test (#39)
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit 88577be64195ffa5c51f1feca4e5e17e58961002[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 10:04:59 2023 -0700

    Add workflow for building test across plantforms & pytorch & CUDA (#38)
    
    * workflow for pypi publish
    
    * workflow for building wheels on github
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>
    Co-authored-by: Vickie Ye <vye1116@gmail.com>

[33mcommit ee9f1b6a19a654529b05813d60d4c33fc189e383[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Oct 13 19:44:34 2023 +0300

    remove unnecessary host compile (#37)

[33mcommit 6b65ae49506a976e86b484ff2c872586bad52cbe[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 04:09:04 2023 -0700

    Update URL to http://www.gsplat.studio/ in README (#36)

[33mcommit 99bb8b6ef2fd14b804913127930b767d5ceac3cb[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Oct 13 00:53:57 2023 -0700

    Cleanup README, Move some instructions to docs/DEV.md (#33)
    
    * workflow for pypi publish
    
    * update readme and DEV.md
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>
    Co-authored-by: Vickie Ye <vye1116@gmail.com>

[33mcommit db8ea4baa533349f18dd93b826192e19640db127[m
Merge: 0d02c70 070f935
Author: Matthew Tancik <matt@lumalabs.ai>
Date:   Thu Oct 12 20:07:13 2023 -0700

    Merge pull request #34 from nerfstudio-project/liruilong940607-patch-1
    
    Update doc.yml with cname

[33mcommit 070f9354b8f57203dff71088b9d787f0722f7309[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Thu Oct 12 20:00:23 2023 -0700

    Update doc.yml with cname

[33mcommit 0d02c70de33cb3551209d5848a1f146377e31206[m
Merge: f3100ce 10dd8c7
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 13 01:20:30 2023 +0000

    Merge branch 'main' of github.com:nerfstudio-project/gsplat

[33mcommit f3100ce86763f5a3b51c1f09e4dfb5ec3e48afea[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 13 01:20:02 2023 +0000

    update pypi url and version

[33mcommit 10dd8c7887b4dc16b0bb61a3cbbd5073a3ad0199[m
Merge: 19417fe 2839284
Author: Matthew Tancik <matt@lumalabs.ai>
Date:   Thu Oct 12 18:09:04 2023 -0700

    Merge pull request #32 from nerfstudio-project/tancik/docs_github_link
    
    Add github link in docs

[33mcommit 28392840ca725156b1d98df7ca4bc05e8417e915[m[33m ([m[1;31morigin/tancik/docs_github_link[m[33m)[m
Author: Matt Tancik <matt@lumalabs.ai>
Date:   Thu Oct 12 17:51:27 2023 -0700

    Add github link in docs

[33mcommit 19417febf018e353e8ef85f8d26f0f127345ae84[m
Merge: 064f3d4 12e19fb
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 23:42:30 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit 064f3d4440d7bb0cd0a083ab5d8921fa41747235[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 23:42:11 2023 +0000

    fix lost third_party dir

[33mcommit 12e19fb2c84c3804a4c9a96758b3a74be26851bd[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Oct 12 16:41:33 2023 -0700

    get back the glm submodule

[33mcommit 5241bd8167e5b376db839a6fdc085408eb8c51e5[m
Merge: 9677334 df1b3ef
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 16:28:37 2023 -0700

    Merge pull request #31 from vye16/backwards-speedup
    
    Shared memory optimization (10-20% increase) + ND support

[33mcommit df1b3efab23c0f7310c9a1ae653dc7a738558961[m[33m ([m[1;31morigin/backwards-speedup[m[33m)[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 23:21:59 2023 +0000

    reformatting test script for checks to pass

[33mcommit 0afd3a0e0b458f683d3124826a37d8a9d67d11ef[m
Merge: 68c30ed 9677334
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 23:17:08 2023 +0000

    merge with renaming might have broken everything

[33mcommit 68c30edc5b1cc565ea6b11b73afcf25921000585[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 23:11:56 2023 +0000

    remove __host__ compilation of device helpers

[33mcommit 9677334721426fdf08755a05f264f495ff0ece5c[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Oct 13 02:04:09 2023 +0300

    rename to gsplat (#30)

[33mcommit 39d0d758af74314b500c9a8ef718ef2d8fee2a98[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 22:11:08 2023 +0000

    clean up comments

[33mcommit ab9d88b5af15cdfcaac5b66ed2503066fdd3066c[m
Merge: 9213e99 a2cdd99
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 21:58:06 2023 +0000

    Merge branch 'main' into backwards-speedup

[33mcommit 9213e990aa163239fb69210d87bead1e75028779[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Oct 12 21:51:10 2023 +0000

    made separate 3d and nd rasterization code paths

[33mcommit 27c61cc7b6c6b5e3eae7e295b00352455e70e1df[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Thu Oct 12 13:46:15 2023 -0700

    vectorized color arrays

[33mcommit a2cdd998c90261eb746a038ca478a0688efc1c11[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Thu Oct 12 22:39:35 2023 +0300

    cuda conventions (#29)

[33mcommit 3eddffc85a2bdfca8639b6bdbe449b38142f7123[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Thu Oct 12 00:58:46 2023 -0700

    backwards works yay

[33mcommit c468bb2bbe830a700c51f2b884d6fb2367a48a21[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Wed Oct 11 10:57:21 2023 -0700

    float3 chunking in forward rasterize

[33mcommit 7d6c28bb79a153086442d4cf155a1fee30c15b57[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Oct 11 04:46:49 2023 +0000

    added missing thread sync event

[33mcommit e8a12ebd874d87cf7dc2de695f85391d16e7f8f5[m
Merge: f62788a 29a270b
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Oct 11 04:18:09 2023 +0000

    Merge branch 'vickie/shared-mem' of github.com:vye16/3dgs-exercise into vickie/shared-mem

[33mcommit f62788a2cefc5f109bc1076b88212700ecfa4934[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Oct 11 04:18:05 2023 +0000

    testing forward and backward

[33mcommit 29a270b74dce2f1913dfc12786edcda1fc44f100[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Tue Oct 10 19:51:22 2023 -0700

    accumulate pix output value in buffer in rasterize, remove means2d

[33mcommit 0ae199f6b3da88bd6701c5137c4f393fc6a8a027[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Oct 11 00:26:23 2023 +0000

    fixed broken slow_rasterize import

[33mcommit c359fa26e13868530518eb1913e984beffc6c701[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Oct 11 00:21:01 2023 +0000

    adding boilerplate to compare og and new implementations

[33mcommit 915f650508d60d0b70a1ed412d3e9b7fcb91e4f5[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Oct 11 00:12:39 2023 +0000

    code dump

[33mcommit 6bb36022df939239e3862ffd4661662c1339166b[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Oct 7 09:39:46 2023 +0300

    clip_tresh in docs

[33mcommit d0e52f20d4725a2a3a2916e5fd2adbc63c2d19d7[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Oct 7 01:36:18 2023 +0000

    more than 3 channels supported woot woot

[33mcommit ed71a41711b0fe1a793d73242934260ef16ce6c2[m
Merge: 0ce27fa 2c3ff09
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:47:22 2023 +0000

    merging with main

[33mcommit 0ce27fa061600a9135e2cb9b7173c02288faefae[m
Merge: b69444f 5c51af8
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:45:41 2023 +0000

    merging with main

[33mcommit b69444fc7e4c52934f054700c7cdbaab83a71bd0[m
Merge: c9b2117 b804491
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:43:17 2023 +0000

    Merge branch 'vickie/prop-xy-grad' into vickie/nd-support

[33mcommit b804491610c637509bc06a19c4da490f729ac376[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:42:45 2023 +0000

    fix rasterize output order

[33mcommit dee2fe29de5fa355935b9a1427802040c3b6a3b2[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:42:18 2023 +0000

    updating simple trainer with new args

[33mcommit 781de01441de418c51fb7567bbc709af2b819bb0[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:38:53 2023 +0000

    adding intrinsics for forward

[33mcommit c9b2117f3e1016dc97b6689fd1cd9ace4ec2a8d9[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 19:37:32 2023 +0000

    starting nd gaussians support

[33mcommit 2c3ff09f64e50561266e042d04b576745da66fec[m
Author: Zhuoyang Pan <102644383+Zhuoyang-Pan@users.noreply.github.com>
Date:   Fri Oct 6 08:08:38 2023 -0700

    Update the pybinding of rasterize_forward_kernel (#28)
    
    * add get_tile_bin_edges binding
    
    * finish pybinding for get_tile_bin_edges and fix the bug of tile_idx
    
    * use _masks to not get negative depths
    
    * finish bin_and_sort_gaussians and fix some bugs of _torch_impl
    
    * update docs
    
    * python wrappers for pybindings
    
    * update tests to use wrappers and fix num_points consistency
    
    * format
    
    * finish rasterize_forward_kernel & fix possible bugs
    
    * finish rasterize_forward_kernel
    
    * fix the naming issue
    
    * black formatting
    
    * update docs with new binding
    
    ---------
    
    Co-authored-by: maturk <matiasturkulainen@gmail.com>

[33mcommit 3601c1ad796a0de056b5b6db73f77bf3d289a921[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Oct 6 11:14:32 2023 +0300

    Docs: add brief intro, training image, and citation (#20)
    
    * Docs: add brief intro, training image, and citation
    
    * format
    
    * init docs for examples
    
    * Docs for cuda bindings and tests
    
    * brief description + equations for proj and rast functions
    
    * even prettier equations
    
    * update tests
    
    * add data conventions
    
    * better docs

[33mcommit 2b795be2c01ee818300913b77f7bf0e4cb111156[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Oct 6 07:42:30 2023 +0000

    fixing xy difference -> tiling bug

[33mcommit 510495d6032ab33bbec395b41138a1ef8e8f6e5b[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Thu Oct 5 15:45:52 2023 +0300

    fix return types (#27)

[33mcommit 6a3b9d240cb78a860aae888e0d74cd332adfac7c[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Thu Oct 5 13:33:16 2023 +0300

    Expose more bindings to module (#26)
    
    * update __init__ with more bindings
    
    * format

[33mcommit bc8183d7f1b29c850c74f23edf8d7d8a3be5e7d4[m
Author: Zhuoyang Pan <102644383+Zhuoyang-Pan@users.noreply.github.com>
Date:   Thu Oct 5 01:15:45 2023 -0700

    Updates for pybindings (#24)
    
    * add get_tile_bin_edges binding
    
    * finish pybinding for get_tile_bin_edges and fix the bug of tile_idx
    
    * use _masks to not get negative depths
    
    * finish bin_and_sort_gaussians and fix some bugs of _torch_impl
    
    * update docs
    
    * python wrappers for pybindings
    
    * update tests to use wrappers and fix num_points consistency
    
    * format
    
    ---------
    
    Co-authored-by: maturk <matiasturkulainen@gmail.com>

[33mcommit 7789aeb5892b066066a9846c73a637adefd029a6[m
Merge: 1c36f4a dab7cdb
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Wed Oct 4 06:14:50 2023 +0300

    Merge pull request #23 from vye16/del_old_ref
    
    del old ref trainers

[33mcommit 1c36f4ac7c8bd00b8bee140d097603229b636ffa[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Tue Oct 3 20:12:55 2023 +0200

    Update MANIFEST.in to include cuda files

[33mcommit dab7cdbb67aebc39a17818ab8c6a9a6fb9140d14[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Oct 3 13:44:20 2023 +0300

    del old ref trainers

[33mcommit 5c51af88fe0ec0cbdc7e424b0c7fd8384c5ef159[m
Merge: b1dcf68 d68652b
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Tue Oct 3 13:40:09 2023 +0300

    Merge pull request #22 from vye16/test_shs
    
    refactor and move SH test

[33mcommit d68652b527702664fac71e7f3e575106ee92f313[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Oct 3 13:37:09 2023 +0300

    format

[33mcommit 303f3daf3b09f19eb017950c9a65c7ab83a09f36[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Oct 3 13:33:35 2023 +0300

    refactor and move SH test

[33mcommit b1dcf68a76c430dcd748692a25c5b78f01b80077[m
Merge: 3eb9cce 3297c34
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Tue Oct 3 11:40:44 2023 +0300

    Merge pull request #21 from vye16/zhuoyang/bindings
    
    Zhuoyang & Maturk Pybindings Update

[33mcommit 3297c34f8ddb2b818f08a3b8db016d6541120fe7[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Oct 3 11:39:34 2023 +0300

    extra space for consistencty

[33mcommit c1bc06a660db9aa7c46b3c003a1ebe7a8bc8d940[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Oct 3 11:36:35 2023 +0300

    clang-format

[33mcommit 3eb9ccea07bf6fa404a15dc656f5581957cc668b[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Oct 3 11:25:55 2023 +0300

    add custom img and flags

[33mcommit e161f12e9f0589459af2accd561fb95bab7196fe[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Oct 3 06:06:43 2023 +0000

    adding depth contribution to mean3d gradient

[33mcommit bf326dfab42ee8d4de4b353084dd60bb47db2877[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Oct 3 05:06:10 2023 +0000

    allowing xy grads to propagate

[33mcommit 376600dd913c3e2c208e7d57f8d04247b44579a3[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Mon Oct 2 13:50:45 2023 -0700

    fix cuda check

[33mcommit 3dc1948c5cfa83014f55cd8709d06c939049f841[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Mon Oct 2 13:46:40 2023 -0700

    reformat to black version 22.3.0

[33mcommit d60516d52c8ed546fb4f1c05b9b1d21a93daa1e2[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Mon Oct 2 13:39:38 2023 -0700

    black formatting

[33mcommit e34b62194041b4485622fb321e78c8bd761fbd30[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Mon Oct 2 13:24:49 2023 -0700

    finish map_gaussians

[33mcommit 2ab33dc3fcce39535bb51f27944db5a630ea0881[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Oct 2 16:38:12 2023 +0300

    project gaussians test impl

[33mcommit 1077fd1bdc175885e989a8d8affbdad3a847f515[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Sun Oct 1 04:11:12 2023 -0700

    finish cumulative check & part of mapping

[33mcommit 3b6e04613a6e89c34f542de212b42660b038c11d[m
Merge: e45213e 16d523b
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Sun Oct 1 01:41:20 2023 -0700

    merge

[33mcommit e45213ef44f92a99b241151d9f34bbc96c51c08c[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Sun Oct 1 01:35:47 2023 -0700

    fix testing

[33mcommit f23a5a2c532c7004671d0a19077c88f48700dcdc[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Sat Sep 30 02:18:59 2023 -0700

    add compute_cumulative_intersects_tensor

[33mcommit 16d523b59def850f45d667a5d598c76736be5a85[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 14:59:03 2023 -0700

    Update README.md

[33mcommit 984ca9bb2ca9693bb1e5d7d74d4a6b04d51373ff[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 14:55:31 2023 -0700

    Update README.md

[33mcommit 0b68b9fc5e6db6186726ce51d4e0bdb4310be05c[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 14:52:43 2023 -0700

    auto test and doc (#19)
    
    * auto test and doc
    
    * black
    
    * update workflow
    
    * inst
    
    * dep in workflow
    
    * updates
    
    * a bit instr
    
    ---------
    
    Co-authored-by: Ruilong Li <397653553@qq.com>

[33mcommit dc4470c1e4dc1b7c8901ba2ed046fbc57b046983[m
Merge: 0ab96f2 b5df54f
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 14:17:10 2023 -0700

    Merge pull request #18 from vye16/dev_instr
    
    dev instructions

[33mcommit b5df54f07adee45e785f43d703e297b2b3ec3c73[m
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Sep 29 14:11:57 2023 -0700

    dev instructions

[33mcommit 0ab96f2b27cb69d96143d3ad9cd26cb2fb2b9511[m
Merge: 9241eb8 ca9c1c2
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 14:11:33 2023 -0700

    Merge pull request #17 from vye16/liruilong940607-patch-1
    
    Enable core tests on main branch

[33mcommit ca9c1c2ac7f30a928d0175dc37b1793e2226630f[m
Author: Ruilong Li <397653553@qq.com>
Date:   Fri Sep 29 13:52:44 2023 -0700

    format

[33mcommit 233d418c6a0991f6e2a9e3c2d9ef63eda381b616[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 12:54:12 2023 -0700

    Enable core tests on main branch

[33mcommit 9241eb8d94751f271dbaa75a8512b829a10e223a[m
Author: Ruilong Li(李瑞龙) <ruilongli94@gmail.com>
Date:   Fri Sep 29 12:06:21 2023 -0700

    don't deploy doc with pull request

[33mcommit 0f550cf2e1aa9ba162d5af2653271df619204b6e[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 29 18:42:08 2023 +0000

    adding adjustable clip plane, making bindings take tensor& not tensor for efficiency

[33mcommit 90505e92e6a6c5a9a190ef776eb23fb16dd6d85e[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Fri Sep 29 16:14:56 2023 +0300

    init tests

[33mcommit b0e0dbf8f089ca0a26ae1f3603943269ca5c3c0b[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Fri Sep 29 16:14:30 2023 +0300

    init cov2d_bounds python bindings

[33mcommit 1b91b7c67bdc9637383ab9185ba2b20771c127a4[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Fri Sep 29 16:07:37 2023 +0300

    keep pure pytorch functions for testing

[33mcommit 28242a1363bd1e6349c050966c4092b0aef68a3b[m
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Sep 29 15:35:39 2023 +0300

    update readme by reminding to git clone submodules

[33mcommit 83ef6e4306d9f3cdd1760694ba7daac9bd5933e4[m
Merge: 40cbe9d c30c29b
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Sep 29 15:18:14 2023 +0300

    Merge pull request #16 from vye16/pre_release
    
    Pre release refactorization

[33mcommit c30c29bc8a97e145da1ff405e430d13c72651d1a[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:47:43 2023 -0700

    readme

[33mcommit a03a2812a98a91cc9b3b3a9c42a0c89a925aa7d5[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:39:57 2023 -0700

    commit print

[33mcommit abaf0fd570c63c372f52145f9a799e8634c1dd58[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:37:10 2023 -0700

    sh in __init__

[33mcommit 3e9e544e252ef158f6e9675b1d19db164f5b8db8[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:35:18 2023 -0700

    format

[33mcommit 8dd9de8691b30bbdf2ce9454fc016ea4ba561aa6[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:34:13 2023 -0700

    update pre commit config

[33mcommit 35d729fc7c84171dce4e3e3411f1f015276ad86d[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:32:07 2023 -0700

    update pre commit config

[33mcommit 8ee920b86a4e441828e7bce6b33ffb9b97c2309a[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:29:51 2023 -0700

    update pre commit config

[33mcommit faf09649a1151d1e65a738ec2b17d0d4a1c4d83b[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 23:27:47 2023 -0700

    update

[33mcommit c2032e8d7dbddaf3f5aa39f923aeab27c2bc5f31[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 22:31:13 2023 -0700

    cleanup workflow

[33mcommit 55e5f30b2418e2095c154d7a6029633faf0e1bba[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 22:30:34 2023 -0700

    reformat

[33mcommit 2bf5c33791ec884a148f5e294738add4d3da8f13[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 22:28:54 2023 -0700

    add __init__ and version

[33mcommit f74953c1c9255d3df33f4606f8fcc02456e80e67[m
Author: Ruilong Li <397653553@qq.com>
Date:   Thu Sep 28 22:27:02 2023 -0700

    move things around

[33mcommit 40cbe9d0e1913634e18921db7edc10e71865bd3c[m[33m ([m[1;31morigin/main_0928[m[33m)[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 28 15:22:26 2023 +0300

    docs and cleanup

[33mcommit b85cbb9d5ba7719c3757d44757338ddc994f3ca9[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 28 15:12:45 2023 +0300

    train on images

[33mcommit cc966c7bacff280c896d2bd7e41b543c1fd2f651[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Wed Sep 27 23:21:40 2023 -0700

    change clip plane from .2 to .01

[33mcommit 9548f8960482dc57f6f3b7cbe78a394eec4a5e3b[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Wed Sep 27 23:14:48 2023 -0700

    add cov3d to output of ProjectGaussians forward

[33mcommit 1bb47d23a1cb0593a8adaca65e6f6acbc0747243[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 28 06:11:48 2023 +0000

    removing print statements

[33mcommit 1562316edf133839661a3ca0e692dc370727a788[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 28 06:11:32 2023 +0000

    moving sh things around

[33mcommit 39b30e26dd9c57466a9851d03adb1b7fc93a021d[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 28 01:05:47 2023 +0000

    adding spherical harmonics, within 1e-8 of pytorch implementation

[33mcommit 475f2578d991b3be5e382495493471201a3a8200[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 27 19:43:18 2023 +0000

    templated the channel dimension, removed arg, add assertions

[33mcommit e680f711c9efcfc21b372de1e918ab0f24162fd4[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Wed Sep 27 09:57:58 2023 -0700

    Remove dynamic memory allocation

[33mcommit 3883dc785d85ccdff14bfe595e9bc95a7fd75cc5[m
Author: Jonathan <jzakharov@berkeley.edu>
Date:   Tue Sep 26 23:59:19 2023 -0700

    Imported doctest library and modularized some debugging functions

[33mcommit 10aa6596f2d6bece05a13d082f571459edae0ee8[m
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Tue Sep 26 23:17:53 2023 -0700

    add 89 architecture for 4090

[33mcommit d1635369f6115d5591ba238886f6f8ba77e39dce[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 27 05:41:59 2023 +0000

    adding a reference trainer

[33mcommit 28e4c42ca91c31ead71eabf2a174273841754f4e[m
Merge: e5e28a1 ce84256
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 27 05:40:15 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit e5e28a1056a71f978733d01684aa242da4ac3225[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 27 05:39:31 2023 +0000

    tests/ref_trainer.py

[33mcommit ce84256b8f94f32acd741e5ddc341248b3a5cc89[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 26 22:12:58 2023 -0700

    Support `python simple_trainer.py --height XX --width XX`

[33mcommit 24a70fceaa15839262ad4b7820324ef17db606c3[m
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Tue Sep 26 21:44:23 2023 -0700

    redo fixes to check_serial_backward but do not change helper

[33mcommit 8b4779f1dc45111a18ad9626b81e3ae782bc28f1[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Mon Sep 25 23:14:42 2023 -0700

    fix a potential bug of alpha blending; we need to reduce idx by 1 when breaking

[33mcommit 76a01f25bc7b33da072964af7e35a11d048eb76e[m
Merge: cb7800c 8502ec7
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 26 00:38:19 2023 +0000

    merge conflict in forward csrc

[33mcommit cb7800cb7b74306320e533b108ab8d39ca96acc9[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 26 00:35:13 2023 +0000

    adding clipping for ewa cov2d

[33mcommit 8502ec761073b0ed6325cee79ca741e4ba86c866[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Mon Sep 25 17:03:57 2023 -0700

    fix index bug

[33mcommit 3edf7395ca47d1cf57ee134a68c06467e753cb0e[m
Merge: 749042a 205f0f9
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Mon Sep 25 12:29:48 2023 -0700

    Merge pull request #14 from vye16/bug_out_of_bounds
    
    Bug: fix out of bounds Cuda crashing

[33mcommit 205f0f94eb20f2975f8904d2d91caaecd08e001e[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 25 16:33:46 2023 +0300

    Bug: fix out of bounds Cuda crashing

[33mcommit 749042a3e500286d0b626cbd6e73b18115ef267b[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sun Sep 24 23:31:25 2023 +0300

    format check_serials

[33mcommit f3c3c5bc081d5b382096ddcee65a7b65f03ec7e6[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sun Sep 24 23:29:11 2023 +0300

    remove depricated full forward rasterizer

[33mcommit b846359359f3e00763411ae9e7c33e3849ba4082[m
Merge: ea0b58c 62ec066
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Sep 22 17:21:47 2023 +0300

    Merge pull request #12 from vye16/bug_image_dim
    
    Bug: image dim to project_pix was wrong in forward pass

[33mcommit 62ec0662131e628e74da579d58b0b2cd002826ad[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Fri Sep 22 07:24:32 2023 +0300

    standardize img_size = width, height everywhere

[33mcommit ea0b58c1e15bcee20e6d6ee52c9f2bd1fd95962c[m
Merge: 7374bc0 8e3029c
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Fri Sep 22 06:47:55 2023 +0300

    Merge pull request #11 from vye16/setup_ref_rast
    
    Lets fix these installs

[33mcommit 03a10ed6e0bd1c722a2a87061c43ff8fcb4d25c9[m
Merge: 4cc5d53 7374bc0
Author: maturk <matiasturkulainen@gmail.com>
Date:   Fri Sep 22 06:45:25 2023 +0300

    Merge branch 'main' into bug_image_dim

[33mcommit 8e3029c57c90e729d7fec38d220bd620da909c85[m
Merge: 02d0b4a 7374bc0
Author: maturk <matiasturkulainen@gmail.com>
Date:   Fri Sep 22 06:40:47 2023 +0300

    Merge branch 'main' into setup_ref_rast

[33mcommit 7374bc0a4f64b2ed4e508a3dec09e2b2b241a757[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 22 02:55:39 2023 +0000

    adding quat normalization

[33mcommit 1cb68f3de9cd93ffb0df7671d87bef6cb976afb9[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 22 02:55:26 2023 +0000

    removing justin's negative scale gradients

[33mcommit 99d085b7bfe9dcd9a355ea003581c9633b65df37[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Thu Sep 21 15:27:13 2023 -0700

    Tweak clangd instructions

[33mcommit 19d9e29b135a525c0c5b0748f629892ab6ebb8d5[m
Merge: c42dfb8 2ddc84c
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 22:12:27 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit c42dfb8fa9afb5c37c618f02169dd698d4c5397a[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 22:12:23 2023 +0000

    adding background contribution to v_alpha

[33mcommit 2ddc84ce84d0105d2302ed0cd80895034c33c445[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Thu Sep 21 15:10:40 2023 -0700

    Add clangd config template, instructions

[33mcommit 4e66aa0e042b0618c9ec5e06abe22f951cae9461[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 21:43:09 2023 +0000

    update clip plane threshold to match reference

[33mcommit e17fb9a6bf9d1c0dc7fde0cf190643dca31a37e5[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 21:24:45 2023 +0000

    gradients do flow through all parameters... not the same as reference still

[33mcommit d2a4e3b3392fa2fefe612a3fb269ad7e02ea5dc2[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 21:24:03 2023 +0000

    dimension swap with forward pass saved tensors

[33mcommit adf0a3151c24989ae13f58fd759d29e3d5af54c1[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 20:46:09 2023 +0000

    fixed issue calling reference rasterize

[33mcommit 2edee63dda2df0283e478a2a86bc24759c1acecd[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 20:43:06 2023 +0000

    fixed issues with calling the reference

[33mcommit 4cc5d531be334e816dcc8a1c578a6ee2265d7220[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 21 14:20:07 2023 +0300

    fix image dim BUG

[33mcommit 02d0b4acd1e30e752803757275d12085227f4f73[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 21 11:58:19 2023 +0300

    fix ref rast no module found

[33mcommit 925a367ab72e30498c9f41965769c43cb381100d[m[33m ([m[1;31morigin/justin/python_refactor[m[33m)[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 06:49:32 2023 +0000

    comparison script during training

[33mcommit 0a65ebdbdae31fddd9b166cb70fcf09d5ea56646[m
Merge: 24fd9a8 012cb2c
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 05:44:45 2023 +0000

    Merge branch 'main' into justin/python_refactor

[33mcommit 012cb2c12cfb58808b2025497fc1e1825e6b2ec4[m
Merge: d80650d bcd1360
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 04:55:54 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit d80650d6aec7f748d252ad5b472fe0ba1c459c9c[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Sep 21 04:55:49 2023 +0000

    sign change for off-diagonal conic elements

[33mcommit 24fd9a80d817217f59ac94d6bed9b153086abb1a[m
Author: Justin Kerr <justin.g.kerr@gmail.com>
Date:   Wed Sep 20 21:37:23 2023 -0700

    refactor python package to correctly identify package dirs, add gif rendering, fiddle with params to make image work better (sigmoid, adam params), rename the rasterize fucntion to RasterizeGaussians to match the caps-style of pytorch Functions

[33mcommit bcd136041a3066e08476449c432a36e5b7443912[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Wed Sep 20 17:23:08 2023 +0300

    Test forward projection kernel, looks okay. One more test to do... aah

[33mcommit c1bb8602b509897be51120c61b26de7d2a79dbaa[m
Merge: 895badf 156ea84
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 19 07:04:15 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit 895badf9d8dd6a94b1d72146af4ff5b762275d54[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 19 07:04:03 2023 +0000

    fixed unfortunate forward pass tile bin bug

[33mcommit 156ea846599aa6208b6084071a9294022853867e[m
Merge: b7eec94 7f1ad01
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Mon Sep 18 22:43:27 2023 -0700

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit b7eec94009c0b3f26fb2c32e3aafab65c442b6da[m
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Mon Sep 18 22:43:20 2023 -0700

    set cuda architectures to 70 and 75

[33mcommit 7f1ad01c86f7cc80d8c2feaad51f89d9a1f06751[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 19 05:24:44 2023 +0000

    different test cases for forward

[33mcommit 446033b3a5fd317602979d0af0418ee37277a13b[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 19 05:24:01 2023 +0000

    adding different test cases

[33mcommit eaa9f1129e7391fad3d41855cbf6aea9c7e6e5a0[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Mon Sep 18 19:24:08 2023 +0000

    debugging serial forward methods

[33mcommit b424a15e7b7f5d733dded30263d3f9f7a8f48b1b[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Mon Sep 18 18:26:46 2023 +0000

    update our quat convention to match reference

[33mcommit 6d85781821c854dada47da1fcb7216166e172e3e[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Mon Sep 18 17:42:05 2023 +0000

    deterministic reference input

[33mcommit 37a02adfe818b4a6d485401d0395b3aba3a35db0[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Mon Sep 18 06:00:27 2023 +0000

    fixed background color rendering forward

[33mcommit 653205a7a3fa6a66e51272ffc0325e051d5f36f3[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sun Sep 17 04:03:01 2023 +0000

    updating input to check serial backward fixes 2d projection issue

[33mcommit 967f3a2fd872396993e4f04587e0140f4eb03c6a[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sun Sep 17 04:00:45 2023 +0000

    fixed bug in check serial backward script

[33mcommit e77612f0c84365c05927335e6c1eda4ffb6a01c4[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Sep 16 22:24:02 2023 +0000

    added readme instructions

[33mcommit 49e159aafbe3ac87a03735eeaf05565cefc91644[m
Merge: a344d3d f5118e4
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Sat Sep 16 13:42:40 2023 +0300

    Merge pull request #9 from vye16/jonathan/backward_tests
    
    Quat test bugfix & test cleanup

[33mcommit a344d3dd69e9ea07df36a89a003550e00855d993[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 16 13:40:56 2023 +0300

    ruff formatting

[33mcommit ab73ffd68e50d3112247ff461fd2ffeec35ed344[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 16 13:39:49 2023 +0300

    remove old tests

[33mcommit 14239999231a52f16c61c596e1e9ab3a7295f763[m
Merge: e0da437 78139e4
Author: Matias Turkulainen <30566358+maturk@users.noreply.github.com>
Date:   Sat Sep 16 13:39:11 2023 +0300

    Merge pull request #8 from vye16/zhuoyang/pybindingcheck
    
    Update Forwarding Pybind Checks & Ports for ref_rast

[33mcommit f5118e4d952f3c02646548934419f0f75c1c9830[m
Author: Jonathan <jzakharov@berkeley.edu>
Date:   Fri Sep 15 20:11:56 2023 -0700

    Fixed typo

[33mcommit fec34c8cef78c2a9eed2a5a8707847a105f5e4f6[m
Author: Jonathan <jzakharov@berkeley.edu>
Date:   Fri Sep 15 19:49:06 2023 -0700

    Refactored tests, added %error + nicer output

[33mcommit 78139e4677c9e96782beb140e08767363efb8d17[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Fri Sep 15 18:23:50 2023 -0700

    update notes in forward binding

[33mcommit ed13fce77374098c3e87e774347b9d53bf37a67e[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Fri Sep 15 18:20:29 2023 -0700

    add some ports for ref_rast

[33mcommit fce1b2af3fd421d9f6ac60ea1546cabaa1a04325[m
Author: Zhuoyang <zhuoyangpan@outlook.com>
Date:   Fri Sep 15 18:18:36 2023 -0700

    add some ports for ref_rast; update forwarding comparison following current repo structure

[33mcommit fb2d93cb467e1e3ffb4e2e4218d378f1bc024828[m
Author: Jonathan <jzakharov@berkeley.edu>
Date:   Fri Sep 15 18:06:46 2023 -0700

    Unbroke quaternion check

[33mcommit e0da43725362d5d0ce0ae860f14e64e94635bd5d[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 15 18:34:52 2023 +0000

    copying full reference and bindings and python, compiles and gives same output against clean install

[33mcommit 407fa2b5d6cf2afb427423a5d5d37bc87366a516[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 15 08:40:58 2023 +0000

    renaming current reference checking scripts

[33mcommit 6dd480b2cb8a9085f4a07ca451aaaef6abf31148[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 15 08:36:35 2023 +0000

    ugly and hopefully temporary copy paste of reference code

[33mcommit 23840ddad2bea9821d9cfa81421dcd8f15ba438f[m
Merge: 3fe7838 4865d8f
Author: pritzza <58543279+pritzza@users.noreply.github.com>
Date:   Thu Sep 14 17:58:01 2023 -0700

    Merge implementation vs ref tests
    
    Added and refactored tests.
    
    Eg of output now:
    
    <Check 0>
    =====================
    dL_dmean is off!
    -------------------------------
    project2d backward
    dL_dmean
    ours 3.99e-01 4.56e-01 0.00e+00
    ref  7.98e-01 9.12e-01 0.00e+00
    
    
    dL_dcov2d is off!
    -------------------
    dL_dcov2d
    ours 4.37e+01 -5.57e+01 1.52e+01
    ref  4.37e+01 -5.56e+01 1.52e+01
    
    
    dL_dquat is off!
    -----------------
    dL_dquat
    ours -1.63e-01 1.75e-02 -2.56e-01 -3.25e-01
    ref  -3.25e-01 -1.63e-01 1.75e-02 -2.56e-01
    
    
    dL_dmean is off!
    -----------------
    dL_dmean
    ours -9.19e-05 4.19e-04 2.00e+00
    ref  -9.19e-05 4.19e-04 -6.37e-04

[33mcommit 3fe7838d4e2e5daf4fe997919c96c2b07527b06b[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 14 22:15:05 2023 +0300

    rand colors, not white since the background is default white

[33mcommit f34507a3d2661d141d423195f4309a37ce83bf22[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 14 21:29:05 2023 +0300

    add background color for rendering

[33mcommit 4865d8f077b481ff6a5d40db2aecbf7b0a00983a[m
Author: pritzza <jonathanzakharov@gmail.com>
Date:   Thu Sep 14 11:12:52 2023 -0700

    Added and refactored tests
    
    Added tests for:
    compare_project2d_mean_backward();
    compare_conic_backward();
    compare_cov3d_backward();
    compare_cov2d_ewa_backward();
    
    Refactored tests for:
    compare_rasterize_backward();
    
    Also did some minor bug fixes and improved readability of console output.

[33mcommit 2f3dd598985cfca112d8e6f510d35f0430b3d66b[m
Merge: e876315 957a6f4
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Thu Sep 14 09:20:00 2023 -0700

    Merge pull request #6 from vye16/vitchyr/fix-test
    
    fix typos in test and add helper function

[33mcommit e876315eb215ef39db7ef7e83a7e60476cc24cf3[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Thu Sep 14 19:04:32 2023 +0300

    init test bindings forward

[33mcommit 957a6f41b9a0fcd3ebeb2c413f605649f5cfbdc6[m
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Wed Sep 13 23:52:51 2023 -0700

    switch to using torch.testing.assert_close

[33mcommit e9d7e441e1df84cce61bd2c7954431c6cd2ccb5b[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Wed Sep 13 18:06:54 2023 +0300

    simple trainer for some testing

[33mcommit 3ed0382984c777ef145fe325443d73acd477f719[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Wed Sep 13 17:47:50 2023 +0300

    channels instead of 3

[33mcommit b2a46b6480fe5a27d6e9f4fd3d71603fe01b8bcb[m
Author: Vitchyr Pong <vitchyr@gmail.com>
Date:   Tue Sep 12 22:55:17 2023 -0700

    fix typos in test and add helper function

[33mcommit 0bc735d0412ec47388465979008def45e99b4656[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 12 17:34:18 2023 -0700

    Tighter gradient tolerances (still works)

[33mcommit eb9a93e4e4696069e6f8c9df8e2f19031e6b5b9d[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 12 17:27:47 2023 -0700

    Fix S initialization

[33mcommit 7d9146d971a82db3f6118d8527299e6444a4db4f[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 12 17:00:59 2023 -0700

    Formatting

[33mcommit c72553e9e875eef10b7c9ded8fc25a9be61c9b11[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 12 16:53:23 2023 -0700

    `check_ref_backward` now fails

[33mcommit 0dc4b0d5bf7b3d8228969d03c08802e471c52818[m
Author: Jake Austin jake-austin@berkeley.edu <jake-austin@berkeley.edu>
Date:   Tue Sep 12 21:35:24 2023 +0000

    Variable name error

[33mcommit f1b07edeb69069f27f8f63c99a09451c3097c550[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Sep 12 22:38:46 2023 +0300

    no more uint2's they are buggy

[33mcommit b2b319b4f457a18d22c5874a3857702fd3780935[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 12 17:34:21 2023 +0000

    returning intermediate outputs for binning and sorting gaussians in bindings

[33mcommit 4f678f12e820046750d4dd4de4889742fdbd9ca5[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 12 17:31:01 2023 +0000

    updating test forward with int2 changes

[33mcommit f841811b694e497cf6423d2ca8a86d4c4b68beb2[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 12 17:28:06 2023 +0000

    changing tile bins to int2 from uint2

[33mcommit a68653bc0c687ebd8cbe61b0778295e67d166485[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Sep 12 18:29:16 2023 +0300

    NOT TESTED continue rewriting forward

[33mcommit 587c4713eceae8daffa7414fc7b89af2434877b0[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Sep 12 18:17:00 2023 +0300

    alias for project gaussians and reformat rast

[33mcommit 0251ebeeb14354b25fcf062236ea7b42aa10099d[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Tue Sep 12 18:16:08 2023 +0300

    add a few needed outputs

[33mcommit dcec0b6c1ed4d65fa6f6a2db14e137db19a25a05[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 12 07:48:37 2023 +0000

    NOT TESTED more granular forward pass bindings

[33mcommit b13afdf950e2bde84831b00e12fae57997dd07cc[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 12 07:48:13 2023 +0000

    small updates to radix sort

[33mcommit b5dce498a9df5a2e4e0e7576d1b55da58f5cbea8[m
Merge: 6d06837 dc237e0
Author: Vickie Ye <vye1116@gmail.com>
Date:   Mon Sep 11 09:31:13 2023 -0700

    Merge pull request #5 from vye16/ruilong/playground
    
    add test against torch; fix minor bug

[33mcommit 6d0683799edf8bfa1e04f284de1114d6a49b7552[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 11 17:24:16 2023 +0300

    check that colors is float, if not, change to float

[33mcommit 3fbff7b325ce123f29a32bcc7fe6f5641697b608[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 11 17:23:42 2023 +0300

    fix 'rasterize' name overloading

[33mcommit e2e253ae2929b2dba76e1d957a9dd991d279e43c[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 11 17:05:48 2023 +0300

    change fx/fy types to float

[33mcommit dc237e0d703fcef4b759653f4a543448d94517ee[m
Author: Ruilong Li <ruilongli94@gmail.com>
Date:   Mon Sep 11 06:15:20 2023 +0000

    add test against torch; fix minor bug

[33mcommit 345ed3e750e74abb473db3691c6191a029ae1fa7[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sun Sep 10 15:12:47 2023 +0300

    add channel variable

[33mcommit 491edae0698c87f531f257818ffe19de0c937bc2[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sun Sep 10 15:12:15 2023 +0300

    cleanup rasterizer memory management

[33mcommit c79b45e0a0cde17eab65458ba63f172d2da87c46[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 9 15:41:29 2023 +0300

    backward rasterizer kind of working, some illegal memory access when trying to train multiple iterations...

[33mcommit 99324db8183951a9daa614f66c2cfc7be9d8b923[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 9 13:19:06 2023 +0300

    rename

[33mcommit c051598ef6b7efd79bfdd966491281989c9bca9b[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Sep 9 00:47:01 2023 +0000

    adding variable size color dimension

[33mcommit 337154e304bc14a713a5c61b4c888067b683805f[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 9 00:30:13 2023 +0300

    init rasterizer backward, WiP, give me one more day and I will have it done :D

[33mcommit bdbf763b8bace3f9fd13a9761fc50beb2a338536[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 9 00:27:33 2023 +0300

    rename xys to xy to be consistent with rest of repo

[33mcommit dc0682f2b761f17599596d3357b0831c964de59f[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 9 00:17:48 2023 +0300

    some doc comments

[33mcommit 22a3384d5dfd0467c9052936bd5b53d9a00d65f6[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 8 16:58:58 2023 +0000

    BACKWARD FUNCTIONS ARE ALL CHECKED AGAINST REFERENCE YESSSS

[33mcommit 13c258a65d174d85db5a4ef15efd890530eca448[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 8 06:32:04 2023 +0000

    stubs for checking rasterize backward against reference output

[33mcommit 1b5ccb0a9e9b3a7229d959b6cca2459ba6039f03[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 8 06:07:28 2023 +0000

    fix missing 0.5 factor in ndc backward conversion

[33mcommit 5d66f3592ef3ece2470c14618f62cf6a4e9cc8fc[m
Merge: f7e9e1f 7961a32
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 8 06:00:02 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit f7e9e1f4b85404bf59f57dd2df743f05ad88855c[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 8 05:59:43 2023 +0000

    checking outputs against reference implementation

[33mcommit 7961a32701d9eb745030d0651c6abb41193103bb[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Wed Sep 6 22:27:33 2023 -0700

    Non-zero gradients

[33mcommit 1108b681c93f4d679d6ec8b49cbde126bc71f247[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 5 23:53:10 2023 -0700

    Add project bindings + torch integration (#1)

[33mcommit 75de560bb51eb670002bad29e45c2ab4b5da16b0[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 6 05:51:08 2023 +0000

    fixing quat to rotmat vjp small typo

[33mcommit 9eb3051e5adb4c6e54e8e458ef02be88181ed74f[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 6 05:48:03 2023 +0000

    removing extra factor of 2 from rasterization vjp

[33mcommit 5a5a4b9584591fc5a98689bb4a4349318b487d2c[m
Merge: 4619661 9f7a63d
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 6 01:40:16 2023 +0000

    resolve merge conflicts

[33mcommit 461966192c8ab335b86242b4b93ff3cba429df11[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Sep 6 01:36:27 2023 +0000

    testing backward pass, existential crisis

[33mcommit 9f7a63d2b9117ff4cb3c373981a20b63b02e99f7[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 5 17:18:31 2023 -0700

    Fix Python binding CHW/HWC bug

[33mcommit e9b1abb97277e4af798e4fe4cba41d13fc7e28cb[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 5 16:56:02 2023 -0700

    clang-format, black, etc

[33mcommit c8c56fe1521f62a914b4dafa0834b3e6ac288822[m
Author: Brent Yi <yibrenth@gmail.com>
Date:   Tue Sep 5 11:29:19 2023 -0700

    sqrtf, sinf, cosf

[33mcommit 46376aaf7796896cd459535faf5db2ed46ef9b1c[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 5 18:24:16 2023 +0000

    adding a projection helper function

[33mcommit c68f3fb19285fc02fe41f84f9cf39788cfd14647[m
Merge: da7e737 d46d550
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 5 17:28:28 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit da7e7376ca1cc5c80fba783113b0e470480b4970[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 5 17:27:28 2023 +0000

    backward pass first draft implementation

[33mcommit 9d2e9781563c59291f25d67560f48cd7f2432948[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Sep 5 17:26:45 2023 +0000

    updating output vars for forward pass, updated alpha cutoff thresh

[33mcommit d46d550ded3cabddc4c1ee1409870e78bbfe1594[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 4 18:54:19 2023 +0300

    init readme

[33mcommit 81a5013c77c7746c371dd1ada4a51ca983858ea1[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 4 18:53:29 2023 +0300

    python package setup

[33mcommit 1944bf4ca52d1a54a9d5104093603519770e5592[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Mon Sep 4 07:03:33 2023 +0000

    continuing to sketch out backward pass

[33mcommit bfb1343a09ef61a118cbfb02f580fb67a2891da8[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 4 00:56:47 2023 +0300

    update setup linker files

[33mcommit 6f30784a365bcc8863e79dbcf6fc89bd5f3d2bd0[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 4 00:56:13 2023 +0300

    rename

[33mcommit 58210e3d07b63573166e89c8dc6ba52a0d14e263[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 4 00:54:04 2023 +0300

    cleanup bindings

[33mcommit b0a442011aff4cc4431e55792fb96cd32f279dbb[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Mon Sep 4 00:52:28 2023 +0300

    init main forward rasterizer and rasterizer pybinds

[33mcommit 66ff8074a9997fa4a8fc395018899b225e031526[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sun Sep 3 17:24:03 2023 +0300

    init main rasterizer binding

[33mcommit 4e3e10c3dac7cf5aa0f6138221a9d0d8af729e25[m
Merge: 22e6572 f32224d
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sun Sep 3 05:51:50 2023 +0000

    Merge branch 'main' of github.com:vye16/3dgs-exercise

[33mcommit 22e6572358630e4a41fa81d1982470f6b4032727[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sun Sep 3 05:51:24 2023 +0000

    small fix in covariance to flattened parameter vjp

[33mcommit 758d974f52fe8471ca5c3f140db8c3df3f826bfb[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sun Sep 3 05:37:54 2023 +0000

    adding vjp for 3d to 2d ewa projection

[33mcommit f32224d7b328832c9da14624af093a4556732460[m
Author: maturk <matiasturkulainen@gmail.com>
Date:   Sat Sep 2 20:50:32 2023 +0300

    init python bindings

[33mcommit b252b8b7c3dbcdfd7d6066864461d183a899c660[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Sep 2 07:34:43 2023 +0000

    starting backward pass, have no idea how to test this...

[33mcommit 00900f509056308b60973385a8b6f73e5ec1b583[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Sat Sep 2 01:11:32 2023 +0000

    fixed tiling issue

[33mcommit b9103b20c795882bb9b46a9b48d4f4015afa1014[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Fri Sep 1 04:44:26 2023 +0000

    forward pass nearly there, there's a bug with a tile

[33mcommit 5d507e77088d9498983ab1283471ea21fc27a665[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Aug 31 23:26:49 2023 +0000

    binning and sorting gaussians for final rasterization

[33mcommit e85e7b58cc2cc710335b8b1e321a21579faacc9f[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Aug 31 07:07:50 2023 +0000

    changed culling based on bbox, not centers, restructured. really need better way to test

[33mcommit 27b21a015db98a0358f1cdfe237e9c6754c063c9[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Aug 31 06:16:49 2023 +0000

    implemented full 3d-to-2d projection... need to figure out better way to test/develop

[33mcommit 73e3ddeadff1edd3a790e076fd8d0497f8c32116[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Thu Aug 31 00:05:26 2023 +0000

    3d to 2d gaussians kinda work?

[33mcommit 442246f2976f7d0fc84e1c5e20e18b1fb881f21f[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Aug 30 20:26:17 2023 +0000

    fixed seg faults, now compute cov3d is working

[33mcommit 01294e677cbf711e989ea980e5cc72aa4ef1de6f[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Wed Aug 30 19:42:33 2023 +0000

    testing script, seg faulting all over the place

[33mcommit f90420259d5ca860f8d75ae583f66ad39dc8a6c5[m
Author: Vickie Ye <vye1116@gmail.com>
Date:   Tue Aug 29 02:27:19 2023 +0000

    initial stubs
