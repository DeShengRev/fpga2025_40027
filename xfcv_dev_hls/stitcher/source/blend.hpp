
#pragma once

#include "share.h"
#include "calc_seam.hpp"


#define NUM_LEVELS 3 // Using 3 levels (L0, L1, L2)
#define LAP_TYPE XF_8UC3

template <int ROWS, int COLS>
void base_blend(xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &img0,
                xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &img1,
                xf::cv::Mat<MASK_TYPE, ROWS, COLS, NPPCX> &mask,
                xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &res) {
#pragma HLS INLINE off
  for (int y = 0; y < ROWS; y++) {
    for (int x = 0; x < COLS; x++) {
#pragma HLS PIPELINE II = 1
      int idx = y * COLS + x;

      u24a color1 = img0.read(idx);
      u24a color2 = img1.read(idx);
      u16t k = mask.read(idx);

      u8t r1 = color1.range(7, 0);
      u8t g1 = color1.range(15, 8);
      u8t b1 = color1.range(23, 16);

      u8t r2 = color2.range(7, 0);
      u8t g2 = color2.range(15, 8);
      u8t b2 = color2.range(23, 16);

      ap_int<32> tmp_r = (ap_int<32>)r1 * k + (ap_int<32>)r2 * (MASK_MAX - k);
      ap_int<32> tmp_g = (ap_int<32>)g1 * k + (ap_int<32>)g2 * (MASK_MAX - k);
      ap_int<32> tmp_b = (ap_int<32>)b1 * k + (ap_int<32>)b2 * (MASK_MAX - k);

      u8t blend_r = (u8t)(tmp_r >> MASK_SHIFT);
      u8t blend_g = (u8t)(tmp_g >> MASK_SHIFT);
      u8t blend_b = (u8t)(tmp_b >> MASK_SHIFT);

      u24a blend;
      blend.range(7, 0) = blend_r;
      blend.range(15, 8) = blend_g;
      blend.range(23, 16) = blend_b;

      res.write(idx, blend);
    }
  }
}



// ========== 16-bit 图像混合 (Laplacian 层) ==========
template <int ROWS, int COLS>
void base_blend_16s(xf::cv::Mat<LAP_TYPE, ROWS, COLS, NPPCX> &img0,
                    xf::cv::Mat<LAP_TYPE, ROWS, COLS, NPPCX> &img1,
                    xf::cv::Mat<MASK_TYPE, ROWS, COLS, NPPCX> &mask,
                    xf::cv::Mat<LAP_TYPE, ROWS, COLS, NPPCX> &res) {
#pragma HLS INLINE off
  for (int y = 0; y < ROWS; y++) {
    for (int x = 0; x < COLS; x++) {
#pragma HLS PIPELINE II = 1
      int idx = y * COLS + x;

      ap_int<48> color1 = img0.read(idx);
      ap_int<48> color2 = img1.read(idx);
      u16t k = mask.read(idx);

      ap_int<16> r1 = (ap_int<16>)color1.range(15, 0);
      ap_int<16> g1 = (ap_int<16>)color1.range(31, 16);
      ap_int<16> b1 = (ap_int<16>)color1.range(47, 32);

      ap_int<16> r2 = (ap_int<16>)color2.range(15, 0);
      ap_int<16> g2 = (ap_int<16>)color2.range(31, 16);
      ap_int<16> b2 = (ap_int<16>)color2.range(47, 32);

      ap_int<32> tmp_r = (ap_int<32>)r1 * k + (ap_int<32>)r2 * (MASK_MAX - k);
      ap_int<32> tmp_g = (ap_int<32>)g1 * k + (ap_int<32>)g2 * (MASK_MAX - k);
      ap_int<32> tmp_b = (ap_int<32>)b1 * k + (ap_int<32>)b2 * (MASK_MAX - k);

      ap_int<16> blend_r = (ap_int<16>)(tmp_r >> MASK_SHIFT);
      ap_int<16> blend_g = (ap_int<16>)(tmp_g >> MASK_SHIFT);
      ap_int<16> blend_b = (ap_int<16>)(tmp_b >> MASK_SHIFT);

      ap_int<48> blend;
      blend.range(15, 0) = blend_r;
      blend.range(31, 16) = blend_g;
      blend.range(47, 32) = blend_b;

      res.write(idx, blend);
    }
  }
}



void simple_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend);

void feathering_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend);


void pyramid_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend);