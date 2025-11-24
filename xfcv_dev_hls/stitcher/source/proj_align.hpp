#pragma once
#include "share.h"

constexpr int MAPXY_HEIGHT = PROC_HEIGHT;
constexpr int MAPXY_WIDTH = PROC_WIDTH;

#define MAPXY_TYPE XF_32SC1
#define MAPXY_SHIFT 8

constexpr int MAPXY_AXI_WIDTH = _DATA_WIDTH_(MAPXY_TYPE, NPPCX) * 4;
typedef ap_axiu<MAPXY_AXI_WIDTH, 1, 1, 1> MapStrmBus;
typedef hls::stream<MapStrmBus> MapStrm;
typedef xf::cv::Mat<MAPXY_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX, 1024>
    MapPic;

void proj_align(ProcPic &img0, ProcPic &img1, ProcPic &img0_remap,
                ProcPic &img1_remap, MapStrm &map_strm);
