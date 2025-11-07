import enum
import cv2
import numpy as np
import sys
import pprint
import struct
import largestinteriorrectangle as lir

src_w, src_h = 1920 // 2, 1080 // 2
bg_w, bg_h = 5704 // 2, 5970 // 2

fx, fy = 1576.162 / 2, 1576.168 / 2
cx, cy = 954.012 / 2, 560.658 / 2
k1, k2 = -0.350918, 0.159612
p1, p2 = -0.00035827865250161016, -0.00086075530368869859



side_fov = np.arctan(np.array([(0-cx)/fx, (src_w-cx)/fx, (0-cy)/fy, (src_h-cy)/fy]))
print(side_fov * 180 / np.pi)




# ----------------------------------------------------
# 步骤 1: 生成第一次映射图 (去畸变) - 对应 map_x1, map_y1
# ----------------------------------------------------
def create_undistort_map():

    mask_src = np.zeros((src_h, src_w), np.uint8)
    mask_src[:,:] = 255

    K = np.array([
        [fx, 0, cx],
        [0, fy, cy],
        [0, 0, 1]
    ], dtype=np.float64)

    D = np.array([k1, k2, p1, p2], dtype=np.float64)

    # K_new 通常与 K 相同，除非你希望进行剪裁或缩放
    alpha = 1.0 
    K_new, roi = cv2.getOptimalNewCameraMatrix(
        K, D, (src_w, src_h), alpha, (src_w, src_h)
    )

    R = np.eye(3, dtype=np.float64) 
    
    # map_x1, map_y1 是去畸变映射图
    map_x1, map_y1 = cv2.initUndistortRectifyMap(
        K, D, R, K_new, (src_w, src_h), cv2.CV_32FC1
    )


    mask_undist = cv2.remap(mask_src, map_x1, map_y1, cv2.INTER_NEAREST)
    return map_x1, map_y1, mask_undist

# ----------------------------------------------------
# 步骤 2: 生成第二次映射图 (球面投影) - 对应 map_x2, map_y2
# ----------------------------------------------------
def create_sphere_proj_map(mask_undist):
    # 这一步计算的是从目标图像 (bg_w x bg_h) 到中间图像 (src_w x src_h) 的逆映射

    step1 = np.pi / bg_w
    start1 = - np.pi / 2 + step1 / 2
    theta = np.linspace(start1, -start1, bg_w)

    step2 = np.pi / bg_h
    start2 = - np.pi / 2 + step2 / 2
    phi = np.linspace(start2, -start2, bg_h)

    theta_grid, phi_grid = np.meshgrid(theta, phi)
    cos_theta_grid = np.cos(theta_grid)
    # 避免除以零
    cos_theta_grid[np.abs(cos_theta_grid) < 1e-6] = 1e-6 

    # 假设中间图像是去畸变后的平面图像
    # 从球坐标 (theta, phi) 到中间图像坐标 (u, v) 的投影（逆映射）
    # 这里的 (u, v) 对应于相机内参映射到的去畸变后的平面坐标
    x_sph = np.tan(theta_grid)
    y_sph = np.tan(phi_grid) / cos_theta_grid
    
    # 乘以内参 K 得到像素坐标 (u, v)
    map_x2 = fx * x_sph + cx # u 坐标
    map_y2 = fy * y_sph + cy # v 坐标
    
    map_x2 = map_x2.astype(np.float32)
    map_y2 = map_y2.astype(np.float32)

    mask_sph = cv2.remap(mask_undist, map_x2, map_y2, cv2.INTER_NEAREST)
    
    # 为了只输出有效区域的 map，需要先找出有效区域 (ROI)
    # 由于 map_x2, map_y2 形状为 (bg_h, bg_w)，我们需要返回整个 map，后续再裁剪。
    return map_x2, map_y2, mask_sph

# ----------------------------------------------------
# 步骤 3: 组合映射图 (Combine Maps)
# ----------------------------------------------------

# 1. 获取两次映射图
map_x1, map_y1, mask_undist = create_undistort_map() # 去畸变图 (src_w x src_h) -> I_mid -> I_src
map_x2, map_y2, mask_total = create_sphere_proj_map(mask_undist) # 球面投影图 (bg_w x bg_h) -> I_dst -> I_mid


cv2.imwrite("./out/mask_total.png", mask_total)


# 2. 组合 X 映射： map_x_total(a, b) = map_x1(map_x2(a, b), map_y2(a, b))
#    cv2.remap(src, map_x, map_y, ...) 
#    src = map_x1, map_x = map_x2, map_y = map_y2
mapx_total = cv2.remap(map_x1, map_x2, map_y2, cv2.INTER_LINEAR)

# 3. 组合 Y 映射： map_y_total(a, b) = map_y1(map_x2(a, b), map_y2(a, b))
#    src = map_y1, map_x = map_x2, map_y = map_y2
mapy_total = cv2.remap(map_y1, map_x2, map_y2, cv2.INTER_LINEAR)

contours, _ = cv2.findContours(mask_total, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
assert len(contours) == 1, "多个轮廓"
contour = contours[0]



# 最小外接矩形
# roi = cv2.boundingRect(contour)
# print(roi)
# x, y, w, h = roi
# map_x_split = map_x_total[y:y+h, x:x+w]
# map_y_split = map_y_total[y:y+h, x:x+w]
# mask_split = mask_total[y:y+h, x:x+w]
# map_x_split[mask_split == 0] = -1
# for i, line in enumerate(map_y_split):
#     line[mask_split[i] == 0] = i


# 最大内切矩形
contour_lir = np.squeeze(contour) 
contour_lir = np.expand_dims(contour_lir, axis=0)
roi = lir.lir(contour_lir)
print(roi)
x, y, w, h = roi
mapx_split = mapx_total[y:y+src_h, x:x+src_w]
mapy_split = mapy_total[y:y+src_h, x:x+src_w]


# xf::cv::remapPreproc()
# for i, line in enumerate(map_y_split):
#     print(np.round(np.abs(line-i)).astype(np.int32).tolist())
# print()
# for i, line in enumerate(map_x_split):
#     print(line.astype(np.float32).tolist())
# print()
# for i, line in enumerate(map_y_split):
#     print(line.astype(np.float32).tolist())

img = cv2.imread("./in/cap.jpg")
img_res = cv2.resize(img, (src_w, src_h))
img_sph_undist = cv2.remap(img_res,mapx_split, mapy_split, cv2.INTER_LINEAR)
cv2.imwrite("./out/sph_undist.png", img_sph_undist)


map_final = np.zeros((src_h, src_w, 4), np.int32)
map_final[:,:,0] = np.round(mapx_split * (2 ** 8)).astype(np.int32)
map_final[:,:,1] = np.round(mapy_split * (2 ** 8)).astype(np.int32)
map_final[:,:,2] = np.round(mapx_split * (2 ** 8)).astype(np.int32)
map_final[:,:,3] = np.round(mapy_split * (2 ** 8)).astype(np.int32)
map_final.tofile("mapxy.bin")

