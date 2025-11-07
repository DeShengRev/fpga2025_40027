
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
#include "hls_math.h"
#include "hls_stream.h"
#include "imgproc/xf_channel_combine.hpp"
#include "imgproc/xf_channel_extract.hpp"
#include "imgproc/xf_pyr_down.hpp"
#include "imgproc/xf_pyr_up.hpp"
#include "imgproc/xf_remap.hpp"
#include "imgproc/xf_resize.hpp"
#include "core/xf_arithm.hpp"   
#include "core/xf_convert_bitdepth.hpp"

#ifndef __SYNTHESIS__
#include "common/xf_sw_utils.hpp"
#include "opencv2/core/matx.hpp"
#include "opencv2/core/types.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include <cassert>
#include <cstdio>
#endif

typedef ap_uint<8> u8a;
typedef ap_uint<16> u16a;
typedef ap_uint<24> u24a;
typedef ap_uint<32> u32a;

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

constexpr int DST_HEIGHT = 1080;
constexpr int DST_WIDTH = 1920;

#define NPPCX XF_NPPC1
#define SRC_TYPE XF_8UC3

constexpr int SRC_AXI_WIDTH = _DATA_WIDTH_(SRC_TYPE, NPPCX);
typedef ap_axiu<SRC_AXI_WIDTH, 1, 1, 1> SrcVideoStrmBus_t;

typedef hls::stream<SrcVideoStrmBus_t> SrcVideoStrm_t;
typedef hls::stream<SrcVideoStrmBus_t> DstVideoStrm_t;

// proj
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

// calc_seam

#define OVERLAP_WIDTH 300

constexpr int UNDERLAP_WIDTH = PROC_WIDTH - OVERLAP_WIDTH;
constexpr int OVERALL_WIDTH = PROC_WIDTH + UNDERLAP_WIDTH;

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

void stitch_core(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img1,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERALL_WIDTH, NPPCX> panorama,
    ap_int<TRACK_AXI_WIDTH> *track);

void stitcher(SrcVideoStrm_t &vid_stream_in0, SrcVideoStrm_t &vid_stream_in1,
              SrcVideoStrm_t &vid_stream_out, ap_uint<MAPXY_AXI_WIDTH> *mapxy);

void simple_seam_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend);

void simple_feathering_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend);

void pyramid_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend);

