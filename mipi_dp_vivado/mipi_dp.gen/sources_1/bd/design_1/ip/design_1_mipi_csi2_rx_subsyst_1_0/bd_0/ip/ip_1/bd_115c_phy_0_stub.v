// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Nov 13 19:36:26 2025
// Host        : Win10-zsd running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Dev/QianSai/mipi_dp_vivado/mipi_dp.gen/sources_1/bd/design_1/ip/design_1_mipi_csi2_rx_subsyst_1_0/bd_0/ip/ip_1/bd_115c_phy_0_stub.v
// Design      : bd_115c_phy_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* C_CAL_MODE = "FIXED" *) (* C_DIV4_CLK_PERIOD = "8.000000" *) (* C_DPHY_LANES = "2" *) 
(* C_DPHY_MODE = "SLAVE" *) (* C_EN_DEBUG_REGS = "0" *) (* C_EN_DEBUG_TX_CALIB = "0" *) 
(* C_EN_EXT_TAP = "0" *) (* C_EN_REG_IF = "1" *) (* C_EN_SSC = "0" *) 
(* C_EN_TIMEOUT_REGS = "0" *) (* C_ESC_CLK_PERIOD = "50.000000" *) (* C_ESC_TIMEOUT = "25600" *) 
(* C_EXAMPLE_SIMULATION = "true" *) (* C_HS_LINE_RATE = "1000" *) (* C_HS_TIMEOUT = "65541" *) 
(* C_IDLY_TAP = "0" *) (* C_LPX_PERIOD = "50" *) (* C_RCVE_DESKEW_SEQ = "false" *) 
(* C_SKEWCAL_FIRST_TIME = "4096" *) (* C_SKEWCAL_PERIODIC_TIME = "128" *) (* C_STABLE_CLK_PERIOD = "5.000000" *) 
(* C_TXPLL_CLKIN_PERIOD = "8.000000" *) (* C_WAKEUP = "1000" *) (* C_XMIT_FIRST_DESKEW_SEQ = "false" *) 
(* C_XMIT_PERIODIC_DESKEW_SEQ = "false" *) (* DPHY_PRESET = "CSI2RX_XLNX" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* MTBF_SYNC_STAGES = "3" *) (* SUPPORT_LEVEL = "1" *) 
module bd_115c_phy_0(core_clk, core_rst, rxbyteclkhs, clkoutphy_out, 
  pll_lock_out, system_rst_out, init_done, cl_rxclkactivehs, cl_stopstate, cl_enable, 
  cl_rxulpsclknot, cl_ulpsactivenot, dl0_rxdatahs, dl0_rxvalidhs, dl0_rxactivehs, 
  dl0_rxsynchs, dl0_forcerxmode, dl0_stopstate, dl0_enable, dl0_ulpsactivenot, dl0_rxclkesc, 
  dl0_rxlpdtesc, dl0_rxulpsesc, dl0_rxtriggeresc, dl0_rxdataesc, dl0_rxvalidesc, 
  dl0_errsoths, dl0_errsotsynchs, dl0_erresc, dl0_errsyncesc, dl0_errcontrol, dl1_rxdatahs, 
  dl1_rxvalidhs, dl1_rxactivehs, dl1_rxsynchs, dl1_forcerxmode, dl1_stopstate, dl1_enable, 
  dl1_ulpsactivenot, dl1_rxclkesc, dl1_rxlpdtesc, dl1_rxulpsesc, dl1_rxtriggeresc, 
  dl1_rxdataesc, dl1_rxvalidesc, dl1_errsoths, dl1_errsotsynchs, dl1_erresc, dl1_errsyncesc, 
  dl1_errcontrol, s_axi_aclk, s_axi_aresetn, s_axi_awaddr, s_axi_awready, s_axi_awvalid, 
  s_axi_araddr, s_axi_arready, s_axi_arvalid, s_axi_wdata, s_axi_wstrb, s_axi_wready, 
  s_axi_wvalid, s_axi_rdata, s_axi_rresp, s_axi_rready, s_axi_rvalid, s_axi_bresp, 
  s_axi_bready, s_axi_bvalid, clk_rxp, clk_rxn, data_rxp, data_rxn)
/* synthesis syn_black_box black_box_pad_pin="core_rst,pll_lock_out,system_rst_out,init_done,cl_rxclkactivehs,cl_stopstate,cl_enable,cl_rxulpsclknot,cl_ulpsactivenot,dl0_rxdatahs[7:0],dl0_rxvalidhs,dl0_rxactivehs,dl0_rxsynchs,dl0_forcerxmode,dl0_stopstate,dl0_enable,dl0_ulpsactivenot,dl0_rxclkesc,dl0_rxlpdtesc,dl0_rxulpsesc,dl0_rxtriggeresc[3:0],dl0_rxdataesc[7:0],dl0_rxvalidesc,dl0_errsoths,dl0_errsotsynchs,dl0_erresc,dl0_errsyncesc,dl0_errcontrol,dl1_rxdatahs[7:0],dl1_rxvalidhs,dl1_rxactivehs,dl1_rxsynchs,dl1_forcerxmode,dl1_stopstate,dl1_enable,dl1_ulpsactivenot,dl1_rxclkesc,dl1_rxlpdtesc,dl1_rxulpsesc,dl1_rxtriggeresc[3:0],dl1_rxdataesc[7:0],dl1_rxvalidesc,dl1_errsoths,dl1_errsotsynchs,dl1_erresc,dl1_errsyncesc,dl1_errcontrol,s_axi_aresetn,s_axi_awaddr[6:0],s_axi_awready,s_axi_awvalid,s_axi_araddr[6:0],s_axi_arready,s_axi_arvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_wvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rready,s_axi_rvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_bvalid,clk_rxp,clk_rxn,data_rxp[1:0],data_rxn[1:0]" */
/* synthesis syn_force_seq_prim="core_clk" */
/* synthesis syn_force_seq_prim="rxbyteclkhs" */
/* synthesis syn_force_seq_prim="clkoutphy_out" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  input core_clk /* synthesis syn_isclock = 1 */;
  input core_rst;
  output rxbyteclkhs /* synthesis syn_isclock = 1 */;
  output clkoutphy_out /* synthesis syn_isclock = 1 */;
  output pll_lock_out;
  output system_rst_out;
  output init_done;
  output cl_rxclkactivehs;
  output cl_stopstate;
  input cl_enable;
  output cl_rxulpsclknot;
  output cl_ulpsactivenot;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  input dl0_forcerxmode;
  output dl0_stopstate;
  input dl0_enable;
  output dl0_ulpsactivenot;
  output dl0_rxclkesc;
  output dl0_rxlpdtesc;
  output dl0_rxulpsesc;
  output [3:0]dl0_rxtriggeresc;
  output [7:0]dl0_rxdataesc;
  output dl0_rxvalidesc;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output dl0_erresc;
  output dl0_errsyncesc;
  output dl0_errcontrol;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  input dl1_forcerxmode;
  output dl1_stopstate;
  input dl1_enable;
  output dl1_ulpsactivenot;
  output dl1_rxclkesc;
  output dl1_rxlpdtesc;
  output dl1_rxulpsesc;
  output [3:0]dl1_rxtriggeresc;
  output [7:0]dl1_rxdataesc;
  output dl1_rxvalidesc;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output dl1_erresc;
  output dl1_errsyncesc;
  output dl1_errcontrol;
  input s_axi_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  input s_axi_wvalid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  output s_axi_rvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  output s_axi_bvalid;
  input clk_rxp;
  input clk_rxn;
  input [1:0]data_rxp;
  input [1:0]data_rxn;
endmodule
