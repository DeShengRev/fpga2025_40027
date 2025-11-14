// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
#ifndef _V_GAMMA_LUT_TOP_H_
#define _V_GAMMA_LUT_TOP_H_

#include "hls_video.h"
#include "ap_int.h"

typedef unsigned char      U8;
typedef unsigned short     U16;
typedef unsigned int       U32;

typedef signed char        I8;
typedef signed short       I16;
typedef signed int         I32;

// Streaming video formats
//#define RGB444					0
//#define YUV444					1
//#define YUV422 					2
//#define YUV420				    3

// Bayer phases
#define RGRG					0
#define GRGR					1
#define BGBG					2
#define GBGB					3

typedef ap_uint<IN_MAX_DATA_WIDTH> 									PIXEL_TYPE;
typedef hls::Scalar<NR_COMPONENTS, PIXEL_TYPE> 						YUV_PIXEL;
typedef hls::Scalar<NR_COMPONENTS*SAMPLES_PER_CLOCK, PIXEL_TYPE>  	YUV_MULTI_PIXEL;

typedef hls::stream<ap_axiu<IN_BITS_PER_CLOCK,1,1,1> >              AXI_STREAM_IN;
typedef hls::stream<ap_axiu<OUT_BITS_PER_CLOCK,1,1,1> >             AXI_STREAM_OUT;
typedef hls::stream<YUV_MULTI_PIXEL>                                STREAM_MULTIPIX;

//HW Registers
typedef struct
{
	U16 width;
	U16 height;
	U16 video_format;
	U16 gamma_lut_0[LUT_SIZE];
	U16 gamma_lut_1[LUT_SIZE];
	U16 gamma_lut_2[LUT_SIZE];
}HW_STRUCT_REG;

// top level function for HW synthesis
extern void v_gamma_lut(
		U16 &width,
		U16 &height,
		U16 &video_format,
        U16 gamma_lut_0[LUT_SIZE],
        U16 gamma_lut_1[LUT_SIZE],
        U16 gamma_lut_2[LUT_SIZE],	
        AXI_STREAM_IN& s_axis_video,
		AXI_STREAM_OUT& m_axis_video
);

#endif


