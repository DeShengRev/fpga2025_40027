
#include "calc_seam.hpp"
#include "share.h"
#include "utils.hpp"

void _extract_op0(SProcPic &img0, OverlapPic &op0) {
  int idx = 0, op_idx = 0;
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
#pragma HLS PIPELINE II = 1
      u24a val = img0.read(idx++);
      if (x >= UNDERLAP_WIDTH) {
        op0.write(op_idx++, val);
      }
    }
  }
}

void _extract_op1(SProcPic &img1, OverlapPic &op1) {
  int idx = 0, op_idx = 0;
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
#pragma HLS PIPELINE II = 1
      u24a val = img1.read(idx++);
      if (x < OVERLAP_WIDTH) {
        op1.write(op_idx++, val);
      }
    }
  }
}

void _fill_scan(HalfPic &result) {
  static int spx = 0;

  int idx = 0;
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < SRC_WIDTH; ++x) {
#pragma HLS PIPELINE II = 1
      if (x == spx) {
        result.write(idx++, 0);
      } else {
        result.write(idx++, 0xFFFFFF);
      }
    }
  }

  if (spx == SRC_WIDTH) {
    spx = 0;
  } else {
    ++spx;
  }
}
void update_seam(SProcPic &img0, SProcPic &img1, u16a *seam_path,
                 HalfPic &result) {

#pragma HLS DATAFLOW

  OverlapPic op0, op1;
  _fill_scan(result);
  _extract_op0(img0, op0);
  _extract_op1(img1, op1);

  xf::cv::Mat<SRC_TYPE, COST_HEIGHT, COST_WIDTH, NPPCX, 64> op0_res, op1_res;
  xf::cv::Mat<XF_16UC1, COST_HEIGHT, COST_WIDTH, NPPCX, 64> cost;

  xf::cv::resize<XF_INTERPOLATION_BILINEAR, SRC_TYPE, PROC_HEIGHT,
                 OVERLAP_WIDTH, COST_HEIGHT, COST_WIDTH, NPPCX, false,
                 COST_SCALE>(op0, op0_res);
  xf::cv::resize<XF_INTERPOLATION_BILINEAR, SRC_TYPE, PROC_HEIGHT,
                 OVERLAP_WIDTH, COST_HEIGHT, COST_WIDTH, NPPCX, false,
                 COST_SCALE>(op1, op1_res);

  calc_cost_map(op0_res, op1_res, cost);

  // #ifndef __SYNTHESIS__
  // cv::Mat cost_cv(COST_HEIGHT, COST_WIDTH, CV_8UC1);
  // for (int y=0;y<COST_HEIGHT;++y)
  // {
  //     for (int x=0; x < COST_WIDTH; ++x)
  //     {
  //         cost_cv.data[y * COST_WIDTH + x] = cost.read(y * COST_WIDTH + x) /
  //         3;
  //     }
  // }
  // cv::imwrite(get_path("cost.png"), cost_cv);
  // return;
  // #endif

  //   printf("calc_cost_map finish\n");
  calc_seam(cost, seam_path);
  //   printf("calc_seam finish\n");
}