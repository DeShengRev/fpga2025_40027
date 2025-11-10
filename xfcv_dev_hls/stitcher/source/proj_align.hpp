#pragma once
#include "share.h"


constexpr int MAPXY_HEIGHT = PROC_HEIGHT;
constexpr int MAPXY_WIDTH = PROC_WIDTH;

#define MAPXY_TYPE XF_32SC1
#define MAPXY_SHIFT 8

constexpr int MAPXY_AXI_WIDTH = _DATA_WIDTH_(MAPXY_TYPE, NPPCX) * 4;
constexpr int MAPXY_AXI_DEPTH =
    MAPXY_HEIGHT * MAPXY_WIDTH / XF_NPIXPERCYCLE(NPPCX);

void proj_align(xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_in0,
                xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_in1,
                xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_out0,
                xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img_out1,
                ap_uint<MAPXY_AXI_WIDTH> *mapxy);

                