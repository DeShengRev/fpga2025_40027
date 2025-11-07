import cv2
import numpy as np


fx, fy = 696.6, 696.7
cx, cy = 624.3, 355.9
K1 = K2 = np.array([[fx, 0, cx],
                    [0, fy, cy],
                    [0, 0, 1]])




def smsh(name, img):
    h,w = img.shape[:2]
    img_resized = cv2.resize(img, dsize=(int(w / 2), int(h / 2)))
    cv2.imshow(name, img_resized)


def project_onto_sphere(img):
    h,w = img.shape[:2]
    mask_src = np.zeros((h,w))
    mask_src[ : , : ] = 255
    fov = np.atan(np.array([cx/fx,(w-cx)/fx,cy/fy,(h-cy)/fy]))
    
    theta = np.linspace(-fov[0],fov[1],w)
    phi = np.linspace(-fov[2],fov[3],h)

    theta_grid, phi_grid = np.meshgrid(theta, phi)

    x_sph = np.tan(theta_grid)
    y_sph = np.tan(phi_grid) / np.cos(theta_grid)
    
    map_x = fx * x_sph + cx
    map_y = fy * y_sph + cy

    map_x = map_x.astype(np.float32)
    map_y = map_y.astype(np.float32)
    
    sph = cv2.remap(img, map_x, map_y, cv2.INTER_LINEAR)
    mask_dst = cv2.remap(mask_src, map_x, map_y, cv2.INTER_LINEAR)
    return sph, mask_dst

def get_valid_region(mask):
    square_kernel = np.ones((31,31),dtype=np.uint8)
    mask_bg = cv2.copyMakeBorder(mask,1,1,1,1,cv2.BORDER_CONSTANT,value=0)
    mask_valid = cv2.erode(mask_bg,square_kernel)
    return mask_valid[1:-1,1:-1]
    
def calc_orb(sph,mask):
    brief = cv2.xfeatures2d.BriefDescriptorExtractor_create(bytes=32, use_orientation=False) 
    fast = cv2.FastFeatureDetector_create(threshold=20, nonmaxSuppression=True)

    gray = cv2.cvtColor(sph, cv2.COLOR_BGR2GRAY)
    mask_valid = get_valid_region(mask)

    keypoints = fast.detect(gray,mask_valid)
    kps, des = brief.compute(gray, keypoints)
    
    # smsh("valid",mask_valid)
    sph_kps = cv2.drawKeypoints(sph,kps,None,color=(0,0,255),flags=cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
    smsh(f"kps{des[0][0]}",sph_kps)

    return kps, des


def find_affine_matrix(kp_src, des_src, kp_dst, des_dst):
    bf = cv2.BFMatcher_create(cv2.NORM_HAMMING, crossCheck=True)
    matches = bf.match(des_src, des_dst)

    if len(matches) >= 10:

        src_pts = np.array([kp_src[m.queryIdx].pt for m in matches],dtype=np.float32).reshape(-1, 2)
        dst_pts = np.array([kp_dst[m.trainIdx].pt for m in matches],dtype=np.float32).reshape(-1, 2)


        affine_matrix, inliers = cv2.findHomography(src_pts,dst_pts,method=cv2.RANSAC)
        return affine_matrix, inliers
    else:
        return None, None






img0 = cv2.imread("./pic/p0.jpg")
img1 = cv2.imread("./pic/p1.jpg")
img2 = cv2.imread("./pic/p2.jpg")
img0_sph, mask0 = project_onto_sphere(img0)
img1_sph, mask1 = project_onto_sphere(img1)
img2_sph, mask2 = project_onto_sphere(img2)


kp0, des0 = calc_orb(img0_sph,mask0)
kp1, des1 = calc_orb(img1_sph,mask1)
kp2, des2 = calc_orb(img2_sph,mask2)


af_mat, inliers = find_affine_matrix(kp2,des2,kp1,des1)

if af_mat is not None:
    
    print(af_mat)
    
    backgr = cv2.warpPerspective(img2_sph,af_mat,(2000,1000))
    #print(mask0.shape)
    backgr[0:720, 0:1280][mask0 == 255] = img1_sph[mask0 == 255]

    smsh("back",backgr)
    


# smsh("sph0", img0_sph)
# smsh("sph2", img1_sph)

cv2.waitKey(0)
cv2.destroyAllWindows()