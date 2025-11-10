
#pragma once
#include "share.h"




#define COST_TYPE XF_16UC1
constexpr int COST_AXI_WIDTH = _DATA_WIDTH_(COST_TYPE, NPPCX);

#define MASK_TYPE XF_16UC1
constexpr int MASK_SHIFT = XF_PIXELWIDTH(MASK_TYPE, NPPCX) - 1;
constexpr int MASK_MAX = 1 << MASK_SHIFT;

#define DP_SEARCH_WIDTH 3
constexpr int TRACK_AXI_WIDTH = sizeof(i8t) * 8;
constexpr int TRACK_AXI_DEPTH = PROC_HEIGHT * OVERLAP_WIDTH;

void calc_cost_map(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<COST_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &cost);

void calc_seam(xf::cv::Mat<COST_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &cost,
               ap_int<TRACK_AXI_WIDTH> *track, hls::stream<u16t> &seam_path);

void generate_mask(
    hls::stream<u16t> &seam_path,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask, u8t mode);

