// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  cam0_i2c_scl_i,
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
  mipi_phy_if_1_data_p
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SCL_I" *)
  (* X_INTERFACE_MODE = "master cam0_i2c" *)
  input cam0_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SCL_O" *)
  output cam0_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SCL_T" *)
  output cam0_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SDA_I" *)
  input cam0_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SDA_O" *)
  output cam0_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam0_i2c SDA_T" *)
  output cam0_i2c_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SCL_I" *)
  (* X_INTERFACE_MODE = "master cam1_i2c" *)
  input cam1_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SCL_O" *)
  output cam1_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SCL_T" *)
  output cam1_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SDA_I" *)
  input cam1_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SDA_O" *)
  output cam1_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cam1_i2c SDA_T" *)
  output cam1_i2c_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cam_gpio TRI_I" *)
  (* X_INTERFACE_MODE = "master cam_gpio" *)
  input [94:0]cam_gpio_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cam_gpio TRI_O" *)
  output [94:0]cam_gpio_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 cam_gpio TRI_T" *)
  output [94:0]cam_gpio_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 CLK_N" *)
  (* X_INTERFACE_MODE = "slave mipi_phy_if_0" *)
  input mipi_phy_if_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 CLK_P" *)
  input mipi_phy_if_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 DATA_N" *)
  input [1:0]mipi_phy_if_0_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_0 DATA_P" *)
  input [1:0]mipi_phy_if_0_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 CLK_N" *)
  (* X_INTERFACE_MODE = "slave mipi_phy_if_1" *)
  input mipi_phy_if_1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 CLK_P" *)
  input mipi_phy_if_1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 DATA_N" *)
  input [1:0]mipi_phy_if_1_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if_1 DATA_P" *)
  input [1:0]mipi_phy_if_1_data_p;

  // stub module has no contents

endmodule
