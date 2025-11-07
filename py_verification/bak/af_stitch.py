import cv2
import numpy as np

src_w, src_h = 1280, 720
bg_w, bg_h = 6480, 1080
bg_verti_fov = 60 * np.pi / 180

fx, fy = 696.6, 696.7
cx, cy = 624.3, 355.9

side_fov = np.arctan(np.array([(0-cx)/fx, (src_w-cx)/fx, (0-cy)/fy, (src_h-cy)/fy]))
#print(side_fov * 180 / np.pi)


def sh(name, img, scale = 2):
    # return
    h, w = img.shape[:2]
    img_resized = cv2.resize(img, dsize=(int(w / scale), int(h / scale)))
    print(f"show pic: {name}, size: [{w},{h}]")
    cv2.imshow(name, img_resized)


def project_onto_sphere(img):
    mask_src = np.zeros((src_h,src_w))
    mask_src[ : , : ] = 255
    
    step1 = 2 * np.pi / bg_w
    start1 = - np.pi + step1 / 2
    theta = np.linspace(start1, -start1, bg_w)
    x1 = np.ceil((side_fov[0] - start1) / step1).astype(int)
    x2 = np.floor((side_fov[1] - start1) / step1).astype(int) + 1

    step2 = bg_verti_fov / (bg_h - 1)
    start2 = - bg_verti_fov / 2
    phi = np.linspace(start2, -start2, bg_h)
    y1 = np.ceil((side_fov[2] - start2) / step2).astype(int)
    y2 = np.floor((side_fov[3] - start2) / step2).astype(int) + 1
    roi = [x1, y1, x2, y2]
    # print(roi)

    theta_grid, phi_grid = np.meshgrid(theta, phi)
    cos_theta_grid = np.cos(theta_grid)
    cos_theta_grid[cos_theta_grid == 0] = 1e-6

    x_sph = np.tan(theta_grid)
    y_sph = np.tan(phi_grid) / cos_theta_grid
    
    map_x = fx * x_sph + cx
    map_y = fy * y_sph + cy
    map_x = map_x.astype(np.float32)
    map_y = map_y.astype(np.float32)
    # print(map_x)
    # print(map_y)
    
    sph = cv2.remap(img, map_x, map_y, cv2.INTER_LINEAR)
    mask_dst = cv2.remap(mask_src, map_x, map_y, cv2.INTER_LINEAR)
    return sph[y1:y2, x1:x2], mask_dst[y1:y2, x1:x2], roi

def get_valid_region(mask):
    square_kernel = np.ones((31,31),dtype=np.uint8)
    mask_bg = cv2.copyMakeBorder(mask,1,1,1,1,cv2.BORDER_CONSTANT,value=0)
    mask_valid = cv2.erode(mask_bg,square_kernel)
    return mask_valid[1:-1,1:-1]
    
def calc_orb(sph,mask):
    brief = cv2.ORB_create()
    fast = cv2.FastFeatureDetector_create(threshold=20, nonmaxSuppression=True)

    gray = cv2.cvtColor(sph, cv2.COLOR_BGR2GRAY)
    mask_valid = get_valid_region(mask)

    keypoints = fast.detect(gray,mask_valid)
    kps, des = brief.compute(gray, keypoints)
    
    # smsh("valid",mask_valid)
    sph_kps = cv2.drawKeypoints(sph,kps,None,color=(0,0,255),flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
    # sh(f"kps{des[0][0]}",sph_kps)

    return kps, des


def find_affine_matrix(kp_src, des_src, kp_dst, des_dst):
    bf = cv2.BFMatcher_create(cv2.NORM_HAMMING, crossCheck=True)
    matches = bf.match(des_src, des_dst)

    if len(matches) >= 10:
        src_pts = np.array([kp_src[m.queryIdx].pt for m in matches],dtype=np.float32).reshape(-1, 2)
        dst_pts = np.array([kp_dst[m.trainIdx].pt for m in matches],dtype=np.float32).reshape(-1, 2)
        affine_matrix, inliers = cv2.estimateAffine2D(src_pts,dst_pts,method=cv2.RANSAC)
        return affine_matrix
    else:
        return None






img0 = cv2.imread("./in/p0.jpg")
img1 = cv2.imread("./in/p1.jpg")
img2 = cv2.imread("./in/p2.jpg")





img0_sph, mask0, roi0 = project_onto_sphere(img0)
img1_sph, mask1, roi1 = project_onto_sphere(img1)
img2_sph, mask2, roi2 = project_onto_sphere(img2)

# smsh("sph0", img0_sph)
# smsh("sph1", img1_sph)
# smsh("sph2", img2_sph)


kp0, des0 = calc_orb(img0_sph,mask0)
kp1, des1 = calc_orb(img1_sph,mask1)
kp2, des2 = calc_orb(img2_sph,mask2)


af_mat0 = find_affine_matrix(kp0,des0,kp1,des1)
af_mat2 = find_affine_matrix(kp2,des2,kp1,des1)

if af_mat0 is not None and af_mat2 is not None:
    pano = np.zeros((bg_h, bg_w, 3), dtype=np.uint8)

    x1,y1,x2,y2 = roi1
    img1_pano = np.zeros((bg_h, bg_w, 3), dtype=np.uint8)
    mask1_pano = np.zeros((bg_h, bg_w), dtype=np.uint8)
    img1_pano[y1:y2, x1:x2] = img1_sph
    mask1_pano[y1:y2, x1:x2] = mask1
    
    # af_mat0[0,2] += x1
    # af_mat0[1,2] += y1
    # img0_pano = cv2.warpAffine(img0_sph,af_mat0,(bg_w,bg_h))
    # mask0_pano = cv2.warpAffine(mask0,af_mat0,(bg_w,bg_h))
    # pano[mask0_pano != 0] = img0_pano[mask0_pano != 0]

    af_mat2[0,2] += x1
    af_mat2[1,2] += y1
    img2_pano = cv2.warpAffine(img2_sph,af_mat2,(bg_w,bg_h))
    mask2_pano = cv2.warpAffine(mask2,af_mat2,(bg_w,bg_h)).astype(np.uint8)

    mask12_pano = cv2.bitwise_and(mask1_pano, mask2_pano)
    
    contours, _ = cv2.findContours(mask12_pano, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

    if len(contours) == 1:
        contour = contours[0]
        x, y, w, h = cv2.boundingRect(contour)
        print(x,y,w,h)


        pano[mask12_pano != 0] = np.abs(img1_pano[mask12_pano != 0] - img2_pano[mask12_pano != 0])
        pano[mask12_pano == 0] = 255

        mask12_pano_val = mask12_pano[y:y+h, x:x+w]
        mask12_pano_val[mask12_pano_val != 0] = 255
        

        pano_val = pano[y:y+h,x:x+w]
        cost = cv2.cvtColor(pano_val,cv2.COLOR_BGR2GRAY)


        # sh("mask12", mask12_pano, 6)
        
        # pano[mask1_pano != 0] = img1_pano[mask1_pano != 0]
        # pano[mask2_pano != 0] = img2_pano[mask2_pano != 0]

        

        # sh("pano", pano, 6)
        cv2.imwrite("cost.png",cost)
        # cv2.imwrite("mask.png",mask12_pano_val)





cv2.waitKey(0)
cv2.destroyAllWindows()