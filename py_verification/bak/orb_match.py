import cv2
import numpy as np

def smsh(name, img):
    img_resized = cv2.resize(img, dsize=(int(img.shape[1] / 2), int(img.shape[0] / 2)))
    cv2.imshow(name, img_resized)

# --- Load and Pre-process Images ---
img1 = cv2.imread("./pic/p1.jpg")
img2 = cv2.imread("./pic/p2.jpg")

# Convert to grayscale for feature detection
gray1 = cv2.cvtColor(img1, cv2.COLOR_BGR2GRAY)
gray2 = cv2.cvtColor(img2, cv2.COLOR_BGR2GRAY)

# --- Feature Detection and Matching ---
# Use ORB to detect key points and compute descriptors
orb = cv2.ORB_create()
kp1, des1 = orb.detectAndCompute(gray1, None)
kp2, des2 = orb.detectAndCompute(gray2, None)

# Use a Brute-Force Matcher with cross-checking
bf = cv2.BFMatcher_create(cv2.NORM_HAMMING, crossCheck=True)
matches = bf.match(des1, des2)

# --- Calculate Homography and Warp Image ---
if len(matches) >= 4:
    # Get the coordinates of matched key points
    src_pts = np.float32([kp1[m.queryIdx].pt for m in matches]).reshape(-1, 1, 2)
    dst_pts = np.float32([kp2[m.trainIdx].pt for m in matches]).reshape(-1, 1, 2)
    
    
    # Use RANSAC to find the homography matrix
    H, mask = cv2.findHomography(src_pts, dst_pts, cv2.RANSAC, 5.0)
    

    print(H)
    
    # Get dimensions for the output image
    h1, w1 = img1.shape[:2]
    h2, w2 = img2.shape[:2]
    
    # Create an output image large enough for both warped images
    # The output width is the sum of the two original widths
    output_img = np.zeros((max(h1, h2), w1 + w2, 3), dtype=np.uint8)
    
    # Warp img1 to img2's perspective using the homography matrix
    warped_img1 = cv2.warpPerspective(img1, H, (w1 + w2, h2))
    
    smsh("wrap", warped_img1)
    smsh("orig1", img1)
    smsh("orig2", img2)
    cv2.waitKey(0)
    
    
cv2.destroyAllWindows()