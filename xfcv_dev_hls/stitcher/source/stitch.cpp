
#include "stitch.hpp"
#include "common/xf_infra.hpp"
#include "imgproc/xf_resize.hpp"

void stitch_core(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> &img1,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERALL_WIDTH, NPPCX> &panorama,
    ap_int<TRACK_AXI_WIDTH> *track) {

  static bool initialized = false;

  xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, UNDERLAP_WIDTH, NPPCX> img0_underlap(
      PROC_HEIGHT, UNDERLAP_WIDTH),
      img1_underlap(PROC_HEIGHT, UNDERLAP_WIDTH);

  xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> img0_overlap(
      PROC_HEIGHT, OVERLAP_WIDTH),
      img1_overlap(PROC_HEIGHT, OVERLAP_WIDTH),
      blending_overlap(PROC_HEIGHT, OVERLAP_WIDTH);

  xf::cv::Mat<COST_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> cost(PROC_HEIGHT,
                                                                 OVERLAP_WIDTH);
  xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> mask(PROC_HEIGHT,
                                                                 OVERLAP_WIDTH);

  static hls::stream<u16t> seam_path;

  //   if (!initialized) {
  //     for (int y = 0; y < PROC_HEIGHT; ++y) {
  //       seam_path.write(OVERLAP_WIDTH / 2);
  //     }

  //     initialized = true;
  //   }

#pragma HLS DATAFLOW
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < PROC_WIDTH; ++x) {
      int idx = y * PROC_WIDTH + x;

      u24a val1 = img0.read(idx);
      u24a val2 = img1.read(idx);

      if (x < UNDERLAP_WIDTH) {
        img0_underlap.write(y * UNDERLAP_WIDTH + x, val1);
      } else {
        img0_overlap.write(y * OVERLAP_WIDTH + x - UNDERLAP_WIDTH, val1);
      }

      if (x < OVERLAP_WIDTH) {
        img1_overlap.write(y * OVERLAP_WIDTH + x, val2);
      } else {
        img1_underlap.write(y * UNDERLAP_WIDTH + x - OVERLAP_WIDTH, val2);
      }
    }
  }

  calc_cost_map(img0_overlap, img1_overlap, cost);
  calc_seam(cost, track, seam_path);
  generate_mask(seam_path, mask, 1);

  pyramid_blend(img0_overlap, img1_overlap, mask, blending_overlap);
  
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < OVERALL_WIDTH; ++x) {

      u24a val;
      if (x < UNDERLAP_WIDTH) {
        val = img0_underlap.read(y * UNDERLAP_WIDTH + x);
      } else if (x < PROC_WIDTH) {
        val = blending_overlap.read(y * OVERLAP_WIDTH + x - UNDERLAP_WIDTH);
      } else {
        val = img1_underlap.read(y * UNDERLAP_WIDTH + x - PROC_WIDTH);
      }
      panorama.write(y * OVERALL_WIDTH + x, val);
    }
  }

#ifndef __SYNTHESIS__
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/o1.png", img0_overlap);
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/o2.png", img1_overlap);
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/u1.png", img0_underlap);
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/u2.png", img1_underlap);

  cv::Mat mask_cv(PROC_HEIGHT, OVERLAP_WIDTH, CV_8UC1);
  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < OVERLAP_WIDTH; ++x) {
      int idx = y * OVERLAP_WIDTH + x;
      int val = ((int)mask.read(idx)) / 256;
      mask_cv.at<u8t>(y, x) = val;
    }
  }
  cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/mask.png", mask_cv);
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/blend.png",
                  blending_overlap);
  xf::cv::imwrite("E:/Dev/QianSai/xfcv_dev_hls/test/pano.png", panorama);
#endif
}

void stitcher(SrcVideoStrm_t &vid_stream_in0, SrcVideoStrm_t &vid_stream_in1,
              SrcVideoStrm_t &vid_stream_out, ap_uint<MAPXY_AXI_WIDTH> *mapxy) {
#pragma HLS INTERFACE axis port = vid_stream_in0 register
#pragma HLS INTERFACE axis port = vid_stream_in1 register
#pragma HLS INTERFACE axis port = vid_stream_out register
#pragma HLS INTERFACE m_axi offset = slave port = mapxy bundle = gmem0 depth = \
    MAPXY_AXI_DEPTH
#pragma HLS INTERFACE s_axilite port = return bundle = CTRL

  xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, PROC_WIDTH, NPPCX> img_in0(PROC_HEIGHT,
                                                                PROC_WIDTH),
      img_in1(PROC_HEIGHT, PROC_WIDTH), img_proj0(PROC_HEIGHT, PROC_WIDTH),
      img_proj1(PROC_HEIGHT, PROC_WIDTH);

  xf::cv::Mat<SRC_TYPE, DST_HEIGHT, DST_WIDTH, NPPCX> img_out(DST_HEIGHT,
                                                              DST_WIDTH);

#pragma HLS DATAFLOW

  AXIvideo2xfMat(vid_stream_in0, img_in0);
  AXIvideo2xfMat(vid_stream_in1, img_in1);

  proj_align(img_in0, img_in1, img_proj0, img_proj1, mapxy);

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < DST_WIDTH; ++x) {
      u24a val;
      if (x < PROC_WIDTH) {
        val = img_in0.read(y * PROC_WIDTH + x);
      } else {
        val = img_in1.read(y * PROC_WIDTH + x - PROC_WIDTH);
      }

      img_out.write(y * DST_WIDTH + x, val);
    }
  }

  for (int y = 0; y < PROC_HEIGHT; ++y) {
    for (int x = 0; x < DST_WIDTH; ++x) {
      u24a val;
      if (x < PROC_WIDTH) {
        val = img_proj0.read(y * PROC_WIDTH + x);
      } else {
        val = img_proj1.read(y * PROC_WIDTH + x - PROC_WIDTH);
      }

      img_out.write((y + PROC_HEIGHT) * DST_WIDTH + x, val);
    }
  }

  xfMat2AXIvideo(img_out, vid_stream_out);
}
