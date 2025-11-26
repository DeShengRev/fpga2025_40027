
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

void _split_img(ProcPic &_src0, ProcPic &_src1, hls::stream<u16t> seam_path,
                OverlapPic &overlap0, OverlapPic &overlap1,
                xf::cv::Mat<SRC_TYPE, BLENDING_WIDTH, PROC_HEIGHT, NPPCX,
                            XF_CV_DEPTH> &blend,
                xf::cv::Mat<SRC_TYPE, PROC_WIDTH - BLENDING_WIDTH, PROC_HEIGHT,
                            NPPCX, XF_CV_DEPTH> &leftover) {

#pragma HLS DATAFLOW

  UnderlapPic upl, upr;
  OverlapPic &opl0 = overlap0;
  OverlapPic &opr0 = overlap1;
  OverlapPic opl1, opr1;

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < UNDERLAP_WIDTH; ++x) {
      u24a val = _src0.read(y * PROC_WIDTH + x);
      upl.write(y * UNDERLAP_WIDTH + x, val);
    }
    for (int x = 0; x < OVERLAP_WIDTH; ++x) {
      u24a val = _src0.read(y * PROC_WIDTH + UNDERLAP_WIDTH + x);
      opl0.write(y * OVERLAP_WIDTH + x, val);
      opl1.write(y * OVERLAP_WIDTH + x, val);
    }

    for (int x = 0; x < OVERLAP_WIDTH; ++x) {
      u24a val = _src1.read(y * PROC_WIDTH + x);
      opr0.write(y * OVERLAP_WIDTH + x, val);
      opr1.write(y * OVERLAP_WIDTH + x, val);
    }
    for (int x = 0; x < UNDERLAP_WIDTH; ++x) {
      u24a val = _src1.read(y * PROC_WIDTH + OVERLAP_WIDTH + x);
      upr.write(y * UNDERLAP_WIDTH + x, val);
    }
  }

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    int spx = seam_path.read();
    int spxl = spx - HALF_BLENDING_WIDTH;
    int spxr = spx + HALF_BLENDING_WIDTH;

    for (int x = 0; x < OVERALL_WIDTH; ++x) {
    }
  }
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

void _128arr_to_mapxy(u128a *m_axi_mapxy, MapPic &mapx0, MapPic &mapy0,
                      MapPic &mapx1, MapPic &mapy1) {

  constexpr int TOTAL_ITER_N = PROC_HEIGHT * PROC_WIDTH;

  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS LOOP_TRIPCOUNT max = TOTAL_ITER_N min = TOTAL_ITER_N
#pragma HLS PIPELINE II = 1

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
void _cp_24mat(
    xf::cv::Mat<XF_8UC3, _ROWS, _COLS, _NPC, _XFCVDEPTH_IN> &_src,
    xf::cv::Mat<XF_8UC3, _ROWS, _COLS, _NPC, _XFCVDEPTH_OUT0> &_dst0,
    xf::cv::Mat<XF_8UC3, _ROWS, _COLS, _NPC, _XFCVDEPTH_OUT1> &_dst1) {

  constexpr int TOTAL_ITER_N = _ROWS * _COLS / _NPC;

  for (int i = 0; i < TOTAL_ITER_N; ++i) {
#pragma HLS PIPELINE II = 1

    u24a val = _src.read(i);
    _dst0.write(i, val);
    _dst1.write(i, val);
  }
}

// void isp_stitcher_core(SrcPic &img0, SrcPic &img1, MapPic &mapx0, MapPic
// &mapy0,
//                        MapPic &mapx1, MapPic &mapy1,
//                        hls::stream<u16t> &seam_path, HalfPic &img_out) {
// #pragma HLS INLINE

//   ProcPic img0_res, img1_res, img0_align, img1_align, img0_a0, img0_a1,
//   img1_a0,
//       img1_a1;
// #pragma HLS stream variable = img0_res.data type = fifo depth = XF_CV_DEPTH
// #pragma HLS stream variable = img1_res.data type = fifo depth = XF_CV_DEPTH
// #pragma HLS stream variable = img0_align.data type = fifo depth = XF_CV_DEPTH
// #pragma HLS stream variable = img1_align.data type = fifo depth = XF_CV_DEPTH

//   //   printf("axis2xfMat finish\n");

//   xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
//                  PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
//   xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
//                  PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);

//   //   printf("resize finish\n");

//   xf::cv::remap<REMAP_WIN_ROWS0, XF_INTERPOLATION_BILINEAR>(
//       img0_res, img0_align, mapx0, mapy0);
//   xf::cv::remap<REMAP_WIN_ROWS1, XF_INTERPOLATION_BILINEAR>(
//       img1_res, img1_align, mapx1, mapy1);

//   //   printf("proj_align finish\n");
//   _cp_24mat(img0_align, img0_a0, img0_a1);
//   _cp_24mat(img1_align, img1_a0, img1_a1);

//   // #ifndef __SYNTHESIS__
//   //   xf_imwrite(get_path("img0_a0.png"), img0_a0);
//   //   xf_imwrite(get_path("img0_a1.png"), img0_a1);
//   //   xf_imwrite(get_path("img1_a0.png"), img1_a0);
//   //   xf_imwrite(get_path("img1_a1.png"), img1_a1);
//   // #endif

//   base_seam_blend(img0_a1, img1_a1, true, seam_path, img_out);
//   //   printf("blend finish\n");

//   update_seam(img0_a0, img1_a0, seam_path);
//   //   printf("update_seam finish\n");

//   return;
// }

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

  static hls::stream<u16t> seam_path;
#pragma HLS stream variable = seam_path type = fifo depth = COST_HEIGHT * 2


  SrcPic img0, img1;
#pragma HLS stream variable = img0.data type = fifo depth = SRC_WIDTH
#pragma HLS stream variable = img1.data type = fifo depth = SRC_WIDTH
  MapPic mapx0, mapy0, mapx1, mapy1;
#pragma HLS stream variable = mapx0.data type = fifo depth = PROC_WIDTH
#pragma HLS stream variable = mapy0.data type = fifo depth = PROC_WIDTH
#pragma HLS stream variable = mapx1.data type = fifo depth = PROC_WIDTH
#pragma HLS stream variable = mapy1.data type = fifo depth = PROC_WIDTH
  HalfPic img_out;

  ProcPic img0_res, img1_res, img0_align, img1_align, img0_a0, img0_a1, img1_a0,
      img1_a1;
#pragma HLS stream variable = img0_res.data type = fifo depth = XF_CV_DEPTH
#pragma HLS stream variable = img1_res.data type = fifo depth = XF_CV_DEPTH
#pragma HLS stream variable = img0_align.data type = fifo depth = XF_CV_DEPTH
#pragma HLS stream variable = img1_align.data type = fifo depth = XF_CV_DEPTH

  _32arr_to_24mat(m_axi_in0, img0);
  _32arr_to_24mat(m_axi_in1, img1);
  _128arr_to_mapxy(m_axi_mapxy, mapx0, mapy0, mapx1, mapy1);

  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);

  xf::cv::remap<REMAP_WIN_ROWS0, XF_INTERPOLATION_BILINEAR>(
      img0_res, img0_align, mapx0, mapy0);
  xf::cv::remap<REMAP_WIN_ROWS1, XF_INTERPOLATION_BILINEAR>(
      img1_res, img1_align, mapx1, mapy1);

  _cp_24mat(img0_align, img0_a0, img0_a1);
  _cp_24mat(img1_align, img1_a0, img1_a1);

  update_seam(img0_a0, img1_a0, seam_path);

  base_seam_blend(img0_a1, img1_a1, true, seam_path, img_out);

  _24mat_to_32arr(img_out, m_axi_out);
}
