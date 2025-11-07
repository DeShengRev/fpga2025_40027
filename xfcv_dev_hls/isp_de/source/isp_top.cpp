#include "xf_isp_config.h"
#include <algorithm>

// 简单钳位
static inline uint8_t clamp_u8(int v) {
    return (v < 0) ? 0 : (v > 255 ? 255 : (uint8_t)v);
}

/**
 * 2x 下采样 + 白平衡 + 轻模糊(2x2 box) + 高光去紫
 * 输入：1920x1080 RGB (XF_8UC3)
 * 输出： 960x 540 RGB (XF_8UC3)
 */
static void down2x_wb_gauss_hidesat(
    xf::cv::Mat<XF_8UC3, ISP_IN_H,  ISP_IN_W,  ISP_NPPC, XFCVDEPTH_OUT> &in_rgb,
    xf::cv::Mat<XF_8UC3, ISP_OUT_H, ISP_OUT_W, ISP_NPPC, XFCVDEPTH_OUT> &out_rgb,
    float gain_r, float gain_g, float gain_b, float exposure_gain)
{
        std::cout << "[DEBUG] in_rgb.rows=" << in_rgb.rows
              << " in_rgb.cols=" << in_rgb.cols
              << " | out_rgb.rows=" << out_rgb.rows
              << " out_rgb.cols=" << out_rgb.cols
              << std::endl;


#pragma HLS INLINE off

const int in_rows  = in_rgb.rows;   // 1080
const int in_cols  = in_rgb.cols;   // 1920
const int out_rows = out_rgb.rows;  // 540
const int out_cols = out_rgb.cols;  // 960

// 两行行缓冲，避免跨行随机 read(idx)
ap_uint<24> row0[ISP_IN_W];
ap_uint<24> row1[ISP_IN_W];
#pragma HLS bind_storage variable=row0 type=RAM_T2P impl=BRAM
#pragma HLS bind_storage variable=row1 type=RAM_T2P impl=BRAM
#pragma HLS ARRAY_PARTITION variable=row0 cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=row1 cyclic factor=2 dim=1

// 线性读指针：严格递增，完全顺序读取
int rd = 0;

// 预读第 0 行 -> row0
for (int x = 0; x < in_cols; ++x) {
#pragma HLS PIPELINE II=1
    row0[x] = in_rgb.read(rd++);
}

// 处理每一对输入行（产生一行输出）
for (int oy = 0; oy < out_rows; ++oy) {
    // 读奇数行 (2*oy+1) -> row1
    for (int x = 0; x < in_cols; ++x) {
#pragma HLS PIPELINE II=1
        row1[x] = in_rgb.read(rd++);
    }

    // 2x2 下采样 + 白平衡 + 曝光 + 去紫
    for (int ox = 0; ox < out_cols; ++ox) {
#pragma HLS PIPELINE II=1
        const int ix = ox << 1;  // 2*ox

        ap_uint<24> p00 = row0[ix + 0];
        ap_uint<24> p01 = row0[ix + 1];
        ap_uint<24> p10 = row1[ix + 0];
        ap_uint<24> p11 = row1[ix + 1];

        int b = ((int)p00.range( 7,  0) + (int)p01.range( 7,  0) +
                 (int)p10.range( 7,  0) + (int)p11.range( 7,  0)) >> 2;
        int g = ((int)p00.range(15,  8) + (int)p01.range(15,  8) +
                 (int)p10.range(15,  8) + (int)p11.range(15,  8)) >> 2;
        int r = ((int)p00.range(23, 16) + (int)p01.range(23, 16) +
                 (int)p10.range(23, 16) + (int)p11.range(23, 16)) >> 2;

        int ri = (int)(r * gain_r * exposure_gain + 0.5f);
        int gi = (int)(g * gain_g * exposure_gain + 0.5f);
        int bi = (int)(b * gain_b * exposure_gain + 0.5f);

        const int bright_th = 220;
        if (gi < (int)(0.6f * std::max(ri, bi)) && (ri > bright_th || bi > bright_th)) {
            ri = (ri + gi) >> 1;
            bi = (bi + gi) >> 1;
        }

        auto clamp_u8_local = [](int v)->ap_uint<8>{
            return (ap_uint<8>)(v < 0 ? 0 : (v > 255 ? 255 : v));
        };

        ap_uint<24> outp = 0;
        outp.range( 7,  0) = clamp_u8_local(bi);
        outp.range(15,  8) = clamp_u8_local(gi);
        outp.range(23, 16) = clamp_u8_local(ri);

        const int oidx = oy * out_cols + ox;
        out_rgb.write(oidx, outp);
    }

    // 预取下一条偶数行 (2*(oy+1)) -> row0（除非已经是最后一对）
    if (oy != out_rows - 1) {
        for (int x = 0; x < in_cols; ++x) {
#pragma HLS PIPELINE II=1
            row0[x] = in_rgb.read(rd++);
         }
       }
    }  
 }
    


/**
 * 顶层：Bayer(AXI) -> xf::Mat -> Demosaic(RGB) -> Down2x/WB/Gauss/HideSat -> xf::Mat -> AXI
 */
extern "C" void isp_top(
    hls::stream<in_axi_t>  &s_bayer,
    hls::stream<out_axi_t> &s_rgb,
    float gain_r, float gain_g, float gain_b, float exposure_gain) {
#pragma HLS INTERFACE axis     port=s_bayer
#pragma HLS INTERFACE axis     port=s_rgb
#pragma HLS INTERFACE s_axilite port=gain_r        bundle=CTRL
#pragma HLS INTERFACE s_axilite port=gain_g        bundle=CTRL
#pragma HLS INTERFACE s_axilite port=gain_b        bundle=CTRL
#pragma HLS INTERFACE s_axilite port=exposure_gain bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return        bundle=CTRL
#pragma HLS DATAFLOW

    // 1) AXI -> Mat (Bayer 单通道)
    xf::cv::Mat<XF_8UC1, ISP_IN_H,  ISP_IN_W,  ISP_NPPC, XFCVDEPTH_IN>  bayerMat(ISP_IN_H, ISP_IN_W);
    xf::cv::axiStrm2xfMat<ISP_IN_PTR_WIDTH, XF_8UC1, ISP_IN_H, ISP_IN_W, ISP_NPPC>(s_bayer, bayerMat);

    // 2) Demosaicing: 1920x1080 RGGB -> 1920x1080 RGB
    xf::cv::Mat<XF_8UC3, ISP_IN_H,  ISP_IN_W,  ISP_NPPC, XFCVDEPTH_OUT> demosaic_rgb(ISP_IN_H, ISP_IN_W);
    unsigned short bayer = static_cast<unsigned short>(XF_BAYER_RG);
    
    xf::cv::demosaicing<
      XF_8UC1, XF_8UC3,
      ISP_IN_H, ISP_IN_W,
      ISP_NPPC, false, XFCVDEPTH_IN, XFCVDEPTH_OUT
  >(bayerMat, demosaic_rgb, bayer);

    // 3) Down2x + WB + 去紫：1920x1080 RGB -> 960x540 RGB
    xf::cv::Mat<XF_8UC3, ISP_OUT_H, ISP_OUT_W, ISP_NPPC, XFCVDEPTH_OUT> out_rgb(ISP_OUT_H, ISP_OUT_W);
    down2x_wb_gauss_hidesat(demosaic_rgb, out_rgb, gain_r, gain_g, gain_b, exposure_gain);

    // 4) Mat -> AXI (RGB888)
    xf::cv::xfMat2axiStrm<ISP_OUT_PTR_WIDTH, XF_8UC3, ISP_OUT_H, ISP_OUT_W, ISP_NPPC>(out_rgb, s_rgb);
}
