

#include "calc_seam.hpp"
#include "share.h"

void update_seam(OverlapPic &_src0, OverlapPic &_src1,
                 hls::stream<u16t> &seam_path) {

  xf::cv::Mat<SRC_TYPE, COST_HEIGHT, COST_WIDTH, NPPCX, XF_CV_DEPTH> src0_res(
      COST_HEIGHT, COST_WIDTH),
      src1_res(COST_HEIGHT, COST_WIDTH);
  xf::cv::Mat<XF_16UC1, COST_HEIGHT, COST_WIDTH, NPPCX, XF_CV_DEPTH> cost(
      COST_HEIGHT, COST_WIDTH);
  xf::cv::resize<XF_INTERPOLATION_BILINEAR, SRC_TYPE, PROC_HEIGHT,
                 OVERLAP_WIDTH, COST_HEIGHT, COST_WIDTH, NPPCX, false, 6>(
      _src0, src0_res);
  xf::cv::resize<XF_INTERPOLATION_BILINEAR, SRC_TYPE, PROC_HEIGHT,
                 OVERLAP_WIDTH, COST_HEIGHT, COST_WIDTH, NPPCX, false, 6>(
      _src1, src1_res);

  calc_cost_map(src0_res, src1_res, cost);
  calc_seam(cost, seam_path);
}