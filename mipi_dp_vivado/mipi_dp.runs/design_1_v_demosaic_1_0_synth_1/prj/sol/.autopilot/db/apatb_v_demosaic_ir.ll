; ModuleID = 'E:/Dev/QianSai/mipi_dp_vivado/mipi_dp.runs/design_1_v_demosaic_1_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<10>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<10>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<10>", %"struct.ap_uint<2>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<10>" = type { %"struct.ap_int_base<10, false>" }
%"struct.ap_int_base<10, false>" = type { %"struct.ssdm_int<10, false>" }
%"struct.ssdm_int<10, false>" = type { i10 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<30>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<30>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<30>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<30>" = type { %"struct.ap_int_base<30, false>" }
%"struct.ap_int_base<30, false>" = type { %"struct.ssdm_int<30, false>" }
%"struct.ssdm_int<30, false>" = type { i30 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_v_demosaic_ir(i16 zeroext %width, i16 zeroext %height, i16 zeroext %bayer_phase, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(8) %s_axis_video, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video) local_unnamed_addr #0 {
entry:
  %s_axis_video_copy.data = alloca i10, align 512
  %s_axis_video_copy.keep = alloca i2, align 512
  %s_axis_video_copy.strb = alloca i2, align 512
  %s_axis_video_copy.user = alloca i1, align 512
  %s_axis_video_copy.last = alloca i1, align 512
  %s_axis_video_copy.id = alloca i1, align 512
  %s_axis_video_copy.dest = alloca i1, align 512
  %m_axis_video_copy.data = alloca i30, align 512
  %m_axis_video_copy.keep = alloca i4, align 512
  %m_axis_video_copy.strb = alloca i4, align 512
  %m_axis_video_copy.user = alloca i1, align 512
  %m_axis_video_copy.last = alloca i1, align 512
  %m_axis_video_copy.id = alloca i1, align 512
  %m_axis_video_copy.dest = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* nonnull %s_axis_video, i10* nonnull align 512 %s_axis_video_copy.data, i2* nonnull align 512 %s_axis_video_copy.keep, i2* nonnull align 512 %s_axis_video_copy.strb, i1* nonnull align 512 %s_axis_video_copy.user, i1* nonnull align 512 %s_axis_video_copy.last, i1* nonnull align 512 %s_axis_video_copy.id, i1* nonnull align 512 %s_axis_video_copy.dest, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* nonnull %m_axis_video, i30* nonnull align 512 %m_axis_video_copy.data, i4* nonnull align 512 %m_axis_video_copy.keep, i4* nonnull align 512 %m_axis_video_copy.strb, i1* nonnull align 512 %m_axis_video_copy.user, i1* nonnull align 512 %m_axis_video_copy.last, i1* nonnull align 512 %m_axis_video_copy.id, i1* nonnull align 512 %m_axis_video_copy.dest)
  call void @apatb_v_demosaic_hw(i16 %width, i16 %height, i16 %bayer_phase, i10* %s_axis_video_copy.data, i2* %s_axis_video_copy.keep, i2* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i30* %m_axis_video_copy.data, i4* %m_axis_video_copy.keep, i4* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %s_axis_video, i10* %s_axis_video_copy.data, i2* %s_axis_video_copy.keep, i2* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %m_axis_video, i30* %m_axis_video_copy.data, i4* %m_axis_video_copy.keep, i4* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias, i10* noalias align 512 "unpacked"="1.0" %_V_data_V, i2* noalias align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias, i30* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>.29"(i10* align 512 %_V_data_V, i2* align 512 %_V_keep_V, i2* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"(i30* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i10* noalias align 512 "unpacked"="1.0" %src_V_data_V, i2* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i10* align 512 %src_V_data_V, i2* align 512 %src_V_keep_V, i2* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i10* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i2* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca i10
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i2
  %7 = alloca i2
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i10* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_2(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i10* %1 to i8*
  %12 = bitcast i10* %_V_data_V to i8*
  call void @fpga_fifo_pop_2(i8* %11, i8* %12)
  %13 = bitcast i10* %1 to i16*
  %14 = load i16, i16* %13
  %15 = trunc i16 %14 to i10
  %16 = bitcast i2* %7 to i8*
  %17 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i2* %7 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i2
  %21 = bitcast i2* %6 to i8*
  %22 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i2* %6 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i2
  %26 = bitcast i1* %5 to i8*
  %27 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %26, i8* %27)
  %28 = bitcast i1* %5 to i8*
  %29 = load i8, i8* %28
  %30 = trunc i8 %29 to i1
  %31 = bitcast i1* %4 to i8*
  %32 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %31, i8* %32)
  %33 = bitcast i1* %4 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i1
  %36 = bitcast i1* %3 to i8*
  %37 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %36, i8* %37)
  %38 = bitcast i1* %3 to i8*
  %39 = load i8, i8* %38
  %40 = trunc i8 %39 to i1
  %41 = bitcast i1* %2 to i8*
  %42 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %41, i8* %42)
  %43 = bitcast i1* %2 to i8*
  %44 = load i8, i8* %43
  %45 = trunc i8 %44 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" undef, i10 %15, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i2 %20, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i2 %25, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %30, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %35, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %40, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %45, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %8
  %46 = bitcast %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %47 = bitcast %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %46, i8* %47)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"(i30* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"(i30* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"(i30* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i30
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_12(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i30 %.fca.0.0.0.0.0.extract, i30* %2
  %14 = bitcast i30* %2 to i8*
  %15 = bitcast i30* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  store i4 %.fca.0.1.0.0.0.extract, i4* %4
  %16 = bitcast i4* %4 to i8*
  %17 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i4 %.fca.0.2.0.0.0.extract, i4* %3
  %18 = bitcast i4* %3 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i1 %.fca.0.3.0.0.0.extract, i1* %8
  %20 = bitcast i1* %8 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %7
  %22 = bitcast i1* %7 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.5.0.0.0.extract, i1* %6
  %24 = bitcast i1* %6 to i8*
  %25 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i1 %.fca.0.6.0.0.0.extract, i1* %5
  %26 = bitcast i1* %5 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias, i10* noalias align 512 "unpacked"="1.0" %_V_data_V, i2* noalias align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias, i30* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %0, i10* align 512 %_V_data_V, i2* align 512 %_V_keep_V, i2* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>.17"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %1, i30* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>.17"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i30* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>.20"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i30* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>.20"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i30* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca i30
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i30* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i30* %1 to i8*
  %12 = bitcast i30* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = bitcast i30* %1 to i32*
  %14 = load i32, i32* %13
  %15 = trunc i32 %14 to i30
  %16 = bitcast i4* %3 to i8*
  %17 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %3 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = bitcast i4* %2 to i8*
  %22 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i4* %2 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i4
  %26 = bitcast i1* %7 to i8*
  %27 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %26, i8* %27)
  %28 = bitcast i1* %7 to i8*
  %29 = load i8, i8* %28
  %30 = trunc i8 %29 to i1
  %31 = bitcast i1* %6 to i8*
  %32 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %31, i8* %32)
  %33 = bitcast i1* %6 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i1
  %36 = bitcast i1* %5 to i8*
  %37 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %36, i8* %37)
  %38 = bitcast i1* %5 to i8*
  %39 = load i8, i8* %38
  %40 = trunc i8 %39 to i1
  %41 = bitcast i1* %4 to i8*
  %42 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %41, i8* %42)
  %43 = bitcast i1* %4 to i8*
  %44 = load i8, i8* %43
  %45 = trunc i8 %44 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" undef, i30 %15, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %20, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %25, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %30, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %35, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %40, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %45, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %8
  %46 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %47 = bitcast %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %46, i8* %47)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>.29"(i10* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i2* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i2* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>.32"(i10* align 512 %dst_V_data_V, i2* align 512 %dst_V_keep_V, i2* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>.32"(i10* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i2* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i2* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i10
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i2
  %8 = alloca i2
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_8(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_8(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i10 %.fca.0.0.0.0.0.extract, i10* %2
  %14 = bitcast i10* %2 to i8*
  %15 = bitcast i10* %_V_data_V to i8*
  call void @fpga_fifo_push_2(i8* %14, i8* %15)
  store i2 %.fca.0.1.0.0.0.extract, i2* %8
  %16 = bitcast i2* %8 to i8*
  %17 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i2 %.fca.0.2.0.0.0.extract, i2* %7
  %18 = bitcast i2* %7 to i8*
  %19 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i1 %.fca.0.3.0.0.0.extract, i1* %6
  %20 = bitcast i1* %6 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %22 = bitcast i1* %5 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.5.0.0.0.extract, i1* %4
  %24 = bitcast i1* %4 to i8*
  %25 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i1 %.fca.0.6.0.0.0.extract, i1* %3
  %26 = bitcast i1* %3 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_v_demosaic_hw(i16, i16, i16, i10*, i2*, i2*, i1*, i1*, i1*, i1*, i30*, i4*, i4*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias, i10* noalias align 512 "unpacked"="1.0" %_V_data_V, i2* noalias align 512 "unpacked"="1.1" %_V_keep_V, i2* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias, i30* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %0, i10* align 512 %_V_data_V, i2* align 512 %_V_keep_V, i2* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>.17"(%"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %1, i30* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  ret void
}

declare void @v_demosaic_hw_stub(i16 zeroext, i16 zeroext, i16 zeroext, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* noalias nonnull)

define void @v_demosaic_hw_stub_wrapper(i16, i16, i16, i10*, i2*, i2*, i1*, i1*, i1*, i1*, i30*, i4*, i4*, i1*, i1*, i1*, i1*) #5 {
entry:
  %17 = call i8* @malloc(i64 8)
  %18 = bitcast i8* %17 to %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"*
  %19 = call i8* @malloc(i64 12)
  %20 = bitcast i8* %19 to %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %18, i10* %3, i2* %4, i2* %5, i1* %6, i1* %7, i1* %8, i1* %9, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %20, i30* %10, i4* %11, i4* %12, i1* %13, i1* %14, i1* %15, i1* %16)
  call void @v_demosaic_hw_stub(i16 %0, i16 %1, i16 %2, %"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %18, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %20)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<10>, 1, 1, 1, '8', false>, 0>"* %18, i10* %3, i2* %4, i2* %5, i1* %6, i1* %7, i1* %8, i1* %9, %"class.hls::stream<hls::axis<ap_uint<30>, 1, 1, 1, '8', false>, 0>"* %20, i30* %10, i4* %11, i4* %12, i1* %13, i1* %14, i1* %15, i1* %16)
  call void @free(i8* %17)
  call void @free(i8* %19)
  ret void
}

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
