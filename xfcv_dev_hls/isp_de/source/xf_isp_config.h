// xf_isp_config.h
#ifndef _XF_ISP_CONFIG_H_
#define _XF_ISP_CONFIG_H_

#include "ap_int.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

// vitis vision 头
#include "common/xf_common.hpp"
#include "common/xf_axi.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_demosaicing.hpp"

// 输入输出分辨率
#define ISP_IN_W   1920
#define ISP_IN_H   1080
#define ISP_OUT_W  (ISP_IN_W / 2)
#define ISP_OUT_H  (ISP_IN_H / 2)

// AXI 位宽
#define ISP_IN_PTR_WIDTH   8    // bayer 8bit
#define ISP_OUT_PTR_WIDTH  24   // RGB 8:8:8

// 统一 AXI 元信息位宽为 0（与 xf_utility.hpp 要求一致）
using in_axi_t  = ap_axiu<ISP_IN_PTR_WIDTH,  0, 0, 0>;
using out_axi_t = ap_axiu<ISP_OUT_PTR_WIDTH, 0, 0, 0>;

// 配置输入输出的深度
#define XFCVDEPTH_IN  0    // 输入图像深度（用于存储数据的深度）
#define XFCVDEPTH_OUT 1    // 输出图像深度（用于存储数据的深度）

// 1 像素/拍
#define ISP_NPPC           XF_NPPC1

#endif
