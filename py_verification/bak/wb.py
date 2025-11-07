
import cv2
import numpy as np


def sh(name, img, scale = 2):
    # return
    h, w = img.shape[:2]
    img_resized = cv2.resize(img, dsize=(int(w / scale), int(h / scale)))
    print(f"show pic: {name}, size: [{w},{h}]")
    cv2.imshow(name, img_resized)


img = cv2.imread("./cap.jpg")
img_f = img.astype(np.float32)

bgr = np.array(cv2.mean(img_f)[:3], np.float32)
bgr_avg = (bgr[0] + bgr[1] + bgr[2]) / 3
wb_gain = bgr_avg / bgr

print(wb_gain * 1024)

img_wb = img_f * wb_gain
img_wb = np.clip(img_wb, 0, 255).astype(np.uint8)

sh("orig", img)
sh("wb", img_wb)
cv2.imwrite("wb.jpg", img_wb)
cv2.waitKey(0)

