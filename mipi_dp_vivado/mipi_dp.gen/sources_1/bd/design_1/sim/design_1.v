//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Nov 16 18:16:03 2025
//Host        : Win10-zsd running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=21,da_clkrst_cnt=5,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (cam0_i2c_scl_i,
    cam0_i2c_scl_o,
    cam0_i2c_scl_t,
    cam0_i2c_sda_i,
    cam0_i2c_sda_o,
    cam0_i2c_sda_t,
    cam1_i2c_scl_i,
    cam1_i2c_scl_o,
    cam1_i2c_scl_t,
    cam1_i2c_sda_i,
    cam1_i2c_sda_o,
    cam1_i2c_sda_t,
    cam_gpio_tri_i,
    cam_gpio_tri_o,
    cam_gpio_tri_t,
    mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p,
    mipi_phy_if_1_clk_n,
    mipi_phy_if_1_clk_p,
    mipi_phy_if_1_data_n,
    mipi_phy_if_1_data_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input cam0_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SCL_O" *) output cam0_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SCL_T" *) output cam0_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SDA_I" *) input cam0_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SDA_O" *) output cam0_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SDA_T" *) output cam0_i2c_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input cam1_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SCL_O" *) output cam1_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SCL_T" *) output cam1_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SDA_I" *) input cam1_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SDA_O" *) output cam1_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SDA_T" *) output cam1_i2c_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cam_gpio TRI_I" *) (* X_INTERFACE_MODE = "Master" *) input [94:0]cam_gpio_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cam_gpio TRI_O" *) output [94:0]cam_gpio_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cam_gpio TRI_T" *) output [94:0]cam_gpio_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) input mipi_phy_if_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 CLK_P" *) input mipi_phy_if_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 DATA_N" *) input [1:0]mipi_phy_if_0_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 DATA_P" *) input [1:0]mipi_phy_if_0_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) input mipi_phy_if_1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 CLK_P" *) input mipi_phy_if_1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 DATA_N" *) input [1:0]mipi_phy_if_1_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 DATA_P" *) input [1:0]mipi_phy_if_1_data_p;

  wire [31:0]axi_vdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWPROT;
  wire axi_vdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWSIZE;
  wire axi_vdma_0_M_AXI_S2MM_AWVALID;
  wire axi_vdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_BRESP;
  wire axi_vdma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_vdma_0_M_AXI_S2MM_WDATA;
  wire axi_vdma_0_M_AXI_S2MM_WLAST;
  wire axi_vdma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_WSTRB;
  wire axi_vdma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_vdma_1_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_vdma_1_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_vdma_1_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_vdma_1_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_vdma_1_M_AXI_S2MM_AWPROT;
  wire axi_vdma_1_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_vdma_1_M_AXI_S2MM_AWSIZE;
  wire axi_vdma_1_M_AXI_S2MM_AWVALID;
  wire axi_vdma_1_M_AXI_S2MM_BREADY;
  wire [1:0]axi_vdma_1_M_AXI_S2MM_BRESP;
  wire axi_vdma_1_M_AXI_S2MM_BVALID;
  wire [63:0]axi_vdma_1_M_AXI_S2MM_WDATA;
  wire axi_vdma_1_M_AXI_S2MM_WLAST;
  wire axi_vdma_1_M_AXI_S2MM_WREADY;
  wire [7:0]axi_vdma_1_M_AXI_S2MM_WSTRB;
  wire axi_vdma_1_M_AXI_S2MM_WVALID;
  wire [31:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire [3:0]axis_subset_converter_0_M_AXIS_TKEEP;
  wire axis_subset_converter_0_M_AXIS_TLAST;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_0_M_AXIS_TUSER;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire [31:0]axis_subset_converter_1_M_AXIS_TDATA;
  wire [3:0]axis_subset_converter_1_M_AXIS_TKEEP;
  wire axis_subset_converter_1_M_AXIS_TLAST;
  wire axis_subset_converter_1_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_1_M_AXIS_TUSER;
  wire axis_subset_converter_1_M_AXIS_TVALID;
  wire cam0_i2c_scl_i;
  wire cam0_i2c_scl_o;
  wire cam0_i2c_scl_t;
  wire cam0_i2c_sda_i;
  wire cam0_i2c_sda_o;
  wire cam0_i2c_sda_t;
  wire cam1_i2c_scl_i;
  wire cam1_i2c_scl_o;
  wire cam1_i2c_scl_t;
  wire cam1_i2c_sda_i;
  wire cam1_i2c_sda_o;
  wire cam1_i2c_sda_t;
  wire [94:0]cam_gpio_tri_i;
  wire [94:0]cam_gpio_tri_o;
  wire [94:0]cam_gpio_tri_t;
  wire mipi_csi2_rx_subsyst_0_csirxss_csi_irq;
  wire [15:0]mipi_csi2_rx_subsyst_0_video_out_TDATA;
  wire [9:0]mipi_csi2_rx_subsyst_0_video_out_TDEST;
  wire mipi_csi2_rx_subsyst_0_video_out_TLAST;
  wire mipi_csi2_rx_subsyst_0_video_out_TREADY;
  wire [0:0]mipi_csi2_rx_subsyst_0_video_out_TUSER;
  wire mipi_csi2_rx_subsyst_0_video_out_TVALID;
  wire mipi_csi2_rx_subsyst_1_csirxss_csi_irq;
  wire [15:0]mipi_csi2_rx_subsyst_1_video_out_TDATA;
  wire [9:0]mipi_csi2_rx_subsyst_1_video_out_TDEST;
  wire mipi_csi2_rx_subsyst_1_video_out_TLAST;
  wire mipi_csi2_rx_subsyst_1_video_out_TREADY;
  wire [0:0]mipi_csi2_rx_subsyst_1_video_out_TUSER;
  wire mipi_csi2_rx_subsyst_1_video_out_TVALID;
  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [1:0]mipi_phy_if_0_data_n;
  wire [1:0]mipi_phy_if_0_data_p;
  wire mipi_phy_if_1_clk_n;
  wire mipi_phy_if_1_clk_p;
  wire [1:0]mipi_phy_if_1_data_n;
  wire [1:0]mipi_phy_if_1_data_p;
  wire [0:0]proc_sys_reset_150M_interconnect_aresetn;
  wire [0:0]proc_sys_reset_150M_peripheral_aresetn;
  wire [48:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [127:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [15:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [8:0]smartconnect_1_M00_AXI_ARADDR;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [8:0]smartconnect_1_M00_AXI_AWADDR;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WREADY;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [8:0]smartconnect_1_M01_AXI_ARADDR;
  wire smartconnect_1_M01_AXI_ARREADY;
  wire smartconnect_1_M01_AXI_ARVALID;
  wire [8:0]smartconnect_1_M01_AXI_AWADDR;
  wire smartconnect_1_M01_AXI_AWREADY;
  wire smartconnect_1_M01_AXI_AWVALID;
  wire smartconnect_1_M01_AXI_BREADY;
  wire [1:0]smartconnect_1_M01_AXI_BRESP;
  wire smartconnect_1_M01_AXI_BVALID;
  wire [31:0]smartconnect_1_M01_AXI_RDATA;
  wire smartconnect_1_M01_AXI_RREADY;
  wire [1:0]smartconnect_1_M01_AXI_RRESP;
  wire smartconnect_1_M01_AXI_RVALID;
  wire [31:0]smartconnect_1_M01_AXI_WDATA;
  wire smartconnect_1_M01_AXI_WREADY;
  wire smartconnect_1_M01_AXI_WVALID;
  wire [12:0]smartconnect_1_M02_AXI_ARADDR;
  wire [2:0]smartconnect_1_M02_AXI_ARPROT;
  wire [0:0]smartconnect_1_M02_AXI_ARREADY;
  wire smartconnect_1_M02_AXI_ARVALID;
  wire [12:0]smartconnect_1_M02_AXI_AWADDR;
  wire [2:0]smartconnect_1_M02_AXI_AWPROT;
  wire [0:0]smartconnect_1_M02_AXI_AWREADY;
  wire smartconnect_1_M02_AXI_AWVALID;
  wire smartconnect_1_M02_AXI_BREADY;
  wire [1:0]smartconnect_1_M02_AXI_BRESP;
  wire [0:0]smartconnect_1_M02_AXI_BVALID;
  wire [31:0]smartconnect_1_M02_AXI_RDATA;
  wire smartconnect_1_M02_AXI_RREADY;
  wire [1:0]smartconnect_1_M02_AXI_RRESP;
  wire [0:0]smartconnect_1_M02_AXI_RVALID;
  wire [31:0]smartconnect_1_M02_AXI_WDATA;
  wire [0:0]smartconnect_1_M02_AXI_WREADY;
  wire [3:0]smartconnect_1_M02_AXI_WSTRB;
  wire smartconnect_1_M02_AXI_WVALID;
  wire [12:0]smartconnect_1_M03_AXI_ARADDR;
  wire [2:0]smartconnect_1_M03_AXI_ARPROT;
  wire [0:0]smartconnect_1_M03_AXI_ARREADY;
  wire smartconnect_1_M03_AXI_ARVALID;
  wire [12:0]smartconnect_1_M03_AXI_AWADDR;
  wire [2:0]smartconnect_1_M03_AXI_AWPROT;
  wire [0:0]smartconnect_1_M03_AXI_AWREADY;
  wire smartconnect_1_M03_AXI_AWVALID;
  wire smartconnect_1_M03_AXI_BREADY;
  wire [1:0]smartconnect_1_M03_AXI_BRESP;
  wire [0:0]smartconnect_1_M03_AXI_BVALID;
  wire [31:0]smartconnect_1_M03_AXI_RDATA;
  wire smartconnect_1_M03_AXI_RREADY;
  wire [1:0]smartconnect_1_M03_AXI_RRESP;
  wire [0:0]smartconnect_1_M03_AXI_RVALID;
  wire [31:0]smartconnect_1_M03_AXI_WDATA;
  wire [0:0]smartconnect_1_M03_AXI_WREADY;
  wire [3:0]smartconnect_1_M03_AXI_WSTRB;
  wire smartconnect_1_M03_AXI_WVALID;
  wire [5:0]smartconnect_1_M04_AXI_ARADDR;
  wire smartconnect_1_M04_AXI_ARREADY;
  wire smartconnect_1_M04_AXI_ARVALID;
  wire [5:0]smartconnect_1_M04_AXI_AWADDR;
  wire smartconnect_1_M04_AXI_AWREADY;
  wire smartconnect_1_M04_AXI_AWVALID;
  wire smartconnect_1_M04_AXI_BREADY;
  wire [1:0]smartconnect_1_M04_AXI_BRESP;
  wire smartconnect_1_M04_AXI_BVALID;
  wire [31:0]smartconnect_1_M04_AXI_RDATA;
  wire smartconnect_1_M04_AXI_RREADY;
  wire [1:0]smartconnect_1_M04_AXI_RRESP;
  wire smartconnect_1_M04_AXI_RVALID;
  wire [31:0]smartconnect_1_M04_AXI_WDATA;
  wire smartconnect_1_M04_AXI_WREADY;
  wire [3:0]smartconnect_1_M04_AXI_WSTRB;
  wire smartconnect_1_M04_AXI_WVALID;
  wire [5:0]smartconnect_1_M05_AXI_ARADDR;
  wire smartconnect_1_M05_AXI_ARREADY;
  wire smartconnect_1_M05_AXI_ARVALID;
  wire [5:0]smartconnect_1_M05_AXI_AWADDR;
  wire smartconnect_1_M05_AXI_AWREADY;
  wire smartconnect_1_M05_AXI_AWVALID;
  wire smartconnect_1_M05_AXI_BREADY;
  wire [1:0]smartconnect_1_M05_AXI_BRESP;
  wire smartconnect_1_M05_AXI_BVALID;
  wire [31:0]smartconnect_1_M05_AXI_RDATA;
  wire smartconnect_1_M05_AXI_RREADY;
  wire [1:0]smartconnect_1_M05_AXI_RRESP;
  wire smartconnect_1_M05_AXI_RVALID;
  wire [31:0]smartconnect_1_M05_AXI_WDATA;
  wire smartconnect_1_M05_AXI_WREADY;
  wire [3:0]smartconnect_1_M05_AXI_WSTRB;
  wire smartconnect_1_M05_AXI_WVALID;
  wire [12:0]smartconnect_1_M06_AXI_ARADDR;
  wire smartconnect_1_M06_AXI_ARREADY;
  wire smartconnect_1_M06_AXI_ARVALID;
  wire [12:0]smartconnect_1_M06_AXI_AWADDR;
  wire smartconnect_1_M06_AXI_AWREADY;
  wire smartconnect_1_M06_AXI_AWVALID;
  wire smartconnect_1_M06_AXI_BREADY;
  wire [1:0]smartconnect_1_M06_AXI_BRESP;
  wire smartconnect_1_M06_AXI_BVALID;
  wire [31:0]smartconnect_1_M06_AXI_RDATA;
  wire smartconnect_1_M06_AXI_RREADY;
  wire [1:0]smartconnect_1_M06_AXI_RRESP;
  wire smartconnect_1_M06_AXI_RVALID;
  wire [31:0]smartconnect_1_M06_AXI_WDATA;
  wire smartconnect_1_M06_AXI_WREADY;
  wire [3:0]smartconnect_1_M06_AXI_WSTRB;
  wire smartconnect_1_M06_AXI_WVALID;
  wire [12:0]smartconnect_1_M07_AXI_ARADDR;
  wire smartconnect_1_M07_AXI_ARREADY;
  wire smartconnect_1_M07_AXI_ARVALID;
  wire [12:0]smartconnect_1_M07_AXI_AWADDR;
  wire smartconnect_1_M07_AXI_AWREADY;
  wire smartconnect_1_M07_AXI_AWVALID;
  wire smartconnect_1_M07_AXI_BREADY;
  wire [1:0]smartconnect_1_M07_AXI_BRESP;
  wire smartconnect_1_M07_AXI_BVALID;
  wire [31:0]smartconnect_1_M07_AXI_RDATA;
  wire smartconnect_1_M07_AXI_RREADY;
  wire [1:0]smartconnect_1_M07_AXI_RRESP;
  wire smartconnect_1_M07_AXI_RVALID;
  wire [31:0]smartconnect_1_M07_AXI_WDATA;
  wire smartconnect_1_M07_AXI_WREADY;
  wire [3:0]smartconnect_1_M07_AXI_WSTRB;
  wire smartconnect_1_M07_AXI_WVALID;
  wire [31:0]v_demosaic_0_m_axis_video_TDATA;
  wire [0:0]v_demosaic_0_m_axis_video_TDEST;
  wire [0:0]v_demosaic_0_m_axis_video_TID;
  wire [3:0]v_demosaic_0_m_axis_video_TKEEP;
  wire [0:0]v_demosaic_0_m_axis_video_TLAST;
  wire v_demosaic_0_m_axis_video_TREADY;
  wire [3:0]v_demosaic_0_m_axis_video_TSTRB;
  wire [0:0]v_demosaic_0_m_axis_video_TUSER;
  wire v_demosaic_0_m_axis_video_TVALID;
  wire [31:0]v_demosaic_1_m_axis_video_TDATA;
  wire [0:0]v_demosaic_1_m_axis_video_TDEST;
  wire [0:0]v_demosaic_1_m_axis_video_TID;
  wire [3:0]v_demosaic_1_m_axis_video_TKEEP;
  wire [0:0]v_demosaic_1_m_axis_video_TLAST;
  wire v_demosaic_1_m_axis_video_TREADY;
  wire [3:0]v_demosaic_1_m_axis_video_TSTRB;
  wire [0:0]v_demosaic_1_m_axis_video_TUSER;
  wire v_demosaic_1_m_axis_video_TVALID;
  wire [31:0]v_gamma_lut_0_m_axis_video_TDATA;
  wire [0:0]v_gamma_lut_0_m_axis_video_TDEST;
  wire [0:0]v_gamma_lut_0_m_axis_video_TID;
  wire [3:0]v_gamma_lut_0_m_axis_video_TKEEP;
  wire [0:0]v_gamma_lut_0_m_axis_video_TLAST;
  wire v_gamma_lut_0_m_axis_video_TREADY;
  wire [3:0]v_gamma_lut_0_m_axis_video_TSTRB;
  wire [0:0]v_gamma_lut_0_m_axis_video_TUSER;
  wire v_gamma_lut_0_m_axis_video_TVALID;
  wire [31:0]v_gamma_lut_1_m_axis_video_TDATA;
  wire [0:0]v_gamma_lut_1_m_axis_video_TDEST;
  wire [0:0]v_gamma_lut_1_m_axis_video_TID;
  wire [3:0]v_gamma_lut_1_m_axis_video_TKEEP;
  wire [0:0]v_gamma_lut_1_m_axis_video_TLAST;
  wire v_gamma_lut_1_m_axis_video_TREADY;
  wire [3:0]v_gamma_lut_1_m_axis_video_TSTRB;
  wire [0:0]v_gamma_lut_1_m_axis_video_TUSER;
  wire v_gamma_lut_1_m_axis_video_TVALID;
  wire [7:0]xlconcat_0_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_clk2;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_1_axi_vdma_0_0 axi_vdma_0
       (.axi_resetn(proc_sys_reset_150M_peripheral_aresetn),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(smartconnect_1_M00_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_1_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_1_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_1_M00_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_1_M00_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_1_M00_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_1_M00_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_1_M00_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_1_M00_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_1_M00_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_1_M00_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_1_M00_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_1_M00_AXI_WVALID),
        .s_axis_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_s2mm_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_s2mm_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .s_axis_s2mm_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  design_1_axi_vdma_1_0 axi_vdma_1
       (.axi_resetn(proc_sys_reset_150M_peripheral_aresetn),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_vdma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_1_M_AXI_S2MM_WVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(smartconnect_1_M01_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_1_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_1_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_1_M01_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_1_M01_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_1_M01_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_1_M01_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_1_M01_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_1_M01_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_1_M01_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_1_M01_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_1_M01_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_1_M01_AXI_WVALID),
        .s_axis_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_s2mm_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_subset_converter_1_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .s_axis_s2mm_tuser(axis_subset_converter_1_M_AXIS_TUSER),
        .s_axis_s2mm_tvalid(axis_subset_converter_1_M_AXIS_TVALID));
  design_1_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(v_gamma_lut_0_m_axis_video_TDATA),
        .s_axis_tdest(v_gamma_lut_0_m_axis_video_TDEST),
        .s_axis_tid(v_gamma_lut_0_m_axis_video_TID),
        .s_axis_tkeep(v_gamma_lut_0_m_axis_video_TKEEP),
        .s_axis_tlast(v_gamma_lut_0_m_axis_video_TLAST),
        .s_axis_tready(v_gamma_lut_0_m_axis_video_TREADY),
        .s_axis_tstrb(v_gamma_lut_0_m_axis_video_TSTRB),
        .s_axis_tuser(v_gamma_lut_0_m_axis_video_TUSER),
        .s_axis_tvalid(v_gamma_lut_0_m_axis_video_TVALID));
  design_1_axis_subset_converter_1_0 axis_subset_converter_1
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .m_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .m_axis_tkeep(axis_subset_converter_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_1_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(v_gamma_lut_1_m_axis_video_TDATA),
        .s_axis_tdest(v_gamma_lut_1_m_axis_video_TDEST),
        .s_axis_tid(v_gamma_lut_1_m_axis_video_TID),
        .s_axis_tkeep(v_gamma_lut_1_m_axis_video_TKEEP),
        .s_axis_tlast(v_gamma_lut_1_m_axis_video_TLAST),
        .s_axis_tready(v_gamma_lut_1_m_axis_video_TREADY),
        .s_axis_tstrb(v_gamma_lut_1_m_axis_video_TSTRB),
        .s_axis_tuser(v_gamma_lut_1_m_axis_video_TUSER),
        .s_axis_tvalid(v_gamma_lut_1_m_axis_video_TVALID));
  design_1_mipi_csi2_rx_subsyst_0_0 mipi_csi2_rx_subsyst_0
       (.csirxss_csi_irq(mipi_csi2_rx_subsyst_0_csirxss_csi_irq),
        .csirxss_s_axi_araddr(smartconnect_1_M02_AXI_ARADDR),
        .csirxss_s_axi_arprot(smartconnect_1_M02_AXI_ARPROT),
        .csirxss_s_axi_arready(smartconnect_1_M02_AXI_ARREADY),
        .csirxss_s_axi_arvalid(smartconnect_1_M02_AXI_ARVALID),
        .csirxss_s_axi_awaddr(smartconnect_1_M02_AXI_AWADDR),
        .csirxss_s_axi_awprot(smartconnect_1_M02_AXI_AWPROT),
        .csirxss_s_axi_awready(smartconnect_1_M02_AXI_AWREADY),
        .csirxss_s_axi_awvalid(smartconnect_1_M02_AXI_AWVALID),
        .csirxss_s_axi_bready(smartconnect_1_M02_AXI_BREADY),
        .csirxss_s_axi_bresp(smartconnect_1_M02_AXI_BRESP),
        .csirxss_s_axi_bvalid(smartconnect_1_M02_AXI_BVALID),
        .csirxss_s_axi_rdata(smartconnect_1_M02_AXI_RDATA),
        .csirxss_s_axi_rready(smartconnect_1_M02_AXI_RREADY),
        .csirxss_s_axi_rresp(smartconnect_1_M02_AXI_RRESP),
        .csirxss_s_axi_rvalid(smartconnect_1_M02_AXI_RVALID),
        .csirxss_s_axi_wdata(smartconnect_1_M02_AXI_WDATA),
        .csirxss_s_axi_wready(smartconnect_1_M02_AXI_WREADY),
        .csirxss_s_axi_wstrb(smartconnect_1_M02_AXI_WSTRB),
        .csirxss_s_axi_wvalid(smartconnect_1_M02_AXI_WVALID),
        .dphy_clk_200M(zynq_ultra_ps_e_0_pl_clk2),
        .lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .lite_aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .mipi_phy_if_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_0_data_p),
        .video_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .video_aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .video_out_tdata(mipi_csi2_rx_subsyst_0_video_out_TDATA),
        .video_out_tdest(mipi_csi2_rx_subsyst_0_video_out_TDEST),
        .video_out_tlast(mipi_csi2_rx_subsyst_0_video_out_TLAST),
        .video_out_tready(mipi_csi2_rx_subsyst_0_video_out_TREADY),
        .video_out_tuser(mipi_csi2_rx_subsyst_0_video_out_TUSER),
        .video_out_tvalid(mipi_csi2_rx_subsyst_0_video_out_TVALID));
  design_1_mipi_csi2_rx_subsyst_1_0 mipi_csi2_rx_subsyst_1
       (.csirxss_csi_irq(mipi_csi2_rx_subsyst_1_csirxss_csi_irq),
        .csirxss_s_axi_araddr(smartconnect_1_M03_AXI_ARADDR),
        .csirxss_s_axi_arprot(smartconnect_1_M03_AXI_ARPROT),
        .csirxss_s_axi_arready(smartconnect_1_M03_AXI_ARREADY),
        .csirxss_s_axi_arvalid(smartconnect_1_M03_AXI_ARVALID),
        .csirxss_s_axi_awaddr(smartconnect_1_M03_AXI_AWADDR),
        .csirxss_s_axi_awprot(smartconnect_1_M03_AXI_AWPROT),
        .csirxss_s_axi_awready(smartconnect_1_M03_AXI_AWREADY),
        .csirxss_s_axi_awvalid(smartconnect_1_M03_AXI_AWVALID),
        .csirxss_s_axi_bready(smartconnect_1_M03_AXI_BREADY),
        .csirxss_s_axi_bresp(smartconnect_1_M03_AXI_BRESP),
        .csirxss_s_axi_bvalid(smartconnect_1_M03_AXI_BVALID),
        .csirxss_s_axi_rdata(smartconnect_1_M03_AXI_RDATA),
        .csirxss_s_axi_rready(smartconnect_1_M03_AXI_RREADY),
        .csirxss_s_axi_rresp(smartconnect_1_M03_AXI_RRESP),
        .csirxss_s_axi_rvalid(smartconnect_1_M03_AXI_RVALID),
        .csirxss_s_axi_wdata(smartconnect_1_M03_AXI_WDATA),
        .csirxss_s_axi_wready(smartconnect_1_M03_AXI_WREADY),
        .csirxss_s_axi_wstrb(smartconnect_1_M03_AXI_WSTRB),
        .csirxss_s_axi_wvalid(smartconnect_1_M03_AXI_WVALID),
        .dphy_clk_200M(zynq_ultra_ps_e_0_pl_clk2),
        .lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .lite_aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .mipi_phy_if_clk_n(mipi_phy_if_1_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_1_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_1_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_1_data_p),
        .video_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .video_aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .video_out_tdata(mipi_csi2_rx_subsyst_1_video_out_TDATA),
        .video_out_tdest(mipi_csi2_rx_subsyst_1_video_out_TDEST),
        .video_out_tlast(mipi_csi2_rx_subsyst_1_video_out_TLAST),
        .video_out_tready(mipi_csi2_rx_subsyst_1_video_out_TREADY),
        .video_out_tuser(mipi_csi2_rx_subsyst_1_video_out_TUSER),
        .video_out_tvalid(mipi_csi2_rx_subsyst_1_video_out_TVALID));
  design_1_proc_sys_reset_150M_0 proc_sys_reset_150M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(proc_sys_reset_150M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_150M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .S00_AXI_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .S01_AXI_awaddr(axi_vdma_1_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_vdma_1_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_vdma_1_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_vdma_1_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_vdma_1_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_vdma_1_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_vdma_1_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_vdma_1_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_vdma_1_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_vdma_1_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_vdma_1_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_vdma_1_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_vdma_1_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_vdma_1_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_vdma_1_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_vdma_1_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(1'b0),
        .S02_AXI_arburst({1'b0,1'b1}),
        .S02_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S02_AXI_arid(1'b0),
        .S02_AXI_arlen(1'b0),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot({1'b0,1'b0,1'b0}),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arsize({1'b0,1'b1,1'b0}),
        .S02_AXI_aruser(1'b0),
        .S02_AXI_arvalid(1'b0),
        .S02_AXI_awaddr(1'b0),
        .S02_AXI_awburst({1'b0,1'b1}),
        .S02_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S02_AXI_awid(1'b0),
        .S02_AXI_awlen(1'b0),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot({1'b0,1'b0,1'b0}),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awsize({1'b0,1'b1,1'b0}),
        .S02_AXI_awuser(1'b0),
        .S02_AXI_awvalid(1'b0),
        .S02_AXI_bready(1'b0),
        .S02_AXI_rready(1'b0),
        .S02_AXI_wdata(1'b0),
        .S02_AXI_wid(1'b0),
        .S02_AXI_wlast(1'b0),
        .S02_AXI_wstrb(1'b1),
        .S02_AXI_wuser(1'b0),
        .S02_AXI_wvalid(1'b0),
        .S03_AXI_araddr(1'b0),
        .S03_AXI_arburst({1'b0,1'b1}),
        .S03_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S03_AXI_arid(1'b0),
        .S03_AXI_arlen(1'b0),
        .S03_AXI_arlock(1'b0),
        .S03_AXI_arprot({1'b0,1'b0,1'b0}),
        .S03_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arsize({1'b0,1'b1,1'b0}),
        .S03_AXI_aruser(1'b0),
        .S03_AXI_arvalid(1'b0),
        .S03_AXI_awaddr(1'b0),
        .S03_AXI_awburst({1'b0,1'b1}),
        .S03_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S03_AXI_awid(1'b0),
        .S03_AXI_awlen(1'b0),
        .S03_AXI_awlock(1'b0),
        .S03_AXI_awprot({1'b0,1'b0,1'b0}),
        .S03_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awsize({1'b0,1'b1,1'b0}),
        .S03_AXI_awuser(1'b0),
        .S03_AXI_awvalid(1'b0),
        .S03_AXI_bready(1'b0),
        .S03_AXI_rready(1'b0),
        .S03_AXI_wdata(1'b0),
        .S03_AXI_wid(1'b0),
        .S03_AXI_wlast(1'b0),
        .S03_AXI_wstrb(1'b1),
        .S03_AXI_wuser(1'b0),
        .S03_AXI_wvalid(1'b0),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_150M_interconnect_aresetn));
  design_1_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_1_M01_AXI_WREADY),
        .M01_AXI_wvalid(smartconnect_1_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_1_M02_AXI_ARADDR),
        .M02_AXI_arprot(smartconnect_1_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_1_M02_AXI_AWADDR),
        .M02_AXI_awprot(smartconnect_1_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_1_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_1_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_1_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_1_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_1_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_1_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_1_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_1_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_1_M03_AXI_ARADDR),
        .M03_AXI_arprot(smartconnect_1_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_1_M03_AXI_AWADDR),
        .M03_AXI_awprot(smartconnect_1_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_1_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_1_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_1_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_1_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_1_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_1_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_1_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_1_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_1_M04_AXI_ARADDR),
        .M04_AXI_arready(smartconnect_1_M04_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_1_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_1_M04_AXI_AWADDR),
        .M04_AXI_awready(smartconnect_1_M04_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_1_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_1_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_1_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_1_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_1_M04_AXI_RDATA),
        .M04_AXI_rready(smartconnect_1_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_1_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_1_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_1_M04_AXI_WDATA),
        .M04_AXI_wready(smartconnect_1_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_1_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_1_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_1_M05_AXI_ARADDR),
        .M05_AXI_arready(smartconnect_1_M05_AXI_ARREADY),
        .M05_AXI_arvalid(smartconnect_1_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_1_M05_AXI_AWADDR),
        .M05_AXI_awready(smartconnect_1_M05_AXI_AWREADY),
        .M05_AXI_awvalid(smartconnect_1_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_1_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_1_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_1_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_1_M05_AXI_RDATA),
        .M05_AXI_rready(smartconnect_1_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_1_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_1_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_1_M05_AXI_WDATA),
        .M05_AXI_wready(smartconnect_1_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_1_M05_AXI_WSTRB),
        .M05_AXI_wvalid(smartconnect_1_M05_AXI_WVALID),
        .M06_AXI_araddr(smartconnect_1_M06_AXI_ARADDR),
        .M06_AXI_arready(smartconnect_1_M06_AXI_ARREADY),
        .M06_AXI_arvalid(smartconnect_1_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_1_M06_AXI_AWADDR),
        .M06_AXI_awready(smartconnect_1_M06_AXI_AWREADY),
        .M06_AXI_awvalid(smartconnect_1_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_1_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_1_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_1_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_1_M06_AXI_RDATA),
        .M06_AXI_rready(smartconnect_1_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_1_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_1_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_1_M06_AXI_WDATA),
        .M06_AXI_wready(smartconnect_1_M06_AXI_WREADY),
        .M06_AXI_wstrb(smartconnect_1_M06_AXI_WSTRB),
        .M06_AXI_wvalid(smartconnect_1_M06_AXI_WVALID),
        .M07_AXI_araddr(smartconnect_1_M07_AXI_ARADDR),
        .M07_AXI_arready(smartconnect_1_M07_AXI_ARREADY),
        .M07_AXI_arvalid(smartconnect_1_M07_AXI_ARVALID),
        .M07_AXI_awaddr(smartconnect_1_M07_AXI_AWADDR),
        .M07_AXI_awready(smartconnect_1_M07_AXI_AWREADY),
        .M07_AXI_awvalid(smartconnect_1_M07_AXI_AWVALID),
        .M07_AXI_bready(smartconnect_1_M07_AXI_BREADY),
        .M07_AXI_bresp(smartconnect_1_M07_AXI_BRESP),
        .M07_AXI_bvalid(smartconnect_1_M07_AXI_BVALID),
        .M07_AXI_rdata(smartconnect_1_M07_AXI_RDATA),
        .M07_AXI_rready(smartconnect_1_M07_AXI_RREADY),
        .M07_AXI_rresp(smartconnect_1_M07_AXI_RRESP),
        .M07_AXI_rvalid(smartconnect_1_M07_AXI_RVALID),
        .M07_AXI_wdata(smartconnect_1_M07_AXI_WDATA),
        .M07_AXI_wready(smartconnect_1_M07_AXI_WREADY),
        .M07_AXI_wstrb(smartconnect_1_M07_AXI_WSTRB),
        .M07_AXI_wvalid(smartconnect_1_M07_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(proc_sys_reset_150M_interconnect_aresetn));
  design_1_v_demosaic_0_2 v_demosaic_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_150M_peripheral_aresetn),
        .m_axis_video_TDATA(v_demosaic_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_demosaic_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_demosaic_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_demosaic_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_demosaic_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_demosaic_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_demosaic_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_demosaic_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_demosaic_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(smartconnect_1_M04_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(smartconnect_1_M04_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(smartconnect_1_M04_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(smartconnect_1_M04_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(smartconnect_1_M04_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(smartconnect_1_M04_AXI_AWVALID),
        .s_axi_CTRL_BREADY(smartconnect_1_M04_AXI_BREADY),
        .s_axi_CTRL_BRESP(smartconnect_1_M04_AXI_BRESP),
        .s_axi_CTRL_BVALID(smartconnect_1_M04_AXI_BVALID),
        .s_axi_CTRL_RDATA(smartconnect_1_M04_AXI_RDATA),
        .s_axi_CTRL_RREADY(smartconnect_1_M04_AXI_RREADY),
        .s_axi_CTRL_RRESP(smartconnect_1_M04_AXI_RRESP),
        .s_axi_CTRL_RVALID(smartconnect_1_M04_AXI_RVALID),
        .s_axi_CTRL_WDATA(smartconnect_1_M04_AXI_WDATA),
        .s_axi_CTRL_WREADY(smartconnect_1_M04_AXI_WREADY),
        .s_axi_CTRL_WSTRB(smartconnect_1_M04_AXI_WSTRB),
        .s_axi_CTRL_WVALID(smartconnect_1_M04_AXI_WVALID),
        .s_axis_video_TDATA(mipi_csi2_rx_subsyst_0_video_out_TDATA),
        .s_axis_video_TDEST(mipi_csi2_rx_subsyst_0_video_out_TDEST[0]),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1}),
        .s_axis_video_TLAST(mipi_csi2_rx_subsyst_0_video_out_TLAST),
        .s_axis_video_TREADY(mipi_csi2_rx_subsyst_0_video_out_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1}),
        .s_axis_video_TUSER(mipi_csi2_rx_subsyst_0_video_out_TUSER),
        .s_axis_video_TVALID(mipi_csi2_rx_subsyst_0_video_out_TVALID));
  design_1_v_demosaic_1_0 v_demosaic_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_150M_peripheral_aresetn),
        .m_axis_video_TDATA(v_demosaic_1_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_demosaic_1_m_axis_video_TDEST),
        .m_axis_video_TID(v_demosaic_1_m_axis_video_TID),
        .m_axis_video_TKEEP(v_demosaic_1_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_demosaic_1_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_demosaic_1_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_demosaic_1_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_demosaic_1_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_demosaic_1_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(smartconnect_1_M05_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(smartconnect_1_M05_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(smartconnect_1_M05_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(smartconnect_1_M05_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(smartconnect_1_M05_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(smartconnect_1_M05_AXI_AWVALID),
        .s_axi_CTRL_BREADY(smartconnect_1_M05_AXI_BREADY),
        .s_axi_CTRL_BRESP(smartconnect_1_M05_AXI_BRESP),
        .s_axi_CTRL_BVALID(smartconnect_1_M05_AXI_BVALID),
        .s_axi_CTRL_RDATA(smartconnect_1_M05_AXI_RDATA),
        .s_axi_CTRL_RREADY(smartconnect_1_M05_AXI_RREADY),
        .s_axi_CTRL_RRESP(smartconnect_1_M05_AXI_RRESP),
        .s_axi_CTRL_RVALID(smartconnect_1_M05_AXI_RVALID),
        .s_axi_CTRL_WDATA(smartconnect_1_M05_AXI_WDATA),
        .s_axi_CTRL_WREADY(smartconnect_1_M05_AXI_WREADY),
        .s_axi_CTRL_WSTRB(smartconnect_1_M05_AXI_WSTRB),
        .s_axi_CTRL_WVALID(smartconnect_1_M05_AXI_WVALID),
        .s_axis_video_TDATA(mipi_csi2_rx_subsyst_1_video_out_TDATA),
        .s_axis_video_TDEST(mipi_csi2_rx_subsyst_1_video_out_TDEST[0]),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1}),
        .s_axis_video_TLAST(mipi_csi2_rx_subsyst_1_video_out_TLAST),
        .s_axis_video_TREADY(mipi_csi2_rx_subsyst_1_video_out_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1}),
        .s_axis_video_TUSER(mipi_csi2_rx_subsyst_1_video_out_TUSER),
        .s_axis_video_TVALID(mipi_csi2_rx_subsyst_1_video_out_TVALID));
  design_1_v_gamma_lut_0_0 v_gamma_lut_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_150M_peripheral_aresetn),
        .m_axis_video_TDATA(v_gamma_lut_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_gamma_lut_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_gamma_lut_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_gamma_lut_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_gamma_lut_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_gamma_lut_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_gamma_lut_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_gamma_lut_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_gamma_lut_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(smartconnect_1_M06_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(smartconnect_1_M06_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(smartconnect_1_M06_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(smartconnect_1_M06_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(smartconnect_1_M06_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(smartconnect_1_M06_AXI_AWVALID),
        .s_axi_CTRL_BREADY(smartconnect_1_M06_AXI_BREADY),
        .s_axi_CTRL_BRESP(smartconnect_1_M06_AXI_BRESP),
        .s_axi_CTRL_BVALID(smartconnect_1_M06_AXI_BVALID),
        .s_axi_CTRL_RDATA(smartconnect_1_M06_AXI_RDATA),
        .s_axi_CTRL_RREADY(smartconnect_1_M06_AXI_RREADY),
        .s_axi_CTRL_RRESP(smartconnect_1_M06_AXI_RRESP),
        .s_axi_CTRL_RVALID(smartconnect_1_M06_AXI_RVALID),
        .s_axi_CTRL_WDATA(smartconnect_1_M06_AXI_WDATA),
        .s_axi_CTRL_WREADY(smartconnect_1_M06_AXI_WREADY),
        .s_axi_CTRL_WSTRB(smartconnect_1_M06_AXI_WSTRB),
        .s_axi_CTRL_WVALID(smartconnect_1_M06_AXI_WVALID),
        .s_axis_video_TDATA(v_demosaic_0_m_axis_video_TDATA),
        .s_axis_video_TDEST(v_demosaic_0_m_axis_video_TDEST),
        .s_axis_video_TID(v_demosaic_0_m_axis_video_TID),
        .s_axis_video_TKEEP(v_demosaic_0_m_axis_video_TKEEP),
        .s_axis_video_TLAST(v_demosaic_0_m_axis_video_TLAST),
        .s_axis_video_TREADY(v_demosaic_0_m_axis_video_TREADY),
        .s_axis_video_TSTRB(v_demosaic_0_m_axis_video_TSTRB),
        .s_axis_video_TUSER(v_demosaic_0_m_axis_video_TUSER),
        .s_axis_video_TVALID(v_demosaic_0_m_axis_video_TVALID));
  design_1_v_gamma_lut_1_0 v_gamma_lut_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(proc_sys_reset_150M_peripheral_aresetn),
        .m_axis_video_TDATA(v_gamma_lut_1_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_gamma_lut_1_m_axis_video_TDEST),
        .m_axis_video_TID(v_gamma_lut_1_m_axis_video_TID),
        .m_axis_video_TKEEP(v_gamma_lut_1_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_gamma_lut_1_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_gamma_lut_1_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_gamma_lut_1_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_gamma_lut_1_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_gamma_lut_1_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(smartconnect_1_M07_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(smartconnect_1_M07_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(smartconnect_1_M07_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(smartconnect_1_M07_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(smartconnect_1_M07_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(smartconnect_1_M07_AXI_AWVALID),
        .s_axi_CTRL_BREADY(smartconnect_1_M07_AXI_BREADY),
        .s_axi_CTRL_BRESP(smartconnect_1_M07_AXI_BRESP),
        .s_axi_CTRL_BVALID(smartconnect_1_M07_AXI_BVALID),
        .s_axi_CTRL_RDATA(smartconnect_1_M07_AXI_RDATA),
        .s_axi_CTRL_RREADY(smartconnect_1_M07_AXI_RREADY),
        .s_axi_CTRL_RRESP(smartconnect_1_M07_AXI_RRESP),
        .s_axi_CTRL_RVALID(smartconnect_1_M07_AXI_RVALID),
        .s_axi_CTRL_WDATA(smartconnect_1_M07_AXI_WDATA),
        .s_axi_CTRL_WREADY(smartconnect_1_M07_AXI_WREADY),
        .s_axi_CTRL_WSTRB(smartconnect_1_M07_AXI_WSTRB),
        .s_axi_CTRL_WVALID(smartconnect_1_M07_AXI_WVALID),
        .s_axis_video_TDATA(v_demosaic_1_m_axis_video_TDATA),
        .s_axis_video_TDEST(v_demosaic_1_m_axis_video_TDEST),
        .s_axis_video_TID(v_demosaic_1_m_axis_video_TID),
        .s_axis_video_TKEEP(v_demosaic_1_m_axis_video_TKEEP),
        .s_axis_video_TLAST(v_demosaic_1_m_axis_video_TLAST),
        .s_axis_video_TREADY(v_demosaic_1_m_axis_video_TREADY),
        .s_axis_video_TSTRB(v_demosaic_1_m_axis_video_TSTRB),
        .s_axis_video_TUSER(v_demosaic_1_m_axis_video_TUSER),
        .s_axis_video_TVALID(v_demosaic_1_m_axis_video_TVALID));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(mipi_csi2_rx_subsyst_0_csirxss_csi_irq),
        .In1(mipi_csi2_rx_subsyst_1_csirxss_csi_irq),
        .In2(1'b0),
        .In3(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .dout(xlconcat_0_dout));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_gpio_i(cam_gpio_tri_i),
        .emio_gpio_o(cam_gpio_tri_o),
        .emio_gpio_t(cam_gpio_tri_t),
        .emio_i2c0_scl_i(cam0_i2c_scl_i),
        .emio_i2c0_scl_o(cam0_i2c_scl_o),
        .emio_i2c0_scl_t(cam0_i2c_scl_t),
        .emio_i2c0_sda_i(cam0_i2c_sda_i),
        .emio_i2c0_sda_o(cam0_i2c_sda_o),
        .emio_i2c0_sda_t(cam0_i2c_sda_t),
        .emio_i2c1_scl_i(cam1_i2c_scl_i),
        .emio_i2c1_scl_o(cam1_i2c_scl_o),
        .emio_i2c1_scl_t(cam1_i2c_scl_t),
        .emio_i2c1_sda_i(cam1_i2c_sda_i),
        .emio_i2c1_sda_o(cam1_i2c_sda_o),
        .emio_i2c1_sda_t(cam1_i2c_sda_t),
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk1(zynq_ultra_ps_e_0_pl_clk2),
        .pl_ps_irq0(xlconcat_0_dout),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arburst({1'b0,1'b1}),
        .saxigp2_arcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlock(1'b0),
        .saxigp2_arprot({1'b0,1'b0,1'b0}),
        .saxigp2_arqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arsize({1'b1,1'b0,1'b0}),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(1'b0),
        .saxigp2_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .saxigp2_awburst(smartconnect_0_M00_AXI_AWBURST),
        .saxigp2_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(smartconnect_0_M00_AXI_AWLEN),
        .saxigp2_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .saxigp2_awprot(smartconnect_0_M00_AXI_AWPROT),
        .saxigp2_awqos(smartconnect_0_M00_AXI_AWQOS),
        .saxigp2_awready(smartconnect_0_M00_AXI_AWREADY),
        .saxigp2_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .saxigp2_bready(smartconnect_0_M00_AXI_BREADY),
        .saxigp2_bresp(smartconnect_0_M00_AXI_BRESP),
        .saxigp2_bvalid(smartconnect_0_M00_AXI_BVALID),
        .saxigp2_rready(1'b0),
        .saxigp2_wdata(smartconnect_0_M00_AXI_WDATA),
        .saxigp2_wlast(smartconnect_0_M00_AXI_WLAST),
        .saxigp2_wready(smartconnect_0_M00_AXI_WREADY),
        .saxigp2_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .saxigp2_wvalid(smartconnect_0_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
