
#include "stitch.hpp"
#include "blend.hpp"
#include "calc_seam.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_params.hpp"
#include "common/xf_structs.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_resize.hpp"
#include "proj_align.hpp"
#include "share.h"
#include "utils.hpp"
#include <cstdio>

template <int _PTYPE, int _ROWS, int _COLS, int _XFCVDEPTH_IN,
          int _XFCVDEPTH_OUT>
void _stitch_2_quat(
    xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src0,
    xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src1,
    xf::cv::Mat<_PTYPE, _ROWS, _COLS * 2, 1, _XFCVDEPTH_OUT> &_dst) {

  constexpr int DST_COLS = _COLS * 2;
  constexpr int HALF_ITER_N = _ROWS * DST_COLS;

  for (int y = 0; y < _ROWS; ++y) {
#pragma HLS LOOP_TRIPCOUNT min = _ROWS max = _ROWS

    for (int x = 0; x < _COLS; ++x) {
#pragma HLS LOOP_TRIPCOUNT min = _COLS max = _COLS
#pragma HLS PIPELINE II = 1
      u24a val = _src0.read(y * _COLS + x);
      _dst.write(y * DST_COLS + x, val);
    }

    for (int x = 0; x < _COLS; ++x) {
#pragma HLS LOOP_TRIPCOUNT min = _COLS max = _COLS
#pragma HLS PIPELINE II = 1
      u24a val = _src1.read(y * _COLS + x);
      _dst.write(y * DST_COLS + _COLS + x, val);
    }
  }
}

template <int _ROWS, int _COLS, int _XFCVDEPTH_IN>
void _32arr_to_24mat(
    u32a *_src, xf::cv::Mat<XF_8UC3, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_dst) {

  constexpr int TOTAL_ITER_N = _ROWS * _COLS;
  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS LOOP_TRIPCOUNT max = TOTAL_ITER_N min = TOTAL_ITER_N
#pragma HLS PIPELINE II = 2
    u24a val = _src[i].range(23, 0);
    _dst.write(i, val);
  }
}

void _128arr_to_mapxy(u128a *m_axi_mapxy, MapPic &mapx0, MapPic &mapy0,
                      MapPic &mapx1, MapPic &mapy1) {

  constexpr int TOTAL_ITER_N = PROC_HEIGHT * PROC_WIDTH;

  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS LOOP_TRIPCOUNT max = TOTAL_ITER_N min = TOTAL_ITER_N
#pragma HLS PIPELINE II = 2

    u128a val = m_axi_mapxy[i];
    mapx0.write(i, val.range(31, 0));
    mapy0.write(i, val.range(63, 32));
    mapx1.write(i, val.range(95, 64));
    mapy1.write(i, val.range(127, 96));
  }
}

template <int _ROWS, int _COLS, int _XFCVDEPTH_IN>
void _24mat_to_32arr(xf::cv::Mat<XF_8UC3, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src,
                     u32a *_dst) {

  constexpr int TOTAL_ITER_N = _ROWS * _COLS;
  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS LOOP_TRIPCOUNT max = TOTAL_ITER_N min = TOTAL_ITER_N
#pragma HLS PIPELINE II = 1

    u32a val = 0xFFFFFFFF;
    val.range(23, 0) = _src.read(i);
    _dst[i] = val;
  }
}

template <int XF_8UC3, int _ROWS, int _COLS, int _NPC, int _XFCVDEPTH_IN,
          int _XFCVDEPTH_OUT0, int _XFCVDEPTH_OUT1>
void _duplicate_for_seam_blend(
    xf::cv::Mat<XF_8UC3, _ROWS, _COLS, _NPC, _XFCVDEPTH_IN> &_src,
    xf::cv::Mat<XF_8UC3, _ROWS, _COLS, _NPC, _XFCVDEPTH_OUT0> &_dst0,
    xf::cv::Mat<XF_8UC3, _ROWS, _COLS, _NPC, _XFCVDEPTH_OUT1> &_dst1) {

  constexpr int TOTAL_ITER_N = _ROWS * _COLS / _NPC;

#pragma HLS DATAFLOW

  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS PIPELINE II = 2

    u24a val = _src.read(i);
    _dst0.write(i, val);
    _dst1.write(i, val);
  }
}

void _init_seam(u16t *rd) {
  u16t val = OVERLAP_WIDTH / 2;
  for (int i = 0; i < COST_HEIGHT; ++i) {
#pragma HLS PIPELINE
    val = rd[i];
    // printf("%d ", val);
    if (val < HALF_BLENDING_WIDTH) {
      val = HALF_BLENDING_WIDTH;
    } else if (val > OVERLAP_WIDTH - HALF_BLENDING_WIDTH - 1) {
      val = OVERLAP_WIDTH - HALF_BLENDING_WIDTH - 1;
    }
    rd[i] = val + UNDERLAP_WIDTH;
    // printf("%d ", rd[i]);
  }
  //   printf("\n");
}

static bool tg = true;
static u16t seam_path_pipo[2][COST_HEIGHT];

void isp_stitcher(u16a sel, u32a *m_axi_in0, u32a *m_axi_in1,
                  u128a *m_axi_mapxy, u32a *m_axi_out) {
#pragma HLS INTERFACE s_axilite port = sel bundle = CTRL
#pragma HLS INTERFACE m_axi port = m_axi_in0 bundle = HP0 offset =             \
    slave depth = SRC_PIXELS
#pragma HLS INTERFACE m_axi port = m_axi_in1 bundle = HP1 offset =             \
    slave depth = SRC_PIXELS
#pragma HLS INTERFACE m_axi port = m_axi_mapxy bundle = HP2 offset =           \
    slave depth = PROC_PIXELS
#pragma HLS INTERFACE m_axi port = m_axi_out bundle = HP3 offset =             \
    slave depth = SRC_PIXELS
#pragma HLS INTERFACE s_axilite port = return bundle = CTRL

#pragma HLS DATAFLOW

  u16t *rd = seam_path_pipo[tg];
  u16t *wr = seam_path_pipo[!tg];
  tg = !tg;

  _init_seam(rd);


  SrcPic img0, img1;
  MapPic mapx0, mapy0, mapx1, mapy1;

  HalfPic img_out;

  LProcPic img0_res, img1_res, img0_align, img1_align;
  LProcPic img0_a0, img1_a0, img0_a1, img1_a1;

  _32arr_to_24mat(m_axi_in0, img0);
  _32arr_to_24mat(m_axi_in1, img1);
  _128arr_to_mapxy(m_axi_mapxy, mapx0, mapy0, mapx1, mapy1);

  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);

  xf::cv::remap<REMAP_WIN_ROWS0, XF_INTERPOLATION_NN>(img0_res, img0_align,
                                                      mapx0, mapy0);
  xf::cv::remap<REMAP_WIN_ROWS1, XF_INTERPOLATION_NN>(img1_res, img1_align,
                                                      mapx1, mapy1);

  _duplicate_for_seam_blend(img0_align, img0_a0, img0_a1);
  _duplicate_for_seam_blend(img1_align, img1_a0, img1_a1);

  base_seam_blend(img0_a0, img1_a0, true, rd, img_out);
  update_seam(img0_a1, img1_a1, wr);

  _24mat_to_32arr(img_out, m_axi_out);
}