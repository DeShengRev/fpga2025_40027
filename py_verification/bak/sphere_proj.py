import cv2
import numpy as np
import sys
import pprint
import struct

src_w, src_h = 1920, 1080
bg_w, bg_h = 5410, 2705
bg_verti_fov = 60 * np.pi / 180

fx, fy = 1576.162, 1576.168
cx, cy = 954.012, 560.658

side_fov = np.arctan(np.array([(0-cx)/fx, (src_w-cx)/fx, (0-cy)/fy, (src_h-cy)/fy]))

def sh(name, img, scale = 2):
    # return
    h, w = img.shape[:2]
    img_resized = cv2.resize(img, dsize=(int(w / scale), int(h / scale)))
    print(f"show pic: {name}, size: [{w},{h}]")
    cv2.imshow(name, img_resized)

# def print_map(map_arr):
#     mapp = np.round(map_arr * 256).astype(np.int32)
#     print("{", end="")
#     for line in mapp:
#         print("{", end="")
#         print("%d" % line[0], end="")
#         for ele in line[1:]:
#             print(", %d" % ele, end="")
#         print("},")
#     print("};")





def write_map(name, map_arr):
    mapp = np.round(map_arr * (2 ** 8)).astype(np.int32)
    mapp.tofile(name)



def project_onto_sphere(img):
    mask_src = np.zeros((src_h,src_w),dtype=np.uint8)
    mask_src[ : , : ] = 255
    
    step1 = 2 * np.pi / bg_w
    start1 = - np.pi + step1 / 2
    theta = np.linspace(start1, -start1, bg_w)
    x1 = np.ceil((side_fov[0] - start1) / step1).astype(int)
    x2 = np.floor((side_fov[1] - start1) / step1).astype(int) + 1

    step2 = np.pi / bg_w
    start2 = - np.pi / 2 + step2 / 2
    phi = np.linspace(start2, -start2, bg_h)
    y1 = np.ceil((side_fov[2] - start2) / step2).astype(int)
    y2 = np.floor((side_fov[3] - start2) / step2).astype(int) + 1
    roi = [x1, y1, x2, y2]
    print(roi)



    theta_grid, phi_grid = np.meshgrid(theta, phi)
    cos_theta_grid = np.cos(theta_grid)
    cos_theta_grid[cos_theta_grid == 0] = 1

    x_sph = np.tan(theta_grid)
    y_sph = np.tan(phi_grid) / cos_theta_grid
    
    map_x = fx * x_sph + cx
    map_y = fy * y_sph + cy
    map_x[theta_grid > np.pi / 2] = -1
    map_x[theta_grid < -np.pi / 2] = -1
    map_x = map_x.astype(np.float32)
    map_y = map_y.astype(np.float32)



    # print(map_x)
    # print(map_y)

    
    sph = cv2.remap(img, map_x, map_y, cv2.INTER_LINEAR)
    mask_dst = cv2.remap(mask_src, map_x, map_y, cv2.INTER_LINEAR)


    # sh("mask", mask_dst,6)
    contours, _ = cv2.findContours(mask_dst, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    assert len(contours) == 1, "多个轮廓"


    # img_cnt = np.zeros((bg_h, bg_w, 3), np.uint8)
    # cv2.drawContours(img_cnt, contours, 0, (255, 0, 0), 1)
    # cv2.drawContours(img_cnt, contours, 1, (0, 255, 0), 1)
    # cv2.drawContours(img_cnt, contours, 2, (0, 0, 255), 1)

    # cv2.imwrite("./out/cnt.png", img_cnt)
    # cv2.imwrite("./out/sph.png", sph)

    x, y, w, h = cv2.boundingRect(contours[0])
    print(x,y,w,h)


    
    map_x_sp = map_x[y:y+h, x:x+w].astype(np.float32)
    map_y_sp = map_y[y:y+h, x:x+w].astype(np.float32)

    map_x_sp[map_x_sp < 0] = -1
    map_x_sp[map_x_sp > src_w - 1] = src_w
    map_y_sp[map_y_sp < 0] = -1
    map_y_sp[map_y_sp > src_h - 1] = src_h


    # for i, line in enumerate(map_y_sp):
    #     lab = np.round(np.abs(line - i)).astype(np.int32)
    #     print(lab.tolist())

    # for line in map_y_sp:
    #     print(np.round(line).astype(np.int32).tolist())

    write_map("./map_x.bin",map_x_sp)
    write_map("./map_y.bin",map_y_sp)



    # print_map(map_x_sp)
    # print_map(map_y_sp)


    return sph[y:y+h, x:x+w], mask_dst[y:y+h, x:x+w], roi





img0 = cv2.imread("./in/p0.jpg")
img1 = cv2.imread("./in/p1.jpg")
img2 = cv2.imread("./in/p2.jpg")

img0_sph, mask0, roi0 = project_onto_sphere(img0)
cv2.imwrite("./out/sph.png", img0_sph)

# cv2.waitKey(0)
# cv2.destroyAllWindows()




