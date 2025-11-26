
#pragma once

#include "ap_axi_sdata.h"
#include "ap_fixed.h"
#include "ap_int.h"
#include "common/xf_common.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_params.hpp"
#include "common/xf_structs.hpp"
#include "common/xf_types.hpp"
#include "common/xf_utility.hpp"
#include "core/xf_arithm.hpp"
#include "core/xf_convert_bitdepth.hpp"
#include "hls_math.h"
#include "hls_stream.h"
#include "imgproc/xf_channel_combine.hpp"
#include "imgproc/xf_channel_extract.hpp"
#include "imgproc/xf_pyr_down.hpp"
#include "imgproc/xf_pyr_up.hpp"
#include "imgproc/xf_remap.hpp"
#include "imgproc/xf_resize.hpp"
#include "share.h"


#ifndef __SYNTHESIS__
#include "opencv2/core/matx.hpp"
#include "opencv2/core/types.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/opencv.hpp"
#include <cassert>
#include <cstdio>
#endif

typedef ap_uint<8> u8a;
typedef ap_uint<16> u16a;
typedef ap_uint<24> u24a;
typedef ap_uint<32> u32a;
typedef ap_uint<128> u128a;

typedef uint8_t u8t;
typedef uint16_t u16t;
typedef uint32_t u32t;
typedef int8_t i8t;
typedef int16_t i16t;

#define _DATA_WIDTH_(_T, _N) (XF_PIXELWIDTH(_T, _N) * XF_NPIXPERCYCLE(_N))
#define _BYTE_ALIGN_(_N) ((((_N) + 7) / 8) * 8)

#define SRC_HEIGHT 1080
#define SRC_WIDTH 1920

#define PROC_HEIGHT 540
#define PROC_WIDTH 960

#define DST_HEIGHT 1080
#define DST_WIDTH 1920

constexpr int SRC_PIXELS = SRC_HEIGHT * SRC_WIDTH;
constexpr int HALF_PIXELS = PROC_HEIGHT * SRC_WIDTH;
constexpr int PROC_PIXELS = PROC_HEIGHT * PROC_WIDTH;

#define OVERLAP_WIDTH 384
constexpr int UNDERLAP_WIDTH = PROC_WIDTH - OVERLAP_WIDTH;
constexpr int OVERALL_WIDTH = PROC_WIDTH + UNDERLAP_WIDTH;

#define MAPXY_TYPE XF_32SC1
#define MAPXY_SHIFT 8

#define REMAP_WIN_ROWS0 22
#define REMAP_WIN_ROWS1 22

#define NPPCX XF_NPPC1
#define SRC_TYPE XF_8UC3

#define XF_CV_DEPTH 4
#define XF_CV_DEPTH_SRC 2048
#define XF_CV_DEPTH_PROC 1024

#define HALF_BLENDING_WIDTH 32
#define BLENDING_SHIFT 6
constexpr int BLENDING_WIDTH = 2 * HALF_BLENDING_WIDTH + 1;


typedef xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, SRC_WIDTH, NPPCX, XF_CV_DEPTH_PROC>
    HalfPic;
typedef xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX, XF_CV_DEPTH>
    SProcPic;
typedef xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX, XF_CV_DEPTH_PROC>
    LProcPic;
typedef xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, UNDERLAP_WIDTH, NPPCX, XF_CV_DEPTH>
    UnderlapPic;
typedef xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX, XF_CV_DEPTH>
    OverlapPic;
typedef xf::cv::Mat<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX, XF_CV_DEPTH_SRC> SrcPic;
typedef xf::cv::Mat<MAPXY_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX, XF_CV_DEPTH_PROC>
    MapPic;
    