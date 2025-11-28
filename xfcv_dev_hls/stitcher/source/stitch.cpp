
#include "stitch.hpp"
#include "blend.hpp"
#include "calc_seam.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_params.hpp"
#include "common/xf_structs.hpp"
#include "common/xf_types.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_resize.hpp"
#include "proj_align.hpp"
#include "share.h"
#include "utils.hpp"
#include <ap_fixed.h>

template <int _PTYPE, int _ROWS, int _COLS, int _XFCVDEPTH_IN,
          int _XFCVDEPTH_OUT>
void _stitch_2_quat_core(
    xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src0,
    xf::cv::Mat<_PTYPE, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_src1,
    xf::cv::Mat<_PTYPE, _ROWS, _COLS * 2, 1, _XFCVDEPTH_OUT> &_dst) {

  constexpr int DST_COLS = _COLS * 2;
#ifndef __SYNTHESIS__
  assert(_XFCVDEPTH_IN >= _COLS);
#endif

  int idx = 0, idx0 = 0, idx1 = 0;
  for (int y = 0; y < _ROWS; ++y) {

    for (int x = 0; x < _COLS; ++x) {
#pragma HLS PIPELINE II = 1
      u24a val = _src0.read(idx0++);
      _dst.write(idx++, val);
    }

    for (int x = 0; x < _COLS; ++x) {
#pragma HLS PIPELINE II = 1
      u24a val = _src1.read(idx1++);
      _dst.write(idx++, val);
    }
  }
}

void _stitch_2_quat(SProcPic &img0, SProcPic &img1, HalfPic &result) {
#pragma HLS DATAFLOW
  LProcPic img0_l, img1_l;
  _copy_mat_2(img0, img1, img0_l, img1_l);
  _stitch_2_quat_core(img0_l, img1_l, result);
}
template <int _ROWS, int _COLS, int _XFCVDEPTH_IN>
void _32arr_to_24mat(
    u32a *_src, xf::cv::Mat<XF_8UC3, _ROWS, _COLS, 1, _XFCVDEPTH_IN> &_dst) {

  constexpr int TOTAL_ITER_N = _ROWS * _COLS;
  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS LOOP_TRIPCOUNT max = TOTAL_ITER_N min = TOTAL_ITER_N
#pragma HLS PIPELINE II = 1
    u24a val = _src[i].range(23, 0);
    _dst.write(i, val);
  }
}

void _128arr_to_mapxy(u16a sel, u128a *m_axi_mapxy, MapPic &mapx0,
                      MapPic &mapy0, MapPic &mapx1, MapPic &mapy1) {

  bool input_mapxy = sel[0] && sel[1];

  for (int i = 0; i < PROC_HEIGHT * PROC_WIDTH; ++i) {
#pragma HLS PIPELINE II = 4

    u128a val = m_axi_mapxy[i];
    if (input_mapxy) {
      mapx0.write(i, val.range(31, 0));
      mapy0.write(i, val.range(63, 32));
      mapx1.write(i, val.range(95, 64));
      mapy1.write(i, val.range(127, 96));
    }
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

inline u8a _clamp_multiply(ap_ufixed<16, 2> gain, u8a val) {
  ap_ufixed<24, 10> product = val * gain;
  if (product > 255) {
    product = 255;
  }

  return (u8a)product;
}

void isp(SProcPic &_src, SProcPic &_dst) {

  static ap_ufixed<16, 2> r_gain = 1.33400;
  static ap_ufixed<16, 2> b_gain = 1.55053;

  int idx = 0;
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
#pragma HLS PIPELINE II=2
      u24a val = _src.read(idx);
      u24a valp = 0;

      u8a val_b = val.range(23, 16);
      u8a val_g = val.range(15, 8);
      u8a val_r = val.range(7, 0);
      valp.range(23, 16) = _clamp_multiply(b_gain, val_b);
      valp.range(15, 8) = val_g;
      valp.range(7, 0) = _clamp_multiply(r_gain, val_r);
      _dst.write(idx, valp);
      ++idx;
    }
  }
}

void _isp_2(SProcPic &img0_i, SProcPic &img1_i, SProcPic &img0_o,
            SProcPic &img1_o) {
#pragma HLS DATAFLOW
  isp(img0_i, img0_o);
  isp(img1_i, img1_o);
}

void _remap_2(SProcPic &img0_i, SProcPic &img1_i, SProcPic &img0_o,
              SProcPic &img1_o, MapPic &mapx0, MapPic &mapy0, MapPic &mapx1,
              MapPic &mapy1) {
#pragma HLS DATAFLOW

  xf::cv::remap<REMAP_WIN_ROWS0, XF_INTERPOLATION_NN>(img0_i, img0_o, mapx0,
                                                      mapy0);
  xf::cv::remap<REMAP_WIN_ROWS1, XF_INTERPOLATION_NN>(img1_i, img1_o, mapx1,
                                                      mapy1);
}

void _stitcher_isp(u16a sel, SProcPic &img0_i, SProcPic &img1_i,
                   SProcPic &img0_o, SProcPic &img1_o, HalfPic &result) {
  if (sel[0]) {
    _isp_2(img0_i, img1_i, img0_o, img1_o);
  } else {
    _stitch_2_quat(img0_i, img1_i, result);
  }
}

void _stitcher_remap(u16a sel, SProcPic &img0_i, SProcPic &img1_i,
                     SProcPic &img0_o, SProcPic &img1_o, MapPic &mapx0,
                     MapPic &mapy0, MapPic &mapx1, MapPic &mapy1,
                     HalfPic &last_result, HalfPic &result) {

  if (sel[0] == 0) {

    _copy_mat(last_result, result);

  } else if (sel[1] == 1) {
    _remap_2(img0_i, img1_i, img0_o, img1_o, mapx0, mapy0, mapx1, mapy1);
  } else {
    _stitch_2_quat(img0_i, img1_i, result);
  }
}

void _stitcher_seam_blend(u16a sel, SProcPic &img0_i, SProcPic &img1_i,
                          HalfPic &last_result, HalfPic &result) {

  static u16a seam_path[COST_HEIGHT] = {0};
  bool draw_seam = sel[4];

  if (sel[0] == 0 || sel[1] == 0) {
    _copy_mat(last_result, result);
  } else if (sel[2] == 0) {
    _stitch_2_quat(img0_i, img1_i, result);
  } else if (sel[3] == 0) {
    update_seam(img0_i, img1_i, seam_path, result);
  } else {
    base_blend(img0_i, img1_i, draw_seam, seam_path, result);
  }
}

void _stitcher_write(HalfPic &result, u32a *m_axi_out) {

  for (int i = 0; i < PROC_HEIGHT * SRC_WIDTH; ++i) {
#pragma HLS PIPELINE II = 1

    u32a val = 0xFFFFFFFF;
    val.range(23, 0) = result.read(i);

    m_axi_out[i] = val;
  }
}

void isp_stitcher(u16a sel, u32a *m_axi_in0, u32a *m_axi_in1,
                  u128a *m_axi_mapxy, u32a *m_axi_out) {
#pragma HLS INTERFACE s_axilite port = sel
#pragma HLS INTERFACE m_axi port = m_axi_in0 bundle = HP0 offset =             \
    slave depth = SRC_PIXELS
#pragma HLS INTERFACE m_axi port = m_axi_in1 bundle = HP1 offset =             \
    slave depth = SRC_PIXELS
#pragma HLS INTERFACE m_axi port = m_axi_mapxy bundle = HP2 offset =           \
    slave depth = PROC_PIXELS
#pragma HLS INTERFACE m_axi port = m_axi_out bundle = HP3 offset =             \
    slave depth = SRC_PIXELS
#pragma HLS INTERFACE s_axilite port = return

#pragma HLS DATAFLOW

  SrcPic img0, img1;
#pragma HLS stream type = fifo variable = img0.data
#pragma HLS stream type = fifo variable = img1.data
  MapPic mapx0, mapy0, mapx1, mapy1;
#pragma HLS stream type = fifo variable = mapx0.data
#pragma HLS stream type = fifo variable = mapy0.data
#pragma HLS stream type = fifo variable = mapx1.data
#pragma HLS stream type = fifo variable = mapy1.data

  SProcPic img0_res, img1_res;
#pragma HLS stream type = fifo variable = img0_res.data
#pragma HLS stream type = fifo variable = img1_res.data

  _32arr_to_24mat(m_axi_in0, img0);
  _32arr_to_24mat(m_axi_in1, img1);
  _128arr_to_mapxy(sel, m_axi_mapxy, mapx0, mapy0, mapx1, mapy1);

  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);
  printf("pass resize\n");

  SProcPic img0_1, img1_1;
  HalfPic result1;
#pragma HLS stream type = fifo variable = img0_1.data
#pragma HLS stream type = fifo variable = img1_1.data
#pragma HLS stream type = fifo variable = result1.data
  _stitcher_isp(sel, img0_res, img1_res, img0_1, img1_1, result1);
  printf("pass isp\n");

  SProcPic img0_2, img1_2;
  HalfPic result2;
#pragma HLS stream type = fifo variable = img0_2.data
#pragma HLS stream type = fifo variable = img1_2.data
#pragma HLS stream type = fifo variable = result2.data
  _stitcher_remap(sel, img0_1, img1_1, img0_2, img1_2, mapx0, mapy0, mapx1,
                  mapy1, result1, result2);
  printf("pass remap\n");

  HalfPic result3;
#pragma HLS stream type = fifo variable = result3.data

  _stitcher_seam_blend(sel, img0_2, img1_2, result2, result3);
  printf("pass seam_blend\n");

  _stitcher_write(result3, m_axi_out);
  printf("pass write\n");
}