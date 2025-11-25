
#include "stitch.hpp"
#include "blend.hpp"
#include "calc_seam.hpp"
#include "common/xf_infra.hpp"
#include "common/xf_params.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_resize.hpp"
#include "proj_align.hpp"
#include "share.h"
#include "utils.hpp"

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

template <int _ROWS, int _COLS>
void _axi_img_to_axis(u32a *_src, SrcStrm &_dst) {

  int idx = 0;
  bool sof = true;
  SrcStrmBus axi;

  for (int y = 0; y < _ROWS; ++y) {
    for (int x = 0; x < _COLS; ++x) {
#pragma HLS loop_flatten off
#pragma HLS pipeline II = 1
      if (sof) {
        axi.user = 1;
      } else {
        axi.user = 0;
      }
      if (x == _COLS - 1) {
        axi.last = 1;
      } else {
        axi.last = 0;
      }

      axi.data = _src[idx].range(23, 0);
      _dst.write(axi);
      ++idx;
      sof = false;
    }
  }
}

template <int _ROWS, int _COLS>
void _axi_mapxy_to_axis(u128a *_src, MapStrm &_dst0, MapStrm &_dst1,
                        MapStrm &_dst2, MapStrm &_dst3) {

  int idx = 0;
  bool sof = true;
  MapStrmBus axi0, axi1, axi2, axi3;

  for (int y = 0; y < _ROWS; ++y) {
    for (int x = 0; x < _COLS; ++x) {
#pragma HLS loop_flatten off
#pragma HLS pipeline II = 1
      if (sof) {
        axi0.user = 1;
        axi1.user = 1;
        axi2.user = 1;
        axi3.user = 1;
      } else {
        axi0.user = 0;
        axi1.user = 0;
        axi2.user = 0;
        axi3.user = 0;
      }
      if (x == _COLS - 1) {
        axi0.last = 1;
        axi1.last = 1;
        axi2.last = 1;
        axi3.last = 1;
      } else {

        axi0.last = 0;
        axi1.last = 0;
        axi2.last = 0;
        axi3.last = 0;
      }

      u128a val = _src[idx];
      axi0.data = val.range(31, 0);
      axi1.data = val.range(63, 32);
      axi2.data = val.range(95, 64);
      axi3.data = val.range(127, 96);
      _dst0.write(axi0);
      _dst1.write(axi1);
      _dst2.write(axi2);
      _dst3.write(axi3);
      ++idx;
      sof = false;
    }
  }
}

template <int _ROWS, int _COLS>
void _axis_img_to_axi(SrcStrm &_src, u32a *_dst) {

  constexpr int TOTAL_ITER_N = _ROWS * _COLS;
  u32a val = 0xFFFFFFFF;
  bool start = false;
  SrcStrmBus axi;

loop_start_hunt:
  while (!start) {
#pragma HLS pipeline II = 1
#pragma HLS loop_tripcount avg = 1 max = 4
    _src >> axi;
    start = axi.user.to_bool();
  }

  val.range(23, 0) = axi.data;
  _dst[0] = val;

  for (int i = 1; i < TOTAL_ITER_N; ++i) {
#pragma HLS pipeline II = 1
#pragma HLS loop_tripcount min = TOTAL_ITER_N - 1 max = TOTAL_ITER_N - 1

    _src >> axi;
    val.range(23, 0) = axi.data;
    _dst[i] = val;
  }
}

void isp_stitcher_core(SrcStrm &in0_strm, SrcStrm &in1_strm,
                       MapStrm &mapx0_strm, MapStrm &mapy0_strm,
                       MapStrm &mapx1_strm, MapStrm &mapy1_strm,
                       SrcStrm &out_strm) {
#pragma HLS DATAFLOW

  SrcPic img0(SRC_HEIGHT, SRC_WIDTH), img1(SRC_HEIGHT, SRC_WIDTH);
  ProcPic img0_res(PROC_HEIGHT, PROC_WIDTH), img1_res(PROC_HEIGHT, PROC_WIDTH),
      img0_align(PROC_HEIGHT, PROC_WIDTH), img1_align(PROC_HEIGHT, PROC_WIDTH);
  HalfPic img_align(PROC_HEIGHT, SRC_WIDTH);

  MapPic mapx0(PROC_HEIGHT, PROC_WIDTH), mapy0(PROC_HEIGHT, PROC_WIDTH),
      mapx1(PROC_HEIGHT, PROC_WIDTH), mapy1(PROC_HEIGHT, PROC_WIDTH);

  AXIvideo2xfMat(in0_strm, img0);
  AXIvideo2xfMat(in1_strm, img1);
  AXIvideo2xfMat(mapx0_strm, mapx0);
  AXIvideo2xfMat(mapy0_strm, mapy0);
  AXIvideo2xfMat(mapx1_strm, mapx1);
  AXIvideo2xfMat(mapy1_strm, mapy1);

//   printf("axis2xfMat finish\n");

  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);

//   printf("resize finish\n");

  xf::cv::remap<REMAP_WIN_ROWS0, XF_INTERPOLATION_BILINEAR>(
      img0_res, img0_align, mapx0, mapy0);
  xf::cv::remap<REMAP_WIN_ROWS1, XF_INTERPOLATION_BILINEAR>(
      img1_res, img1_align, mapx1, mapy1);

//   printf("proj_align finish\n");
  _stitch_2_quat(img0_align, img1_align, img_align);
  xfMat2AXIvideo(img_align, out_strm);

  return;
}

void _init_seam_path_stream(hls::stream<u16t> &seam_path) {

  for (int y = 0; y < COST_HEIGHT; ++y) {
#pragma HLS LOOP_TRIPCOUNT min = COST_HEIGHT max = COST_HEIGHT
    seam_path.write(COST_WIDTH / 2);
  }
}

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

  SrcStrm in0_strm, in1_strm, out_strm;

  MapStrm mapx0_strm, mapy0_strm, mapx1_strm, mapy1_strm;

  _axi_img_to_axis<SRC_HEIGHT, SRC_WIDTH>(m_axi_in0, in0_strm);
  _axi_img_to_axis<SRC_HEIGHT, SRC_WIDTH>(m_axi_in1, in1_strm);

  _axi_mapxy_to_axis<PROC_HEIGHT, PROC_WIDTH>(
      m_axi_mapxy, mapx0_strm, mapy0_strm, mapx1_strm, mapy1_strm);

  isp_stitcher_core(in0_strm, in1_strm, mapx0_strm, mapy0_strm, mapx1_strm,
                    mapy1_strm, out_strm);
  _axis_img_to_axi<PROC_HEIGHT, SRC_WIDTH>(out_strm, m_axi_out);
}