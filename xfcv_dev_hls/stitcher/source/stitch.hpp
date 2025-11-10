
#pragma once

#include "share.h"
#include "calc_seam.hpp"
#include "proj_align.hpp"

void stitch_core(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img1,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERALL_WIDTH, NPPCX> panorama,
    ap_int<TRACK_AXI_WIDTH> *track);

void stitcher(SrcVideoStrm_t &vid_stream_in0, SrcVideoStrm_t &vid_stream_in1,
              SrcVideoStrm_t &vid_stream_out, ap_uint<MAPXY_AXI_WIDTH> *mapxy);

