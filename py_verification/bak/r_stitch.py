import cv2
import numpy as np

w, h = 1280, 720
fx, fy = 696.6, 696.7
cx, cy = 624.3, 355.9
wp, hp = 2560, 1280
K1 = K2 = np.array([[fx, 0, cx],
                    [0, fy, cy],
                    [0, 0, 1]])

map_x0 = np.tile(np.arange(wp).reshape(1,-1), (hp, 1)).astype(np.float32)
map_y0 = np.tile(np.arange(hp).reshape(-1,1), (1, wp)).astype(np.float32)
orb = cv2.ORB_create()
bf = cv2.BFMatcher_create(cv2.NORM_HAMMING, crossCheck=True)


def smsh(name, img):
    h,w = img.shape[:2]
    img_resized = cv2.resize(img, dsize=(int(w / 2), int(h / 2)))
    cv2.imshow(name, img_resized)

def calc_r_mat(src, dst):
    gray_src = cv2.cvtColor(src, cv2.COLOR_BGR2GRAY)
    gray_dst = cv2.cvtColor(dst, cv2.COLOR_BGR2GRAY)

    kp1, des1 = orb.detectAndCompute(gray_src, None)
    kp2, des2 = orb.detectAndCompute(gray_dst, None)

    matches = bf.match(des1, des2)
    
    if len(matches) >= 4:
        pts_src = np.float32([kp1[m.queryIdx].pt for m in matches]).reshape(-1, 1, 2)
        pts_dst = np.float32([kp2[m.trainIdx].pt for m in matches]).reshape(-1, 1, 2)

        F, mask = cv2.findFundamentalMat(pts_src, pts_dst, method=cv2.FM_RANSAC)
        #print("基本矩阵 F:\n", F)

        # 2. 将基本矩阵转换为本质矩阵
        #    公式是 E = K2.T * F * K1
        #    使用 np.dot() 或 @ 运算符进行矩阵乘法
        E = K2.T @ F @ K1
        #print("\n本质矩阵 E:\n", E)

        # 3. 从本质矩阵中恢复旋转和平移
        #    cv2.recoverPose() 是最关键的函数。它会分解本质矩阵，并根据几何约束
        #    选择正确的 R 和 t。注意这里需要传入 K1。
        points_in_front, R, t, _ = cv2.recoverPose(E, pts_src, pts_dst, K1, mask=mask)
        #print("\n旋转矩阵 R:\n", R)
        return R
    else:
        return None


# def proj_sph(img):
#     theta = (np.arange(wp) / wp - 0.5) * 2 * np.pi
#     phi = (np.arange(hp) / hp - 0.5) * np.pi

#     theta_grid, phi_grid = np.meshgrid(theta.astype(np.float32), phi.astype(np.float32))

#     nx = np.atan(theta_grid)
#     ny = np.atan(phi_grid) / np.cos(theta_grid)

#     map_x = fx * nx + cx
#     map_y = fy * ny + cy
#     sph = cv2.remap(img, map_x, map_y, cv2.INTER_LINEAR)
#     return sph

def proj_sphere(img, R = None):

    mask_src = np.zeros((h,w))
    mask_src[ : , : ] = 255

    if R is None:
        R = np.eye(3)
    
    theta = (np.arange(wp) / wp - 0.5) * 2 * np.pi
    phi = (np.arange(hp) / hp - 0.5) * np.pi

    theta_grid, phi_grid = np.meshgrid(theta, phi)

    # 2. 将球面坐标反向投影到三维空间向量
    # 使用球坐标系到笛卡尔坐标系的转换公式
    # 假设球的半径为1
    X_sph = np.cos(phi_grid) * np.sin(theta_grid)
    Y_sph = np.sin(phi_grid)
    Z_sph = np.cos(phi_grid) * np.cos(theta_grid)

    # 3. 将三维向量转换为相机坐标
    # 形状为 (3, hp * wp)
    xyz_sph = np.stack([X_sph.flatten(), Y_sph.flatten(), Z_sph.flatten()], axis=0)

    # 4. 应用旋转矩阵 R
    # 矩阵乘法：R @ xyz_sph
    xyz_rot = R @ xyz_sph

    # 5. 将旋转后的三维向量投影回二维图像平面
    # 这里使用相机的针孔模型（平面投影）
    # x_cam = fx * (X / Z) + cx
    # y_cam = fy * (Y / Z) + cy
    X_rot = xyz_rot[0, :].reshape(hp, wp)
    Y_rot = xyz_rot[1, :].reshape(hp, wp)
    Z_rot = xyz_rot[2, :].reshape(hp, wp)

    # 确保 Z 不为0，避免除以零的错误
    # 理论上，当 Z_rot 接近0时，这些点在相机的成像面上位于无穷远处
    # 这里我们简单地将Z_rot为0的地方设置为一个小值来避免错误
    Z_rot[Z_rot <= 0] = 1e-6

    map_x = fx * (X_rot / Z_rot) + cx
    map_y = fy * (Y_rot / Z_rot) + cy

    map_x = map_x.astype(np.float32)
    map_y = map_y.astype(np.float32)
    
    sph = cv2.remap(img, map_x, map_y, cv2.INTER_LINEAR)
    mask_dst = cv2.remap(mask_src, map_x, map_y, cv2.INTER_LINEAR)
    return sph, mask_dst

img0 = cv2.imread("./pic/p1.jpg")
img2 = cv2.imread("./pic/p2.jpg")
img0_sph, mask0 = proj_sphere(img0)

rot = calc_r_mat(img0, img2)
print(rot)
img2_sph, mask2 = proj_sphere(img2, rot)
mask_and = cv2.bitwise_and(mask0, mask2)


img2_sph[mask0 == 255] = img0_sph[mask0 == 255]
smsh("sph0", img0_sph)
smsh("sph2", img2_sph)

# smsh("mask0", mask0)
# smsh("mask2", mask2)
# smsh("and", mask_and)

cv2.waitKey(0)
cv2.destroyAllWindows()