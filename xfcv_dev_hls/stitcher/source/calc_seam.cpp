

#include "calc_seam.hpp"
#include "share.h"
#include "utils.hpp"



void update_seam(ProcPic &img0, ProcPic &img1, hls::stream<u16t> &seam_path) {

#pragma HLS DATAFLOW

  int idx = 0, idxp = 0;
  OverlapPic op0, op1;

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      u24a val = img0.read(idx++);
      if (x >= UNDERLAP_WIDTH) {
        op0.write(idxp++, val);
      }
    }
  }

  idx = 0, idxp = 0;
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      u24a val = img1.read(idx++);
      if (x < OVERLAP_WIDTH) {
        op1.write(idxp++, val);
      }
    }

  }


// #ifndef __SYNTHESIS__
//     xf_imwrite(get_path("op0.png"), op0);
//     xf_imwrite(get_path("op1.png"), op1);
// #endif

  xf::cv::Mat<SRC_TYPE, COST_HEIGHT, COST_WIDTH, NPPCX, XF_CV_DEPTH> op0_res,
      op1_res;
  xf::cv::Mat<XF_16UC1, COST_HEIGHT, COST_WIDTH, NPPCX, XF_CV_DEPTH> cost;

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
//         cost_cv.data[y * COST_WIDTH + x] = cost.read(y * COST_WIDTH + x) / 3;
//     }
// }
// cv::imwrite(get_path("cost.png"), cost_cv);
// return;
// #endif

//   printf("calc_cost_map finish\n");
  calc_seam(cost, seam_path);
//   printf("calc_seam finish\n");
}