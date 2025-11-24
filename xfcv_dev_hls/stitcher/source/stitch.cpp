
#include "stitch.hpp"
#include "blend.hpp"
#include "calc_seam.hpp"
#include "common/xf_params.hpp"
#include "imgproc/xf_resize.hpp"
#include "proj_align.hpp"
#include "share.h"
#include "utils.hpp"

// void stitch_core(
//     xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img0,
//     xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img1,
//     xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERALL_WIDTH, NPPCX> &panorama,
//     ap_int<TRACK_AXI_WIDTH> *track, ap_uint<MAPXY_AXI_WIDTH> *mapxy) {

//   static bool initialized = false;

//   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX>
//   img0_align(PROC_HEIGHT,
//                                                                    PROC_WIDTH),
//       img1_align(PROC_HEIGHT, PROC_WIDTH);

//   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, UNDERLAP_WIDTH, NPPCX> img0_underlap(
//       PROC_HEIGHT, UNDERLAP_WIDTH),
//       img1_underlap(PROC_HEIGHT, UNDERLAP_WIDTH);

//   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> img0_overlap(
//       PROC_HEIGHT, OVERLAP_WIDTH),
//       img1_overlap(PROC_HEIGHT, OVERLAP_WIDTH),
//       blending_overlap(PROC_HEIGHT, OVERLAP_WIDTH);

//   xf::cv::Mat<COST_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> cost(PROC_HEIGHT,
//                                                                  OVERLAP_WIDTH);
//   xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> mask(PROC_HEIGHT,
//                                                                  OVERLAP_WIDTH);

//   static hls::stream<u16t> seam_path;

//   //   if (!initialized) {
//   //     for (int y = 0; y < PROC_HEIGHT; ++y) {
//   //       seam_path.write(OVERLAP_WIDTH / 2);
//   //     }

//   //     initialized = true;
//   //   }

// #pragma HLS DATAFLOW

//   proj_align(img0, img1, img0_align, img1_align, mapxy);
//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     for (int x = 0; x < PROC_WIDTH; ++x) {
//       int idx = y * PROC_WIDTH + x;

//       u24a val1 = img0.read(idx);
//       u24a val2 = img1.read(idx);

//       if (x < UNDERLAP_WIDTH) {
//         img0_underlap.write(y * UNDERLAP_WIDTH + x, val1);
//       } else {
//         img0_overlap.write(y * OVERLAP_WIDTH + x - UNDERLAP_WIDTH, val1);
//       }

//       if (x < OVERLAP_WIDTH) {
//         img1_overlap.write(y * OVERLAP_WIDTH + x, val2);
//       } else {
//         img1_underlap.write(y * UNDERLAP_WIDTH + x - OVERLAP_WIDTH, val2);
//       }
//     }
//   }

//   calc_cost_map(img0_overlap, img1_overlap, cost);
//   calc_seam(cost, track, seam_path);
//   generate_mask(seam_path, mask, 1);

//   simple_blend(img0_overlap, img1_overlap, mask, blending_overlap);

//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     for (int x = 0; x < OVERALL_WIDTH; ++x) {

//       u24a val;
//       if (x < UNDERLAP_WIDTH) {
//         val = img0_underlap.read(y * UNDERLAP_WIDTH + x);
//       } else if (x < PROC_WIDTH) {
//         val = blending_overlap.read(y * OVERLAP_WIDTH + x - UNDERLAP_WIDTH);
//       } else {
//         val = img1_underlap.read(y * UNDERLAP_WIDTH + x - PROC_WIDTH);
//       }
//       panorama.write(y * OVERALL_WIDTH + x, val);
//     }
//   }

// #ifndef __SYNTHESIS__
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/o1.png", img0_overlap);
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/o2.png", img1_overlap);
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/u1.png", img0_underlap);
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/u2.png", img1_underlap);

//   cv::Mat mask_cv(PROC_HEIGHT, OVERLAP_WIDTH, CV_8UC1);
//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     for (int x = 0; x < OVERLAP_WIDTH; ++x) {
//       int idx = y * OVERLAP_WIDTH + x;
//       int val = ((int)mask.read(idx)) / 256;
//       mask_cv.at<u8t>(y, x) = val;
//     }
//   }
//   cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/mask.png", mask_cv);
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/blend.png",
//                   blending_overlap);
//   xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/pano.png", panorama);
// #endif
// }

// void stitcher(SrcVideoStrm_t &vid_in0, SrcVideoStrm_t &vid_in1,
//               SrcVideoStrm_t &vid_out, ap_uint<MAPXY_AXI_WIDTH> *mapxy) {
// #pragma HLS INTERFACE axis port = vid_in0 register
// #pragma HLS INTERFACE axis port = vid_in1 register
// #pragma HLS INTERFACE axis port = vid_out register
// #pragma HLS INTERFACE m_axi offset = slave port = mapxy bundle = gmem0 depth
// = \
//     MAPXY_AXI_DEPTH
// #pragma HLS INTERFACE s_axilite port = return bundle = CTRL

//   xf::cv::Mat<SRC_TYPE, SRC_HEIGHT, SRC_WIDTH, NPPCX> img0(SRC_HEIGHT,
//                                                            SRC_WIDTH),
//       img1(SRC_HEIGHT, SRC_WIDTH);

//   xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX>
//   img0_proj(PROC_HEIGHT,
//                                                                   PROC_WIDTH),
//       img1_proj(PROC_HEIGHT, PROC_WIDTH);

//   xf::cv::Mat<SRC_TYPE, DST_HEIGHT, DST_WIDTH, NPPCX> img_out(DST_HEIGHT,
//                                                               DST_WIDTH);

// #pragma HLS DATAFLOW

//   AXIvideo2xfMat(vid_in0, img0);
//   AXIvideo2xfMat(vid_in1, img1);

//   AXIvideo2xfMat(vid_in0, img0);
//   AXIvideo2xfMat(vid_in1, img1);

//   proj_align(img0, img1, img0_proj, img1_proj, mapxy);

//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     for (int x = 0; x < DST_WIDTH; ++x) {
//       u24a val;
//       if (x < PROC_WIDTH) {
//         val = img0.read(y * PROC_WIDTH + x);
//       } else {
//         val = img1.read(y * PROC_WIDTH + x - PROC_WIDTH);
//       }

//       img_out.write(y * DST_WIDTH + x, val);
//     }
//   }

//   for (int y = 0; y < PROC_HEIGHT; ++y) {
//     for (int x = 0; x < DST_WIDTH; ++x) {
//       u24a val;
//       if (x < PROC_WIDTH) {
//         val = img0_proj.read(y * PROC_WIDTH + x);
//       } else {
//         val = img1_proj.read(y * PROC_WIDTH + x - PROC_WIDTH);
//       }

//       img_out.write((y + PROC_HEIGHT) * DST_WIDTH + x, val);
//     }
//   }

//   xfMat2AXIvideo(img_out, vid_out);
// }

template <int PTYPE, int ROWS, int COLS, int NPC, int XFCVDEPTH_IN,
          int XFCVDEPTH_OUT>
void _stitch_2_quat(
    xf::cv::Mat<PTYPE, ROWS, COLS, NPC, XFCVDEPTH_IN> &_src0,
    xf::cv::Mat<PTYPE, ROWS, COLS, NPC, XFCVDEPTH_IN> &_src1,
    xf::cv::Mat<PTYPE, ROWS, COLS * 2, NPC, XFCVDEPTH_OUT> &_dst) {

  constexpr int DST_COLS = COLS * 2;
  constexpr int HALF_ITER_N = ROWS * DST_COLS;

  for (int y = 0; y < ROWS; ++y) {
#pragma HLS LOOP_TRIPCOUNT min = ROWS max = ROWS

    for (int x = 0; x < COLS; ++x) {
#pragma HLS LOOP_TRIPCOUNT min = COLS max = COLS
#pragma HLS PIPELINE II = 1
      u24a val = _src0.read(y * COLS + x);
      _dst.write(y * DST_COLS + x, val);
    }

    for (int x = 0; x < COLS; ++x) {
#pragma HLS LOOP_TRIPCOUNT min = COLS max = COLS
#pragma HLS PIPELINE II = 1
      u24a val = _src1.read(y * COLS + x);
      _dst.write(y * DST_COLS + COLS + x, val);
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

    for (int x = 0; x < OVERALL_WIDTH; ++x)
    {


        
    }
  }
}

void stitcher_remap(SrcStrm &s_axis_in0, SrcStrm &s_axis_in1,
                    MapStrm &s_axis_mapxy, SrcStrm &m_axis_align) {
#pragma HLS INTERFACE axis port = s_axis_in0 register
#pragma HLS INTERFACE axis port = s_axis_in1 register
#pragma HLS INTERFACE axis port = s_axis_mapxy register
#pragma HLS INTERFACE axis port = m_axis_align register
#pragma HLS INTERFACE s_axilite port = return bundle = CTRL

#pragma HLS DATAFLOW

  SrcPic img0(SRC_HEIGHT, SRC_WIDTH), img1(SRC_HEIGHT, SRC_WIDTH);
  ProcPic img0_res(PROC_HEIGHT, PROC_WIDTH), img1_res(PROC_HEIGHT, PROC_WIDTH),
      img0_align(PROC_HEIGHT, PROC_WIDTH), img1_align(PROC_HEIGHT, PROC_WIDTH);
  HalfPic img_align(PROC_HEIGHT, SRC_WIDTH);

  AXIvideo2xfMat(s_axis_in0, img0);
  AXIvideo2xfMat(s_axis_in1, img1);
  //   printf("axis2xfMat finish\n");

  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);

  //   printf("resize finish\n");

  proj_align(img0_res, img1_res, img0_align, img1_align, s_axis_mapxy);

  //   printf("proj_align\n");
  _stitch_2_quat(img0_align, img1_align, img_align);

  xfMat2AXIvideo(img_align, m_axis_align);
  return;
}

void _init_seam_path_stream(hls::stream<u16t> &seam_path) {

  for (int y = 0; y < COST_HEIGHT; ++y) {
#pragma HLS LOOP_TRIPCOUNT min = COST_HEIGHT max = COST_HEIGHT
    seam_path.write(COST_WIDTH / 2);
  }
}

void stitcher(SrcStrm &s_axis_in0, SrcStrm &s_axis_in1, MapStrm &s_axis_mapxy,
              SrcStrm &m_axis_stitch) {
#pragma HLS INTERFACE axis port = s_axis_in0 register
#pragma HLS INTERFACE axis port = s_axis_in1 register
#pragma HLS INTERFACE axis port = s_axis_mapxy register
#pragma HLS INTERFACE axis port = m_axis_stitch register
#pragma HLS INTERFACE s_axilite port = return bundle = CTRL

#pragma HLS DATAFLOW

  SrcPic img0(SRC_HEIGHT, SRC_WIDTH), img1(SRC_HEIGHT, SRC_WIDTH);
  ProcPic img0_res(PROC_HEIGHT, PROC_WIDTH), img1_res(PROC_HEIGHT, PROC_WIDTH),
      img0_align(PROC_HEIGHT, PROC_WIDTH), img1_align(PROC_HEIGHT, PROC_WIDTH);

  static hls::stream<u16t> seam_path;
  static bool initialized = false;

  if (!initialized) {
    _init_seam_path_stream(seam_path);
    initialized = true;
  }

  AXIvideo2xfMat(s_axis_in0, img0);
  AXIvideo2xfMat(s_axis_in1, img1);
  //   printf("axis2xfMat finish\n");

  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img0, img0_res);
  xf::cv::resize<XF_INTERPOLATION_NN, SRC_TYPE, SRC_HEIGHT, SRC_WIDTH,
                 PROC_HEIGHT, PROC_WIDTH, NPPCX, false, 2>(img1, img1_res);

  //   printf("resize finish\n");

  proj_align(img0_res, img1_res, img0_align, img1_align, s_axis_mapxy);
  //   printf("proj_align finish\n");

  return;
}