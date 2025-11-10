

#include "common/xf_headers.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_sw_utils.hpp"
#include "opencv2/core/matx.hpp"
#include "opencv2/core/types.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "source/share.h"
#include "stitch.hpp"
#include <cassert>
#include <cstdio>

#include "proj_align.hpp"

ap_int<8> track[PROC_HEIGHT * OVERLAP_WIDTH];
int mapxy[MAPXY_HEIGHT][MAPXY_WIDTH][4];

void read_map(char *map_path, int *map_addr) {
  FILE *fxy = fopen(map_path, "rb");
  int cnt = fread(mapxy, sizeof(int), MAPXY_HEIGHT * MAPXY_WIDTH * 4, fxy);
  assert(cnt == MAPXY_HEIGHT * MAPXY_WIDTH * 4);
  fclose(fxy);
}

void proj_align_tb(xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img0,
                   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img1,
                   int *map_addr) {

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

  xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> img0_align(PROC_HEIGHT,
                                                                   PROC_WIDTH),
      img1_align(PROC_HEIGHT, PROC_WIDTH);
  proj_align(img0, img1, img0_align, img1_align,
             (ap_uint<MAPXY_AXI_WIDTH> *)map_addr);

  char *res0_path = "E:/Dev/QianSai/xfcv_dev_hls/test/img0_align.png";
  char *res1_path = "E:/Dev/QianSai/xfcv_dev_hls/test/img1_align.png";

  xf::cv::imwrite(res0_path, img0_align);
  xf::cv::imwrite(res1_path, img1_align);
}

// void stitch_tb() {

//   auto img0 =
//       xf::cv::imread<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX>(img0_path, 1);
//   auto img1 =
//       xf::cv::imread<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX>(img1_path, 1);

//   cv::Mat mapy1_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1),
//       mapy2_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1);

//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     for (int x = 0; x < PROC_WIDTH; ++x) {
//       float shift = (float)(1 << MAPXY_SHIFT);
//       mapy1_cv.at<float>(y, x) = mapxy[y][x][1] / shift;
//       mapy2_cv.at<float>(y, x) = mapxy[y][x][3] / shift;

//       //   int t1 = abs(mapy1_cv.at<float>(y, x) - y);
//       //   int t2 = abs(mapy2_cv.at<float>(y, x) - y);
//       //   printf("(%4d, %4d, %3d, %3d) ",(int) mapy1_cv.at<float>(y, x),
//       //   (int)mapy2_cv.at<float>(y, x), t1, t2);
//     }
//     // printf("\n");
//   }

//   int num_of_lines;
//   xf::cv::remapPreproc(mapy1_cv, num_of_lines);
//   xf::cv::remapPreproc(mapy2_cv, num_of_lines);

//   SrcVideoStrm_t strm0, strm1, strm2, strm3, strm_out;
//   xfMat2AXIvideo(img0, strm0);
//   xfMat2AXIvideo(img1, strm1);

//   stitcher(strm2, strm3, strm_out, (ap_uint<128> *)mapxy);
//   xf::cv::Mat<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX> img1_sph;

//   AXIvideo2xfMat(strm_out, img1_sph);
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/res.png", img1_sph);
//   printf("finish\n");
// }

int main() {

  char *img0_path = "E:/Dev/QianSai/xfcv_dev_hls/test/img0.png";
  char *img1_path = "E:/Dev/QianSai/xfcv_dev_hls/test/img1.png";
  char *map_path = "E:/Dev/QianSai/xfcv_dev_hls/test/mapxy.bin";

  auto img0 = xf::cv::imread<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX>(
      img0_path, SRC_TYPE);
  auto img1 = xf::cv::imread<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX>(
      img1_path, SRC_TYPE);

    read_map(map_path, (int *)mapxy);
    proj_align_tb(img0, img1, (int *)mapxy);


}