import cv2
from cv2 import absdiff
import numpy as np
import largestinteriorrectangle as lir

# 用于进行预对齐

src_w, src_h = 1920, 1080
bg_w, bg_h = 4200, 4630

fx, fy = 696.6 * 1.5, 696.7 * 1.5
cx, cy = 624.3 * 1.5, 355.9 * 1.5
k1, k2 = 0, 0
p1, p2 = 0, 0

np.set_printoptions(threshold=0xFFFFFFFF,linewidth=0xFFFFFFFF, suppress=True)

def sh(name, img, scale = 2):
    # return
    h, w = img.shape[:2]
    img_resized = cv2.resize(img, dsize=(int(w / scale), int(h / scale)))
    print(f"show pic: {name}, size: [{w},{h}]")
    cv2.imshow(name, img_resized)



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
    
    # 排除相机背后的点（与 sphere_proj.py 保持一致）
    # 这里的 -1 是为了在 remap 时标记无效像素
    map_x2[theta_grid > np.pi / 2] = 1e6
    map_x2[theta_grid < -np.pi / 2] = 1e6
    
    map_x2 = map_x2.astype(np.float32)
    map_y2 = map_y2.astype(np.float32)

    mask_sph = cv2.remap(mask_undist, map_x2, map_y2, cv2.INTER_NEAREST)
    
    # 为了只输出有效区域的 map，需要先找出有效区域 (ROI)
    # 由于 map_x2, map_y2 形状为 (bg_h, bg_w)，我们需要返回整个 map，后续再裁剪。
    return map_x2, map_y2, mask_sph




    
def calc_orb(sph):
    brief = cv2.ORB_create()
    fast = cv2.FastFeatureDetector_create(threshold=20, nonmaxSuppression=True)

    gray = cv2.cvtColor(sph, cv2.COLOR_BGR2GRAY)

    keypoints = fast.detect(gray)
    kps, des = brief.compute(gray, keypoints)
    
    sph_kps = cv2.drawKeypoints(sph,kps,None,color=(0,0,255),flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)

    return kps, des


def find_ts_matrix(kp_src, des_src, kp_dst, des_dst):
    bf = cv2.BFMatcher_create(cv2.NORM_HAMMING, crossCheck=True)
    matches = bf.match(des_src, des_dst)

    if len(matches) >= 10:
        src_pts = np.array([kp_src[m.queryIdx].pt for m in matches],dtype=np.float32).reshape(-1, 2)
        dst_pts = np.array([kp_dst[m.trainIdx].pt for m in matches],dtype=np.float32).reshape(-1, 2)
        ts_matrix, inliers = cv2.estimateAffine2D(src_pts,dst_pts,method=cv2.RANSAC)
        return ts_matrix
    else:
        return None





# 1. 获取两次映射图
mapx_undist, mapy_undist, mask_undist = create_undistort_map() # 去畸变图 (src_w x src_h) -> I_mid -> I_src
mapx_sph, mapy_sph, mask_undist_sph = create_sphere_proj_map(mask_undist) # 球面投影图 (bg_w x bg_h) -> I_dst -> I_mid

mapx_undist_sph = cv2.remap(mapx_undist, mapx_sph, mapy_sph, cv2.INTER_LINEAR)
mapy_undist_sph = cv2.remap(mapy_undist, mapx_sph, mapy_sph, cv2.INTER_LINEAR)

contours, _ = cv2.findContours(mask_undist_sph, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
assert len(contours) == 1, "多个轮廓"
contour = contours[0]


# 最大内切矩形
contour_lir = np.squeeze(contour) 
contour_lir = np.expand_dims(contour_lir, axis=0)
roi = lir.lir(contour_lir)
print(roi)
x, y, w, h = roi


# assert(h >= src_h and w >= src_w)
mapx1_final = mapx_undist_sph[y:y+src_h, x:x+src_w]
mapy1_final = mapy_undist_sph[y:y+src_h, x:x+src_w]



img1 = cv2.imread("./in/p1.jpg")
img2 = cv2.imread("./in/p2.jpg")
img1 = cv2.resize(img1, (src_w, src_h))
img2 = cv2.resize(img2, (src_w, src_h))

img1_sph = cv2.remap(img1, mapx1_final, mapy1_final,cv2.INTER_LINEAR)
img2_sph = cv2.remap(img2, mapx1_final, mapy1_final,cv2.INTER_LINEAR)



kps1, des1 = calc_orb(img1_sph)
kps2, des2 = calc_orb(img2_sph)

ts_mat = find_ts_matrix(kps2, des2, kps1, des1)
assert(ts_mat is not None)
print(ts_mat.astype(np.float32))
dx = np.round(ts_mat[0,2]).astype(np.int32)
dy = ts_mat[1, 2]
print(ts_mat[0, 2], ts_mat[1, 2])
ts_mat[0, 2] = 0
ts_mat[1, 2] = 0

mask_af = cv2.warpAffine(mask_undist_sph, ts_mat, (bg_w, bg_h))[y:y+src_h, x:x+src_w]

overlap_width = src_w - dx
print("overlap: %d" % overlap_width)



(xt, yt) = ts_mat @ (x, y, 1)
ts_mat[0, 2] = - xt
ts_mat[1, 2] = - yt + dy


mapx2_final = cv2.warpAffine(mapx_undist_sph, ts_mat, (src_w, src_h))
mapy2_final = cv2.warpAffine(mapy_undist_sph, ts_mat, (src_w, src_h))
mapx2_final[mask_af == 0] = -1

for i, line in enumerate(mapy2_final):
    line[mask_af[i] == 0] = i
    
    
for line, i in enumerate(mapy1_final):
    print(abs(line - i).astype(np.int32))


img2_sph = cv2.remap(img2, mapx2_final, mapy2_final, cv2.INTER_LINEAR)


# sh("img1_sph", img1_sph)
# sh("img2_sph", img2_sph)
cv2.imwrite("img1_sph.png", img1_sph)
cv2.imwrite("img2_sph.png", img2_sph)



overlap1 = cv2.cvtColor(img1_sph[ : , (-overlap_width - 1) : -1], cv2.COLOR_BGR2GRAY)
overlap2 = cv2.cvtColor(img2_sph[ : , 0 : overlap_width], cv2.COLOR_BGR2GRAY)

# sh("overlap1", overlap1)
# sh("overlap2", overlap2)
cv2.waitKey(0)

cost = absdiff(overlap1, overlap2)

shift = 8
mapxy = np.zeros((src_h, src_w, 4), dtype=np.int32)
mapxy[:, :, 0] = np.round(mapx1_final * (2 ** shift)).astype(np.int32)
mapxy[:, :, 1] = np.round(mapy1_final * (2 ** shift)).astype(np.int32)
mapxy[:, :, 2] = np.round(mapx2_final * (2 ** shift)).astype(np.int32)
mapxy[:, :, 3] = np.round(mapy2_final * (2 ** shift)).astype(np.int32)
mapxy.tofile("mapxy.bin")

cv2.imwrite("cost.png", cost)

