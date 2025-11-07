

#include "common/xf_headers.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_sw_utils.hpp"
#include "opencv2/core/hal/interface.h"
#include "opencv2/core/matx.hpp"
#include "opencv2/core/types.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "stitch.hpp"
#include <cassert>
#include <cstdio>

ap_int<8> track[PROC_HEIGHT * OVERLAP_WIDTH];

void stitch_tb() {

  char *img1_path = "E:/Dev/QianSai/xfcv_dev_hls/test/img1_sph.png";
  char *img2_path = "E:/Dev/QianSai/xfcv_dev_hls/test/img2_sph.png";

  xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> img1(PROC_HEIGHT,
                                                             PROC_WIDTH),
      img2(PROC_HEIGHT, PROC_WIDTH);

  img1 = xf::cv::imread<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX>(img1_path, 1);
  img2 = xf::cv::imread<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX>(img2_path, 1);
    // stitch_core(img1, img2, track);
}

int mapxy[MAPXY_HEIGHT][MAPXY_WIDTH][4];

void all_tb() {

  char *img0_path = "E:/Dev/QianSai/xfcv_dev_hls/test/p0.jpg";
  char *img1_path = "E:/Dev/QianSai/xfcv_dev_hls/test/p1.jpg";
  char *map_path = "E:/Dev/QianSai/xfcv_dev_hls/test/mapxy.bin";

  FILE *fxy = fopen(map_path, "rb");
  int cnt = fread(mapxy, sizeof(int), MAPXY_HEIGHT * MAPXY_WIDTH * 4, fxy);

  assert(cnt == MAPXY_HEIGHT * MAPXY_WIDTH * 4);

  auto img0 =
      xf::cv::imread<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX>(img0_path, 1);
  auto img1 =
      xf::cv::imread<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX>(img1_path, 1);

  cv::Mat mapy1_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1),
      mapy2_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1);

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      float shift = (float)(1 << MAPXY_SHIFT);
      mapy1_cv.at<float>(y, x) = mapxy[y][x][1] / shift;
      mapy2_cv.at<float>(y, x) = mapxy[y][x][3] / shift;

      //   int t1 = abs(mapy1_cv.at<float>(y, x) - y);
      //   int t2 = abs(mapy2_cv.at<float>(y, x) - y);
      //   printf("(%4d, %4d, %3d, %3d) ",(int) mapy1_cv.at<float>(y, x),
      //   (int)mapy2_cv.at<float>(y, x), t1, t2);
    }
    // printf("\n");
  }

  int num_of_lines;
  xf::cv::remapPreproc(mapy1_cv, num_of_lines);
  xf::cv::remapPreproc(mapy2_cv, num_of_lines);

  SrcVideoStrm_t strm0, strm1, strm2, strm3, strm_out;
  xfMat2AXIvideo(img0, strm0);
  xfMat2AXIvideo(img1, strm1);

  stitcher(strm2, strm3, strm_out, (ap_uint<128> *)mapxy);
  xf::cv::Mat<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX> img1_sph;

  AXIvideo2xfMat(strm_out, img1_sph);
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/res.png", img1_sph);
  printf("finish\n");
}
