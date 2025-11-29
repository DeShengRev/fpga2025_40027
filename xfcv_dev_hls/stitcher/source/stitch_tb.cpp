

#ifndef __SYNTHESIS__

#include "common/xf_headers.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_utility.hpp"
#include "opencv2/core/matx.hpp"
#include "opencv2/core/types.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "proj_align.hpp"
#include "source/share.h"
#include "stitch.hpp"
#include "utils.hpp"
#include "windows.h"
#include <cassert>
#include <cstdio>
#include <cstring>
#include <string>


int mapxy[PROC_HEIGHT][PROC_WIDTH][4];

void read_map(const char *map_path, int *map_arr) {
  FILE *fxy = fopen(map_path, "rb");
  int cnt = fread(mapxy, sizeof(int), PROC_HEIGHT * PROC_WIDTH * 4, fxy);
  assert(cnt == PROC_HEIGHT * PROC_WIDTH * 4);
  fclose(fxy);
}

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

  cv::Mat img0 = cv::imread(get_path("img0.png"));
  cv::Mat img1 = cv::imread(get_path("img1.png"));

  cv::Mat img0_rgba, img1_rgba;

  cv::cvtColor(img0, img0_rgba, cv::COLOR_BGR2RGBA);
  cv::cvtColor(img1, img1_rgba, cv::COLOR_BGR2RGBA);

  cv::Mat result(SRC_HEIGHT, SRC_WIDTH, CV_8UC4),
      result_rgba(SRC_HEIGHT, SRC_WIDTH, CV_8UC4);

  read_map(get_path("mapxy.bin"), (int *)mapxy);

  //   remap_preproc_test(mapxy);


  isp_stitcher(0b00111, (u64a *)img0_rgba.data, (u64a *)img1_rgba.data,
               (u128a *)mapxy, (u32a *)result_rgba.data);

  cv::cvtColor(result_rgba, result, cv::COLOR_RGBA2BGRA);
  cv::imwrite(get_path("result0.png"), result);

  printf("stitch0 finish\n");

  Sleep(33);

  isp_stitcher(0b11111, (u64a *)img0_rgba.data, (u64a *)img1_rgba.data,
               (u128a *)mapxy, (u32a *)result_rgba.data);
  cv::cvtColor(result_rgba, result, cv::COLOR_RGBA2BGRA);
  cv::imwrite(get_path("result1.png"), result);

  printf("stitch1 finish\n");
  return 0;
}

#endif