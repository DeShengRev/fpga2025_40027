
#include "blend.hpp"
#include "common/xf_params.hpp"


// #define MASK_TYPE XF_16UC1
// #define LAP_TYPE_XF_16UC3
// #define SRC_TYPE XF_8UC3


constexpr int H_L0 = PROC_HEIGHT;
constexpr int W_L0 = OVERLAP_WIDTH;
constexpr int H_L1 = PROC_HEIGHT / 2;
constexpr int W_L1 = OVERLAP_WIDTH / 2;
constexpr int H_L2 = PROC_HEIGHT / 4;
constexpr int W_L2 = OVERLAP_WIDTH / 4;

void simple_blend(
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img0,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &img1,
    xf::cv::Mat<MASK_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &mask,
    xf::cv::Mat<SRC_TYPE, PROC_HEIGHT, OVERLAP_WIDTH, NPPCX> &blend) {
  base_blend(img0, img1, mask, blend);
}

// ========== 主融合函数 ==========
void pyramid_blend(xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> &img0,
                   xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> &img1,
                   xf::cv::Mat<MASK_TYPE, H_L0, W_L0, NPPCX> &mask,
                   xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> &blend) {
#pragma HLS DATAFLOW

  // --- 1. 构建 Gaussian 金字塔 (图像与 mask) ---
  xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> gauss_img0_L1;
  xf::cv::Mat<SRC_TYPE, H_L2, W_L2, NPPCX> gauss_img0_L2;
  xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> gauss_img1_L1;
  xf::cv::Mat<SRC_TYPE, H_L2, W_L2, NPPCX> gauss_img1_L2;

  xf::cv::Mat<MASK_TYPE, H_L1, W_L1, NPPCX> gauss_mask_L1;
  xf::cv::Mat<MASK_TYPE, H_L2, W_L2, NPPCX> gauss_mask_L2;

  xf::cv::pyrDown<SRC_TYPE, H_L0, W_L0, NPPCX>(img0, gauss_img0_L1);
  xf::cv::pyrDown<SRC_TYPE, H_L0, W_L0, NPPCX>(img1, gauss_img1_L1);
//   xf::cv::pyrDown<MASK_TYPE, H_L0, W_L0, NPPCX>(mask, gauss_mask_L1);

  xf::cv::pyrDown<SRC_TYPE, H_L1, W_L1, NPPCX>(gauss_img0_L1, gauss_img0_L2);
  xf::cv::pyrDown<SRC_TYPE, H_L1, W_L1, NPPCX>(gauss_img1_L1, gauss_img1_L2);
//   xf::cv::pyrDown<MASK_TYPE, H_L1, W_L1, NPPCX>(gauss_mask_L1, gauss_mask_L2);

  // --- 2. 构建 Laplacian 金字塔 ---
  xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> up_gauss_img0_L2;
  xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> up_gauss_img1_L2;
  xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> up_gauss_img0_L1;
  xf::cv::Mat<SRC_TYPE, H_L0, W_L0, NPPCX> up_gauss_img1_L1;

  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> up_gauss_img0_L2_16S;
  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> up_gauss_img1_L2_16S;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> up_gauss_img0_L1_16S;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> up_gauss_img1_L1_16S;

  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> lap_img0_L1;
  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> lap_img1_L1;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> lap_img0_L0;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> lap_img1_L0;

  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> img0_16S_L1;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> img0_16S_L0;
  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> img1_16S_L1;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> img1_16S_L0;

  // L1 层: G1 - up(G2)
  xf::cv::pyrUp<SRC_TYPE, H_L2, W_L2, NPPCX>(gauss_img0_L2, up_gauss_img0_L2);
  xf::cv::pyrUp<SRC_TYPE, H_L2, W_L2, NPPCX>(gauss_img1_L2, up_gauss_img1_L2);

  xf::cv::convertTo(gauss_img0_L1, img0_16S_L1, XF_CONVERT_8U_TO_16S, 0);
  xf::cv::convertTo(gauss_img1_L1, img1_16S_L1, XF_CONVERT_8U_TO_16S, 0);
  xf::cv::convertTo(up_gauss_img0_L2, up_gauss_img0_L2_16S,
                    XF_CONVERT_8U_TO_16S, 0);
  xf::cv::convertTo(up_gauss_img1_L2, up_gauss_img1_L2_16S,
                    XF_CONVERT_8U_TO_16S, 0);

  xf::cv::subtract<XF_CONVERT_POLICY_TRUNCATE>(
      img0_16S_L1, up_gauss_img0_L2_16S, lap_img0_L1);
  xf::cv::subtract<XF_CONVERT_POLICY_TRUNCATE>(
      img1_16S_L1, up_gauss_img1_L2_16S, lap_img1_L1);

  // L0 层: G0 - up(G1)
  xf::cv::pyrUp<SRC_TYPE, H_L1, W_L1, NPPCX>(gauss_img0_L1, up_gauss_img0_L1);
  xf::cv::pyrUp<SRC_TYPE, H_L1, W_L1, NPPCX>(gauss_img1_L1, up_gauss_img1_L1);

  xf::cv::convertTo(img0, img0_16S_L0, XF_CONVERT_8U_TO_16S, 0);
  xf::cv::convertTo(img1, img1_16S_L0, XF_CONVERT_8U_TO_16S, 0);
  xf::cv::convertTo(up_gauss_img0_L1, up_gauss_img0_L1_16S,
                    XF_CONVERT_8U_TO_16S, 0);
  xf::cv::convertTo(up_gauss_img1_L1, up_gauss_img1_L1_16S,
                    XF_CONVERT_8U_TO_16S, 0);

  xf::cv::subtract<XF_CONVERT_POLICY_TRUNCATE>(
      img0_16S_L0, up_gauss_img0_L1_16S, lap_img0_L0);
  xf::cv::subtract<XF_CONVERT_POLICY_TRUNCATE>(
      img1_16S_L0, up_gauss_img1_L1_16S, lap_img1_L0);

  // --- 3. Laplacian 层融合 ---
  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> blended_lap_L1;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> blended_lap_L0;
  xf::cv::Mat<SRC_TYPE, H_L2, W_L2, NPPCX> blended_gauss_L2;

  base_blend_16s<H_L1, W_L1>(lap_img0_L1, lap_img1_L1, gauss_mask_L1,
                             blended_lap_L1);
  base_blend_16s<H_L0, W_L0>(lap_img0_L0, lap_img1_L0, mask, blended_lap_L0);
  base_blend<H_L2, W_L2>(gauss_img0_L2, gauss_img1_L2, gauss_mask_L2,
                         blended_gauss_L2);

  // --- 4. 自底向上重建 ---
  xf::cv::Mat<SRC_TYPE, H_L1, W_L1, NPPCX> up_reco_L2;
  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> up_reco_L2_16S;
  xf::cv::Mat<LAP_TYPE, H_L1, W_L1, NPPCX> reco_L1;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> up_reco_L1;
  xf::cv::Mat<LAP_TYPE, H_L0, W_L0, NPPCX> reco_L0;

  // R1 = up(G2_blended) + L1_blended
  xf::cv::pyrUp<SRC_TYPE, H_L2, W_L2, NPPCX>(blended_gauss_L2, up_reco_L2);
  xf::cv::convertTo(up_reco_L2, up_reco_L2_16S, XF_CONVERT_8U_TO_16S, 0);
  xf::cv::add<XF_CONVERT_POLICY_SATURATE>(up_reco_L2_16S, blended_lap_L1,
                                          reco_L1);

  // R0 = up(R1) + L0_blended
  xf::cv::pyrUp<LAP_TYPE, H_L1, W_L1, NPPCX>(reco_L1, up_reco_L1);
  xf::cv::add<XF_CONVERT_POLICY_SATURATE>(up_reco_L1, blended_lap_L0, reco_L0);

  // 输出转换
  xf::cv::convertTo<LAP_TYPE, SRC_TYPE, H_L0, W_L0, NPPCX>(
      reco_L0, blend, XF_CONVERT_16S_TO_8U, 0);
}