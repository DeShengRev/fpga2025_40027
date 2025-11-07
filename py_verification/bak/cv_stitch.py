import cv2


def smsh(name,img):
    img_resized = cv2.resize(img, dsize= (int(img.shape[1] / 2), int(img.shape[0] / 2)))
    cv2.imshow(name, img_resized)


p1 = cv2.imread("./pic/p1.jpg")
p2 = cv2.imread("./pic/p2.jpg")


stitcher = cv2.Stitcher_create()
status, result = stitcher.stitch([p2, p1])
if status == cv2.Stitcher_OK:
    print("拼接成功")
    smsh("res",result)
elif status == cv2.Stitcher_ERR_NEED_MORE_IMGS:
    print("错误：需要更多图像来进行拼接")
elif status == cv2.Stitcher_ERR_HOMOGRAPHY_EST_FAIL:
    print("错误：单应性矩阵估计失败。图像之间可能没有足够的重叠区域或特征点。")
elif status == cv2.Stitcher_ERR_CAMERA_PARAMS_ADJUST_FAIL:
    print("错误：相机参数调整失败。")
else:
    print(f"拼接失败，错误代码: {status}")


smsh("pic1",p1)
smsh("pic2",p2)
while True:
    if cv2.waitKey(0) & 0xFF == ord('q'):
        break

