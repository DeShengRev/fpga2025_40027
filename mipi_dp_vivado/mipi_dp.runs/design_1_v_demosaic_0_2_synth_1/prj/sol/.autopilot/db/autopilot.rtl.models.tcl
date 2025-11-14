set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME design_1_v_demosaic_0_2_entry_proc}
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME design_1_v_demosaic_0_2_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiBayer_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiBayer_Pipeline_loop_wait_for_start RTLNAME design_1_v_demosaic_0_2_AXIvideo2MultiBayer_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME design_1_v_demosaic_0_2_flow_control_loop_pipe_sequential_init RTLNAME design_1_v_demosaic_0_2_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME design_1_v_demosaic_0_2_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiBayer_Pipeline_loop_width MODELNAME AXIvideo2MultiBayer_Pipeline_loop_width RTLNAME design_1_v_demosaic_0_2_AXIvideo2MultiBayer_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiBayer_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiBayer_Pipeline_loop_wait_for_eol RTLNAME design_1_v_demosaic_0_2_AXIvideo2MultiBayer_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiBayer MODELNAME AXIvideo2MultiBayer RTLNAME design_1_v_demosaic_0_2_AXIvideo2MultiBayer
    SUBMODULES {
      {MODELNAME design_1_v_demosaic_0_2_regslice_both RTLNAME design_1_v_demosaic_0_2_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME DebayerG_Pipeline_VITIS_LOOP_318_4 MODELNAME DebayerG_Pipeline_VITIS_LOOP_318_4 RTLNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4
    SUBMODULES {
      {MODELNAME design_1_v_demosaic_0_2_mul_18s_9ns_18_1_1 RTLNAME design_1_v_demosaic_0_2_mul_18s_9ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME design_1_v_demosaic_0_2_mul_18s_8ns_18_1_1 RTLNAME design_1_v_demosaic_0_2_mul_18s_8ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME design_1_v_demosaic_0_2_mul_14s_10ns_24_1_1 RTLNAME design_1_v_demosaic_0_2_mul_14s_10ns_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME design_1_v_demosaic_0_2_mac_muladd_14s_10ns_24s_25_4_1 RTLNAME design_1_v_demosaic_0_2_mac_muladd_14s_10ns_24s_25_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4_DIV1_TABLE_ROM_AUTO_1R RTLNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4_DIV1_TABLE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4_DIV2_TABLE_ROM_AUTO_1R RTLNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4_DIV2_TABLE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4_linebuf_yuv_3_RAM_AUTO_1R1W RTLNAME design_1_v_demosaic_0_2_DebayerG_Pipeline_VITIS_LOOP_318_4_linebuf_yuv_3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DebayerG MODELNAME DebayerG RTLNAME design_1_v_demosaic_0_2_DebayerG}
  {SRCNAME DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2 MODELNAME DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2 RTLNAME design_1_v_demosaic_0_2_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2
    SUBMODULES {
      {MODELNAME design_1_v_demosaic_0_2_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_lineBuffer_1_RAM_AUTO_1R1W RTLNAME design_1_v_demosaic_0_2_DebayerRatBorBatR_Pipeline_VITIS_LOOP_633_2_lineBuffer_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DebayerRatBorBatR MODELNAME DebayerRatBorBatR RTLNAME design_1_v_demosaic_0_2_DebayerRatBorBatR}
  {SRCNAME DebayerRandBatG_Pipeline_VITIS_LOOP_881_2 MODELNAME DebayerRandBatG_Pipeline_VITIS_LOOP_881_2 RTLNAME design_1_v_demosaic_0_2_DebayerRandBatG_Pipeline_VITIS_LOOP_881_2}
  {SRCNAME DebayerRandBatG MODELNAME DebayerRandBatG RTLNAME design_1_v_demosaic_0_2_DebayerRandBatG}
  {SRCNAME Debayer MODELNAME Debayer RTLNAME design_1_v_demosaic_0_2_Debayer
    SUBMODULES {
      {MODELNAME design_1_v_demosaic_0_2_fifo_w30_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgG_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w11_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_val4_c3_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w11_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME width_val8_c4_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w16_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bayerPhase_val11_c5_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w30_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgRB_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w11_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_val4_c_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w11_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME width_val8_c_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w16_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bayerPhase_val11_c_U}
      {MODELNAME design_1_v_demosaic_0_2_start_for_DebayerRatBorBatR_U0 RTLNAME design_1_v_demosaic_0_2_start_for_DebayerRatBorBatR_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DebayerRatBorBatR_U0_U}
      {MODELNAME design_1_v_demosaic_0_2_start_for_DebayerRandBatG_U0 RTLNAME design_1_v_demosaic_0_2_start_for_DebayerRandBatG_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_DebayerRandBatG_U0_U}
    }
  }
  {SRCNAME ZipperRemoval_Pipeline_VITIS_LOOP_1101_2 MODELNAME ZipperRemoval_Pipeline_VITIS_LOOP_1101_2 RTLNAME design_1_v_demosaic_0_2_ZipperRemoval_Pipeline_VITIS_LOOP_1101_2}
  {SRCNAME ZipperRemoval MODELNAME ZipperRemoval RTLNAME design_1_v_demosaic_0_2_ZipperRemoval}
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_230_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_230_2 RTLNAME design_1_v_demosaic_0_2_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_230_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME design_1_v_demosaic_0_2_MultiPixStream2AXIvideo}
  {SRCNAME v_demosaic MODELNAME v_demosaic RTLNAME design_1_v_demosaic_0_2_v_demosaic IS_TOP 1
    SUBMODULES {
      {MODELNAME design_1_v_demosaic_0_2_fifo_w16_d3_S RTLNAME design_1_v_demosaic_0_2_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bayer_phase_c_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w10_d2_S RTLNAME design_1_v_demosaic_0_2_fifo_w10_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgBayer_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w30_d2_S_x RTLNAME design_1_v_demosaic_0_2_fifo_w30_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgRgb_U}
      {MODELNAME design_1_v_demosaic_0_2_fifo_w30_d2_S_x RTLNAME design_1_v_demosaic_0_2_fifo_w30_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgUnzip_U}
      {MODELNAME design_1_v_demosaic_0_2_start_for_Debayer_U0 RTLNAME design_1_v_demosaic_0_2_start_for_Debayer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Debayer_U0_U}
      {MODELNAME design_1_v_demosaic_0_2_start_for_ZipperRemoval_U0 RTLNAME design_1_v_demosaic_0_2_start_for_ZipperRemoval_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_ZipperRemoval_U0_U}
      {MODELNAME design_1_v_demosaic_0_2_start_for_MultiPixStream2AXIvideo_U0 RTLNAME design_1_v_demosaic_0_2_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2AXIvideo_U0_U}
      {MODELNAME design_1_v_demosaic_0_2_CTRL_s_axi RTLNAME design_1_v_demosaic_0_2_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
