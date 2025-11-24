

#ifndef __SYNTHESIS__

#include "common/xf_utility.hpp"
#include "common/xf_headers.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_sw_utils.hpp"
#include "opencv2/core/matx.hpp"
#include "opencv2/core/types.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "proj_align.hpp"
#include "source/share.h"
#include "stitch.hpp"
#include "utils.hpp"
#include <cassert>
#include <cstdio>
#include <cstring>
#include <string>

int mapxy[PROC_HEIGHT][PROC_WIDTH][4];

void read_map(const char *map_path, int *map_arr) {
  FILE *fxy = fopen(map_path, "rb");
  int cnt = fread(mapxy, sizeof(int), MAPXY_HEIGHT * MAPXY_WIDTH * 4, fxy);
  assert(cnt == MAPXY_HEIGHT * MAPXY_WIDTH * 4);
  fclose(fxy);
}

void map_arr_to_strm(int map_arr[PROC_HEIGHT][PROC_WIDTH][4],
                     MapStrm &map_strm) {
  MapStrmBus axi;

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      if (y == 0 && x == 0) {
        axi.user = 1;
      } else {
        axi.user = 0;
      }

      if (x == PROC_WIDTH - 1) {
        axi.last = 1;
      } else {
        axi.last = 0;
      }

      axi.data(31, 0) = map_arr[y][x][0];
      axi.data(63, 32) = map_arr[y][x][1];
      axi.data(95, 64) = map_arr[y][x][2];
      axi.data(127, 96) = map_arr[y][x][3];

      map_strm.write(axi);
    }
  }
}

// void proj_align_tb(ProcPic &img0, ProcPic &img1,
//                    int map_arr[PROC_HEIGHT][PROC_WIDTH][4]) {

//   cv::Mat mapy1_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1),
//       mapy2_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1);

//     for (int y = 0; y < PROC_HEIGHT; ++y) {
//       for (int x = 0; x < PROC_WIDTH; ++x) {
//         float shift = (float)(1 << MAPXY_SHIFT);
//         mapy1_cv.at<float>(y, x) = mapxy[y][x][1] / shift;
//         mapy2_cv.at<float>(y, x) = mapxy[y][x][3] / shift;

//           int t1 = abs(mapy1_cv.at<float>(y, x) - y);
//           int t2 = abs(mapy2_cv.at<float>(y, x) - y);
//           printf("(%4d, %4d, %3d, %3d) ",(int) mapy1_cv.at<float>(y, x),
//           (int)mapy2_cv.at<float>(y, x), t1, t2);
//       }
//       // printf("\n");
//     }

//     int num_of_lines;
//     xf::cv::remapPreproc(mapy1_cv, num_of_lines);
//     xf::cv::remapPreproc(mapy2_cv, num_of_lines);

//   MapStrm map_strm;
//   map_arr_to_strm(map_arr, map_strm);

//   ProcPic img0_align(PROC_HEIGHT, PROC_WIDTH),
//       img1_align(PROC_HEIGHT, PROC_WIDTH);
//   proj_align(img0, img1, img0_align, img1_align, map_strm);

//   char *res0_path = get_path("img0_align.png");
//   char *res1_path = get_path("img1_align.png");

//   xf_imwrite(res0_path, img0_align);
//   xf_imwrite(res1_path, img1_align);
// }

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

void remap_preproc_test(int map_arr[PROC_HEIGHT][PROC_WIDTH][4]) {

  cv::Mat mapy1_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1),
      mapy2_cv(PROC_HEIGHT, PROC_WIDTH, CV_32FC1);

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      float shift = (float)(1 << MAPXY_SHIFT);
      mapy1_cv.at<float>(y, x) = mapxy[y][x][1] / shift;
      mapy2_cv.at<float>(y, x) = mapxy[y][x][3] / shift;

      int t1 = abs(mapy1_cv.at<float>(y, x) - y);
      int t2 = abs(mapy2_cv.at<float>(y, x) - y);
      //   printf("(%4d, %4d, %3d, %3d) ",(int) mapy1_cv.at<float>(y, x),
      //   (int)mapy2_cv.at<float>(y, x), t1, t2);
    }
    // printf("\n");
  }

  int num_of_lines;
  xf::cv::remapPreproc(mapy1_cv, num_of_lines);
  xf::cv::remapPreproc(mapy2_cv, num_of_lines);
}

int main() {

  SrcPic img0, img1;

//   img0 = xf_imread<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX>(get_path("img0.png"),
//                                                            1);
//   img1 = xf_imread<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX>(get_path("img1.png"),
//                                                            1);

  HalfPic img_res(PROC_HEIGHT, SRC_WIDTH), img_align(PROC_HEIGHT, SRC_WIDTH);

  read_map(get_path("mapxy.bin"), (int *)mapxy);

  remap_preproc_test(mapxy);

  MapStrm map_strm;
  map_arr_to_strm(mapxy, map_strm);

  SrcStrm strm0, strm1, strm_align;
  xfMat2AXIvideo(img0, strm0);
  xfMat2AXIvideo(img1, strm1);

  stitcher_remap(strm0, strm1, map_strm, strm_align);

  AXIvideo2xfMat(strm_align, img_align);
  xf_imwrite(get_path("align.png"), img_align);

  printf("csim finish\n");
  return 0;
}

#endif