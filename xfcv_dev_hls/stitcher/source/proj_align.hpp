#pragma once
#include "share.h"

constexpr int MAPXY_HEIGHT = PROC_HEIGHT;
constexpr int MAPXY_WIDTH = PROC_WIDTH;

#define MAPXY_TYPE XF_32SC1
#define MAPXY_SHIFT 8


#define REMAP_WIN_ROWS0 22
#define REMAP_WIN_ROWS1 22


constexpr int MAPXY_AXI_WIDTH = _DATA_WIDTH_(MAPXY_TYPE, NPPCX);
typedef ap_axiu<MAPXY_AXI_WIDTH, 1, 1, 1> MapStrmBus;
typedef hls::stream<MapStrmBus> MapStrm;
typedef xf::cv::Mat<MAPXY_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX, 64>
    MapPic;

    
