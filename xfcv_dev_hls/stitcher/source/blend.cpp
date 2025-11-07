
#include "stitch.hpp"

#define NUM_LEVELS 3 // Using 3 levels (L0, L1, L2)

#define LAP_TYPE XF_8UC3

constexpr int H_L0 = PROC_HEIGHT;
constexpr int W_L0 = OVERLAP_WIDTH;
constexpr int H_L1 = PROC_HEIGHT / 2;
constexpr int W_L1 = OVERLAP_WIDTH / 2;
constexpr int H_L2 = PROC_HEIGHT / 4;
constexpr int W_L2 = OVERLAP_WIDTH / 4;

template <int ROWS, int COLS>
void base_blend(xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &img0,
                xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &img1,
                xf::cv::Mat<MASK_TYPE, ROWS, COLS, NPPCX> &mask,
                xf::cv::Mat<SRC_TYPE, ROWS, COLS, NPPCX> &res) {

  for (int y = 0; y < ROWS; ++y) {
    for (int x = 0; x < COLS; ++x) {
      int idx = y * OVERLAP_WIDTH + x;

      u24a color1 = img0.read(idx);
      u24a color2 = img1.read(idx);
      u16t k = mask.read(idx);

      u8t r1 = color1.range(7, 0);
      u8t r2 = color2.range(7, 0);

      u8t g1 = color1.range(15, 8);
      u8t g2 = color2.range(15, 8);

      u8t b1 = color1.range(23, 16);
      u8t b2 = color2.range(23, 16);

      u8t blend_r = (r1 * k + r2 * (MASK_MAX - k)) >> MASK_SHIFT;
      u8t blend_g = (g1 * k + g2 * (MASK_MAX - k)) >> MASK_SHIFT;
      u8t blend_b = (b1 * k + b2 * (MASK_MAX - k)) >> MASK_SHIFT;

      u24a blend;

      blend.range(7, 0) = blend_r;
      blend.range(15, 8) = blend_g;
      blend.range(23, 16) = blend_b;

      res.write(idx, blend);
    }
  }
}



void pyramid_blend(xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX>& img0,
                   xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX>& img1,
                   xf::cv::Mat<MASK_TYPE, H_L0, W_L0, NPPCX>& mask,
                   xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX>& blend) {
// Enable dataflow pipelining for the entire function
#pragma HLS DATAFLOW

    // --- 1. Gaussian Pyramid Storage (8U) ---
    xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> gauss_img0_L1;
    xf::cv::Mat<SRC_TYPE, H_L2, W_L2, NPPCX> gauss_img0_L2;
    xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> gauss_img1_L1;
    xf::cv::Mat<SRC_TYPE, H_L2, W_L2, NPPCX> gauss_img1_L2;
    xf::cv::Mat<MASK_TYPE, H_L1, W_L1, NPPCX> gauss_mask_L1;
    xf::cv::Mat<MASK_TYPE, H_L2, W_L2, NPPCX> gauss_mask_L2;

    // --- 2. Blended Gaussian Pyramid Storage (8U) ---
    xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> blended_gauss_L0;
    xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> blended_gauss_L1;
    xf::cv::Mat<SRC_TYPE, H_L2, W_L2, NPPCX> blended_gauss_L2;

    // --- 3. Blended Laplacian Pyramid Storage (16S) ---
    xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> blended_lap_L0;
    xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> blended_lap_L1;
    // Note: L2 of Laplacian is just blended_gauss_L2 (handled during reconstruction)

    // --- 4. Intermediate Mats for pyrUp (8U) ---
    xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> up_gauss_L1;
    xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> up_gauss_L2;

    // --- 5. Intermediate Mats for Type Conversion (16S) ---
    // (Needed before xf::cv::subtract)
    xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> blended_gauss_L0_16S;
    xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> blended_gauss_L1_16S;
    xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> up_gauss_L1_16S;
    xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> up_gauss_L2_16S;
    
    // --- 6. Reconstruction Intermediate Mats ---
    // (Needed before xf::cv::add)
    xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> up_reco_L2;      // 8U
    xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> up_reco_L2_16S;  // 16S
    xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> reco_L1;       // 16S
    xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> up_reco_L1;      // 16S
    xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> reco_L0;       // 16S (Final internal result)

    // --- KERNEL EXECUTION ---

    // --- Step 1: Build Gaussian Pyramids (8U & 16U) ---
    xf::cv::pyrDown<SRC_TYPE, H_L0, W_L0, NPPCX>(img0, gauss_img0_L1);
    xf::cv::pyrDown<SRC_TYPE, H_L0, W_L0, NPPCX>(img1, gauss_img1_L1);
    xf::cv::pyrDown<MASK_TYPE, H_L0, W_L0, NPPCX>(mask, gauss_mask_L1);
    
    xf::cv::pyrDown<SRC_TYPE, H_L1, W_L1, NPPCX>(gauss_img0_L1, gauss_img0_L2);
    xf::cv::pyrDown<SRC_TYPE, H_L1, W_L1, NPPCX>(gauss_img1_L1, gauss_img1_L2);
    xf::cv::pyrDown<MASK_TYPE, H_L1, W_L1, NPPCX>(gauss_mask_L1, gauss_mask_L2);

    // --- Step 2: Blend each Gaussian Level (8U) ---
    // xf::cv::blend can handle 8U inputs -> 8U output
    base_blend(img0, img1, mask, blended_gauss_L0);
    base_blend(gauss_img0_L1, gauss_img1_L1, gauss_mask_L1, blended_gauss_L1);
    base_blend(gauss_img0_L2, gauss_img1_L2, gauss_mask_L2, blended_gauss_L2);

    // --- Step 3: Build Blended Laplacian Pyramid (L = G - pyrUp(G+1)) ---
    
    // L1 = G1 - pyrUp(G2)
    xf::cv::pyrUp<SRC_TYPE, H_L2, W_L2, NPPCX>(blended_gauss_L2, up_gauss_L2); // 8U -> 8U
    // Convert inputs to 16S
    xf::cv::convertTo<>(blended_gauss_L1, blended_gauss_L1_16S,XF_CONVERT_8U_TO_16U,0);
    xf::cv::convertTo(up_gauss_L2, up_gauss_L2_16S,XF_CONVERT_8U_TO_16U,0);
    // Subtract (16S - 16S -> 16S)
    xf::cv::subtract<XF_CONVERT_POLICY_TRUNCATE>(blended_gauss_L1_16S, up_gauss_L2_16S, blended_lap_L1);

    // L0 = G0 - pyrUp(G1)
    xf::cv::pyrUp<SRC_TYPE, H_L1, W_L1, NPPCX>(blended_gauss_L1, up_gauss_L1); // 8U -> 8U
    // Convert inputs to 16S
    xf::cv::convertTo(blended_gauss_L0, blended_gauss_L0_16S,XF_CONVERT_8U_TO_16U,0);
    xf::cv::convertTo<SRC_TYPE, LAP_TYPE, H_L0, W_L0, NPPCX>(up_gauss_L1, up_gauss_L1_16S,XF_CONVERT_8U_TO_16U,0);
    // Subtract (16S - 16S -> 16S)
    xf::cv::subtract<XF_CONVERT_POLICY_TRUNCATE>(blended_gauss_L0_16S, up_gauss_L1_16S, blended_lap_L0);

    // --- Step 4: Reconstruct Image from Blended Laplacian Pyramid ---
    
    // R1 = pyrUp(G2) + L1
    // (G2 is blended_gauss_L2, which is the smallest level L2)
    xf::cv::pyrUp<SRC_TYPE, H_L2, W_L2, NPPCX>(blended_gauss_L2, up_reco_L2); // 8U -> 8U
    // Convert pyrUp result to 16S
    xf::cv::convertTo<SRC_TYPE, LAP_TYPE, H_L1, W_L1, NPPCX>(up_reco_L2, up_reco_L2_16S,XF_CONVERT_8U_TO_16U,0);
    // Add (16S + 16S -> 16S)
    xf::cv::add<XF_CONVERT_POLICY_SATURATE>(up_reco_L2_16S, blended_lap_L1, reco_L1);

    // R0 = pyrUp(R1) + L0
    xf::cv::pyrUp<LAP_TYPE, H_L1, W_L1, NPPCX>(reco_L1, up_reco_L1); // 16S -> 16S
    // Add (16S + 16S -> 16S)
    xf::cv::add<XF_CONVERT_POLICY_SATURATE>(up_reco_L1, blended_lap_L0, reco_L0); 

    // --- Step 5: Convert Final Result ---
    // Convert the 16-bit signed result back to 8-bit unsigned
    xf::cv::convertTo<LAP_TYPE, SRC_TYPE, H_L0, W_L0, NPPCX>(reco_L0, blend,XF_CONVERT_16U_TO_8U,0);
}