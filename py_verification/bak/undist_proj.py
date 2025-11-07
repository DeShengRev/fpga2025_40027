import cv2
import numpy as np



src_w, src_h = 1920, 1080
bg_w, bg_h = 5410, 2705



def undistort_image(distorted_image):

    fx, fy = 1576.162, 1576.168
    cx, cy = 954.012, 560.658
    k1, k2 = -0.350918, 0.159612
    p1, p2 = 0, 0


    K = np.array([
        [fx, 0, cx],
        [0, fy, cy],
        [0, 0, 1]
    ], dtype=np.float64)

    # 2. 定义畸变系数 D (Distortion Coefficients)
    # 顺序：k1, k2, p1, p2 (对应 Dist1, Dist2, Dist3, Dist4)
    D = np.array([
        -0.35091811544164042,  # k1 (Dist1)
        0.15961209797753709,   # k2 (Dist2)
        -0.00035827865250161016, # p1 (Dist3)
        -0.00086075530368869859  # p2 (Dist4)
    ], dtype=np.float64)


    # 3. 计算新的相机矩阵 K_new (可选，用于优化图像显示)
    # alpha=1.0: 包含所有像素，可能有黑边
    # alpha=0.0: 剪裁图像，避免黑边
    alpha = 1.0 
    K_new, roi = cv2.getOptimalNewCameraMatrix(
        K, D, (src_w, src_h), alpha, (src_w, src_h)
    )

    # 4. 计算重映射查找表 (Mapping Tables)
    # R (Rectification Transform) 对单目矫正通常是单位矩阵
    R = np.eye(3, dtype=np.float64) 
    
    mapx, mapy = cv2.initUndistortRectifyMap(
        K, D, R, K_new, (src_w, src_h), cv2.CV_32FC1
    )

    # 5. 进行重映射 (Remapping)
    undistorted_image = cv2.remap(
        distorted_image, 
        mapx, mapy, 
        cv2.INTER_LINEAR # 使用线性插值
    )

    
    return undistorted_image

image_path = "./in/cap.jpg" 
distorted_img = cv2.imread(image_path)

    
undistorted_img = undistort_image(distorted_img)

cv2.imwrite("./out/undist.png", undistorted_img)