set SynModuleInfo {
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME design_1_v_gamma_lut_0_0_reg_unsigned_short_s}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init RTLNAME design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream
    SUBMODULES {
      {MODELNAME design_1_v_gamma_lut_0_0_regslice_both RTLNAME design_1_v_gamma_lut_0_0_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME Gamma_Pipeline_VITIS_LOOP_315_1 MODELNAME Gamma_Pipeline_VITIS_LOOP_315_1 RTLNAME design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_315_1}
  {SRCNAME Gamma_Pipeline_VITIS_LOOP_327_4 MODELNAME Gamma_Pipeline_VITIS_LOOP_327_4 RTLNAME design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_327_4}
  {SRCNAME Gamma MODELNAME Gamma RTLNAME design_1_v_gamma_lut_0_0_Gamma
    SUBMODULES {
      {MODELNAME design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W RTLNAME design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2 RTLNAME design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2}
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo}
  {SRCNAME v_gamma_lut MODELNAME v_gamma_lut RTLNAME design_1_v_gamma_lut_0_0_v_gamma_lut IS_TOP 1
    SUBMODULES {
      {MODELNAME design_1_v_gamma_lut_0_0_fifo_w30_d16_S RTLNAME design_1_v_gamma_lut_0_0_fifo_w30_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgRgb_U}
      {MODELNAME design_1_v_gamma_lut_0_0_fifo_w30_d16_S RTLNAME design_1_v_gamma_lut_0_0_fifo_w30_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgGamma_U}
      {MODELNAME design_1_v_gamma_lut_0_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME design_1_v_gamma_lut_0_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2AXIvideo_U0_U}
      {MODELNAME design_1_v_gamma_lut_0_0_CTRL_s_axi RTLNAME design_1_v_gamma_lut_0_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
