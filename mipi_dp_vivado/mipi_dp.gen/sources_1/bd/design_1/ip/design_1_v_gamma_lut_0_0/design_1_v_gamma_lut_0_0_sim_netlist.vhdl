-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Nov 13 19:34:57 2025
-- Host        : Win10-zsd running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Dev/QianSai/mipi_dp_vivado/mipi_dp.gen/sources_1/bd/design_1/ip/design_1_v_gamma_lut_0_0/design_1_v_gamma_lut_0_0_sim_netlist.vhdl
-- Design      : design_1_v_gamma_lut_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_CTRL_s_axi_ram is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 26 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 19 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[0]\ : in STD_LOGIC;
    \rdata_reg[0]_0\ : in STD_LOGIC;
    \rdata_reg[0]_1\ : in STD_LOGIC;
    \rdata_reg[0]_2\ : in STD_LOGIC;
    int_gamma_lut_0_read : in STD_LOGIC;
    \rdata_reg[9]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rdata_reg[9]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    int_gamma_lut_1_read : in STD_LOGIC;
    \ar_hs__0\ : in STD_LOGIC;
    \rdata_reg[2]\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdata_reg[2]_0\ : in STD_LOGIC;
    \int_ap_ready__0\ : in STD_LOGIC;
    \rdata_reg[3]\ : in STD_LOGIC;
    \rdata_reg[7]\ : in STD_LOGIC;
    interrupt : in STD_LOGIC;
    \rdata_reg[9]_1\ : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC;
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    mem_reg_2 : in STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_v_gamma_lut_0_0_CTRL_s_axi_ram;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_CTRL_s_axi_ram is
  signal int_gamma_lut_0_be1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal int_gamma_lut_0_ce1 : STD_LOGIC;
  signal int_gamma_lut_0_q1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mem_reg_n_106 : STD_LOGIC;
  signal mem_reg_n_107 : STD_LOGIC;
  signal mem_reg_n_108 : STD_LOGIC;
  signal mem_reg_n_109 : STD_LOGIC;
  signal mem_reg_n_110 : STD_LOGIC;
  signal mem_reg_n_111 : STD_LOGIC;
  signal mem_reg_n_122 : STD_LOGIC;
  signal mem_reg_n_123 : STD_LOGIC;
  signal mem_reg_n_124 : STD_LOGIC;
  signal mem_reg_n_125 : STD_LOGIC;
  signal mem_reg_n_126 : STD_LOGIC;
  signal mem_reg_n_127 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \rdata[0]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_6\ : STD_LOGIC;
  signal NLW_mem_reg_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of mem_reg : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "design_1_v_gamma_lut_0_0_v_gamma_lut/CTRL_s_axi_U/int_gamma_lut_0/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 512;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 31;
begin
mem_reg: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14) => '1',
      ADDRARDADDR(13 downto 5) => ADDRARDADDR(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(14) => '1',
      ADDRBWRADDR(13 downto 5) => ADDRBWRADDR(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_mem_reg_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_mem_reg_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_mem_reg_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_mem_reg_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_mem_reg_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_mem_reg_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DINADIN(31 downto 24) => p_1_in(31 downto 24),
      DINADIN(23 downto 0) => s_axi_CTRL_WDATA(23 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 10) => DOUTADOUT(26 downto 5),
      DOUTADOUT(9) => int_gamma_lut_0_q1(9),
      DOUTADOUT(8) => DOUTADOUT(4),
      DOUTADOUT(7) => int_gamma_lut_0_q1(7),
      DOUTADOUT(6 downto 4) => DOUTADOUT(3 downto 1),
      DOUTADOUT(3 downto 2) => int_gamma_lut_0_q1(3 downto 2),
      DOUTADOUT(1) => DOUTADOUT(0),
      DOUTADOUT(0) => int_gamma_lut_0_q1(0),
      DOUTBDOUT(31) => mem_reg_n_106,
      DOUTBDOUT(30) => mem_reg_n_107,
      DOUTBDOUT(29) => mem_reg_n_108,
      DOUTBDOUT(28) => mem_reg_n_109,
      DOUTBDOUT(27) => mem_reg_n_110,
      DOUTBDOUT(26) => mem_reg_n_111,
      DOUTBDOUT(25 downto 16) => DOUTBDOUT(19 downto 10),
      DOUTBDOUT(15) => mem_reg_n_122,
      DOUTBDOUT(14) => mem_reg_n_123,
      DOUTBDOUT(13) => mem_reg_n_124,
      DOUTBDOUT(12) => mem_reg_n_125,
      DOUTBDOUT(11) => mem_reg_n_126,
      DOUTBDOUT(10) => mem_reg_n_127,
      DOUTBDOUT(9 downto 0) => DOUTBDOUT(9 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_mem_reg_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_mem_reg_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => int_gamma_lut_0_ce1,
      ENBWREN => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => int_gamma_lut_0_be1(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => mem_reg_0,
      I1 => s_axi_CTRL_WVALID,
      I2 => s_axi_CTRL_ARVALID,
      I3 => mem_reg_1,
      O => int_gamma_lut_0_ce1
    );
mem_reg_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(31),
      O => p_1_in(31)
    );
mem_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(30),
      O => p_1_in(30)
    );
mem_reg_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(29),
      O => p_1_in(29)
    );
mem_reg_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(28),
      O => p_1_in(28)
    );
mem_reg_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(27),
      O => p_1_in(27)
    );
mem_reg_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(26),
      O => p_1_in(26)
    );
mem_reg_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(25),
      O => p_1_in(25)
    );
mem_reg_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WDATA(24),
      O => p_1_in(24)
    );
mem_reg_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_0,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(3),
      O => int_gamma_lut_0_be1(3)
    );
mem_reg_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_0,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(2),
      O => int_gamma_lut_0_be1(2)
    );
mem_reg_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_0,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(1),
      O => int_gamma_lut_0_be1(1)
    );
mem_reg_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_0,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(0),
      O => int_gamma_lut_0_be1(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => \rdata_reg[0]_0\,
      I2 => \rdata[0]_i_3_n_6\,
      I3 => \rdata_reg[0]_1\,
      I4 => \rdata_reg[0]_2\,
      O => D(0)
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB88B8B8"
    )
        port map (
      I0 => int_gamma_lut_0_q1(0),
      I1 => int_gamma_lut_0_read,
      I2 => \rdata_reg[9]\(0),
      I3 => \rdata_reg[9]_0\(0),
      I4 => int_gamma_lut_1_read,
      I5 => \ar_hs__0\,
      O => \rdata[0]_i_3_n_6\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[2]\,
      I1 => p_3_in(0),
      I2 => \rdata[2]_i_2_n_6\,
      I3 => \rdata_reg[2]_0\,
      I4 => \rdata_reg[0]\,
      O => D(1)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB88B8B8"
    )
        port map (
      I0 => int_gamma_lut_0_q1(2),
      I1 => int_gamma_lut_0_read,
      I2 => \rdata_reg[9]\(1),
      I3 => \rdata_reg[9]_0\(1),
      I4 => int_gamma_lut_1_read,
      I5 => \ar_hs__0\,
      O => \rdata[2]_i_2_n_6\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[2]\,
      I1 => \int_ap_ready__0\,
      I2 => \rdata[3]_i_2_n_6\,
      I3 => \rdata_reg[3]\,
      I4 => \rdata_reg[0]\,
      O => D(2)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB88B8B8"
    )
        port map (
      I0 => int_gamma_lut_0_q1(3),
      I1 => int_gamma_lut_0_read,
      I2 => \rdata_reg[9]\(2),
      I3 => \rdata_reg[9]_0\(2),
      I4 => int_gamma_lut_1_read,
      I5 => \ar_hs__0\,
      O => \rdata[3]_i_2_n_6\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[2]\,
      I1 => p_3_in(1),
      I2 => \rdata[7]_i_2_n_6\,
      I3 => \rdata_reg[7]\,
      I4 => \rdata_reg[0]\,
      O => D(3)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB88B8B8"
    )
        port map (
      I0 => int_gamma_lut_0_q1(7),
      I1 => int_gamma_lut_0_read,
      I2 => \rdata_reg[9]\(3),
      I3 => \rdata_reg[9]_0\(3),
      I4 => int_gamma_lut_1_read,
      I5 => \ar_hs__0\,
      O => \rdata[7]_i_2_n_6\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[2]\,
      I1 => interrupt,
      I2 => \rdata[9]_i_3_n_6\,
      I3 => \rdata_reg[9]_1\,
      I4 => \rdata_reg[0]\,
      O => D(4)
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB88B8B8"
    )
        port map (
      I0 => int_gamma_lut_0_q1(9),
      I1 => int_gamma_lut_0_read,
      I2 => \rdata_reg[9]\(4),
      I3 => \rdata_reg[9]_0\(4),
      I4 => int_gamma_lut_1_read,
      I5 => \ar_hs__0\,
      O => \rdata[9]_i_3_n_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_7 is
  port (
    mem_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 19 downto 0 );
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    int_gamma_lut_1_read_reg : out STD_LOGIC;
    int_gamma_lut_1_read_reg_0 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_1 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_2 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_3 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_4 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_5 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_6 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_7 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_8 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_9 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_10 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_11 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_12 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_13 : out STD_LOGIC;
    int_gamma_lut_1_read_reg_14 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[1]\ : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    \rdata_reg[1]_0\ : in STD_LOGIC;
    \rdata_reg[1]_1\ : in STD_LOGIC;
    int_gamma_lut_1_read : in STD_LOGIC;
    DOUTADOUT : in STD_LOGIC_VECTOR ( 26 downto 0 );
    int_gamma_lut_0_read : in STD_LOGIC;
    \rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \rdata_reg[4]\ : in STD_LOGIC;
    \rdata_reg[5]\ : in STD_LOGIC;
    \rdata_reg[6]\ : in STD_LOGIC;
    \rdata_reg[8]\ : in STD_LOGIC;
    \rdata_reg[10]\ : in STD_LOGIC;
    \rdata_reg[11]\ : in STD_LOGIC;
    \rdata_reg[12]\ : in STD_LOGIC;
    \rdata_reg[13]\ : in STD_LOGIC;
    \rdata_reg[14]\ : in STD_LOGIC;
    \rdata_reg[15]\ : in STD_LOGIC;
    mem_reg_2 : in STD_LOGIC;
    s_axi_CTRL_WVALID : in STD_LOGIC;
    mem_reg_3 : in STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ar_hs__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_7 : entity is "design_1_v_gamma_lut_0_0_CTRL_s_axi_ram";
end design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_7;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_7 is
  signal int_gamma_lut_1_be1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal int_gamma_lut_1_ce1 : STD_LOGIC;
  signal int_gamma_lut_1_q1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal mem_reg_n_106 : STD_LOGIC;
  signal mem_reg_n_107 : STD_LOGIC;
  signal mem_reg_n_108 : STD_LOGIC;
  signal mem_reg_n_109 : STD_LOGIC;
  signal mem_reg_n_110 : STD_LOGIC;
  signal mem_reg_n_111 : STD_LOGIC;
  signal mem_reg_n_122 : STD_LOGIC;
  signal mem_reg_n_123 : STD_LOGIC;
  signal mem_reg_n_124 : STD_LOGIC;
  signal mem_reg_n_125 : STD_LOGIC;
  signal mem_reg_n_126 : STD_LOGIC;
  signal mem_reg_n_127 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \rdata[10]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[8]_i_2_n_6\ : STD_LOGIC;
  signal NLW_mem_reg_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of mem_reg : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "design_1_v_gamma_lut_0_0_v_gamma_lut/CTRL_s_axi_U/int_gamma_lut_1/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 512;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 31;
begin
mem_reg: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14) => '1',
      ADDRARDADDR(13 downto 5) => ADDRARDADDR(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(14) => '1',
      ADDRBWRADDR(13 downto 5) => ADDRBWRADDR(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_mem_reg_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_mem_reg_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_mem_reg_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_mem_reg_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_mem_reg_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_mem_reg_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DINADIN(31 downto 24) => p_1_in(31 downto 24),
      DINADIN(23 downto 0) => s_axi_CTRL_WDATA(23 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 10) => int_gamma_lut_1_q1(31 downto 10),
      DOUTADOUT(9) => mem_reg_0(4),
      DOUTADOUT(8) => int_gamma_lut_1_q1(8),
      DOUTADOUT(7) => mem_reg_0(3),
      DOUTADOUT(6 downto 4) => int_gamma_lut_1_q1(6 downto 4),
      DOUTADOUT(3 downto 2) => mem_reg_0(2 downto 1),
      DOUTADOUT(1) => int_gamma_lut_1_q1(1),
      DOUTADOUT(0) => mem_reg_0(0),
      DOUTBDOUT(31) => mem_reg_n_106,
      DOUTBDOUT(30) => mem_reg_n_107,
      DOUTBDOUT(29) => mem_reg_n_108,
      DOUTBDOUT(28) => mem_reg_n_109,
      DOUTBDOUT(27) => mem_reg_n_110,
      DOUTBDOUT(26) => mem_reg_n_111,
      DOUTBDOUT(25 downto 16) => DOUTBDOUT(19 downto 10),
      DOUTBDOUT(15) => mem_reg_n_122,
      DOUTBDOUT(14) => mem_reg_n_123,
      DOUTBDOUT(13) => mem_reg_n_124,
      DOUTBDOUT(12) => mem_reg_n_125,
      DOUTBDOUT(11) => mem_reg_n_126,
      DOUTBDOUT(10) => mem_reg_n_127,
      DOUTBDOUT(9 downto 0) => DOUTBDOUT(9 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_mem_reg_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_mem_reg_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => int_gamma_lut_1_ce1,
      ENBWREN => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => int_gamma_lut_1_be1(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_2,
      I1 => mem_reg_3,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(3),
      O => int_gamma_lut_1_be1(3)
    );
mem_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_2,
      I1 => mem_reg_3,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(2),
      O => int_gamma_lut_1_be1(2)
    );
mem_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_2,
      I1 => mem_reg_3,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(1),
      O => int_gamma_lut_1_be1(1)
    );
mem_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_2,
      I1 => mem_reg_3,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WSTRB(0),
      O => int_gamma_lut_1_be1(0)
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => mem_reg_2,
      I1 => s_axi_CTRL_WVALID,
      I2 => s_axi_CTRL_ARVALID,
      I3 => mem_reg_1,
      O => int_gamma_lut_1_ce1
    );
\mem_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(31),
      O => p_1_in(31)
    );
\mem_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(30),
      O => p_1_in(30)
    );
\mem_reg_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(29),
      O => p_1_in(29)
    );
\mem_reg_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(28),
      O => p_1_in(28)
    );
\mem_reg_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(27),
      O => p_1_in(27)
    );
\mem_reg_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(26),
      O => p_1_in(26)
    );
\mem_reg_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(25),
      O => p_1_in(25)
    );
\mem_reg_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_3,
      I4 => mem_reg_2,
      I5 => s_axi_CTRL_WDATA(24),
      O => p_1_in(24)
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[10]_i_2_n_6\,
      I3 => \rdata_reg[10]\,
      I4 => \rdata_reg[1]_1\,
      O => D(5)
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(10),
      I2 => DOUTADOUT(5),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(5),
      O => \rdata[10]_i_2_n_6\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[11]_i_2_n_6\,
      I3 => \rdata_reg[11]\,
      I4 => \rdata_reg[1]_1\,
      O => D(6)
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(11),
      I2 => DOUTADOUT(6),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(6),
      O => \rdata[11]_i_2_n_6\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[12]_i_2_n_6\,
      I3 => \rdata_reg[12]\,
      I4 => \rdata_reg[1]_1\,
      O => D(7)
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(12),
      I2 => DOUTADOUT(7),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(7),
      O => \rdata[12]_i_2_n_6\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[13]_i_2_n_6\,
      I3 => \rdata_reg[13]\,
      I4 => \rdata_reg[1]_1\,
      O => D(8)
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(13),
      I2 => DOUTADOUT(8),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(8),
      O => \rdata[13]_i_2_n_6\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[14]_i_2_n_6\,
      I3 => \rdata_reg[14]\,
      I4 => \rdata_reg[1]_1\,
      O => D(9)
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(14),
      I2 => DOUTADOUT(9),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(9),
      O => \rdata[14]_i_2_n_6\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[15]_i_2_n_6\,
      I3 => \rdata_reg[15]\,
      I4 => \rdata_reg[1]_1\,
      O => D(10)
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(15),
      I2 => DOUTADOUT(10),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(10),
      O => \rdata[15]_i_2_n_6\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(16),
      I2 => DOUTADOUT(11),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(11),
      O => int_gamma_lut_1_read_reg
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(17),
      I2 => DOUTADOUT(12),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(12),
      O => int_gamma_lut_1_read_reg_0
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(18),
      I2 => DOUTADOUT(13),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(13),
      O => int_gamma_lut_1_read_reg_1
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(19),
      I2 => DOUTADOUT(14),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(14),
      O => int_gamma_lut_1_read_reg_2
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEEEAEEEAEEE"
    )
        port map (
      I0 => \rdata_reg[1]\,
      I1 => \rdata[1]_i_3_n_6\,
      I2 => s_axi_CTRL_ARVALID,
      I3 => mem_reg_1,
      I4 => \rdata_reg[1]_0\,
      I5 => \rdata_reg[1]_1\,
      O => D(0)
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(1),
      I2 => DOUTADOUT(0),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(0),
      O => \rdata[1]_i_3_n_6\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(20),
      I2 => DOUTADOUT(15),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(15),
      O => int_gamma_lut_1_read_reg_3
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(21),
      I2 => DOUTADOUT(16),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(16),
      O => int_gamma_lut_1_read_reg_4
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(22),
      I2 => DOUTADOUT(17),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(17),
      O => int_gamma_lut_1_read_reg_5
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(23),
      I2 => DOUTADOUT(18),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(18),
      O => int_gamma_lut_1_read_reg_6
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(24),
      I2 => DOUTADOUT(19),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(19),
      O => int_gamma_lut_1_read_reg_7
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(25),
      I2 => DOUTADOUT(20),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(20),
      O => int_gamma_lut_1_read_reg_8
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(26),
      I2 => DOUTADOUT(21),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(21),
      O => int_gamma_lut_1_read_reg_9
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(27),
      I2 => DOUTADOUT(22),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(22),
      O => int_gamma_lut_1_read_reg_10
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(28),
      I2 => DOUTADOUT(23),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(23),
      O => int_gamma_lut_1_read_reg_11
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(29),
      I2 => DOUTADOUT(24),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(24),
      O => int_gamma_lut_1_read_reg_12
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(30),
      I2 => DOUTADOUT(25),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(25),
      O => int_gamma_lut_1_read_reg_13
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(31),
      I2 => DOUTADOUT(26),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(26),
      O => int_gamma_lut_1_read_reg_14
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[4]_i_2_n_6\,
      I3 => \rdata_reg[4]\,
      I4 => \rdata_reg[1]_1\,
      O => D(1)
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(4),
      I2 => DOUTADOUT(1),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(1),
      O => \rdata[4]_i_2_n_6\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[5]_i_2_n_6\,
      I3 => \rdata_reg[5]\,
      I4 => \rdata_reg[1]_1\,
      O => D(2)
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(5),
      I2 => DOUTADOUT(2),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(2),
      O => \rdata[5]_i_2_n_6\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[6]_i_2_n_6\,
      I3 => \rdata_reg[6]\,
      I4 => \rdata_reg[1]_1\,
      O => D(3)
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(6),
      I2 => DOUTADOUT(3),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(3),
      O => \rdata[6]_i_2_n_6\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => mem_reg_1,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \rdata[8]_i_2_n_6\,
      I3 => \rdata_reg[8]\,
      I4 => \rdata_reg[1]_1\,
      O => D(4)
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_1_q1(8),
      I2 => DOUTADOUT(4),
      I3 => int_gamma_lut_0_read,
      I4 => \rdata_reg[31]\(4),
      O => \rdata[8]_i_2_n_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_8 is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 19 downto 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ar_hs__0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mem_reg_0 : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    mem_reg_2 : in STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_8 : entity is "design_1_v_gamma_lut_0_0_CTRL_s_axi_ram";
end design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_8;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_8 is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ar_hs__0\ : STD_LOGIC;
  signal int_gamma_lut_2_be1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal int_gamma_lut_2_ce1 : STD_LOGIC;
  signal mem_reg_n_106 : STD_LOGIC;
  signal mem_reg_n_107 : STD_LOGIC;
  signal mem_reg_n_108 : STD_LOGIC;
  signal mem_reg_n_109 : STD_LOGIC;
  signal mem_reg_n_110 : STD_LOGIC;
  signal mem_reg_n_111 : STD_LOGIC;
  signal mem_reg_n_122 : STD_LOGIC;
  signal mem_reg_n_123 : STD_LOGIC;
  signal mem_reg_n_124 : STD_LOGIC;
  signal mem_reg_n_125 : STD_LOGIC;
  signal mem_reg_n_126 : STD_LOGIC;
  signal mem_reg_n_127 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal NLW_mem_reg_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of mem_reg : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "design_1_v_gamma_lut_0_0_v_gamma_lut/CTRL_s_axi_U/int_gamma_lut_2/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 512;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 31;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mem_reg_i_10 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of mem_reg_i_32 : label is "soft_lutpair24";
begin
  ADDRARDADDR(8 downto 0) <= \^addrardaddr\(8 downto 0);
  \ar_hs__0\ <= \^ar_hs__0\;
mem_reg: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14) => '1',
      ADDRARDADDR(13 downto 5) => \^addrardaddr\(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(14) => '1',
      ADDRBWRADDR(13 downto 5) => ADDRBWRADDR(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_mem_reg_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_mem_reg_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_mem_reg_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_mem_reg_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_mem_reg_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_mem_reg_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DINADIN(31 downto 24) => p_1_in(31 downto 24),
      DINADIN(23 downto 0) => s_axi_CTRL_WDATA(23 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => DOUTADOUT(31 downto 0),
      DOUTBDOUT(31) => mem_reg_n_106,
      DOUTBDOUT(30) => mem_reg_n_107,
      DOUTBDOUT(29) => mem_reg_n_108,
      DOUTBDOUT(28) => mem_reg_n_109,
      DOUTBDOUT(27) => mem_reg_n_110,
      DOUTBDOUT(26) => mem_reg_n_111,
      DOUTBDOUT(25 downto 16) => DOUTBDOUT(19 downto 10),
      DOUTBDOUT(15) => mem_reg_n_122,
      DOUTBDOUT(14) => mem_reg_n_123,
      DOUTBDOUT(13) => mem_reg_n_124,
      DOUTBDOUT(12) => mem_reg_n_125,
      DOUTBDOUT(11) => mem_reg_n_126,
      DOUTBDOUT(10) => mem_reg_n_127,
      DOUTBDOUT(9 downto 0) => DOUTBDOUT(9 downto 0),
      DOUTPADOUTP(3 downto 0) => NLW_mem_reg_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_mem_reg_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => int_gamma_lut_2_ce1,
      ENBWREN => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3 downto 0) => int_gamma_lut_2_be1(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(0),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(0),
      O => \^addrardaddr\(0)
    );
\mem_reg_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_1,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WSTRB(3),
      O => int_gamma_lut_2_be1(3)
    );
\mem_reg_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_1,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WSTRB(2),
      O => int_gamma_lut_2_be1(2)
    );
\mem_reg_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_1,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WSTRB(1),
      O => int_gamma_lut_2_be1(1)
    );
\mem_reg_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => mem_reg_1,
      I1 => mem_reg_2,
      I2 => s_axi_CTRL_WVALID,
      I3 => s_axi_CTRL_ARVALID,
      I4 => mem_reg_0,
      I5 => s_axi_CTRL_WSTRB(0),
      O => int_gamma_lut_2_be1(0)
    );
\mem_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_CTRL_WVALID,
      I1 => mem_reg_1,
      I2 => s_axi_CTRL_ARVALID,
      I3 => mem_reg_0,
      O => int_gamma_lut_2_ce1
    );
mem_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(8),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(8),
      O => \^addrardaddr\(8)
    );
\mem_reg_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(31),
      O => p_1_in(31)
    );
mem_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(7),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(7),
      O => \^addrardaddr\(7)
    );
mem_reg_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mem_reg_0,
      I1 => s_axi_CTRL_ARVALID,
      O => \^ar_hs__0\
    );
\mem_reg_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(30),
      O => p_1_in(30)
    );
mem_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(6),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(6),
      O => \^addrardaddr\(6)
    );
\mem_reg_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(29),
      O => p_1_in(29)
    );
mem_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(5),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(5),
      O => \^addrardaddr\(5)
    );
\mem_reg_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(28),
      O => p_1_in(28)
    );
mem_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(4),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(4),
      O => \^addrardaddr\(4)
    );
\mem_reg_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(27),
      O => p_1_in(27)
    );
mem_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(3),
      O => \^addrardaddr\(3)
    );
\mem_reg_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(26),
      O => p_1_in(26)
    );
mem_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(2),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(2),
      O => \^addrardaddr\(2)
    );
\mem_reg_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(25),
      O => p_1_in(25)
    );
mem_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(1),
      I1 => mem_reg_0,
      I2 => s_axi_CTRL_ARVALID,
      I3 => Q(1),
      O => \^addrardaddr\(1)
    );
\mem_reg_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_CTRL_WVALID,
      I3 => mem_reg_2,
      I4 => mem_reg_1,
      I5 => s_axi_CTRL_WDATA(24),
      O => p_1_in(24)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W is
  port (
    \in\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_clk : in STD_LOGIC;
    lut_0_ce0 : in STD_LOGIC;
    ram_reg_bram_0_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DINADIN : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W is
  signal NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_bram_0 : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of ram_reg_bram_0 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_bram_0 : label is 10240;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_bram_0 : label is "design_1_v_gamma_lut_0_0_v_gamma_lut/Gamma_U0/lut_0_U/ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_reg_bram_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_bram_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_bram_0 : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_bram_0 : label is 9;
begin
ram_reg_bram_0: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => ram_reg_bram_0_0(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DINADIN(15 downto 10) => B"000000",
      DINADIN(9 downto 0) => DINADIN(9 downto 0),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 10) => NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED(15 downto 10),
      DOUTADOUT(9 downto 0) => \in\(9 downto 0),
      DOUTBDOUT(15 downto 0) => NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => lut_0_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_3 is
  port (
    \in\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_clk : in STD_LOGIC;
    lut_0_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_bram_0_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_3 : entity is "design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W";
end design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_3;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_3 is
  signal NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_bram_0 : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of ram_reg_bram_0 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_bram_0 : label is 10240;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_bram_0 : label is "design_1_v_gamma_lut_0_0_v_gamma_lut/Gamma_U0/lut_1_U/ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_reg_bram_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_bram_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_bram_0 : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_bram_0 : label is 9;
begin
ram_reg_bram_0: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DINADIN(15 downto 10) => B"000000",
      DINADIN(9 downto 0) => ram_reg_bram_0_0(9 downto 0),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 10) => NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED(15 downto 10),
      DOUTADOUT(9 downto 0) => \in\(9 downto 0),
      DOUTBDOUT(15 downto 0) => NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => lut_0_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_4 is
  port (
    \in\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_clk : in STD_LOGIC;
    lut_0_ce0 : in STD_LOGIC;
    ram_reg_bram_0_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_bram_0_1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_4 : entity is "design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W";
end design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_4;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_4 is
  signal NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_bram_0 : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of ram_reg_bram_0 : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_bram_0 : label is 10240;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_bram_0 : label is "design_1_v_gamma_lut_0_0_v_gamma_lut/Gamma_U0/lut_2_U/ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_reg_bram_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_bram_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_bram_0 : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_bram_0 : label is 9;
begin
ram_reg_bram_0: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => ram_reg_bram_0_0(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DINADIN(15 downto 10) => B"000000",
      DINADIN(9 downto 0) => ram_reg_bram_0_1(9 downto 0),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 10) => NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED(15 downto 10),
      DOUTADOUT(9 downto 0) => \in\(9 downto 0),
      DOUTBDOUT(15 downto 0) => NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => lut_0_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    push : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[15][0]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[15][0]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][0]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][10]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][10]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][10]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][11]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][11]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][11]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][12]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][12]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][12]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][13]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][13]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][13]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][14]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][14]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][14]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][15]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][15]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][15]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][16]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][16]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][16]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][17]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][17]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][17]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][18]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][18]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][18]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][19]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][19]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][19]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][1]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][1]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][1]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][20]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][20]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][20]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][21]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][21]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][21]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][22]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][22]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][22]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][23]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][23]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][23]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][24]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][24]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][24]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][25]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][25]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][25]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][26]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][26]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][26]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][27]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][27]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][27]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][28]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][28]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][28]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][29]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][29]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][29]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][2]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][2]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][2]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][3]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][3]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][3]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][4]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][4]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][4]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][5]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][5]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][5]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][6]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][6]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][6]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][7]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][7]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][7]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][8]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][8]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][8]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][9]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][9]_srl16\ : label is "inst/\imgRgb_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][9]_srl16 ";
begin
\SRL_SIG_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(0),
      Q => \out\(0)
    );
\SRL_SIG_reg[15][10]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(10),
      Q => \out\(10)
    );
\SRL_SIG_reg[15][11]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(11),
      Q => \out\(11)
    );
\SRL_SIG_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(12),
      Q => \out\(12)
    );
\SRL_SIG_reg[15][13]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(13),
      Q => \out\(13)
    );
\SRL_SIG_reg[15][14]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(14),
      Q => \out\(14)
    );
\SRL_SIG_reg[15][15]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(15),
      Q => \out\(15)
    );
\SRL_SIG_reg[15][16]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(16),
      Q => \out\(16)
    );
\SRL_SIG_reg[15][17]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(17),
      Q => \out\(17)
    );
\SRL_SIG_reg[15][18]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(18),
      Q => \out\(18)
    );
\SRL_SIG_reg[15][19]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(19),
      Q => \out\(19)
    );
\SRL_SIG_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(1),
      Q => \out\(1)
    );
\SRL_SIG_reg[15][20]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(20),
      Q => \out\(20)
    );
\SRL_SIG_reg[15][21]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(21),
      Q => \out\(21)
    );
\SRL_SIG_reg[15][22]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(22),
      Q => \out\(22)
    );
\SRL_SIG_reg[15][23]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(23),
      Q => \out\(23)
    );
\SRL_SIG_reg[15][24]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(24),
      Q => \out\(24)
    );
\SRL_SIG_reg[15][25]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(25),
      Q => \out\(25)
    );
\SRL_SIG_reg[15][26]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(26),
      Q => \out\(26)
    );
\SRL_SIG_reg[15][27]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(27),
      Q => \out\(27)
    );
\SRL_SIG_reg[15][28]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(28),
      Q => \out\(28)
    );
\SRL_SIG_reg[15][29]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(29),
      Q => \out\(29)
    );
\SRL_SIG_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(2),
      Q => \out\(2)
    );
\SRL_SIG_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(3),
      Q => \out\(3)
    );
\SRL_SIG_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(4),
      Q => \out\(4)
    );
\SRL_SIG_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(5),
      Q => \out\(5)
    );
\SRL_SIG_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(6),
      Q => \out\(6)
    );
\SRL_SIG_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(7),
      Q => \out\(7)
    );
\SRL_SIG_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(8),
      Q => \out\(8)
    );
\SRL_SIG_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(9),
      Q => \out\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    push : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg_1 : entity is "design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg";
end design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg_1;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg_1 is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[15][0]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[15][0]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][0]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][10]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][10]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][10]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][11]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][11]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][11]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][12]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][12]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][12]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][13]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][13]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][13]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][14]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][14]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][14]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][15]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][15]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][15]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][16]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][16]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][16]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][17]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][17]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][17]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][18]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][18]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][18]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][19]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][19]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][19]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][1]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][1]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][1]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][20]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][20]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][20]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][21]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][21]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][21]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][22]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][22]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][22]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][23]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][23]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][23]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][24]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][24]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][24]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][25]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][25]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][25]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][26]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][26]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][26]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][27]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][27]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][27]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][28]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][28]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][28]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][29]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][29]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][29]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][2]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][2]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][2]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][3]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][3]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][3]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][4]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][4]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][4]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][5]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][5]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][5]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][6]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][6]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][6]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][7]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][7]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][7]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][8]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][8]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][8]_srl16 ";
  attribute srl_bus_name of \SRL_SIG_reg[15][9]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15] ";
  attribute srl_name of \SRL_SIG_reg[15][9]_srl16\ : label is "inst/\imgGamma_U/U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg/SRL_SIG_reg[15][9]_srl16 ";
begin
\SRL_SIG_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(0),
      Q => \out\(0)
    );
\SRL_SIG_reg[15][10]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(10),
      Q => \out\(10)
    );
\SRL_SIG_reg[15][11]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(11),
      Q => \out\(11)
    );
\SRL_SIG_reg[15][12]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(12),
      Q => \out\(12)
    );
\SRL_SIG_reg[15][13]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(13),
      Q => \out\(13)
    );
\SRL_SIG_reg[15][14]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(14),
      Q => \out\(14)
    );
\SRL_SIG_reg[15][15]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(15),
      Q => \out\(15)
    );
\SRL_SIG_reg[15][16]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(16),
      Q => \out\(16)
    );
\SRL_SIG_reg[15][17]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(17),
      Q => \out\(17)
    );
\SRL_SIG_reg[15][18]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(18),
      Q => \out\(18)
    );
\SRL_SIG_reg[15][19]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(19),
      Q => \out\(19)
    );
\SRL_SIG_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(1),
      Q => \out\(1)
    );
\SRL_SIG_reg[15][20]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(20),
      Q => \out\(20)
    );
\SRL_SIG_reg[15][21]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(21),
      Q => \out\(21)
    );
\SRL_SIG_reg[15][22]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(22),
      Q => \out\(22)
    );
\SRL_SIG_reg[15][23]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(23),
      Q => \out\(23)
    );
\SRL_SIG_reg[15][24]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(24),
      Q => \out\(24)
    );
\SRL_SIG_reg[15][25]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(25),
      Q => \out\(25)
    );
\SRL_SIG_reg[15][26]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(26),
      Q => \out\(26)
    );
\SRL_SIG_reg[15][27]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(27),
      Q => \out\(27)
    );
\SRL_SIG_reg[15][28]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(28),
      Q => \out\(28)
    );
\SRL_SIG_reg[15][29]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(29),
      Q => \out\(29)
    );
\SRL_SIG_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(2),
      Q => \out\(2)
    );
\SRL_SIG_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(3),
      Q => \out\(3)
    );
\SRL_SIG_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(4),
      Q => \out\(4)
    );
\SRL_SIG_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(5),
      Q => \out\(5)
    );
\SRL_SIG_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(6),
      Q => \out\(6)
    );
\SRL_SIG_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(7),
      Q => \out\(7)
    );
\SRL_SIG_reg[15][8]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(8),
      Q => \out\(8)
    );
\SRL_SIG_reg[15][9]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => push,
      CLK => ap_clk,
      D => \in\(9),
      Q => \out\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init is
  port (
    \sof_2_reg_133_reg[0]\ : out STD_LOGIC;
    ap_block_pp0_stage0_subdone : out STD_LOGIC;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg : out STD_LOGIC;
    icmp_ln258_fu_153_p2 : out STD_LOGIC;
    ap_done_cache_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sof_reg_86_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_last_fu_165_p2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \sof_2_reg_133_reg[0]_0\ : in STD_LOGIC;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg : in STD_LOGIC;
    sof_reg_86 : in STD_LOGIC;
    \sof_2_reg_133_reg[0]_1\ : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_done_reg1 : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sof_reg_86_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \icmp_ln258_reg_193_reg[0]\ : in STD_LOGIC;
    imgGamma_empty_n : in STD_LOGIC;
    m_axis_video_TREADY_int_regslice : in STD_LOGIC;
    \j_fu_76_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \axi_last_reg_197_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \icmp_ln258_reg_193_reg[0]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init is
  signal \^ap_block_pp0_stage0_subdone\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__1_n_6\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__3_n_6\ : STD_LOGIC;
  signal ap_sig_allocacmp_j_1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \axi_last_reg_197[0]_i_2_n_6\ : STD_LOGIC;
  signal \axi_last_reg_197[0]_i_3_n_6\ : STD_LOGIC;
  signal \axi_last_reg_197[0]_i_4_n_6\ : STD_LOGIC;
  signal \axi_last_reg_197[0]_i_5_n_6\ : STD_LOGIC;
  signal \axi_last_reg_197[0]_i_6_n_6\ : STD_LOGIC;
  signal \^icmp_ln258_fu_153_p2\ : STD_LOGIC;
  signal \icmp_ln258_reg_193[0]_i_3_n_6\ : STD_LOGIC;
  signal \icmp_ln258_reg_193[0]_i_5_n_6\ : STD_LOGIC;
  signal \icmp_ln258_reg_193[0]_i_6_n_6\ : STD_LOGIC;
  signal \icmp_ln258_reg_193[0]_i_7_n_6\ : STD_LOGIC;
  signal \icmp_ln258_reg_193[0]_i_8_n_6\ : STD_LOGIC;
  signal \j_fu_76[10]_i_4_n_6\ : STD_LOGIC;
  signal \j_fu_76[6]_i_2_n_6\ : STD_LOGIC;
  signal \j_fu_76[8]_i_2_n_6\ : STD_LOGIC;
  signal \j_fu_76[9]_i_2_n_6\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter1_reg_i_1 : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__3\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_i_1 : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \icmp_ln258_reg_193[0]_i_4\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \j_fu_76[10]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \j_fu_76[10]_i_2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \j_fu_76[1]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \j_fu_76[2]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \j_fu_76[3]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \j_fu_76[5]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \j_fu_76[6]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \j_fu_76[8]_i_3\ : label is "soft_lutpair118";
begin
  ap_block_pp0_stage0_subdone <= \^ap_block_pp0_stage0_subdone\;
  icmp_ln258_fu_153_p2 <= \^icmp_ln258_fu_153_p2\;
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF888888F88888"
    )
        port map (
      I0 => MultiPixStream2AXIvideo_U0_ap_start,
      I1 => Q(0),
      I2 => ap_done_cache,
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I4 => Q(1),
      I5 => ap_done_reg1,
      O => ap_done_cache_reg_0(0)
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00D0D0D0"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I2 => Q(1),
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => \^ap_block_pp0_stage0_subdone\,
      I5 => \ap_CS_fsm_reg[2]\(0),
      O => ap_done_cache_reg_0(1)
    );
\ap_done_cache_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_subdone\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I3 => ap_done_cache,
      O => \ap_done_cache_i_1__1_n_6\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__1_n_6\,
      Q => ap_done_cache,
      R => SR(0)
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D580"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_subdone\,
      I1 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I2 => \^icmp_ln258_fu_153_p2\,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      O => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg
    );
\ap_loop_init_int_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDD5DDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I3 => \^ap_block_pp0_stage0_subdone\,
      I4 => ap_loop_exit_ready_pp0_iter1_reg,
      O => \ap_loop_init_int_i_1__3_n_6\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__3_n_6\,
      Q => ap_loop_init_int,
      R => '0'
    );
\axi_last_reg_197[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000008A2"
    )
        port map (
      I0 => \axi_last_reg_197[0]_i_2_n_6\,
      I1 => \j_fu_76_reg[10]\(8),
      I2 => ap_loop_init,
      I3 => \axi_last_reg_197_reg[0]\(8),
      I4 => \axi_last_reg_197[0]_i_3_n_6\,
      I5 => \axi_last_reg_197[0]_i_4_n_6\,
      O => axi_last_fu_165_p2
    );
\axi_last_reg_197[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"700700000088708F"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I2 => \j_fu_76_reg[10]\(6),
      I3 => \axi_last_reg_197_reg[0]\(6),
      I4 => \j_fu_76_reg[10]\(7),
      I5 => \axi_last_reg_197_reg[0]\(7),
      O => \axi_last_reg_197[0]_i_2_n_6\
    );
\axi_last_reg_197[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFA6FF66FF66FF6"
    )
        port map (
      I0 => \axi_last_reg_197_reg[0]\(9),
      I1 => \j_fu_76_reg[10]\(9),
      I2 => \axi_last_reg_197_reg[0]\(10),
      I3 => \j_fu_76_reg[10]\(10),
      I4 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I5 => ap_loop_init_int,
      O => \axi_last_reg_197[0]_i_3_n_6\
    );
\axi_last_reg_197[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFBBEFBA"
    )
        port map (
      I0 => \axi_last_reg_197[0]_i_5_n_6\,
      I1 => ap_loop_init,
      I2 => \j_fu_76_reg[10]\(5),
      I3 => \axi_last_reg_197_reg[0]\(5),
      I4 => \j_fu_76_reg[10]\(2),
      I5 => \axi_last_reg_197_reg[0]\(2),
      O => \axi_last_reg_197[0]_i_4_n_6\
    );
\axi_last_reg_197[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFF5B4"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \j_fu_76_reg[10]\(4),
      I2 => \axi_last_reg_197_reg[0]\(4),
      I3 => \j_fu_76_reg[10]\(3),
      I4 => \axi_last_reg_197_reg[0]\(3),
      I5 => \axi_last_reg_197[0]_i_6_n_6\,
      O => \axi_last_reg_197[0]_i_5_n_6\
    );
\axi_last_reg_197[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFA6FF66FF66FF6"
    )
        port map (
      I0 => \axi_last_reg_197_reg[0]\(0),
      I1 => \j_fu_76_reg[10]\(0),
      I2 => \axi_last_reg_197_reg[0]\(1),
      I3 => \j_fu_76_reg[10]\(1),
      I4 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I5 => ap_loop_init_int,
      O => \axi_last_reg_197[0]_i_6_n_6\
    );
grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\(0),
      I1 => \^icmp_ln258_fu_153_p2\,
      I2 => \^ap_block_pp0_stage0_subdone\,
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      O => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg_0
    );
\icmp_ln258_reg_193[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDDDDD"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \icmp_ln258_reg_193_reg[0]\,
      I2 => imgGamma_empty_n,
      I3 => m_axis_video_TREADY_int_regslice,
      I4 => Q(1),
      O => \^ap_block_pp0_stage0_subdone\
    );
\icmp_ln258_reg_193[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000082"
    )
        port map (
      I0 => \icmp_ln258_reg_193[0]_i_3_n_6\,
      I1 => ap_sig_allocacmp_j_1(8),
      I2 => \icmp_ln258_reg_193_reg[0]_0\(8),
      I3 => \icmp_ln258_reg_193[0]_i_5_n_6\,
      I4 => \icmp_ln258_reg_193[0]_i_6_n_6\,
      I5 => \icmp_ln258_reg_193[0]_i_7_n_6\,
      O => \^icmp_ln258_fu_153_p2\
    );
\icmp_ln258_reg_193[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A15000040406A55"
    )
        port map (
      I0 => \icmp_ln258_reg_193_reg[0]_0\(6),
      I1 => ap_loop_init_int,
      I2 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I3 => \j_fu_76_reg[10]\(6),
      I4 => \j_fu_76_reg[10]\(7),
      I5 => \icmp_ln258_reg_193_reg[0]_0\(7),
      O => \icmp_ln258_reg_193[0]_i_3_n_6\
    );
\icmp_ln258_reg_193[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(8),
      I1 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_j_1(8)
    );
\icmp_ln258_reg_193[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(9),
      I1 => \icmp_ln258_reg_193_reg[0]_0\(9),
      I2 => \j_fu_76_reg[10]\(10),
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \icmp_ln258_reg_193_reg[0]_0\(10),
      O => \icmp_ln258_reg_193[0]_i_5_n_6\
    );
\icmp_ln258_reg_193[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(2),
      I1 => \icmp_ln258_reg_193_reg[0]_0\(2),
      I2 => \j_fu_76_reg[10]\(5),
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \icmp_ln258_reg_193_reg[0]_0\(5),
      O => \icmp_ln258_reg_193[0]_i_6_n_6\
    );
\icmp_ln258_reg_193[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDEBBFF9A"
    )
        port map (
      I0 => \icmp_ln258_reg_193_reg[0]_0\(4),
      I1 => ap_loop_init,
      I2 => \j_fu_76_reg[10]\(4),
      I3 => \icmp_ln258_reg_193_reg[0]_0\(3),
      I4 => \j_fu_76_reg[10]\(3),
      I5 => \icmp_ln258_reg_193[0]_i_8_n_6\,
      O => \icmp_ln258_reg_193[0]_i_7_n_6\
    );
\icmp_ln258_reg_193[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(0),
      I1 => \icmp_ln258_reg_193_reg[0]_0\(0),
      I2 => \j_fu_76_reg[10]\(1),
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \icmp_ln258_reg_193_reg[0]_0\(1),
      O => \icmp_ln258_reg_193[0]_i_8_n_6\
    );
\j_fu_76[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \j_fu_76_reg[10]\(0),
      O => D(0)
    );
\j_fu_76[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \^ap_block_pp0_stage0_subdone\,
      I2 => \^icmp_ln258_fu_153_p2\,
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
\j_fu_76[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_subdone\,
      I1 => \^icmp_ln258_fu_153_p2\,
      I2 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      O => E(0)
    );
\j_fu_76[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(8),
      I1 => \j_fu_76[10]_i_4_n_6\,
      I2 => \j_fu_76_reg[10]\(9),
      I3 => ap_loop_init_int,
      I4 => \j_fu_76_reg[10]\(10),
      O => D(10)
    );
\j_fu_76[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(7),
      I1 => ap_loop_init_int,
      I2 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I3 => \j_fu_76_reg[10]\(5),
      I4 => \j_fu_76[8]_i_2_n_6\,
      I5 => \j_fu_76_reg[10]\(6),
      O => \j_fu_76[10]_i_4_n_6\
    );
\j_fu_76[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(0),
      I1 => ap_loop_init_int,
      I2 => \j_fu_76_reg[10]\(1),
      O => D(1)
    );
\j_fu_76[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(0),
      I1 => \j_fu_76_reg[10]\(1),
      I2 => ap_loop_init_int,
      I3 => \j_fu_76_reg[10]\(2),
      O => D(2)
    );
\j_fu_76[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(1),
      I1 => \j_fu_76_reg[10]\(0),
      I2 => \j_fu_76_reg[10]\(2),
      I3 => ap_loop_init_int,
      I4 => \j_fu_76_reg[10]\(3),
      O => D(3)
    );
\j_fu_76[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(2),
      I1 => \j_fu_76_reg[10]\(0),
      I2 => \j_fu_76_reg[10]\(1),
      I3 => \j_fu_76_reg[10]\(3),
      I4 => ap_loop_init,
      I5 => \j_fu_76_reg[10]\(4),
      O => D(4)
    );
\j_fu_76[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \j_fu_76[6]_i_2_n_6\,
      I1 => \j_fu_76_reg[10]\(4),
      I2 => ap_loop_init_int,
      I3 => \j_fu_76_reg[10]\(5),
      O => D(5)
    );
\j_fu_76[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(4),
      I1 => \j_fu_76[6]_i_2_n_6\,
      I2 => \j_fu_76_reg[10]\(5),
      I3 => ap_loop_init_int,
      I4 => \j_fu_76_reg[10]\(6),
      O => D(6)
    );
\j_fu_76[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(3),
      I1 => \j_fu_76_reg[10]\(1),
      I2 => ap_loop_init_int,
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I4 => \j_fu_76_reg[10]\(0),
      I5 => \j_fu_76_reg[10]\(2),
      O => \j_fu_76[6]_i_2_n_6\
    );
\j_fu_76[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(5),
      I1 => \j_fu_76[8]_i_2_n_6\,
      I2 => \j_fu_76_reg[10]\(6),
      I3 => ap_loop_init_int,
      I4 => \j_fu_76_reg[10]\(7),
      O => D(7)
    );
\j_fu_76[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(6),
      I1 => \j_fu_76[8]_i_2_n_6\,
      I2 => \j_fu_76_reg[10]\(5),
      I3 => \j_fu_76_reg[10]\(7),
      I4 => ap_loop_init,
      I5 => \j_fu_76_reg[10]\(8),
      O => D(8)
    );
\j_fu_76[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(4),
      I1 => \j_fu_76_reg[10]\(2),
      I2 => \j_fu_76_reg[10]\(0),
      I3 => ap_loop_init,
      I4 => \j_fu_76_reg[10]\(1),
      I5 => \j_fu_76_reg[10]\(3),
      O => \j_fu_76[8]_i_2_n_6\
    );
\j_fu_76[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      O => ap_loop_init
    );
\j_fu_76[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(7),
      I1 => \j_fu_76[9]_i_2_n_6\,
      I2 => \j_fu_76_reg[10]\(8),
      I3 => ap_loop_init_int,
      I4 => \j_fu_76_reg[10]\(9),
      O => D(9)
    );
\j_fu_76[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \j_fu_76_reg[10]\(6),
      I1 => ap_loop_init_int,
      I2 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I3 => \j_fu_76_reg[10]\(4),
      I4 => \j_fu_76[6]_i_2_n_6\,
      I5 => \j_fu_76_reg[10]\(5),
      O => \j_fu_76[9]_i_2_n_6\
    );
\sof_2_reg_133[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAA2AAA"
    )
        port map (
      I0 => \sof_2_reg_133_reg[0]_0\,
      I1 => \^ap_block_pp0_stage0_subdone\,
      I2 => ap_loop_init_int,
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I4 => sof_reg_86,
      I5 => \sof_2_reg_133_reg[0]_1\,
      O => \sof_2_reg_133_reg[0]\
    );
\sof_reg_86[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEE00EE0EEE0EEE"
    )
        port map (
      I0 => sof_reg_86,
      I1 => \sof_reg_86_reg[0]_0\(0),
      I2 => ap_done_reg1,
      I3 => Q(1),
      I4 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I5 => ap_done_cache,
      O => \sof_reg_86_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_13 is
  port (
    \eol_reg_155_reg[0]\ : out STD_LOGIC;
    \ap_block_pp0_stage0_11001__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_in : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln191_fu_196_p2 : out STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_data_2_fu_74_reg[29]\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \axi_last_2_reg_122_reg[0]\ : out STD_LOGIC;
    \j_fu_80_reg[8]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_ready : out STD_LOGIC;
    \sof_reg_167_reg[0]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \eol_reg_155_reg[0]_0\ : in STD_LOGIC;
    \eol_reg_155_reg[0]_1\ : in STD_LOGIC;
    \sof_reg_167_reg[0]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg : in STD_LOGIC;
    ap_done_reg1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    imgRgb_full_n : in STD_LOGIC;
    sof_reg_167 : in STD_LOGIC;
    icmp_ln191_reg_279 : in STD_LOGIC;
    \axi_data_fu_84_reg[29]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \axi_data_fu_84_reg[29]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    axi_last_2_reg_122 : in STD_LOGIC;
    s_axis_video_TLAST_int_regslice : in STD_LOGIC;
    \icmp_ln191_reg_279_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \j_fu_80_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sof_reg_167_reg[0]_1\ : in STD_LOGIC;
    \icmp_ln188_fu_282_p2__20\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_13 : entity is "design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init";
end design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_13;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_13 is
  signal \^ap_block_pp0_stage0_11001__0\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_6 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_6\ : STD_LOGIC;
  signal ap_sig_allocacmp_j_3 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^icmp_ln191_fu_196_p2\ : STD_LOGIC;
  signal \icmp_ln191_reg_279[0]_i_3_n_6\ : STD_LOGIC;
  signal \icmp_ln191_reg_279[0]_i_5_n_6\ : STD_LOGIC;
  signal \icmp_ln191_reg_279[0]_i_6_n_6\ : STD_LOGIC;
  signal \icmp_ln191_reg_279[0]_i_7_n_6\ : STD_LOGIC;
  signal \icmp_ln191_reg_279[0]_i_8_n_6\ : STD_LOGIC;
  signal \j_fu_80[10]_i_4_n_6\ : STD_LOGIC;
  signal \j_fu_80[6]_i_2_n_6\ : STD_LOGIC;
  signal \j_fu_80[8]_i_2_n_6\ : STD_LOGIC;
  signal \j_fu_80[9]_i_2_n_6\ : STD_LOGIC;
  signal \^p_13_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ap_done_cache_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_loop_exit_ready_pp0_iter1_reg_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_data_fu_84[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_data_fu_84[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_data_fu_84[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icmp_ln191_reg_279[0]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j_fu_80[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \j_fu_80[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j_fu_80[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j_fu_80[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \j_fu_80[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \j_fu_80[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \j_fu_80[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \j_fu_80[8]_i_3\ : label is "soft_lutpair5";
begin
  \ap_block_pp0_stage0_11001__0\ <= \^ap_block_pp0_stage0_11001__0\;
  icmp_ln191_fu_196_p2 <= \^icmp_ln191_fu_196_p2\;
  p_13_in <= \^p_13_in\;
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FF4F4444"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\,
      I1 => Q(0),
      I2 => ap_done_cache,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => Q(1),
      I5 => ap_done_reg1,
      O => D(0)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F04040"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_11001__0\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => Q(1),
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => ap_done_cache,
      O => D(1)
    );
\ap_CS_fsm[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808FF0808"
    )
        port map (
      I0 => \^p_13_in\,
      I1 => ap_enable_reg_pp0_iter1_0,
      I2 => ap_done_cache_reg_0(0),
      I3 => imgRgb_full_n,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => \sof_reg_167_reg[0]_0\,
      O => \^ap_block_pp0_stage0_11001__0\
    );
ap_done_cache_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_11001__0\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => ap_done_cache,
      O => ap_done_cache_i_1_n_6
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_6,
      Q => ap_done_cache,
      R => SR(0)
    );
\ap_loop_exit_ready_pp0_iter1_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I1 => \^icmp_ln191_fu_196_p2\,
      O => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_ready
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFDD5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \^ap_block_pp0_stage0_11001__0\,
      I4 => ap_loop_exit_ready_pp0_iter1_reg,
      O => \ap_loop_init_int_i_1__0_n_6\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_6\,
      Q => ap_loop_init_int,
      R => '0'
    );
\axi_data_fu_84[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(0),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(0),
      O => \axi_data_2_fu_74_reg[29]\(0)
    );
\axi_data_fu_84[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(10),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(10),
      O => \axi_data_2_fu_74_reg[29]\(10)
    );
\axi_data_fu_84[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(11),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(11),
      O => \axi_data_2_fu_74_reg[29]\(11)
    );
\axi_data_fu_84[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(12),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(12),
      O => \axi_data_2_fu_74_reg[29]\(12)
    );
\axi_data_fu_84[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(13),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(13),
      O => \axi_data_2_fu_74_reg[29]\(13)
    );
\axi_data_fu_84[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(14),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(14),
      O => \axi_data_2_fu_74_reg[29]\(14)
    );
\axi_data_fu_84[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(15),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(15),
      O => \axi_data_2_fu_74_reg[29]\(15)
    );
\axi_data_fu_84[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(16),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(16),
      O => \axi_data_2_fu_74_reg[29]\(16)
    );
\axi_data_fu_84[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(17),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(17),
      O => \axi_data_2_fu_74_reg[29]\(17)
    );
\axi_data_fu_84[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(18),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(18),
      O => \axi_data_2_fu_74_reg[29]\(18)
    );
\axi_data_fu_84[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(19),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(19),
      O => \axi_data_2_fu_74_reg[29]\(19)
    );
\axi_data_fu_84[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(1),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(1),
      O => \axi_data_2_fu_74_reg[29]\(1)
    );
\axi_data_fu_84[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(20),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(20),
      O => \axi_data_2_fu_74_reg[29]\(20)
    );
\axi_data_fu_84[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(21),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(21),
      O => \axi_data_2_fu_74_reg[29]\(21)
    );
\axi_data_fu_84[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(22),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(22),
      O => \axi_data_2_fu_74_reg[29]\(22)
    );
\axi_data_fu_84[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(23),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(23),
      O => \axi_data_2_fu_74_reg[29]\(23)
    );
\axi_data_fu_84[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(24),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(24),
      O => \axi_data_2_fu_74_reg[29]\(24)
    );
\axi_data_fu_84[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(25),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(25),
      O => \axi_data_2_fu_74_reg[29]\(25)
    );
\axi_data_fu_84[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(26),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(26),
      O => \axi_data_2_fu_74_reg[29]\(26)
    );
\axi_data_fu_84[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(27),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(27),
      O => \axi_data_2_fu_74_reg[29]\(27)
    );
\axi_data_fu_84[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(28),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(28),
      O => \axi_data_2_fu_74_reg[29]\(28)
    );
\axi_data_fu_84[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \^p_13_in\,
      I1 => ap_enable_reg_pp0_iter1_0,
      I2 => \^ap_block_pp0_stage0_11001__0\,
      I3 => ap_loop_init_int,
      I4 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      O => E(0)
    );
\axi_data_fu_84[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(29),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(29),
      O => \axi_data_2_fu_74_reg[29]\(29)
    );
\axi_data_fu_84[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000040404F7"
    )
        port map (
      I0 => \eol_reg_155_reg[0]_1\,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => \sof_reg_167_reg[0]_0\,
      I3 => \eol_reg_155_reg[0]_0\,
      I4 => sof_reg_167,
      I5 => icmp_ln191_reg_279,
      O => \^p_13_in\
    );
\axi_data_fu_84[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(2),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(2),
      O => \axi_data_2_fu_74_reg[29]\(2)
    );
\axi_data_fu_84[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(3),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(3),
      O => \axi_data_2_fu_74_reg[29]\(3)
    );
\axi_data_fu_84[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(4),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(4),
      O => \axi_data_2_fu_74_reg[29]\(4)
    );
\axi_data_fu_84[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(5),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(5),
      O => \axi_data_2_fu_74_reg[29]\(5)
    );
\axi_data_fu_84[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(6),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(6),
      O => \axi_data_2_fu_74_reg[29]\(6)
    );
\axi_data_fu_84[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(7),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(7),
      O => \axi_data_2_fu_74_reg[29]\(7)
    );
\axi_data_fu_84[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(8),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(8),
      O => \axi_data_2_fu_74_reg[29]\(8)
    );
\axi_data_fu_84[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \axi_data_fu_84_reg[29]\(9),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \axi_data_fu_84_reg[29]_0\(9),
      O => \axi_data_2_fu_74_reg[29]\(9)
    );
\axi_last_fu_88[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => axi_last_2_reg_122,
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => s_axis_video_TLAST_int_regslice,
      O => \axi_last_2_reg_122_reg[0]\
    );
\eol_reg_155[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0C00AAAAACAA"
    )
        port map (
      I0 => \eol_reg_155_reg[0]_0\,
      I1 => \eol_reg_155_reg[0]_1\,
      I2 => \sof_reg_167_reg[0]_0\,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => \^ap_block_pp0_stage0_11001__0\,
      I5 => ap_loop_init,
      O => \eol_reg_155_reg[0]\
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF222F22"
    )
        port map (
      I0 => Q(0),
      I1 => \icmp_ln188_fu_282_p2__20\,
      I2 => \^icmp_ln191_fu_196_p2\,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => \^ap_block_pp0_stage0_11001__0\,
      O => \ap_CS_fsm_reg[4]\
    );
\icmp_ln191_reg_279[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000082"
    )
        port map (
      I0 => \icmp_ln191_reg_279[0]_i_3_n_6\,
      I1 => ap_sig_allocacmp_j_3(8),
      I2 => \icmp_ln191_reg_279_reg[0]\(8),
      I3 => \icmp_ln191_reg_279[0]_i_5_n_6\,
      I4 => \icmp_ln191_reg_279[0]_i_6_n_6\,
      I5 => \icmp_ln191_reg_279[0]_i_7_n_6\,
      O => \^icmp_ln191_fu_196_p2\
    );
\icmp_ln191_reg_279[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A15000040406A55"
    )
        port map (
      I0 => \icmp_ln191_reg_279_reg[0]\(6),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \j_fu_80_reg[10]\(6),
      I4 => \j_fu_80_reg[10]\(7),
      I5 => \icmp_ln191_reg_279_reg[0]\(7),
      O => \icmp_ln191_reg_279[0]_i_3_n_6\
    );
\icmp_ln191_reg_279[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(8),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_j_3(8)
    );
\icmp_ln191_reg_279[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(9),
      I1 => \icmp_ln191_reg_279_reg[0]\(9),
      I2 => \j_fu_80_reg[10]\(10),
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \icmp_ln191_reg_279_reg[0]\(10),
      O => \icmp_ln191_reg_279[0]_i_5_n_6\
    );
\icmp_ln191_reg_279[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(2),
      I1 => \icmp_ln191_reg_279_reg[0]\(2),
      I2 => \j_fu_80_reg[10]\(5),
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \icmp_ln191_reg_279_reg[0]\(5),
      O => \icmp_ln191_reg_279[0]_i_6_n_6\
    );
\icmp_ln191_reg_279[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDEBBFF9A"
    )
        port map (
      I0 => \icmp_ln191_reg_279_reg[0]\(4),
      I1 => ap_loop_init,
      I2 => \j_fu_80_reg[10]\(4),
      I3 => \icmp_ln191_reg_279_reg[0]\(3),
      I4 => \j_fu_80_reg[10]\(3),
      I5 => \icmp_ln191_reg_279[0]_i_8_n_6\,
      O => \icmp_ln191_reg_279[0]_i_7_n_6\
    );
\icmp_ln191_reg_279[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(0),
      I1 => \icmp_ln191_reg_279_reg[0]\(0),
      I2 => \j_fu_80_reg[10]\(1),
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \icmp_ln191_reg_279_reg[0]\(1),
      O => \icmp_ln191_reg_279[0]_i_8_n_6\
    );
\j_fu_80[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \j_fu_80_reg[10]\(0),
      O => \j_fu_80_reg[8]\(0)
    );
\j_fu_80[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^ap_block_pp0_stage0_11001__0\,
      I1 => ap_loop_init_int,
      I2 => \^icmp_ln191_fu_196_p2\,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
\j_fu_80[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^icmp_ln191_fu_196_p2\,
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I2 => \^ap_block_pp0_stage0_11001__0\,
      O => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg(0)
    );
\j_fu_80[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(8),
      I1 => \j_fu_80[10]_i_4_n_6\,
      I2 => \j_fu_80_reg[10]\(9),
      I3 => ap_loop_init_int,
      I4 => \j_fu_80_reg[10]\(10),
      O => \j_fu_80_reg[8]\(10)
    );
\j_fu_80[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(7),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \j_fu_80_reg[10]\(5),
      I4 => \j_fu_80[8]_i_2_n_6\,
      I5 => \j_fu_80_reg[10]\(6),
      O => \j_fu_80[10]_i_4_n_6\
    );
\j_fu_80[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(0),
      I1 => ap_loop_init_int,
      I2 => \j_fu_80_reg[10]\(1),
      O => \j_fu_80_reg[8]\(1)
    );
\j_fu_80[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(0),
      I1 => \j_fu_80_reg[10]\(1),
      I2 => ap_loop_init_int,
      I3 => \j_fu_80_reg[10]\(2),
      O => \j_fu_80_reg[8]\(2)
    );
\j_fu_80[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(1),
      I1 => \j_fu_80_reg[10]\(0),
      I2 => \j_fu_80_reg[10]\(2),
      I3 => ap_loop_init_int,
      I4 => \j_fu_80_reg[10]\(3),
      O => \j_fu_80_reg[8]\(3)
    );
\j_fu_80[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(2),
      I1 => \j_fu_80_reg[10]\(0),
      I2 => \j_fu_80_reg[10]\(1),
      I3 => \j_fu_80_reg[10]\(3),
      I4 => ap_loop_init,
      I5 => \j_fu_80_reg[10]\(4),
      O => \j_fu_80_reg[8]\(4)
    );
\j_fu_80[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \j_fu_80[6]_i_2_n_6\,
      I1 => \j_fu_80_reg[10]\(4),
      I2 => ap_loop_init_int,
      I3 => \j_fu_80_reg[10]\(5),
      O => \j_fu_80_reg[8]\(5)
    );
\j_fu_80[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(4),
      I1 => \j_fu_80[6]_i_2_n_6\,
      I2 => \j_fu_80_reg[10]\(5),
      I3 => ap_loop_init_int,
      I4 => \j_fu_80_reg[10]\(6),
      O => \j_fu_80_reg[8]\(6)
    );
\j_fu_80[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(3),
      I1 => \j_fu_80_reg[10]\(1),
      I2 => ap_loop_init_int,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I4 => \j_fu_80_reg[10]\(0),
      I5 => \j_fu_80_reg[10]\(2),
      O => \j_fu_80[6]_i_2_n_6\
    );
\j_fu_80[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(5),
      I1 => \j_fu_80[8]_i_2_n_6\,
      I2 => \j_fu_80_reg[10]\(6),
      I3 => ap_loop_init_int,
      I4 => \j_fu_80_reg[10]\(7),
      O => \j_fu_80_reg[8]\(7)
    );
\j_fu_80[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(6),
      I1 => \j_fu_80[8]_i_2_n_6\,
      I2 => \j_fu_80_reg[10]\(5),
      I3 => \j_fu_80_reg[10]\(7),
      I4 => ap_loop_init,
      I5 => \j_fu_80_reg[10]\(8),
      O => \j_fu_80_reg[8]\(8)
    );
\j_fu_80[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(4),
      I1 => \j_fu_80_reg[10]\(2),
      I2 => \j_fu_80_reg[10]\(0),
      I3 => ap_loop_init,
      I4 => \j_fu_80_reg[10]\(1),
      I5 => \j_fu_80_reg[10]\(3),
      O => \j_fu_80[8]_i_2_n_6\
    );
\j_fu_80[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      O => ap_loop_init
    );
\j_fu_80[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(7),
      I1 => \j_fu_80[9]_i_2_n_6\,
      I2 => \j_fu_80_reg[10]\(8),
      I3 => ap_loop_init_int,
      I4 => \j_fu_80_reg[10]\(9),
      O => \j_fu_80_reg[8]\(9)
    );
\j_fu_80[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \j_fu_80_reg[10]\(6),
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I3 => \j_fu_80_reg[10]\(4),
      I4 => \j_fu_80[6]_i_2_n_6\,
      I5 => \j_fu_80_reg[10]\(5),
      O => \j_fu_80[9]_i_2_n_6\
    );
\sof_reg_167[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAE2AAE2AA00AAE2"
    )
        port map (
      I0 => sof_reg_167,
      I1 => ap_loop_init,
      I2 => \sof_reg_167_reg[0]_1\,
      I3 => \^ap_block_pp0_stage0_11001__0\,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => \sof_reg_167_reg[0]_0\,
      O => \sof_reg_167_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_14 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg : out STD_LOGIC;
    \sof_reg_83_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \axi_data_2_fu_741__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg : in STD_LOGIC;
    sof_reg_83 : in STD_LOGIC;
    \d_read_reg_22_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_14 : entity is "design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init";
end design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_14;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_14 is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__2_n_6\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_6 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_loop_init_int_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sof_reg_83[0]_i_1\ : label is "soft_lutpair4";
begin
\ap_CS_fsm[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD0DF0000"
    )
        port map (
      I0 => sof_reg_83,
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I3 => ap_done_cache,
      I4 => \d_read_reg_22_reg[0]\(1),
      I5 => \d_read_reg_22_reg[0]\(0),
      O => D(0)
    );
\ap_CS_fsm[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75002000"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => sof_reg_83,
      I3 => \d_read_reg_22_reg[0]\(1),
      I4 => ap_done_cache,
      O => D(1)
    );
\ap_done_cache_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => sof_reg_83,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I3 => ap_done_cache,
      O => \ap_done_cache_i_1__2_n_6\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__2_n_6\,
      Q => ap_done_cache,
      R => SR(0)
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D75FDF5"
    )
        port map (
      I0 => ap_rst_n,
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => sof_reg_83,
      I4 => Q(0),
      O => ap_loop_init_int_i_1_n_6
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_6,
      Q => ap_loop_init_int,
      R => '0'
    );
\axi_data_2_fu_74[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAEAAAAAAAAA"
    )
        port map (
      I0 => \axi_data_2_fu_741__0\,
      I1 => Q(0),
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => sof_reg_83,
      I5 => \d_read_reg_22_reg[0]\(1),
      O => E(0)
    );
\d_read_reg_22[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFF00FF20FF00"
    )
        port map (
      I0 => sof_reg_83,
      I1 => ap_loop_init_int,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I3 => \d_read_reg_22_reg[0]\(2),
      I4 => \d_read_reg_22_reg[0]\(1),
      I5 => ap_done_cache,
      O => \sof_reg_83_reg[0]\(0)
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => sof_reg_83,
      I3 => \d_read_reg_22_reg[0]\(0),
      O => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg
    );
\sof_reg_83[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => Q(0),
      I1 => sof_reg_83,
      I2 => ap_loop_init_int,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      O => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_15 is
  port (
    ap_loop_init_int_reg_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_data_2_fu_741__0\ : out STD_LOGIC;
    \data_p1_reg[0]\ : out STD_LOGIC;
    \select_ln216_reg_476_reg[0]\ : out STD_LOGIC;
    \eol_reg_155_reg[0]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out : in STD_LOGIC;
    eol_1_reg_114 : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg : in STD_LOGIC;
    ap_loop_init_int_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST_int_regslice : in STD_LOGIC;
    select_ln216_reg_476 : in STD_LOGIC;
    axi_last_4_loc_fu_82 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_15 : entity is "design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init";
end design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_15;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_15 is
  signal ap_block_state1_pp0_stage0_iter0 : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__3_n_6\ : STD_LOGIC;
  signal \ap_loop_init_int_i_1__1_n_6\ : STD_LOGIC;
  signal \^ap_loop_init_int_reg_0\ : STD_LOGIC;
  signal \ap_phi_mux_eol_1_phi_fu_117_p4__0\ : STD_LOGIC;
  signal axi_last_4_loc_fu_820 : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_t_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ack_in_t_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_last_4_loc_fu_82[0]_i_2\ : label is "soft_lutpair1";
begin
  ap_loop_init_int_reg_0 <= \^ap_loop_init_int_reg_0\;
ack_in_t_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222200F00000"
    )
        port map (
      I0 => ap_block_state1_pp0_stage0_iter0,
      I1 => \ap_phi_mux_eol_1_phi_fu_117_p4__0\,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(3),
      O => \ap_CS_fsm_reg[5]\
    );
ack_in_t_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B800"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      I1 => \^ap_loop_init_int_reg_0\,
      I2 => eol_1_reg_114,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I4 => ap_loop_init_int_reg_1(0),
      O => ap_block_state1_pp0_stage0_iter0
    );
ack_in_t_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      I1 => \^ap_loop_init_int_reg_0\,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I3 => eol_1_reg_114,
      O => \ap_phi_mux_eol_1_phi_fu_117_p4__0\
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00D0"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => Q(3),
      I3 => p_3_in,
      I4 => Q(2),
      O => D(0)
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => p_3_in,
      I1 => Q(3),
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I3 => ap_done_cache,
      O => D(1)
    );
\ap_CS_fsm[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I1 => eol_1_reg_114,
      I2 => \^ap_loop_init_int_reg_0\,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      O => p_3_in
    );
\ap_done_cache_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      I1 => \^ap_loop_init_int_reg_0\,
      I2 => eol_1_reg_114,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I4 => ap_done_cache,
      O => \ap_done_cache_i_1__3_n_6\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__3_n_6\,
      Q => ap_done_cache,
      R => SR(0)
    );
\ap_loop_init_int_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5F5F5FFF5F5F5"
    )
        port map (
      I0 => ap_rst_n,
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      I2 => \^ap_loop_init_int_reg_0\,
      I3 => eol_1_reg_114,
      I4 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I5 => ap_loop_init_int_reg_1(0),
      O => \ap_loop_init_int_i_1__1_n_6\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__1_n_6\,
      Q => \^ap_loop_init_int_reg_0\,
      R => '0'
    );
\axi_data_2_fu_74[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00080088000800"
    )
        port map (
      I0 => Q(3),
      I1 => ap_loop_init_int_reg_1(0),
      I2 => eol_1_reg_114,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I4 => \^ap_loop_init_int_reg_0\,
      I5 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      O => \axi_data_2_fu_741__0\
    );
\axi_last_4_loc_fu_82[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FFFFBF800000"
    )
        port map (
      I0 => select_ln216_reg_476,
      I1 => \^ap_loop_init_int_reg_0\,
      I2 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I3 => eol_1_reg_114,
      I4 => axi_last_4_loc_fu_820,
      I5 => axi_last_4_loc_fu_82,
      O => \select_ln216_reg_476_reg[0]\
    );
\axi_last_4_loc_fu_82[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      I2 => \^ap_loop_init_int_reg_0\,
      I3 => eol_1_reg_114,
      I4 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      O => axi_last_4_loc_fu_820
    );
\axi_last_4_reg_103[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F8F0B8F0F8F0"
    )
        port map (
      I0 => s_axis_video_TLAST_int_regslice,
      I1 => ap_loop_init_int_reg_1(0),
      I2 => eol_1_reg_114,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I4 => \^ap_loop_init_int_reg_0\,
      I5 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      O => \data_p1_reg[0]\
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4700"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      I1 => \^ap_loop_init_int_reg_0\,
      I2 => eol_1_reg_114,
      I3 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I4 => Q(2),
      O => \eol_reg_155_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_5 is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    full_n_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \x_fu_60_reg[8]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg : in STD_LOGIC;
    Gamma_U0_ap_ready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_done_reg1 : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    imgRgb_empty_n : in STD_LOGIC;
    \x_fu_60_reg[0]\ : in STD_LOGIC;
    imgGamma_full_n : in STD_LOGIC;
    \x_fu_60[10]_i_4_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \x_fu_60_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \icmp_ln325_fu_134_p2__20\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_5 : entity is "design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init";
end design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_5;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_5 is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_6\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__2_n_6\ : STD_LOGIC;
  signal ap_sig_allocacmp_x_1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^full_n_reg\ : STD_LOGIC;
  signal \icmp_ln327_fu_130_p2__20\ : STD_LOGIC;
  signal \x_fu_60[10]_i_10_n_6\ : STD_LOGIC;
  signal \x_fu_60[10]_i_11_n_6\ : STD_LOGIC;
  signal \x_fu_60[10]_i_5_n_6\ : STD_LOGIC;
  signal \x_fu_60[10]_i_6_n_6\ : STD_LOGIC;
  signal \x_fu_60[10]_i_8_n_6\ : STD_LOGIC;
  signal \x_fu_60[10]_i_9_n_6\ : STD_LOGIC;
  signal \x_fu_60[6]_i_2_n_6\ : STD_LOGIC;
  signal \x_fu_60[8]_i_2_n_6\ : STD_LOGIC;
  signal \x_fu_60[9]_i_2_n_6\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_loop_exit_ready_pp0_iter1_reg_i_1__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \x_fu_60[10]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \x_fu_60[10]_i_7\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \x_fu_60[1]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \x_fu_60[2]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \x_fu_60[3]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \x_fu_60[5]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \x_fu_60[6]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \x_fu_60[8]_i_3\ : label is "soft_lutpair105";
begin
  full_n_reg <= \^full_n_reg\;
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF888888F88888"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]_0\(0),
      I1 => Q(0),
      I2 => ap_done_cache,
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => Q(2),
      I5 => ap_done_reg1,
      O => D(0)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FF4F4444"
    )
        port map (
      I0 => Gamma_U0_ap_ready,
      I1 => Q(1),
      I2 => ap_done_cache,
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => Q(2),
      I5 => ap_done_reg1,
      O => D(1)
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^full_n_reg\,
      I1 => ap_loop_exit_ready_pp0_iter1_reg,
      I2 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I3 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_6\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_6\,
      Q => ap_done_cache,
      R => SR(0)
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880A00"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter1_reg,
      I2 => \icmp_ln327_fu_130_p2__20\,
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => \^full_n_reg\,
      O => ap_rst_n_0
    );
\ap_loop_exit_ready_pp0_iter1_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I1 => \icmp_ln327_fu_130_p2__20\,
      I2 => \^full_n_reg\,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      O => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg_reg
    );
\ap_loop_init_int_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFDD5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I3 => \^full_n_reg\,
      I4 => ap_loop_exit_ready_pp0_iter1_reg,
      O => \ap_loop_init_int_i_1__2_n_6\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__2_n_6\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF222F22"
    )
        port map (
      I0 => Q(1),
      I1 => \icmp_ln325_fu_134_p2__20\,
      I2 => \icmp_ln327_fu_130_p2__20\,
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => \^full_n_reg\,
      O => \ap_CS_fsm_reg[2]\
    );
ram_reg_bram_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => imgGamma_full_n,
      I1 => \x_fu_60_reg[0]\,
      I2 => imgRgb_empty_n,
      I3 => ap_enable_reg_pp0_iter1_reg,
      O => \^full_n_reg\
    );
\x_fu_60[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \x_fu_60_reg[10]\(0),
      O => \x_fu_60_reg[8]\(0)
    );
\x_fu_60[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^full_n_reg\,
      I1 => ap_loop_init_int,
      I2 => \icmp_ln327_fu_130_p2__20\,
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
\x_fu_60[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDEBBFF9A"
    )
        port map (
      I0 => \x_fu_60[10]_i_4_0\(4),
      I1 => ap_loop_init,
      I2 => \x_fu_60_reg[10]\(4),
      I3 => \x_fu_60[10]_i_4_0\(3),
      I4 => \x_fu_60_reg[10]\(3),
      I5 => \x_fu_60[10]_i_11_n_6\,
      O => \x_fu_60[10]_i_10_n_6\
    );
\x_fu_60[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(0),
      I1 => \x_fu_60[10]_i_4_0\(0),
      I2 => \x_fu_60_reg[10]\(1),
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \x_fu_60[10]_i_4_0\(1),
      O => \x_fu_60[10]_i_11_n_6\
    );
\x_fu_60[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404440400004404"
    )
        port map (
      I0 => \icmp_ln327_fu_130_p2__20\,
      I1 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I2 => ap_enable_reg_pp0_iter1_reg,
      I3 => imgRgb_empty_n,
      I4 => \x_fu_60_reg[0]\,
      I5 => imgGamma_full_n,
      O => E(0)
    );
\x_fu_60[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(8),
      I1 => \x_fu_60[10]_i_5_n_6\,
      I2 => \x_fu_60_reg[10]\(9),
      I3 => ap_loop_init_int,
      I4 => \x_fu_60_reg[10]\(10),
      O => \x_fu_60_reg[8]\(10)
    );
\x_fu_60[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000082"
    )
        port map (
      I0 => \x_fu_60[10]_i_6_n_6\,
      I1 => ap_sig_allocacmp_x_1(8),
      I2 => \x_fu_60[10]_i_4_0\(8),
      I3 => \x_fu_60[10]_i_8_n_6\,
      I4 => \x_fu_60[10]_i_9_n_6\,
      I5 => \x_fu_60[10]_i_10_n_6\,
      O => \icmp_ln327_fu_130_p2__20\
    );
\x_fu_60[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(7),
      I1 => ap_loop_init_int,
      I2 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I3 => \x_fu_60_reg[10]\(5),
      I4 => \x_fu_60[8]_i_2_n_6\,
      I5 => \x_fu_60_reg[10]\(6),
      O => \x_fu_60[10]_i_5_n_6\
    );
\x_fu_60[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A15000040406A55"
    )
        port map (
      I0 => \x_fu_60[10]_i_4_0\(6),
      I1 => ap_loop_init_int,
      I2 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I3 => \x_fu_60_reg[10]\(6),
      I4 => \x_fu_60_reg[10]\(7),
      I5 => \x_fu_60[10]_i_4_0\(7),
      O => \x_fu_60[10]_i_6_n_6\
    );
\x_fu_60[10]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(8),
      I1 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_x_1(8)
    );
\x_fu_60[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(9),
      I1 => \x_fu_60[10]_i_4_0\(9),
      I2 => \x_fu_60_reg[10]\(10),
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \x_fu_60[10]_i_4_0\(10),
      O => \x_fu_60[10]_i_8_n_6\
    );
\x_fu_60[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6F6F6FCCF6F6F6"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(2),
      I1 => \x_fu_60[10]_i_4_0\(2),
      I2 => \x_fu_60_reg[10]\(5),
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \x_fu_60[10]_i_4_0\(5),
      O => \x_fu_60[10]_i_9_n_6\
    );
\x_fu_60[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(0),
      I1 => ap_loop_init_int,
      I2 => \x_fu_60_reg[10]\(1),
      O => \x_fu_60_reg[8]\(1)
    );
\x_fu_60[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(0),
      I1 => \x_fu_60_reg[10]\(1),
      I2 => ap_loop_init_int,
      I3 => \x_fu_60_reg[10]\(2),
      O => \x_fu_60_reg[8]\(2)
    );
\x_fu_60[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(1),
      I1 => \x_fu_60_reg[10]\(0),
      I2 => \x_fu_60_reg[10]\(2),
      I3 => ap_loop_init_int,
      I4 => \x_fu_60_reg[10]\(3),
      O => \x_fu_60_reg[8]\(3)
    );
\x_fu_60[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(2),
      I1 => \x_fu_60_reg[10]\(0),
      I2 => \x_fu_60_reg[10]\(1),
      I3 => \x_fu_60_reg[10]\(3),
      I4 => ap_loop_init,
      I5 => \x_fu_60_reg[10]\(4),
      O => \x_fu_60_reg[8]\(4)
    );
\x_fu_60[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \x_fu_60[6]_i_2_n_6\,
      I1 => \x_fu_60_reg[10]\(4),
      I2 => ap_loop_init_int,
      I3 => \x_fu_60_reg[10]\(5),
      O => \x_fu_60_reg[8]\(5)
    );
\x_fu_60[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(4),
      I1 => \x_fu_60[6]_i_2_n_6\,
      I2 => \x_fu_60_reg[10]\(5),
      I3 => ap_loop_init_int,
      I4 => \x_fu_60_reg[10]\(6),
      O => \x_fu_60_reg[8]\(6)
    );
\x_fu_60[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(3),
      I1 => \x_fu_60_reg[10]\(1),
      I2 => ap_loop_init_int,
      I3 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I4 => \x_fu_60_reg[10]\(0),
      I5 => \x_fu_60_reg[10]\(2),
      O => \x_fu_60[6]_i_2_n_6\
    );
\x_fu_60[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(5),
      I1 => \x_fu_60[8]_i_2_n_6\,
      I2 => \x_fu_60_reg[10]\(6),
      I3 => ap_loop_init_int,
      I4 => \x_fu_60_reg[10]\(7),
      O => \x_fu_60_reg[8]\(7)
    );
\x_fu_60[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(6),
      I1 => \x_fu_60[8]_i_2_n_6\,
      I2 => \x_fu_60_reg[10]\(5),
      I3 => \x_fu_60_reg[10]\(7),
      I4 => ap_loop_init,
      I5 => \x_fu_60_reg[10]\(8),
      O => \x_fu_60_reg[8]\(8)
    );
\x_fu_60[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(4),
      I1 => \x_fu_60_reg[10]\(2),
      I2 => \x_fu_60_reg[10]\(0),
      I3 => ap_loop_init,
      I4 => \x_fu_60_reg[10]\(1),
      I5 => \x_fu_60_reg[10]\(3),
      O => \x_fu_60[8]_i_2_n_6\
    );
\x_fu_60[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      O => ap_loop_init
    );
\x_fu_60[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(7),
      I1 => \x_fu_60[9]_i_2_n_6\,
      I2 => \x_fu_60_reg[10]\(8),
      I3 => ap_loop_init_int,
      I4 => \x_fu_60_reg[10]\(9),
      O => \x_fu_60_reg[8]\(9)
    );
\x_fu_60[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \x_fu_60_reg[10]\(6),
      I1 => ap_loop_init_int,
      I2 => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      I3 => \x_fu_60_reg[10]\(4),
      I4 => \x_fu_60[6]_i_2_n_6\,
      I5 => \x_fu_60_reg[10]\(5),
      O => \x_fu_60[9]_i_2_n_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \i_fu_50_reg[8]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Gamma_U0_gamma_lut_2_address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_fu_50_reg[0]\ : out STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_1 : out STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_NS_fsm13_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_fu_50_reg[10]\ : in STD_LOGIC;
    \i_fu_50_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \int_gamma_lut_0_shift0_reg[0]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_6 : entity is "design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init";
end design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_6;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_6 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__4_n_6\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__4_n_6\ : STD_LOGIC;
  signal \i_fu_50[10]_i_5_n_6\ : STD_LOGIC;
  signal \i_fu_50[10]_i_6_n_6\ : STD_LOGIC;
  signal \i_fu_50[10]_i_7_n_6\ : STD_LOGIC;
  signal \i_fu_50[6]_i_2_n_6\ : STD_LOGIC;
  signal \i_fu_50[8]_i_2_n_6\ : STD_LOGIC;
  signal \i_fu_50[9]_i_2_n_6\ : STD_LOGIC;
  signal icmp_ln315_fu_140_p2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__4\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter1_i_1__2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__4\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \empty_55_reg_162[10]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \i_fu_50[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \i_fu_50[10]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \i_fu_50[10]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \i_fu_50[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \i_fu_50[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \i_fu_50[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \i_fu_50[5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \i_fu_50[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \i_fu_50[8]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_gamma_lut_0_shift0[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mem_reg_i_11__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mem_reg_i_12__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mem_reg_i_13__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of mem_reg_i_14 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of mem_reg_i_15 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of mem_reg_i_16 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of mem_reg_i_17 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of mem_reg_i_18 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of mem_reg_i_19 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \zext_ln315_reg_189[0]_i_1\ : label is "soft_lutpair81";
begin
  E(0) <= \^e\(0);
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ap_NS_fsm13_out,
      I1 => Q(0),
      I2 => \^e\(0),
      I3 => Q(1),
      O => D(0)
    );
\ap_done_cache_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \i_fu_50_reg[10]\,
      I1 => icmp_ln315_fu_140_p2,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__4_n_6\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__4_n_6\,
      Q => ap_done_cache,
      R => SR(0)
    );
\ap_enable_reg_pp0_iter1_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i_fu_50_reg[10]\,
      I1 => icmp_ln315_fu_140_p2,
      I2 => ap_rst_n,
      O => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_1
    );
\ap_loop_init_int_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF8F"
    )
        port map (
      I0 => \i_fu_50_reg[10]\,
      I1 => icmp_ln315_fu_140_p2,
      I2 => ap_rst_n,
      I3 => ap_loop_init_int,
      O => \ap_loop_init_int_i_1__4_n_6\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__4_n_6\,
      Q => ap_loop_init_int,
      R => '0'
    );
\empty_55_reg_162[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => ap_done_cache,
      I1 => Q(1),
      I2 => \i_fu_50_reg[10]\,
      I3 => icmp_ln315_fu_140_p2,
      O => \^e\(0)
    );
grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \i_fu_50_reg[10]\,
      I1 => icmp_ln315_fu_140_p2,
      I2 => ap_NS_fsm13_out,
      O => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_2
    );
\i_fu_50[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_50_reg[10]_0\(0),
      O => \i_fu_50_reg[8]\(0)
    );
\i_fu_50[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \i_fu_50_reg[10]\,
      I1 => icmp_ln315_fu_140_p2,
      I2 => ap_loop_init_int,
      O => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_0(0)
    );
\i_fu_50[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_fu_50_reg[10]\,
      I1 => icmp_ln315_fu_140_p2,
      O => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg(0)
    );
\i_fu_50[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(8),
      I1 => \i_fu_50[10]_i_5_n_6\,
      I2 => \i_fu_50_reg[10]_0\(9),
      I3 => ap_loop_init_int,
      I4 => \i_fu_50_reg[10]_0\(10),
      O => \i_fu_50_reg[8]\(10)
    );
\i_fu_50[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800880088008808"
    )
        port map (
      I0 => \i_fu_50[10]_i_6_n_6\,
      I1 => \i_fu_50[10]_i_7_n_6\,
      I2 => \i_fu_50_reg[10]_0\(2),
      I3 => ap_loop_init,
      I4 => \i_fu_50_reg[10]_0\(1),
      I5 => \i_fu_50_reg[10]_0\(4),
      O => icmp_ln315_fu_140_p2
    );
\i_fu_50[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(7),
      I1 => ap_loop_init_int,
      I2 => \i_fu_50_reg[10]\,
      I3 => \i_fu_50_reg[10]_0\(5),
      I4 => \i_fu_50[8]_i_2_n_6\,
      I5 => \i_fu_50_reg[10]_0\(6),
      O => \i_fu_50[10]_i_5_n_6\
    );
\i_fu_50[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FF010101"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(8),
      I1 => \i_fu_50_reg[10]_0\(5),
      I2 => \i_fu_50_reg[10]_0\(6),
      I3 => \i_fu_50_reg[10]\,
      I4 => ap_loop_init_int,
      I5 => \i_fu_50_reg[10]_0\(3),
      O => \i_fu_50[10]_i_6_n_6\
    );
\i_fu_50[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100000000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(0),
      I1 => \i_fu_50_reg[10]_0\(9),
      I2 => \i_fu_50_reg[10]_0\(7),
      I3 => \i_fu_50_reg[10]\,
      I4 => ap_loop_init_int,
      I5 => \i_fu_50_reg[10]_0\(10),
      O => \i_fu_50[10]_i_7_n_6\
    );
\i_fu_50[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(0),
      I1 => ap_loop_init_int,
      I2 => \i_fu_50_reg[10]_0\(1),
      O => \i_fu_50_reg[8]\(1)
    );
\i_fu_50[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(0),
      I1 => \i_fu_50_reg[10]_0\(1),
      I2 => ap_loop_init_int,
      I3 => \i_fu_50_reg[10]_0\(2),
      O => \i_fu_50_reg[8]\(2)
    );
\i_fu_50[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(1),
      I1 => \i_fu_50_reg[10]_0\(0),
      I2 => \i_fu_50_reg[10]_0\(2),
      I3 => ap_loop_init_int,
      I4 => \i_fu_50_reg[10]_0\(3),
      O => \i_fu_50_reg[8]\(3)
    );
\i_fu_50[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(2),
      I1 => \i_fu_50_reg[10]_0\(0),
      I2 => \i_fu_50_reg[10]_0\(1),
      I3 => \i_fu_50_reg[10]_0\(3),
      I4 => ap_loop_init,
      I5 => \i_fu_50_reg[10]_0\(4),
      O => \i_fu_50_reg[8]\(4)
    );
\i_fu_50[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i_fu_50[6]_i_2_n_6\,
      I1 => \i_fu_50_reg[10]_0\(4),
      I2 => ap_loop_init_int,
      I3 => \i_fu_50_reg[10]_0\(5),
      O => \i_fu_50_reg[8]\(5)
    );
\i_fu_50[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(4),
      I1 => \i_fu_50[6]_i_2_n_6\,
      I2 => \i_fu_50_reg[10]_0\(5),
      I3 => ap_loop_init_int,
      I4 => \i_fu_50_reg[10]_0\(6),
      O => \i_fu_50_reg[8]\(6)
    );
\i_fu_50[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(3),
      I1 => \i_fu_50_reg[10]_0\(1),
      I2 => ap_loop_init_int,
      I3 => \i_fu_50_reg[10]\,
      I4 => \i_fu_50_reg[10]_0\(0),
      I5 => \i_fu_50_reg[10]_0\(2),
      O => \i_fu_50[6]_i_2_n_6\
    );
\i_fu_50[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(5),
      I1 => \i_fu_50[8]_i_2_n_6\,
      I2 => \i_fu_50_reg[10]_0\(6),
      I3 => ap_loop_init_int,
      I4 => \i_fu_50_reg[10]_0\(7),
      O => \i_fu_50_reg[8]\(7)
    );
\i_fu_50[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(6),
      I1 => \i_fu_50[8]_i_2_n_6\,
      I2 => \i_fu_50_reg[10]_0\(5),
      I3 => \i_fu_50_reg[10]_0\(7),
      I4 => ap_loop_init,
      I5 => \i_fu_50_reg[10]_0\(8),
      O => \i_fu_50_reg[8]\(8)
    );
\i_fu_50[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(4),
      I1 => \i_fu_50_reg[10]_0\(2),
      I2 => \i_fu_50_reg[10]_0\(0),
      I3 => ap_loop_init,
      I4 => \i_fu_50_reg[10]_0\(1),
      I5 => \i_fu_50_reg[10]_0\(3),
      O => \i_fu_50[8]_i_2_n_6\
    );
\i_fu_50[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_50_reg[10]\,
      O => ap_loop_init
    );
\i_fu_50[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(7),
      I1 => \i_fu_50[9]_i_2_n_6\,
      I2 => \i_fu_50_reg[10]_0\(8),
      I3 => ap_loop_init_int,
      I4 => \i_fu_50_reg[10]_0\(9),
      O => \i_fu_50_reg[8]\(9)
    );
\i_fu_50[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(6),
      I1 => ap_loop_init_int,
      I2 => \i_fu_50_reg[10]\,
      I3 => \i_fu_50_reg[10]_0\(4),
      I4 => \i_fu_50[6]_i_2_n_6\,
      I5 => \i_fu_50_reg[10]_0\(5),
      O => \i_fu_50[9]_i_2_n_6\
    );
\int_gamma_lut_0_shift0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(0),
      I1 => ap_loop_init_int,
      I2 => \i_fu_50_reg[10]\,
      I3 => \int_gamma_lut_0_shift0_reg[0]\,
      O => \i_fu_50_reg[0]\
    );
\mem_reg_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(9),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(8)
    );
\mem_reg_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(8),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(7)
    );
\mem_reg_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(7),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(6)
    );
mem_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(6),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(5)
    );
mem_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(5),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(4)
    );
mem_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(4),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(3)
    );
mem_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(3),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(2)
    );
mem_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(2),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(1)
    );
mem_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(1),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => ADDRBWRADDR(0)
    );
\zext_ln315_reg_189[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_50_reg[10]_0\(0),
      I1 => \i_fu_50_reg[10]\,
      I2 => ap_loop_init_int,
      O => Gamma_U0_gamma_lut_2_address0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_reg_unsigned_short_s is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_read_reg_22_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_clk : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_reg_unsigned_short_s;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_reg_unsigned_short_s is
begin
\d_read_reg_22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(0),
      Q => Q(0),
      R => '0'
    );
\d_read_reg_22_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(10),
      Q => Q(10),
      R => '0'
    );
\d_read_reg_22_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(1),
      Q => Q(1),
      R => '0'
    );
\d_read_reg_22_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(2),
      Q => Q(2),
      R => '0'
    );
\d_read_reg_22_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(3),
      Q => Q(3),
      R => '0'
    );
\d_read_reg_22_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(4),
      Q => Q(4),
      R => '0'
    );
\d_read_reg_22_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(5),
      Q => Q(5),
      R => '0'
    );
\d_read_reg_22_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(6),
      Q => Q(6),
      R => '0'
    );
\d_read_reg_22_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(7),
      Q => Q(7),
      R => '0'
    );
\d_read_reg_22_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(8),
      Q => Q(8),
      R => '0'
    );
\d_read_reg_22_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_reg_unsigned_short_s_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    xor_ln216_fu_273_p2 : out STD_LOGIC;
    cmp10252_i_fu_267_p2 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_read_reg_22_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_reg_unsigned_short_s_9 : entity is "design_1_v_gamma_lut_0_0_reg_unsigned_short_s";
end design_1_v_gamma_lut_0_0_reg_unsigned_short_s_9;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_reg_unsigned_short_s_9 is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \xor_ln216_reg_454[0]_i_2_n_6\ : STD_LOGIC;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\cmp10252_i_reg_449[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \xor_ln216_reg_454[0]_i_2_n_6\,
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(10),
      I5 => \^q\(9),
      O => cmp10252_i_fu_267_p2
    );
\d_read_reg_22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\d_read_reg_22_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(10),
      Q => \^q\(10),
      R => '0'
    );
\d_read_reg_22_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\d_read_reg_22_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\d_read_reg_22_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\d_read_reg_22_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(4),
      Q => \^q\(4),
      R => '0'
    );
\d_read_reg_22_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(5),
      Q => \^q\(5),
      R => '0'
    );
\d_read_reg_22_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(6),
      Q => \^q\(6),
      R => '0'
    );
\d_read_reg_22_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(7),
      Q => \^q\(7),
      R => '0'
    );
\d_read_reg_22_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(8),
      Q => \^q\(8),
      R => '0'
    );
\d_read_reg_22_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \d_read_reg_22_reg[10]_0\(9),
      Q => \^q\(9),
      R => '0'
    );
\xor_ln216_reg_454[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \^q\(8),
      I5 => \xor_ln216_reg_454[0]_i_2_n_6\,
      O => xor_ln216_fu_273_p2
    );
\xor_ln216_reg_454[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \xor_ln216_reg_454[0]_i_2_n_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_regslice_both is
  port (
    m_axis_video_TREADY_int_regslice : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    int_isr8_out : out STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_ready : out STD_LOGIC;
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 29 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \icmp_ln256_fu_146_p2__20\ : in STD_LOGIC;
    \int_isr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \m_axis_video_TDATA_reg1__0\ : in STD_LOGIC;
    \data_p1_reg[29]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p2_reg[29]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
end design_1_v_gamma_lut_0_0_regslice_both;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_regslice_both is
  signal \ack_in_t_i_1__2_n_6\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \^m_axis_video_tready_int_regslice\ : STD_LOGIC;
  signal \^m_axis_video_tvalid\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_6\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair140";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_3\ : label is "soft_lutpair141";
begin
  m_axis_video_TREADY_int_regslice <= \^m_axis_video_tready_int_regslice\;
  m_axis_video_TVALID <= \^m_axis_video_tvalid\;
\FSM_sequential_state[0]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5FD"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFC000"
    )
        port map (
      I0 => m_axis_video_TREADY,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => \^m_axis_video_tready_int_regslice\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2FFFAAA"
    )
        port map (
      I0 => \^m_axis_video_tready_int_regslice\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => m_axis_video_TREADY,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__2_n_6\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_6\,
      Q => \^m_axis_video_tready_int_regslice\,
      R => SR(0)
    );
\ap_CS_fsm[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F4F44444F4F4"
    )
        port map (
      I0 => MultiPixStream2AXIvideo_U0_ap_start,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => m_axis_video_TREADY,
      O => D(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F88888F8F88888"
    )
        port map (
      I0 => Q(1),
      I1 => \icmp_ln256_fu_146_p2__20\,
      I2 => Q(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => m_axis_video_TREADY,
      O => D(1)
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(0),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(10),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(11),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(12),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(13),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(14),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(15),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(15),
      O => p_0_in(15)
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[16]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(16),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(16),
      O => p_0_in(16)
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[17]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(17),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(17),
      O => p_0_in(17)
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[18]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(18),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(18),
      O => p_0_in(18)
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[19]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(19),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(19),
      O => p_0_in(19)
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(1),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(1),
      O => p_0_in(1)
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[20]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(20),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(20),
      O => p_0_in(20)
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[21]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(21),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(21),
      O => p_0_in(21)
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[22]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(22),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(22),
      O => p_0_in(22)
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[23]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(23),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(23),
      O => p_0_in(23)
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[24]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(24),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(24),
      O => p_0_in(24)
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[25]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(25),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(25),
      O => p_0_in(25)
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[26]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(26),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(26),
      O => p_0_in(26)
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[27]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(27),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(27),
      O => p_0_in(27)
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[28]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(28),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(28),
      O => p_0_in(28)
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AC0"
    )
        port map (
      I0 => m_axis_video_TREADY,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => load_p1
    );
\data_p1[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[29]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(29),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(29),
      O => p_0_in(29)
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(2),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(2),
      O => p_0_in(2)
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(3),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(4),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(5),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(6),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(7),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(8),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \data_p2_reg_n_6_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \out\(9),
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => \data_p1_reg[29]_0\(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => m_axis_video_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => m_axis_video_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => m_axis_video_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => m_axis_video_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => m_axis_video_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => m_axis_video_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => m_axis_video_TDATA(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(16),
      Q => m_axis_video_TDATA(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(17),
      Q => m_axis_video_TDATA(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(18),
      Q => m_axis_video_TDATA(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(19),
      Q => m_axis_video_TDATA(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => m_axis_video_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(20),
      Q => m_axis_video_TDATA(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(21),
      Q => m_axis_video_TDATA(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(22),
      Q => m_axis_video_TDATA(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(23),
      Q => m_axis_video_TDATA(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(24),
      Q => m_axis_video_TDATA(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(25),
      Q => m_axis_video_TDATA(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(26),
      Q => m_axis_video_TDATA(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(27),
      Q => m_axis_video_TDATA(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(28),
      Q => m_axis_video_TDATA(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(29),
      Q => m_axis_video_TDATA(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => m_axis_video_TDATA(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => m_axis_video_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => m_axis_video_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => m_axis_video_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => m_axis_video_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => m_axis_video_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => m_axis_video_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => m_axis_video_TDATA(9),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(0),
      Q => \data_p2_reg_n_6_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(10),
      Q => \data_p2_reg_n_6_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(11),
      Q => \data_p2_reg_n_6_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(12),
      Q => \data_p2_reg_n_6_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(13),
      Q => \data_p2_reg_n_6_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(14),
      Q => \data_p2_reg_n_6_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(15),
      Q => \data_p2_reg_n_6_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(16),
      Q => \data_p2_reg_n_6_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(17),
      Q => \data_p2_reg_n_6_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(18),
      Q => \data_p2_reg_n_6_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(19),
      Q => \data_p2_reg_n_6_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(1),
      Q => \data_p2_reg_n_6_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(20),
      Q => \data_p2_reg_n_6_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(21),
      Q => \data_p2_reg_n_6_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(22),
      Q => \data_p2_reg_n_6_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(23),
      Q => \data_p2_reg_n_6_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(24),
      Q => \data_p2_reg_n_6_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(25),
      Q => \data_p2_reg_n_6_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(26),
      Q => \data_p2_reg_n_6_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(27),
      Q => \data_p2_reg_n_6_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(28),
      Q => \data_p2_reg_n_6_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(29),
      Q => \data_p2_reg_n_6_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(2),
      Q => \data_p2_reg_n_6_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(3),
      Q => \data_p2_reg_n_6_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(4),
      Q => \data_p2_reg_n_6_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(5),
      Q => \data_p2_reg_n_6_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(6),
      Q => \data_p2_reg_n_6_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(7),
      Q => \data_p2_reg_n_6_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(8),
      Q => \data_p2_reg_n_6_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \data_p2_reg[29]_0\(9),
      Q => \data_p2_reg_n_6_[9]\,
      R => '0'
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3000000"
    )
        port map (
      I0 => m_axis_video_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => Q(2),
      I4 => \int_isr_reg[0]\(0),
      O => int_isr8_out
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A0A"
    )
        port map (
      I0 => Q(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => m_axis_video_TREADY,
      O => MultiPixStream2AXIvideo_U0_ap_ready
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => state(1),
      I1 => \^m_axis_video_tready_int_regslice\,
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => \^m_axis_video_tvalid\,
      O => \state[0]_i_1__0_n_6\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5FD"
    )
        port map (
      I0 => \^m_axis_video_tvalid\,
      I1 => state(1),
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      O => \state[1]_i_1__0_n_6\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_6\,
      Q => \^m_axis_video_tvalid\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_6\,
      Q => state(1),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_regslice_both_10 is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[29]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    \s_axis_video_TREADY_int_regslice__1\ : in STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_regslice_both_10 : entity is "design_1_v_gamma_lut_0_0_regslice_both";
end design_1_v_gamma_lut_0_0_regslice_both_10;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_regslice_both_10 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_in_t_i_1_n_6 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \data_p1[10]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[13]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[14]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[15]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[17]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[18]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[19]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[1]_i_1__1_n_6\ : STD_LOGIC;
  signal \data_p1[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[21]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[22]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[23]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[25]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[26]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[27]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[29]_i_2__0_n_6\ : STD_LOGIC;
  signal \data_p1[2]_i_1__1_n_6\ : STD_LOGIC;
  signal \data_p1[3]_i_1__1_n_6\ : STD_LOGIC;
  signal \data_p1[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[5]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[6]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[9]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_6_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_6\ : STD_LOGIC;
  signal \state[1]_i_1_n_6\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_1 : label is "soft_lutpair15";
begin
  Q(0) <= \^q\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => s_axis_video_TVALID,
      I3 => \s_axis_video_TREADY_int_regslice__1\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^ack_in_t_reg_0\,
      I2 => \s_axis_video_TREADY_int_regslice__1\,
      I3 => s_axis_video_TVALID,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
ack_in_t_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFEEAA"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => \s_axis_video_TREADY_int_regslice__1\,
      I2 => s_axis_video_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => ack_in_t_i_1_n_6
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_1_n_6,
      Q => \^ack_in_t_reg_0\,
      R => SR(0)
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(0),
      O => \data_p1[0]_i_1__1_n_6\
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(10),
      O => \data_p1[10]_i_1__0_n_6\
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(11),
      O => \data_p1[11]_i_1__0_n_6\
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(12),
      O => \data_p1[12]_i_1__0_n_6\
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(13),
      O => \data_p1[13]_i_1__0_n_6\
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(14),
      O => \data_p1[14]_i_1__0_n_6\
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(15),
      O => \data_p1[15]_i_1__0_n_6\
    );
\data_p1[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[16]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(16),
      O => \data_p1[16]_i_1__0_n_6\
    );
\data_p1[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[17]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(17),
      O => \data_p1[17]_i_1__0_n_6\
    );
\data_p1[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[18]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(18),
      O => \data_p1[18]_i_1__0_n_6\
    );
\data_p1[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[19]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(19),
      O => \data_p1[19]_i_1__0_n_6\
    );
\data_p1[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(1),
      O => \data_p1[1]_i_1__1_n_6\
    );
\data_p1[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[20]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(20),
      O => \data_p1[20]_i_1__0_n_6\
    );
\data_p1[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[21]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(21),
      O => \data_p1[21]_i_1__0_n_6\
    );
\data_p1[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[22]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(22),
      O => \data_p1[22]_i_1__0_n_6\
    );
\data_p1[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[23]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(23),
      O => \data_p1[23]_i_1__0_n_6\
    );
\data_p1[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[24]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(24),
      O => \data_p1[24]_i_1__0_n_6\
    );
\data_p1[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[25]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(25),
      O => \data_p1[25]_i_1__0_n_6\
    );
\data_p1[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[26]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(26),
      O => \data_p1[26]_i_1__0_n_6\
    );
\data_p1[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[27]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(27),
      O => \data_p1[27]_i_1__0_n_6\
    );
\data_p1[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[28]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(28),
      O => \data_p1[28]_i_1__0_n_6\
    );
\data_p1[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AC0"
    )
        port map (
      I0 => s_axis_video_TVALID,
      I1 => \s_axis_video_TREADY_int_regslice__1\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[29]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[29]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(29),
      O => \data_p1[29]_i_2__0_n_6\
    );
\data_p1[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(2),
      O => \data_p1[2]_i_1__1_n_6\
    );
\data_p1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(3),
      O => \data_p1[3]_i_1__1_n_6\
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(4),
      O => \data_p1[4]_i_1__0_n_6\
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(5),
      O => \data_p1[5]_i_1__0_n_6\
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(6),
      O => \data_p1[6]_i_1__0_n_6\
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(7),
      O => \data_p1[7]_i_1__0_n_6\
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(8),
      O => \data_p1[8]_i_1__0_n_6\
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_6_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TDATA(9),
      O => \data_p1[9]_i_1__0_n_6\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__1_n_6\,
      Q => \data_p1_reg[29]_0\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[11]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[12]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[13]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[14]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[15]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[16]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[17]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[18]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[19]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__1_n_6\,
      Q => \data_p1_reg[29]_0\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[20]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[21]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[22]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[23]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[24]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[25]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[26]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[27]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[28]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[29]_i_2__0_n_6\,
      Q => \data_p1_reg[29]_0\(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__1_n_6\,
      Q => \data_p1_reg[29]_0\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1__1_n_6\,
      Q => \data_p1_reg[29]_0\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[8]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[9]_i_1__0_n_6\,
      Q => \data_p1_reg[29]_0\(9),
      R => '0'
    );
\data_p2[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(0),
      Q => \data_p2_reg_n_6_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(10),
      Q => \data_p2_reg_n_6_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(11),
      Q => \data_p2_reg_n_6_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(12),
      Q => \data_p2_reg_n_6_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(13),
      Q => \data_p2_reg_n_6_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(14),
      Q => \data_p2_reg_n_6_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(15),
      Q => \data_p2_reg_n_6_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(16),
      Q => \data_p2_reg_n_6_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(17),
      Q => \data_p2_reg_n_6_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(18),
      Q => \data_p2_reg_n_6_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(19),
      Q => \data_p2_reg_n_6_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(1),
      Q => \data_p2_reg_n_6_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(20),
      Q => \data_p2_reg_n_6_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(21),
      Q => \data_p2_reg_n_6_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(22),
      Q => \data_p2_reg_n_6_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(23),
      Q => \data_p2_reg_n_6_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(24),
      Q => \data_p2_reg_n_6_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(25),
      Q => \data_p2_reg_n_6_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(26),
      Q => \data_p2_reg_n_6_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(27),
      Q => \data_p2_reg_n_6_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(28),
      Q => \data_p2_reg_n_6_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(29),
      Q => \data_p2_reg_n_6_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(2),
      Q => \data_p2_reg_n_6_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(3),
      Q => \data_p2_reg_n_6_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(4),
      Q => \data_p2_reg_n_6_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(5),
      Q => \data_p2_reg_n_6_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(6),
      Q => \data_p2_reg_n_6_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(7),
      Q => \data_p2_reg_n_6_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(8),
      Q => \data_p2_reg_n_6_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(9),
      Q => \data_p2_reg_n_6_[9]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => state(1),
      I1 => \^ack_in_t_reg_0\,
      I2 => \s_axis_video_TREADY_int_regslice__1\,
      I3 => s_axis_video_TVALID,
      I4 => \^q\(0),
      O => \state[0]_i_1_n_6\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \^q\(0),
      I1 => state(1),
      I2 => s_axis_video_TVALID,
      I3 => \s_axis_video_TREADY_int_regslice__1\,
      O => \state[1]_i_1_n_6\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_6\,
      Q => \^q\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_6\,
      Q => state(1),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_gamma_lut_0_0_regslice_both__parameterized0\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \m_axis_video_TDATA_reg1__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[0]_0\ : in STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_gamma_lut_0_0_regslice_both__parameterized0\ : entity is "design_1_v_gamma_lut_0_0_regslice_both";
end \design_1_v_gamma_lut_0_0_regslice_both__parameterized0\;

architecture STRUCTURE of \design_1_v_gamma_lut_0_0_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__3_n_6\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[1]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[2]_i_1__0_n_6\ : STD_LOGIC;
  signal \data_p1[3]_i_2_n_6\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__5\ : label is "soft_lutpair142";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair142";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \state__0\(1),
      I1 => m_axis_video_TREADY,
      I2 => \data_p1_reg[0]_0\,
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFF8800"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => \data_p1_reg[0]_0\,
      I2 => m_axis_video_TREADY,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2FFFAAA"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => \data_p1_reg[0]_0\,
      I2 => m_axis_video_TREADY,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__3_n_6\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_6\,
      Q => \^ack_in_t_reg_0\,
      R => SR(0)
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \m_axis_video_TDATA_reg1__0\,
      I4 => Q(0),
      O => \data_p1[0]_i_1__0_n_6\
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \m_axis_video_TDATA_reg1__0\,
      I4 => Q(1),
      O => \data_p1[1]_i_1__0_n_6\
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \m_axis_video_TDATA_reg1__0\,
      I4 => Q(2),
      O => \data_p1[2]_i_1__0_n_6\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AC0"
    )
        port map (
      I0 => m_axis_video_TREADY,
      I1 => \data_p1_reg[0]_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => load_p1
    );
\data_p1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \m_axis_video_TDATA_reg1__0\,
      I4 => Q(3),
      O => \data_p1[3]_i_2_n_6\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__0_n_6\,
      Q => m_axis_video_TKEEP(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__0_n_6\,
      Q => m_axis_video_TKEEP(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__0_n_6\,
      Q => m_axis_video_TKEEP(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_2_n_6\,
      Q => m_axis_video_TKEEP(3),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(3),
      Q => data_p2(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_gamma_lut_0_0_regslice_both__parameterized1\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    data_p2 : out STD_LOGIC;
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \data_p2_reg[0]_0\ : in STD_LOGIC;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST : in STD_LOGIC;
    \m_axis_video_TDATA_reg1__0\ : in STD_LOGIC;
    m_axis_video_TLAST_reg : in STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1\ : entity is "design_1_v_gamma_lut_0_0_regslice_both";
end \design_1_v_gamma_lut_0_0_regslice_both__parameterized1\;

architecture STRUCTURE of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__5_n_6\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__5_n_6\ : STD_LOGIC;
  signal \data_p1[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \^data_p2\ : STD_LOGIC;
  signal \^m_axis_video_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair143";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__5\ : label is "soft_lutpair143";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  data_p2 <= \^data_p2\;
  m_axis_video_TLAST(0) <= \^m_axis_video_tlast\(0);
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5FD"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^ack_in_t_reg_0\,
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2FFFAAA"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => m_axis_video_TREADY,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__5_n_6\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__5_n_6\,
      Q => \^ack_in_t_reg_0\,
      R => SR(0)
    );
\data_p1[0]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBAFFF8088A000"
    )
        port map (
      I0 => \data_p1[0]_i_2__1_n_6\,
      I1 => m_axis_video_TREADY,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \^m_axis_video_tlast\(0),
      O => \data_p1[0]_i_1__5_n_6\
    );
\data_p1[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \^data_p2\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST,
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => m_axis_video_TLAST_reg,
      O => \data_p1[0]_i_2__1_n_6\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__5_n_6\,
      Q => \^m_axis_video_tlast\(0),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2_reg[0]_0\,
      Q => \^data_p2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_11\ is
  port (
    s_axis_video_TLAST_int_regslice : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TVALID : in STD_LOGIC;
    \s_axis_video_TREADY_int_regslice__1\ : in STD_LOGIC;
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_11\ : entity is "design_1_v_gamma_lut_0_0_regslice_both";
end \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_11\;

architecture STRUCTURE of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_11\ is
  signal \ack_in_t_i_1__1_n_6\ : STD_LOGIC;
  signal ack_in_t_reg_n_6 : STD_LOGIC;
  signal \data_p1[0]_i_1__3_n_6\ : STD_LOGIC;
  signal \data_p1[0]_i_2__0_n_6\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axis_video_tlast_int_regslice\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair16";
begin
  s_axis_video_TLAST_int_regslice <= \^s_axis_video_tlast_int_regslice\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => s_axis_video_TVALID,
      I3 => \s_axis_video_TREADY_int_regslice__1\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => ack_in_t_reg_n_6,
      I2 => \s_axis_video_TREADY_int_regslice__1\,
      I3 => s_axis_video_TVALID,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFEEAA"
    )
        port map (
      I0 => ack_in_t_reg_n_6,
      I1 => \s_axis_video_TREADY_int_regslice__1\,
      I2 => s_axis_video_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__1_n_6\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_6\,
      Q => ack_in_t_reg_n_6,
      R => SR(0)
    );
\data_p1[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBAFFF8088A000"
    )
        port map (
      I0 => \data_p1[0]_i_2__0_n_6\,
      I1 => s_axis_video_TVALID,
      I2 => \s_axis_video_TREADY_int_regslice__1\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \^s_axis_video_tlast_int_regslice\,
      O => \data_p1[0]_i_1__3_n_6\
    );
\data_p1[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TLAST(0),
      O => \data_p1[0]_i_2__0_n_6\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__3_n_6\,
      Q => \^s_axis_video_tlast_int_regslice\,
      R => '0'
    );
\data_p2[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axis_video_TLAST(0),
      I1 => s_axis_video_TVALID,
      I2 => ack_in_t_reg_n_6,
      I3 => data_p2,
      O => \data_p2[0]_i_1__1_n_6\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__1_n_6\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_12\ is
  port (
    \data_p1_reg[0]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TVALID : in STD_LOGIC;
    \s_axis_video_TREADY_int_regslice__1\ : in STD_LOGIC;
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_12\ : entity is "design_1_v_gamma_lut_0_0_regslice_both";
end \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_12\;

architecture STRUCTURE of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_12\ is
  signal \ack_in_t_i_1__0_n_6\ : STD_LOGIC;
  signal ack_in_t_reg_n_6 : STD_LOGIC;
  signal \data_p1[0]_i_1__2_n_6\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_6\ : STD_LOGIC;
  signal \^data_p1_reg[0]_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair17";
begin
  \data_p1_reg[0]_0\ <= \^data_p1_reg[0]_0\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => s_axis_video_TVALID,
      I3 => \s_axis_video_TREADY_int_regslice__1\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => ack_in_t_reg_n_6,
      I2 => \s_axis_video_TREADY_int_regslice__1\,
      I3 => s_axis_video_TVALID,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFEEAA"
    )
        port map (
      I0 => ack_in_t_reg_n_6,
      I1 => \s_axis_video_TREADY_int_regslice__1\,
      I2 => s_axis_video_TVALID,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__0_n_6\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_6\,
      Q => ack_in_t_reg_n_6,
      R => SR(0)
    );
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBAFFF8088A000"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_6\,
      I1 => s_axis_video_TVALID,
      I2 => \s_axis_video_TREADY_int_regslice__1\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \^data_p1_reg[0]_0\,
      O => \data_p1[0]_i_1__2_n_6\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => s_axis_video_TUSER(0),
      O => \data_p1[0]_i_2_n_6\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__2_n_6\,
      Q => \^data_p1_reg[0]_0\,
      R => '0'
    );
\data_p2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axis_video_TUSER(0),
      I1 => s_axis_video_TVALID,
      I2 => ack_in_t_reg_n_6,
      I3 => data_p2,
      O => \data_p2[0]_i_1__0_n_6\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__0_n_6\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_2\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    data_p2 : out STD_LOGIC;
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \data_p2_reg[0]_0\ : in STD_LOGIC;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER : in STD_LOGIC;
    \m_axis_video_TDATA_reg1__0\ : in STD_LOGIC;
    m_axis_video_TUSER_reg : in STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_2\ : entity is "design_1_v_gamma_lut_0_0_regslice_both";
end \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_2\;

architecture STRUCTURE of \design_1_v_gamma_lut_0_0_regslice_both__parameterized1_2\ is
  signal \ack_in_t_i_1__4_n_6\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__4_n_6\ : STD_LOGIC;
  signal \data_p1[0]_i_2__2_n_6\ : STD_LOGIC;
  signal \^data_p2\ : STD_LOGIC;
  signal \^m_axis_video_tuser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__4\ : label is "soft_lutpair144";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__4\ : label is "soft_lutpair144";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  data_p2 <= \^data_p2\;
  m_axis_video_TUSER(0) <= \^m_axis_video_tuser\(0);
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5FD"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^ack_in_t_reg_0\,
      I2 => m_axis_video_TREADY,
      I3 => \FSM_sequential_state_reg[0]_0\,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2FFFAAA"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => m_axis_video_TREADY,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__4_n_6\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__4_n_6\,
      Q => \^ack_in_t_reg_0\,
      R => SR(0)
    );
\data_p1[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBAFFF8088A000"
    )
        port map (
      I0 => \data_p1[0]_i_2__2_n_6\,
      I1 => m_axis_video_TREADY,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \^m_axis_video_tuser\(0),
      O => \data_p1[0]_i_1__4_n_6\
    );
\data_p1[0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \^data_p2\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER,
      I4 => \m_axis_video_TDATA_reg1__0\,
      I5 => m_axis_video_TUSER_reg,
      O => \data_p1[0]_i_2__2_n_6\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__4_n_6\,
      Q => \^m_axis_video_tuser\(0),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2_reg[0]_0\,
      Q => \^data_p2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_start_for_MultiPixStream2AXIvideo_U0 is
  port (
    MultiPixStream2AXIvideo_U0_ap_start : out STD_LOGIC;
    start_for_MultiPixStream2AXIvideo_U0_full_n : out STD_LOGIC;
    empty_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \mOutPtr_reg[0]_0\ : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_ready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_v_gamma_lut_0_0_start_for_MultiPixStream2AXIvideo_U0;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_start_for_MultiPixStream2AXIvideo_U0 is
  signal \^multipixstream2axivideo_u0_ap_start\ : STD_LOGIC;
  signal \empty_n_i_1__1_n_6\ : STD_LOGIC;
  signal \full_n_i_1__1_n_6\ : STD_LOGIC;
  signal mOutPtr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mOutPtr[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_6\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2_n_6\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^start_for_multipixstream2axivideo_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2\ : label is "soft_lutpair159";
begin
  MultiPixStream2AXIvideo_U0_ap_start <= \^multipixstream2axivideo_u0_ap_start\;
  start_for_MultiPixStream2AXIvideo_U0_full_n <= \^start_for_multipixstream2axivideo_u0_full_n\;
\empty_n_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FF00"
    )
        port map (
      I0 => p_6_in,
      I1 => mOutPtr(0),
      I2 => mOutPtr(1),
      I3 => p_9_in,
      I4 => \^multipixstream2axivideo_u0_ap_start\,
      O => \empty_n_i_1__1_n_6\
    );
empty_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808888888888"
    )
        port map (
      I0 => MultiPixStream2AXIvideo_U0_ap_ready,
      I1 => \^multipixstream2axivideo_u0_ap_start\,
      I2 => \mOutPtr_reg[0]_0\,
      I3 => ap_start,
      I4 => start_once_reg,
      I5 => \^start_for_multipixstream2axivideo_u0_full_n\,
      O => p_6_in
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__1_n_6\,
      Q => \^multipixstream2axivideo_u0_ap_start\,
      R => SR(0)
    );
\empty_reg_169[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^multipixstream2axivideo_u0_ap_start\,
      I1 => Q(0),
      O => empty_n_reg_0(0)
    );
\full_n_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F700"
    )
        port map (
      I0 => p_9_in,
      I1 => mOutPtr(0),
      I2 => mOutPtr(1),
      I3 => p_6_in,
      I4 => \^start_for_multipixstream2axivideo_u0_full_n\,
      O => \full_n_i_1__1_n_6\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__1_n_6\,
      Q => \^start_for_multipixstream2axivideo_u0_full_n\,
      S => SR(0)
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr(0),
      O => \mOutPtr[0]_i_1__1_n_6\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF002000200020"
    )
        port map (
      I0 => \^start_for_multipixstream2axivideo_u0_full_n\,
      I1 => start_once_reg,
      I2 => ap_start,
      I3 => \mOutPtr_reg[0]_0\,
      I4 => \^multipixstream2axivideo_u0_ap_start\,
      I5 => MultiPixStream2AXIvideo_U0_ap_ready,
      O => \mOutPtr[1]_i_1_n_6\
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => p_9_in,
      I2 => mOutPtr(1),
      O => \mOutPtr[1]_i_2_n_6\
    );
\mOutPtr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004000400"
    )
        port map (
      I0 => \mOutPtr_reg[0]_0\,
      I1 => ap_start,
      I2 => start_once_reg,
      I3 => \^start_for_multipixstream2axivideo_u0_full_n\,
      I4 => MultiPixStream2AXIvideo_U0_ap_ready,
      I5 => \^multipixstream2axivideo_u0_ap_start\,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1_n_6\,
      D => \mOutPtr[0]_i_1__1_n_6\,
      Q => mOutPtr(0),
      R => SR(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1_n_6\,
      D => \mOutPtr[1]_i_2_n_6\,
      Q => mOutPtr(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol is
  port (
    ap_loop_init_int : out STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_data_2_fu_741__0\ : out STD_LOGIC;
    \select_ln216_reg_476_reg[0]\ : out STD_LOGIC;
    \eol_reg_155_reg[0]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg : in STD_LOGIC;
    ap_loop_init_int_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST_int_regslice : in STD_LOGIC;
    select_ln216_reg_476 : in STD_LOGIC;
    axi_last_4_loc_fu_82 : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol is
  signal eol_1_reg_114 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_11 : STD_LOGIC;
begin
\axi_last_4_reg_103_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_11,
      Q => eol_1_reg_114,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_15
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[5]\ => \ap_CS_fsm_reg[5]\,
      ap_clk => ap_clk,
      ap_loop_init_int_reg_0 => ap_loop_init_int,
      ap_loop_init_int_reg_1(0) => ap_loop_init_int_reg(0),
      ap_rst_n => ap_rst_n,
      \axi_data_2_fu_741__0\ => \axi_data_2_fu_741__0\,
      axi_last_4_loc_fu_82 => axi_last_4_loc_fu_82,
      \data_p1_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_11,
      eol_1_reg_114 => eol_1_reg_114,
      \eol_reg_155_reg[0]\ => \eol_reg_155_reg[0]\,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      s_axis_video_TLAST_int_regslice => s_axis_video_TLAST_int_regslice,
      select_ln216_reg_476 => select_ln216_reg_476,
      \select_ln216_reg_476_reg[0]\ => \select_ln216_reg_476_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start is
  port (
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_last_4_loc_fu_82_reg[0]\ : out STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg : out STD_LOGIC;
    \sof_reg_83_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sof_reg_83_reg[0]_1\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axis_video_TLAST_int_regslice : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_data_2_fu_741__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg : in STD_LOGIC;
    \axi_last_2_reg_122_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n : in STD_LOGIC;
    axi_last_4_loc_fu_82 : in STD_LOGIC;
    axi_last_2_reg_122 : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start is
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_out : STD_LOGIC;
  signal \^grp_axivideo2multipixstream_pipeline_loop_wait_for_start_fu_132_s_axis_video_tready\ : STD_LOGIC;
  signal sof_reg_83 : STD_LOGIC;
begin
  grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY <= \^grp_axivideo2multipixstream_pipeline_loop_wait_for_start_fu_132_s_axis_video_tready\;
\axi_last_2_reg_122[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAFACA0"
    )
        port map (
      I0 => axi_last_4_loc_fu_82,
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_out,
      I2 => \axi_last_2_reg_122_reg[0]\(3),
      I3 => \axi_last_2_reg_122_reg[0]\(2),
      I4 => axi_last_2_reg_122,
      O => \axi_last_4_loc_fu_82_reg[0]\
    );
\axi_last_fu_54_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^grp_axivideo2multipixstream_pipeline_loop_wait_for_start_fu_132_s_axis_video_tready\,
      D => s_axis_video_TLAST_int_regslice,
      Q => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_axi_last_out,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_14
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(0) => Q(0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \axi_data_2_fu_741__0\ => \axi_data_2_fu_741__0\,
      \d_read_reg_22_reg[0]\(2 downto 0) => \axi_last_2_reg_122_reg[0]\(2 downto 0),
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY => \^grp_axivideo2multipixstream_pipeline_loop_wait_for_start_fu_132_s_axis_video_tready\,
      sof_reg_83 => sof_reg_83,
      \sof_reg_83_reg[0]\(0) => \sof_reg_83_reg[0]_0\(0)
    );
\sof_reg_83_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^grp_axivideo2multipixstream_pipeline_loop_wait_for_start_fu_132_s_axis_video_tready\,
      D => \sof_reg_83_reg[0]_1\,
      Q => sof_reg_83,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width is
  port (
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axis_video_TREADY_int_regslice__1\ : out STD_LOGIC;
    p_9_in : out STD_LOGIC;
    push : out STD_LOGIC;
    \eol_reg_155_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \axi_data_fu_84_reg[29]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg : in STD_LOGIC;
    \data_p1_reg[0]\ : in STD_LOGIC;
    imgRgb_full_n : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    imgRgb_empty_n : in STD_LOGIC;
    ap_done_cache_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_data_fu_84_reg[29]_1\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \axi_data_fu_84_reg[29]_2\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    axi_last_2_reg_122 : in STD_LOGIC;
    s_axis_video_TLAST_int_regslice : in STD_LOGIC;
    \icmp_ln191_reg_279_reg[0]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sof_reg_167_reg[0]_0\ : in STD_LOGIC;
    cmp10252_i_reg_449 : in STD_LOGIC;
    select_ln216_reg_476 : in STD_LOGIC;
    \icmp_ln188_fu_282_p2__20\ : in STD_LOGIC;
    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg : in STD_LOGIC;
    ap_loop_init_int : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width is
  signal \ap_block_pp0_stage0_11001__0\ : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_0 : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter1_i_1__0_n_6\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_6 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal \ap_phi_mux_sof_phi_fu_171_p41__0\ : STD_LOGIC;
  signal \^axi_data_fu_84_reg[29]_0\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal axi_last_fu_882_out : STD_LOGIC;
  signal \axi_last_fu_88_reg_n_6_[0]\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_45 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_58 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_ready : STD_LOGIC;
  signal \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\ : STD_LOGIC;
  signal icmp_ln191_fu_196_p2 : STD_LOGIC;
  signal icmp_ln191_reg_279 : STD_LOGIC;
  signal \icmp_ln191_reg_279_pp0_iter1_reg_reg_n_6_[0]\ : STD_LOGIC;
  signal j_4_fu_202_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal j_fu_80 : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[0]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[10]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[1]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[2]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[3]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[4]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[5]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[6]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[7]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[8]\ : STD_LOGIC;
  signal \j_fu_80_reg_n_6_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal p_13_in : STD_LOGIC;
  signal sof_reg_167 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[15][0]_srl16_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter1_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_4\ : label is "soft_lutpair13";
begin
  \axi_data_fu_84_reg[29]_0\(29 downto 0) <= \^axi_data_fu_84_reg[29]_0\(29 downto 0);
  grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out <= \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\;
\SRL_SIG_reg[15][0]_srl16_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => imgRgb_full_n,
      I1 => \ap_block_pp0_stage0_11001__0\,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \icmp_ln191_reg_279_pp0_iter1_reg_reg_n_6_[0]\,
      O => push
    );
ack_in_t_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \data_p1_reg[0]\,
      I1 => \ap_block_pp0_stage0_11001__0\,
      I2 => Q(3),
      I3 => Q(1),
      I4 => ap_enable_reg_pp0_iter1_0,
      I5 => p_13_in,
      O => \s_axis_video_TREADY_int_regslice__1\
    );
\ap_CS_fsm[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => \ap_block_pp0_stage0_11001__0\,
      O => ap_done_reg1
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      I1 => \ap_block_pp0_stage0_11001__0\,
      I2 => ap_enable_reg_pp0_iter1_0,
      O => \ap_enable_reg_pp0_iter1_i_1__0_n_6\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_enable_reg_pp0_iter1_i_1__0_n_6\,
      Q => ap_enable_reg_pp0_iter1_0,
      R => SR(0)
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880C00"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_rst_n,
      I2 => icmp_ln191_reg_279,
      I3 => ap_enable_reg_pp0_iter1_0,
      I4 => \ap_block_pp0_stage0_11001__0\,
      O => ap_enable_reg_pp0_iter2_i_1_n_6
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_6,
      Q => ap_enable_reg_pp0_iter2,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_ready,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
\axi_data_2_fu_74[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(0),
      I5 => \^axi_data_fu_84_reg[29]_0\(0),
      O => \ap_CS_fsm_reg[7]\(0)
    );
\axi_data_2_fu_74[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(10),
      I5 => \^axi_data_fu_84_reg[29]_0\(10),
      O => \ap_CS_fsm_reg[7]\(10)
    );
\axi_data_2_fu_74[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(11),
      I5 => \^axi_data_fu_84_reg[29]_0\(11),
      O => \ap_CS_fsm_reg[7]\(11)
    );
\axi_data_2_fu_74[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(12),
      I5 => \^axi_data_fu_84_reg[29]_0\(12),
      O => \ap_CS_fsm_reg[7]\(12)
    );
\axi_data_2_fu_74[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(13),
      I5 => \^axi_data_fu_84_reg[29]_0\(13),
      O => \ap_CS_fsm_reg[7]\(13)
    );
\axi_data_2_fu_74[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(14),
      I5 => \^axi_data_fu_84_reg[29]_0\(14),
      O => \ap_CS_fsm_reg[7]\(14)
    );
\axi_data_2_fu_74[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(15),
      I5 => \^axi_data_fu_84_reg[29]_0\(15),
      O => \ap_CS_fsm_reg[7]\(15)
    );
\axi_data_2_fu_74[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(16),
      I5 => \^axi_data_fu_84_reg[29]_0\(16),
      O => \ap_CS_fsm_reg[7]\(16)
    );
\axi_data_2_fu_74[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(17),
      I5 => \^axi_data_fu_84_reg[29]_0\(17),
      O => \ap_CS_fsm_reg[7]\(17)
    );
\axi_data_2_fu_74[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(18),
      I5 => \^axi_data_fu_84_reg[29]_0\(18),
      O => \ap_CS_fsm_reg[7]\(18)
    );
\axi_data_2_fu_74[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(19),
      I5 => \^axi_data_fu_84_reg[29]_0\(19),
      O => \ap_CS_fsm_reg[7]\(19)
    );
\axi_data_2_fu_74[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(1),
      I5 => \^axi_data_fu_84_reg[29]_0\(1),
      O => \ap_CS_fsm_reg[7]\(1)
    );
\axi_data_2_fu_74[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(20),
      I5 => \^axi_data_fu_84_reg[29]_0\(20),
      O => \ap_CS_fsm_reg[7]\(20)
    );
\axi_data_2_fu_74[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(21),
      I5 => \^axi_data_fu_84_reg[29]_0\(21),
      O => \ap_CS_fsm_reg[7]\(21)
    );
\axi_data_2_fu_74[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(22),
      I5 => \^axi_data_fu_84_reg[29]_0\(22),
      O => \ap_CS_fsm_reg[7]\(22)
    );
\axi_data_2_fu_74[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(23),
      I5 => \^axi_data_fu_84_reg[29]_0\(23),
      O => \ap_CS_fsm_reg[7]\(23)
    );
\axi_data_2_fu_74[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(24),
      I5 => \^axi_data_fu_84_reg[29]_0\(24),
      O => \ap_CS_fsm_reg[7]\(24)
    );
\axi_data_2_fu_74[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(25),
      I5 => \^axi_data_fu_84_reg[29]_0\(25),
      O => \ap_CS_fsm_reg[7]\(25)
    );
\axi_data_2_fu_74[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(26),
      I5 => \^axi_data_fu_84_reg[29]_0\(26),
      O => \ap_CS_fsm_reg[7]\(26)
    );
\axi_data_2_fu_74[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(27),
      I5 => \^axi_data_fu_84_reg[29]_0\(27),
      O => \ap_CS_fsm_reg[7]\(27)
    );
\axi_data_2_fu_74[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(28),
      I5 => \^axi_data_fu_84_reg[29]_0\(28),
      O => \ap_CS_fsm_reg[7]\(28)
    );
\axi_data_2_fu_74[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(29),
      I5 => \^axi_data_fu_84_reg[29]_0\(29),
      O => \ap_CS_fsm_reg[7]\(29)
    );
\axi_data_2_fu_74[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(2),
      I5 => \^axi_data_fu_84_reg[29]_0\(2),
      O => \ap_CS_fsm_reg[7]\(2)
    );
\axi_data_2_fu_74[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(3),
      I5 => \^axi_data_fu_84_reg[29]_0\(3),
      O => \ap_CS_fsm_reg[7]\(3)
    );
\axi_data_2_fu_74[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(4),
      I5 => \^axi_data_fu_84_reg[29]_0\(4),
      O => \ap_CS_fsm_reg[7]\(4)
    );
\axi_data_2_fu_74[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(5),
      I5 => \^axi_data_fu_84_reg[29]_0\(5),
      O => \ap_CS_fsm_reg[7]\(5)
    );
\axi_data_2_fu_74[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(6),
      I5 => \^axi_data_fu_84_reg[29]_0\(6),
      O => \ap_CS_fsm_reg[7]\(6)
    );
\axi_data_2_fu_74[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(7),
      I5 => \^axi_data_fu_84_reg[29]_0\(7),
      O => \ap_CS_fsm_reg[7]\(7)
    );
\axi_data_2_fu_74[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(8),
      I5 => \^axi_data_fu_84_reg[29]_0\(8),
      O => \ap_CS_fsm_reg[7]\(8)
    );
\axi_data_2_fu_74[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80007FFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I4 => \axi_data_fu_84_reg[29]_2\(9),
      I5 => \^axi_data_fu_84_reg[29]_0\(9),
      O => \ap_CS_fsm_reg[7]\(9)
    );
\axi_data_fu_84_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(0),
      Q => \^axi_data_fu_84_reg[29]_0\(0),
      R => '0'
    );
\axi_data_fu_84_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(10),
      Q => \^axi_data_fu_84_reg[29]_0\(10),
      R => '0'
    );
\axi_data_fu_84_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(11),
      Q => \^axi_data_fu_84_reg[29]_0\(11),
      R => '0'
    );
\axi_data_fu_84_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(12),
      Q => \^axi_data_fu_84_reg[29]_0\(12),
      R => '0'
    );
\axi_data_fu_84_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(13),
      Q => \^axi_data_fu_84_reg[29]_0\(13),
      R => '0'
    );
\axi_data_fu_84_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(14),
      Q => \^axi_data_fu_84_reg[29]_0\(14),
      R => '0'
    );
\axi_data_fu_84_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(15),
      Q => \^axi_data_fu_84_reg[29]_0\(15),
      R => '0'
    );
\axi_data_fu_84_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(16),
      Q => \^axi_data_fu_84_reg[29]_0\(16),
      R => '0'
    );
\axi_data_fu_84_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(17),
      Q => \^axi_data_fu_84_reg[29]_0\(17),
      R => '0'
    );
\axi_data_fu_84_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(18),
      Q => \^axi_data_fu_84_reg[29]_0\(18),
      R => '0'
    );
\axi_data_fu_84_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(19),
      Q => \^axi_data_fu_84_reg[29]_0\(19),
      R => '0'
    );
\axi_data_fu_84_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(1),
      Q => \^axi_data_fu_84_reg[29]_0\(1),
      R => '0'
    );
\axi_data_fu_84_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(20),
      Q => \^axi_data_fu_84_reg[29]_0\(20),
      R => '0'
    );
\axi_data_fu_84_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(21),
      Q => \^axi_data_fu_84_reg[29]_0\(21),
      R => '0'
    );
\axi_data_fu_84_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(22),
      Q => \^axi_data_fu_84_reg[29]_0\(22),
      R => '0'
    );
\axi_data_fu_84_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(23),
      Q => \^axi_data_fu_84_reg[29]_0\(23),
      R => '0'
    );
\axi_data_fu_84_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(24),
      Q => \^axi_data_fu_84_reg[29]_0\(24),
      R => '0'
    );
\axi_data_fu_84_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(25),
      Q => \^axi_data_fu_84_reg[29]_0\(25),
      R => '0'
    );
\axi_data_fu_84_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(26),
      Q => \^axi_data_fu_84_reg[29]_0\(26),
      R => '0'
    );
\axi_data_fu_84_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(27),
      Q => \^axi_data_fu_84_reg[29]_0\(27),
      R => '0'
    );
\axi_data_fu_84_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(28),
      Q => \^axi_data_fu_84_reg[29]_0\(28),
      R => '0'
    );
\axi_data_fu_84_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(29),
      Q => \^axi_data_fu_84_reg[29]_0\(29),
      R => '0'
    );
\axi_data_fu_84_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(2),
      Q => \^axi_data_fu_84_reg[29]_0\(2),
      R => '0'
    );
\axi_data_fu_84_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(3),
      Q => \^axi_data_fu_84_reg[29]_0\(3),
      R => '0'
    );
\axi_data_fu_84_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(4),
      Q => \^axi_data_fu_84_reg[29]_0\(4),
      R => '0'
    );
\axi_data_fu_84_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(5),
      Q => \^axi_data_fu_84_reg[29]_0\(5),
      R => '0'
    );
\axi_data_fu_84_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(6),
      Q => \^axi_data_fu_84_reg[29]_0\(6),
      R => '0'
    );
\axi_data_fu_84_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(7),
      Q => \^axi_data_fu_84_reg[29]_0\(7),
      R => '0'
    );
\axi_data_fu_84_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(8),
      Q => \^axi_data_fu_84_reg[29]_0\(8),
      R => '0'
    );
\axi_data_fu_84_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => p_0_in(9),
      Q => \^axi_data_fu_84_reg[29]_0\(9),
      R => '0'
    );
\axi_last_fu_88_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => axi_last_fu_882_out,
      D => flow_control_loop_pipe_sequential_init_U_n_45,
      Q => \axi_last_fu_88_reg_n_6_[0]\,
      R => '0'
    );
\eol_reg_155_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_13
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => axi_last_fu_882_out,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[4]\ => \ap_CS_fsm_reg[4]\,
      \ap_CS_fsm_reg[5]\ => \ap_CS_fsm_reg[5]\,
      \ap_block_pp0_stage0_11001__0\ => \ap_block_pp0_stage0_11001__0\,
      ap_clk => ap_clk,
      ap_done_cache_reg_0(0) => ap_done_cache_reg(0),
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter1_0 => ap_enable_reg_pp0_iter1_0,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_12,
      ap_rst_n => ap_rst_n,
      \axi_data_2_fu_74_reg[29]\(29 downto 0) => p_0_in(29 downto 0),
      \axi_data_fu_84_reg[29]\(29 downto 0) => \axi_data_fu_84_reg[29]_1\(29 downto 0),
      \axi_data_fu_84_reg[29]_0\(29 downto 0) => \axi_data_fu_84_reg[29]_2\(29 downto 0),
      axi_last_2_reg_122 => axi_last_2_reg_122,
      \axi_last_2_reg_122_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_45,
      \eol_reg_155_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_6,
      \eol_reg_155_reg[0]_0\ => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      \eol_reg_155_reg[0]_1\ => \axi_last_fu_88_reg_n_6_[0]\,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_ready => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_ready,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg(0) => j_fu_80,
      \icmp_ln188_fu_282_p2__20\ => \icmp_ln188_fu_282_p2__20\,
      icmp_ln191_fu_196_p2 => icmp_ln191_fu_196_p2,
      icmp_ln191_reg_279 => icmp_ln191_reg_279,
      \icmp_ln191_reg_279_reg[0]\(10 downto 0) => \icmp_ln191_reg_279_reg[0]_0\(10 downto 0),
      imgRgb_full_n => imgRgb_full_n,
      \j_fu_80_reg[10]\(10) => \j_fu_80_reg_n_6_[10]\,
      \j_fu_80_reg[10]\(9) => \j_fu_80_reg_n_6_[9]\,
      \j_fu_80_reg[10]\(8) => \j_fu_80_reg_n_6_[8]\,
      \j_fu_80_reg[10]\(7) => \j_fu_80_reg_n_6_[7]\,
      \j_fu_80_reg[10]\(6) => \j_fu_80_reg_n_6_[6]\,
      \j_fu_80_reg[10]\(5) => \j_fu_80_reg_n_6_[5]\,
      \j_fu_80_reg[10]\(4) => \j_fu_80_reg_n_6_[4]\,
      \j_fu_80_reg[10]\(3) => \j_fu_80_reg_n_6_[3]\,
      \j_fu_80_reg[10]\(2) => \j_fu_80_reg_n_6_[2]\,
      \j_fu_80_reg[10]\(1) => \j_fu_80_reg_n_6_[1]\,
      \j_fu_80_reg[10]\(0) => \j_fu_80_reg_n_6_[0]\,
      \j_fu_80_reg[8]\(10 downto 0) => j_4_fu_202_p2(10 downto 0),
      p_13_in => p_13_in,
      s_axis_video_TLAST_int_regslice => s_axis_video_TLAST_int_regslice,
      sof_reg_167 => sof_reg_167,
      \sof_reg_167_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_58,
      \sof_reg_167_reg[0]_0\ => \icmp_ln191_reg_279_pp0_iter1_reg_reg_n_6_[0]\,
      \sof_reg_167_reg[0]_1\ => \sof_reg_167_reg[0]_0\
    );
\icmp_ln191_reg_279[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ap_block_pp0_stage0_11001__0\,
      O => ap_block_pp0_stage0_subdone
    );
\icmp_ln191_reg_279_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => icmp_ln191_reg_279,
      Q => \icmp_ln191_reg_279_pp0_iter1_reg_reg_n_6_[0]\,
      R => '0'
    );
\icmp_ln191_reg_279_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => icmp_ln191_fu_196_p2,
      Q => icmp_ln191_reg_279,
      R => '0'
    );
\j_fu_80_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(0),
      Q => \j_fu_80_reg_n_6_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(10),
      Q => \j_fu_80_reg_n_6_[10]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(1),
      Q => \j_fu_80_reg_n_6_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(2),
      Q => \j_fu_80_reg_n_6_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(3),
      Q => \j_fu_80_reg_n_6_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(4),
      Q => \j_fu_80_reg_n_6_[4]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(5),
      Q => \j_fu_80_reg_n_6_[5]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(6),
      Q => \j_fu_80_reg_n_6_[6]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(7),
      Q => \j_fu_80_reg_n_6_[7]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(8),
      Q => \j_fu_80_reg_n_6_[8]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\j_fu_80_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_80,
      D => j_4_fu_202_p2(9),
      Q => \j_fu_80_reg_n_6_[9]\,
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\mOutPtr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000202020202020"
    )
        port map (
      I0 => \ap_phi_mux_sof_phi_fu_171_p41__0\,
      I1 => \ap_block_pp0_stage0_11001__0\,
      I2 => imgRgb_full_n,
      I3 => ap_block_pp0_stage0_11001,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => imgRgb_empty_n,
      O => p_9_in
    );
\mOutPtr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => \icmp_ln191_reg_279_pp0_iter1_reg_reg_n_6_[0]\,
      O => \ap_phi_mux_sof_phi_fu_171_p41__0\
    );
\select_ln216_reg_476[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^grp_axivideo2multipixstream_pipeline_loop_width_fu_152_eol_out\,
      I1 => cmp10252_i_reg_449,
      I2 => axi_last_2_reg_122,
      I3 => Q(2),
      I4 => select_ln216_reg_476,
      O => \eol_reg_155_reg[0]_0\
    );
\sof_reg_167_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_58,
      Q => sof_reg_167,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_CTRL_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    \int_gamma_lut_0_shift0_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_CTRL_RVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \int_ier_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \int_width_reg[10]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \int_height_reg[10]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_sync_reg_Gamma_U0_ap_ready : out STD_LOGIC;
    \int_width_reg[9]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DINADIN : out STD_LOGIC_VECTOR ( 9 downto 0 );
    mem_reg : out STD_LOGIC_VECTOR ( 9 downto 0 );
    mem_reg_0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ap_clk : in STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \int_gamma_lut_0_shift0_reg[0]_1\ : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_ap_idle_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_ap_idle_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_ap_idle_reg_2 : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_for_MultiPixStream2AXIvideo_U0_full_n : in STD_LOGIC;
    ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready : in STD_LOGIC;
    ap_sync_ready : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_ready : in STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    int_isr8_out : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_CTRL_s_axi;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_CTRL_s_axi is
  signal \AXIvideo2MultiPixStream_U0/ap_NS_fsm4__0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[1]_i_1_n_6\ : STD_LOGIC;
  signal \FSM_onehot_rstate[1]_i_2_n_6\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_6\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate_reg_n_6_[2]\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_6\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_6\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_6\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_6_[2]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_idle : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal \ar_hs__0\ : STD_LOGIC;
  signal auto_restart_status_i_1_n_6 : STD_LOGIC;
  signal auto_restart_status_reg_n_6 : STD_LOGIC;
  signal aw_hs : STD_LOGIC;
  signal height : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal int_ap_idle_i_3_n_6 : STD_LOGIC;
  signal \int_ap_ready__0\ : STD_LOGIC;
  signal int_ap_ready_i_1_n_6 : STD_LOGIC;
  signal int_ap_start_i_1_n_6 : STD_LOGIC;
  signal int_ap_start_i_3_n_6 : STD_LOGIC;
  signal int_ap_start_i_4_n_6 : STD_LOGIC;
  signal int_auto_restart_i_1_n_6 : STD_LOGIC;
  signal int_gamma_lut_0_address1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal int_gamma_lut_0_q0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal int_gamma_lut_0_q1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal int_gamma_lut_0_read : STD_LOGIC;
  signal int_gamma_lut_0_read0 : STD_LOGIC;
  signal \^int_gamma_lut_0_shift0_reg[0]_0\ : STD_LOGIC;
  signal int_gamma_lut_0_write_i_1_n_6 : STD_LOGIC;
  signal int_gamma_lut_0_write_reg_n_6 : STD_LOGIC;
  signal int_gamma_lut_1_n_42 : STD_LOGIC;
  signal int_gamma_lut_1_n_43 : STD_LOGIC;
  signal int_gamma_lut_1_n_44 : STD_LOGIC;
  signal int_gamma_lut_1_n_45 : STD_LOGIC;
  signal int_gamma_lut_1_n_46 : STD_LOGIC;
  signal int_gamma_lut_1_n_47 : STD_LOGIC;
  signal int_gamma_lut_1_n_48 : STD_LOGIC;
  signal int_gamma_lut_1_n_49 : STD_LOGIC;
  signal int_gamma_lut_1_n_50 : STD_LOGIC;
  signal int_gamma_lut_1_n_51 : STD_LOGIC;
  signal int_gamma_lut_1_n_52 : STD_LOGIC;
  signal int_gamma_lut_1_n_53 : STD_LOGIC;
  signal int_gamma_lut_1_n_54 : STD_LOGIC;
  signal int_gamma_lut_1_n_55 : STD_LOGIC;
  signal int_gamma_lut_1_n_56 : STD_LOGIC;
  signal int_gamma_lut_1_n_57 : STD_LOGIC;
  signal int_gamma_lut_1_q0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal int_gamma_lut_1_q1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal int_gamma_lut_1_read : STD_LOGIC;
  signal int_gamma_lut_1_read0 : STD_LOGIC;
  signal int_gamma_lut_1_write_i_1_n_6 : STD_LOGIC;
  signal int_gamma_lut_1_write_reg_n_6 : STD_LOGIC;
  signal int_gamma_lut_2_q0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal int_gamma_lut_2_q1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_gamma_lut_2_read : STD_LOGIC;
  signal int_gamma_lut_2_read0 : STD_LOGIC;
  signal int_gamma_lut_2_write_i_1_n_6 : STD_LOGIC;
  signal int_gamma_lut_2_write_reg_n_6 : STD_LOGIC;
  signal int_gie_i_1_n_6 : STD_LOGIC;
  signal int_gie_reg_n_6 : STD_LOGIC;
  signal int_height0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \int_height[15]_i_1_n_6\ : STD_LOGIC;
  signal \^int_height_reg[10]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal int_ier10_out : STD_LOGIC;
  signal \^int_ier_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \int_ier_reg_n_6_[1]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal \int_isr[0]_i_1_n_6\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_6\ : STD_LOGIC;
  signal \int_isr[1]_i_2_n_6\ : STD_LOGIC;
  signal \int_isr_reg_n_6_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_6_[1]\ : STD_LOGIC;
  signal \int_task_ap_done0__9\ : STD_LOGIC;
  signal \int_task_ap_done__0\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_6 : STD_LOGIC;
  signal int_task_ap_done_i_3_n_6 : STD_LOGIC;
  signal int_task_ap_done_i_4_n_6 : STD_LOGIC;
  signal int_video_format0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \int_video_format[15]_i_1_n_6\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[0]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[10]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[11]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[12]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[13]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[14]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[15]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[1]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[2]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[3]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[4]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[5]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[6]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[7]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[8]\ : STD_LOGIC;
  signal \int_video_format_reg_n_6_[9]\ : STD_LOGIC;
  signal int_width0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \int_width[15]_i_1_n_6\ : STD_LOGIC;
  signal \int_width[15]_i_3_n_6\ : STD_LOGIC;
  signal \int_width[15]_i_4_n_6\ : STD_LOGIC;
  signal \^int_width_reg[10]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_29_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \rdata[0]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_6\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_6\ : STD_LOGIC;
  signal \rdata[0]_i_6_n_6\ : STD_LOGIC;
  signal \rdata[0]_i_7_n_6\ : STD_LOGIC;
  signal \rdata[0]_i_8_n_6\ : STD_LOGIC;
  signal \rdata[10]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[11]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[12]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[13]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[14]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_4_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_5_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_6_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_7_n_6\ : STD_LOGIC;
  signal \rdata[15]_i_8_n_6\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_6\ : STD_LOGIC;
  signal \rdata[1]_i_5_n_6\ : STD_LOGIC;
  signal \rdata[1]_i_6_n_6\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_6\ : STD_LOGIC;
  signal \rdata[31]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[4]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[5]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[6]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[8]_i_3_n_6\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_6\ : STD_LOGIC;
  signal \rdata[9]_i_4_n_6\ : STD_LOGIC;
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC;
  signal \sub_i_i_i_reg_179[10]_i_2_n_6\ : STD_LOGIC;
  signal \waddr_reg_n_6_[11]\ : STD_LOGIC;
  signal \waddr_reg_n_6_[12]\ : STD_LOGIC;
  signal width : STD_LOGIC_VECTOR ( 15 downto 11 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_2\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of int_ap_idle_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of int_ap_idle_i_3 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of int_ap_start_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of int_gamma_lut_0_read_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of int_gamma_lut_1_read_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of int_gamma_lut_2_read_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of int_gamma_lut_2_write_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of int_gie_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_height[0]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_height[10]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_height[11]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \int_height[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_height[13]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \int_height[14]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \int_height[15]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \int_height[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_height[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_height[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_height[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_height[5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_height[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_height[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_height[8]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_height[9]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_isr[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_video_format[0]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_video_format[10]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \int_video_format[11]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \int_video_format[12]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_video_format[13]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \int_video_format[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \int_video_format[15]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \int_video_format[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_video_format[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_video_format[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_video_format[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_video_format[5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_video_format[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_video_format[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_video_format[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_video_format[9]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_width[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_width[10]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_width[11]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \int_width[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_width[13]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_width[14]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \int_width[15]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \int_width[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_width[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_width[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_width[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_width[5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_width[6]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_width[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_width[8]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_width[9]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_11 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_11__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_12 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_12__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_12__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_13 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_13__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_13__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_14 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_14__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_14__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_15 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_15__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_15__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_16 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_16__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_16__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_17 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_17__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_17__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_18 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_18__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_18__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_19 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_19__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_19__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_20 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_20__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_20__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_21 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdata[0]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rdata[0]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdata[15]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of s_axi_CTRL_RVALID_INST_0 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of s_axi_CTRL_WREADY_INST_0 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[1]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[6]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sub_i_i_i_reg_179[9]_i_1\ : label is "soft_lutpair29";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  SR(0) <= \^sr\(0);
  ap_start <= \^ap_start\;
  \int_gamma_lut_0_shift0_reg[0]_0\ <= \^int_gamma_lut_0_shift0_reg[0]_0\;
  \int_height_reg[10]_0\(10 downto 0) <= \^int_height_reg[10]_0\(10 downto 0);
  \int_ier_reg[0]_0\(0) <= \^int_ier_reg[0]_0\(0);
  \int_width_reg[10]_0\(10 downto 0) <= \^int_width_reg[10]_0\(10 downto 0);
  interrupt <= \^interrupt\;
  s_axi_CTRL_BVALID <= \^s_axi_ctrl_bvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22772F7722772277"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \FSM_onehot_rstate[1]_i_2_n_6\,
      I3 => \FSM_onehot_rstate_reg_n_6_[2]\,
      I4 => int_gamma_lut_2_read,
      I5 => s_axi_CTRL_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_6\
    );
\FSM_onehot_rstate[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_0_read,
      O => \FSM_onehot_rstate[1]_i_2_n_6\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0E0F0F0"
    )
        port map (
      I0 => int_gamma_lut_1_read,
      I1 => int_gamma_lut_0_read,
      I2 => \FSM_onehot_rstate_reg_n_6_[2]\,
      I3 => int_gamma_lut_2_read,
      I4 => s_axi_CTRL_RREADY,
      I5 => \ar_hs__0\,
      O => \FSM_onehot_rstate[2]_i_1_n_6\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_6\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_6\,
      Q => \FSM_onehot_rstate_reg_n_6_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FFD1D1"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_6_[2]\,
      I1 => \^s_axi_ctrl_bvalid\,
      I2 => s_axi_CTRL_BREADY,
      I3 => s_axi_CTRL_AWVALID,
      I4 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_i_2_n_6\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA222A222A222"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_6_[2]\,
      I1 => s_axi_CTRL_WVALID,
      I2 => s_axi_CTRL_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => s_axi_CTRL_AWVALID,
      I5 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_6\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888FFFF08880888"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_6_[2]\,
      I1 => s_axi_CTRL_WVALID,
      I2 => s_axi_CTRL_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => s_axi_CTRL_BREADY,
      I5 => \^s_axi_ctrl_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_6\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_6\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_6\,
      Q => \FSM_onehot_wstate_reg_n_6_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_6\,
      Q => \^s_axi_ctrl_bvalid\,
      R => \^sr\(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      I1 => \^ap_start\,
      I2 => int_ap_idle_reg_0(0),
      O => D(0)
    );
ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^ap_start\,
      I1 => ap_sync_ready,
      I2 => ap_rst_n,
      O => ap_sync_reg_Gamma_U0_ap_ready
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_3_in(7),
      I1 => ap_idle,
      I2 => auto_restart_status_reg_n_6,
      O => auto_restart_status_i_1_n_6
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_6,
      Q => auto_restart_status_reg_n_6,
      R => \^sr\(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \AXIvideo2MultiPixStream_U0/ap_NS_fsm4__0\,
      I1 => MultiPixStream2AXIvideo_U0_ap_start,
      I2 => Q(0),
      I3 => int_ap_idle_reg_0(0),
      I4 => int_ap_idle_reg_1(0),
      I5 => int_ap_idle_i_3_n_6,
      O => ap_idle
    );
int_ap_idle_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      I1 => \^ap_start\,
      O => \AXIvideo2MultiPixStream_U0/ap_NS_fsm4__0\
    );
int_ap_idle_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => int_ap_idle_reg_2,
      I1 => \^ap_start\,
      I2 => start_once_reg,
      I3 => start_for_MultiPixStream2AXIvideo_U0_full_n,
      O => int_ap_idle_i_3_n_6
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_3_in(2),
      R => \^sr\(0)
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_3_in(7),
      I1 => ap_sync_ready,
      I2 => \int_task_ap_done0__9\,
      I3 => \int_ap_ready__0\,
      O => int_ap_ready_i_1_n_6
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_6,
      Q => \int_ap_ready__0\,
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBF8888888"
    )
        port map (
      I0 => p_3_in(7),
      I1 => ap_sync_ready,
      I2 => int_ap_start_i_3_n_6,
      I3 => int_ap_start_i_4_n_6,
      I4 => s_axi_CTRL_WDATA(0),
      I5 => \^ap_start\,
      O => int_ap_start_i_1_n_6
    );
int_ap_start_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s_axi_CTRL_WSTRB(0),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => \int_width[15]_i_3_n_6\,
      O => int_ap_start_i_3_n_6
    );
int_ap_start_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => int_ap_start_i_4_n_6
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_6,
      Q => \^ap_start\,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(7),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => int_ap_start_i_3_n_6,
      I4 => p_3_in(7),
      O => int_auto_restart_i_1_n_6
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_6,
      Q => p_3_in(7),
      R => \^sr\(0)
    );
int_gamma_lut_0: entity work.design_1_v_gamma_lut_0_0_CTRL_s_axi_ram
     port map (
      ADDRARDADDR(8 downto 0) => int_gamma_lut_0_address1(8 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      D(4) => \p_0_in__0\(9),
      D(3) => \p_0_in__0\(7),
      D(2 downto 1) => \p_0_in__0\(3 downto 2),
      D(0) => \p_0_in__0\(0),
      DOUTADOUT(26 downto 5) => int_gamma_lut_0_q1(31 downto 10),
      DOUTADOUT(4) => int_gamma_lut_0_q1(8),
      DOUTADOUT(3 downto 1) => int_gamma_lut_0_q1(6 downto 4),
      DOUTADOUT(0) => int_gamma_lut_0_q1(1),
      DOUTBDOUT(19 downto 10) => int_gamma_lut_0_q0(25 downto 16),
      DOUTBDOUT(9 downto 0) => int_gamma_lut_0_q0(9 downto 0),
      ap_clk => ap_clk,
      \ar_hs__0\ => \ar_hs__0\,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      \int_ap_ready__0\ => \int_ap_ready__0\,
      int_gamma_lut_0_read => int_gamma_lut_0_read,
      int_gamma_lut_1_read => int_gamma_lut_1_read,
      interrupt => \^interrupt\,
      mem_reg_0 => int_gamma_lut_0_write_reg_n_6,
      mem_reg_1 => \^fsm_onehot_rstate_reg[1]_0\,
      mem_reg_2 => \FSM_onehot_wstate_reg_n_6_[2]\,
      p_3_in(1) => p_3_in(7),
      p_3_in(0) => p_3_in(2),
      \rdata_reg[0]\ => \rdata[15]_i_4_n_6\,
      \rdata_reg[0]_0\ => \rdata[0]_i_2_n_6\,
      \rdata_reg[0]_1\ => \rdata[0]_i_4_n_6\,
      \rdata_reg[0]_2\ => \rdata[0]_i_5_n_6\,
      \rdata_reg[2]\ => \rdata[9]_i_2_n_6\,
      \rdata_reg[2]_0\ => \rdata[2]_i_3_n_6\,
      \rdata_reg[3]\ => \rdata[3]_i_3_n_6\,
      \rdata_reg[7]\ => \rdata[7]_i_3_n_6\,
      \rdata_reg[9]\(4) => int_gamma_lut_2_q1(9),
      \rdata_reg[9]\(3) => int_gamma_lut_2_q1(7),
      \rdata_reg[9]\(2 downto 1) => int_gamma_lut_2_q1(3 downto 2),
      \rdata_reg[9]\(0) => int_gamma_lut_2_q1(0),
      \rdata_reg[9]_0\(4) => int_gamma_lut_1_q1(9),
      \rdata_reg[9]_0\(3) => int_gamma_lut_1_q1(7),
      \rdata_reg[9]_0\(2 downto 1) => int_gamma_lut_1_q1(3 downto 2),
      \rdata_reg[9]_0\(0) => int_gamma_lut_1_q1(0),
      \rdata_reg[9]_1\ => \rdata[9]_i_4_n_6\,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID
    );
int_gamma_lut_0_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_ARVALID,
      I2 => s_axi_CTRL_ARADDR(12),
      I3 => s_axi_CTRL_ARADDR(11),
      O => int_gamma_lut_0_read0
    );
int_gamma_lut_0_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gamma_lut_0_read0,
      Q => int_gamma_lut_0_read,
      R => \^sr\(0)
    );
\int_gamma_lut_0_shift0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_gamma_lut_0_shift0_reg[0]_1\,
      Q => \^int_gamma_lut_0_shift0_reg[0]_0\,
      R => \^sr\(0)
    );
int_gamma_lut_0_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_AWVALID,
      I2 => s_axi_CTRL_AWADDR(9),
      I3 => s_axi_CTRL_AWADDR(10),
      I4 => p_29_in,
      I5 => int_gamma_lut_0_write_reg_n_6,
      O => int_gamma_lut_0_write_i_1_n_6
    );
int_gamma_lut_0_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gamma_lut_0_write_i_1_n_6,
      Q => int_gamma_lut_0_write_reg_n_6,
      R => \^sr\(0)
    );
int_gamma_lut_1: entity work.design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_7
     port map (
      ADDRARDADDR(8 downto 0) => int_gamma_lut_0_address1(8 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      D(10 downto 5) => \p_0_in__0\(15 downto 10),
      D(4) => \p_0_in__0\(8),
      D(3 downto 1) => \p_0_in__0\(6 downto 4),
      D(0) => \p_0_in__0\(1),
      DOUTADOUT(26 downto 5) => int_gamma_lut_2_q1(31 downto 10),
      DOUTADOUT(4) => int_gamma_lut_2_q1(8),
      DOUTADOUT(3 downto 1) => int_gamma_lut_2_q1(6 downto 4),
      DOUTADOUT(0) => int_gamma_lut_2_q1(1),
      DOUTBDOUT(19 downto 10) => int_gamma_lut_1_q0(25 downto 16),
      DOUTBDOUT(9 downto 0) => int_gamma_lut_1_q0(9 downto 0),
      ap_clk => ap_clk,
      \ar_hs__0\ => \ar_hs__0\,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      int_gamma_lut_0_read => int_gamma_lut_0_read,
      int_gamma_lut_1_read => int_gamma_lut_1_read,
      int_gamma_lut_1_read_reg => int_gamma_lut_1_n_42,
      int_gamma_lut_1_read_reg_0 => int_gamma_lut_1_n_43,
      int_gamma_lut_1_read_reg_1 => int_gamma_lut_1_n_44,
      int_gamma_lut_1_read_reg_10 => int_gamma_lut_1_n_53,
      int_gamma_lut_1_read_reg_11 => int_gamma_lut_1_n_54,
      int_gamma_lut_1_read_reg_12 => int_gamma_lut_1_n_55,
      int_gamma_lut_1_read_reg_13 => int_gamma_lut_1_n_56,
      int_gamma_lut_1_read_reg_14 => int_gamma_lut_1_n_57,
      int_gamma_lut_1_read_reg_2 => int_gamma_lut_1_n_45,
      int_gamma_lut_1_read_reg_3 => int_gamma_lut_1_n_46,
      int_gamma_lut_1_read_reg_4 => int_gamma_lut_1_n_47,
      int_gamma_lut_1_read_reg_5 => int_gamma_lut_1_n_48,
      int_gamma_lut_1_read_reg_6 => int_gamma_lut_1_n_49,
      int_gamma_lut_1_read_reg_7 => int_gamma_lut_1_n_50,
      int_gamma_lut_1_read_reg_8 => int_gamma_lut_1_n_51,
      int_gamma_lut_1_read_reg_9 => int_gamma_lut_1_n_52,
      mem_reg_0(4) => int_gamma_lut_1_q1(9),
      mem_reg_0(3) => int_gamma_lut_1_q1(7),
      mem_reg_0(2 downto 1) => int_gamma_lut_1_q1(3 downto 2),
      mem_reg_0(0) => int_gamma_lut_1_q1(0),
      mem_reg_1 => \^fsm_onehot_rstate_reg[1]_0\,
      mem_reg_2 => int_gamma_lut_1_write_reg_n_6,
      mem_reg_3 => \FSM_onehot_wstate_reg_n_6_[2]\,
      \rdata_reg[10]\ => \rdata[10]_i_3_n_6\,
      \rdata_reg[11]\ => \rdata[11]_i_3_n_6\,
      \rdata_reg[12]\ => \rdata[12]_i_3_n_6\,
      \rdata_reg[13]\ => \rdata[13]_i_3_n_6\,
      \rdata_reg[14]\ => \rdata[14]_i_3_n_6\,
      \rdata_reg[15]\ => \rdata[15]_i_3_n_6\,
      \rdata_reg[1]\ => \rdata[1]_i_2_n_6\,
      \rdata_reg[1]_0\ => \rdata[1]_i_4_n_6\,
      \rdata_reg[1]_1\ => \rdata[15]_i_4_n_6\,
      \rdata_reg[31]\(26 downto 5) => int_gamma_lut_0_q1(31 downto 10),
      \rdata_reg[31]\(4) => int_gamma_lut_0_q1(8),
      \rdata_reg[31]\(3 downto 1) => int_gamma_lut_0_q1(6 downto 4),
      \rdata_reg[31]\(0) => int_gamma_lut_0_q1(1),
      \rdata_reg[4]\ => \rdata[4]_i_3_n_6\,
      \rdata_reg[5]\ => \rdata[5]_i_3_n_6\,
      \rdata_reg[6]\ => \rdata[6]_i_3_n_6\,
      \rdata_reg[8]\ => \rdata[8]_i_3_n_6\,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID
    );
int_gamma_lut_1_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_ARVALID,
      I2 => s_axi_CTRL_ARADDR(11),
      I3 => s_axi_CTRL_ARADDR(12),
      O => int_gamma_lut_1_read0
    );
int_gamma_lut_1_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gamma_lut_1_read0,
      Q => int_gamma_lut_1_read,
      R => \^sr\(0)
    );
int_gamma_lut_1_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_AWVALID,
      I2 => s_axi_CTRL_AWADDR(10),
      I3 => s_axi_CTRL_AWADDR(9),
      I4 => p_29_in,
      I5 => int_gamma_lut_1_write_reg_n_6,
      O => int_gamma_lut_1_write_i_1_n_6
    );
int_gamma_lut_1_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gamma_lut_1_write_i_1_n_6,
      Q => int_gamma_lut_1_write_reg_n_6,
      R => \^sr\(0)
    );
int_gamma_lut_2: entity work.design_1_v_gamma_lut_0_0_CTRL_s_axi_ram_8
     port map (
      ADDRARDADDR(8 downto 0) => int_gamma_lut_0_address1(8 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      DOUTADOUT(31 downto 0) => int_gamma_lut_2_q1(31 downto 0),
      DOUTBDOUT(19 downto 10) => int_gamma_lut_2_q0(25 downto 16),
      DOUTBDOUT(9 downto 0) => int_gamma_lut_2_q0(9 downto 0),
      Q(8 downto 0) => p_0_in(8 downto 0),
      ap_clk => ap_clk,
      \ar_hs__0\ => \ar_hs__0\,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      mem_reg_0 => \^fsm_onehot_rstate_reg[1]_0\,
      mem_reg_1 => int_gamma_lut_2_write_reg_n_6,
      mem_reg_2 => \FSM_onehot_wstate_reg_n_6_[2]\,
      s_axi_CTRL_ARADDR(8 downto 0) => s_axi_CTRL_ARADDR(10 downto 2),
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID
    );
int_gamma_lut_2_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_CTRL_ARADDR(11),
      I3 => s_axi_CTRL_ARADDR(12),
      O => int_gamma_lut_2_read0
    );
int_gamma_lut_2_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gamma_lut_2_read0,
      Q => int_gamma_lut_2_read,
      R => \^sr\(0)
    );
int_gamma_lut_2_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_AWVALID,
      I2 => s_axi_CTRL_AWADDR(9),
      I3 => s_axi_CTRL_AWADDR(10),
      I4 => p_29_in,
      I5 => int_gamma_lut_2_write_reg_n_6,
      O => int_gamma_lut_2_write_i_1_n_6
    );
int_gamma_lut_2_write_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_6_[2]\,
      I1 => s_axi_CTRL_WVALID,
      I2 => s_axi_CTRL_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => p_29_in
    );
int_gamma_lut_2_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gamma_lut_2_write_i_1_n_6,
      Q => int_gamma_lut_2_write_reg_n_6,
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => int_ap_start_i_3_n_6,
      I4 => int_gie_reg_n_6,
      O => int_gie_i_1_n_6
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_6,
      Q => int_gie_reg_n_6,
      R => \^sr\(0)
    );
\int_height[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(0),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(0),
      O => int_height0(0)
    );
\int_height[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(10),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(10),
      O => int_height0(10)
    );
\int_height[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => height(11),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(11),
      O => int_height0(11)
    );
\int_height[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => height(12),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(12),
      O => int_height0(12)
    );
\int_height[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => height(13),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(13),
      O => int_height0(13)
    );
\int_height[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => height(14),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(14),
      O => int_height0(14)
    );
\int_height[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \int_width[15]_i_3_n_6\,
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => \int_height[15]_i_1_n_6\
    );
\int_height[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => height(15),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(15),
      O => int_height0(15)
    );
\int_height[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(1),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(1),
      O => int_height0(1)
    );
\int_height[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(2),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(2),
      O => int_height0(2)
    );
\int_height[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(3),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(3),
      O => int_height0(3)
    );
\int_height[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(4),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(4),
      O => int_height0(4)
    );
\int_height[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(5),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(5),
      O => int_height0(5)
    );
\int_height[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(6),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(6),
      O => int_height0(6)
    );
\int_height[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(7),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(7),
      O => int_height0(7)
    );
\int_height[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(8),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(8),
      O => int_height0(8)
    );
\int_height[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_height_reg[10]_0\(9),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(9),
      O => int_height0(9)
    );
\int_height_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(0),
      Q => \^int_height_reg[10]_0\(0),
      R => \^sr\(0)
    );
\int_height_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(10),
      Q => \^int_height_reg[10]_0\(10),
      R => \^sr\(0)
    );
\int_height_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(11),
      Q => height(11),
      R => \^sr\(0)
    );
\int_height_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(12),
      Q => height(12),
      R => \^sr\(0)
    );
\int_height_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(13),
      Q => height(13),
      R => \^sr\(0)
    );
\int_height_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(14),
      Q => height(14),
      R => \^sr\(0)
    );
\int_height_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(15),
      Q => height(15),
      R => \^sr\(0)
    );
\int_height_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(1),
      Q => \^int_height_reg[10]_0\(1),
      R => \^sr\(0)
    );
\int_height_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(2),
      Q => \^int_height_reg[10]_0\(2),
      R => \^sr\(0)
    );
\int_height_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(3),
      Q => \^int_height_reg[10]_0\(3),
      R => \^sr\(0)
    );
\int_height_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(4),
      Q => \^int_height_reg[10]_0\(4),
      R => \^sr\(0)
    );
\int_height_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(5),
      Q => \^int_height_reg[10]_0\(5),
      R => \^sr\(0)
    );
\int_height_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(6),
      Q => \^int_height_reg[10]_0\(6),
      R => \^sr\(0)
    );
\int_height_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(7),
      Q => \^int_height_reg[10]_0\(7),
      R => \^sr\(0)
    );
\int_height_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(8),
      Q => \^int_height_reg[10]_0\(8),
      R => \^sr\(0)
    );
\int_height_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[15]_i_1_n_6\,
      D => int_height0(9),
      Q => \^int_height_reg[10]_0\(9),
      R => \^sr\(0)
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => int_ap_start_i_3_n_6,
      O => int_ier10_out
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_CTRL_WDATA(0),
      Q => \^int_ier_reg[0]_0\(0),
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_CTRL_WDATA(1),
      Q => \int_ier_reg_n_6_[1]\,
      R => \^sr\(0)
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_6_[1]\,
      I1 => \int_isr_reg_n_6_[0]\,
      I2 => int_gie_reg_n_6,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => int_ap_start_i_3_n_6,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => int_isr8_out,
      I5 => \int_isr_reg_n_6_[0]\,
      O => \int_isr[0]_i_1_n_6\
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F7F7FFF808080"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(1),
      I1 => int_ap_start_i_3_n_6,
      I2 => \int_isr[1]_i_2_n_6\,
      I3 => \int_ier_reg_n_6_[1]\,
      I4 => ap_sync_ready,
      I5 => \int_isr_reg_n_6_[1]\,
      O => \int_isr[1]_i_1_n_6\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => \int_isr[1]_i_2_n_6\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_6\,
      Q => \int_isr_reg_n_6_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_6\,
      Q => \int_isr_reg_n_6_[1]\,
      R => \^sr\(0)
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22FFFF2E222E22"
    )
        port map (
      I0 => MultiPixStream2AXIvideo_U0_ap_ready,
      I1 => auto_restart_status_reg_n_6,
      I2 => p_3_in(2),
      I3 => ap_idle,
      I4 => \int_task_ap_done0__9\,
      I5 => \int_task_ap_done__0\,
      O => int_task_ap_done_i_1_n_6
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => int_task_ap_done_i_3_n_6,
      I1 => \rdata[0]_i_6_n_6\,
      I2 => s_axi_CTRL_ARADDR(12),
      I3 => s_axi_CTRL_ARADDR(11),
      I4 => s_axi_CTRL_ARADDR(0),
      I5 => s_axi_CTRL_ARADDR(1),
      O => \int_task_ap_done0__9\
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(2),
      I1 => s_axi_CTRL_ARADDR(3),
      I2 => s_axi_CTRL_ARADDR(4),
      I3 => s_axi_CTRL_ARADDR(5),
      I4 => s_axi_CTRL_ARADDR(6),
      I5 => int_task_ap_done_i_4_n_6,
      O => int_task_ap_done_i_3_n_6
    );
int_task_ap_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(7),
      I1 => s_axi_CTRL_ARADDR(8),
      O => int_task_ap_done_i_4_n_6
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_6,
      Q => \int_task_ap_done__0\,
      R => \^sr\(0)
    );
\int_video_format[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[0]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(0),
      O => int_video_format0(0)
    );
\int_video_format[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[10]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(10),
      O => int_video_format0(10)
    );
\int_video_format[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[11]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(11),
      O => int_video_format0(11)
    );
\int_video_format[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[12]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(12),
      O => int_video_format0(12)
    );
\int_video_format[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[13]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(13),
      O => int_video_format0(13)
    );
\int_video_format[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[14]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(14),
      O => int_video_format0(14)
    );
\int_video_format[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => \int_width[15]_i_3_n_6\,
      O => \int_video_format[15]_i_1_n_6\
    );
\int_video_format[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[15]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(15),
      O => int_video_format0(15)
    );
\int_video_format[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[1]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(1),
      O => int_video_format0(1)
    );
\int_video_format[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[2]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(2),
      O => int_video_format0(2)
    );
\int_video_format[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[3]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(3),
      O => int_video_format0(3)
    );
\int_video_format[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[4]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(4),
      O => int_video_format0(4)
    );
\int_video_format[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[5]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(5),
      O => int_video_format0(5)
    );
\int_video_format[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[6]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(6),
      O => int_video_format0(6)
    );
\int_video_format[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[7]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(7),
      O => int_video_format0(7)
    );
\int_video_format[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[8]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(8),
      O => int_video_format0(8)
    );
\int_video_format[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \int_video_format_reg_n_6_[9]\,
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(9),
      O => int_video_format0(9)
    );
\int_video_format_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(0),
      Q => \int_video_format_reg_n_6_[0]\,
      R => \^sr\(0)
    );
\int_video_format_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(10),
      Q => \int_video_format_reg_n_6_[10]\,
      R => \^sr\(0)
    );
\int_video_format_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(11),
      Q => \int_video_format_reg_n_6_[11]\,
      R => \^sr\(0)
    );
\int_video_format_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(12),
      Q => \int_video_format_reg_n_6_[12]\,
      R => \^sr\(0)
    );
\int_video_format_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(13),
      Q => \int_video_format_reg_n_6_[13]\,
      R => \^sr\(0)
    );
\int_video_format_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(14),
      Q => \int_video_format_reg_n_6_[14]\,
      R => \^sr\(0)
    );
\int_video_format_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(15),
      Q => \int_video_format_reg_n_6_[15]\,
      R => \^sr\(0)
    );
\int_video_format_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(1),
      Q => \int_video_format_reg_n_6_[1]\,
      R => \^sr\(0)
    );
\int_video_format_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(2),
      Q => \int_video_format_reg_n_6_[2]\,
      R => \^sr\(0)
    );
\int_video_format_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(3),
      Q => \int_video_format_reg_n_6_[3]\,
      R => \^sr\(0)
    );
\int_video_format_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(4),
      Q => \int_video_format_reg_n_6_[4]\,
      R => \^sr\(0)
    );
\int_video_format_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(5),
      Q => \int_video_format_reg_n_6_[5]\,
      R => \^sr\(0)
    );
\int_video_format_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(6),
      Q => \int_video_format_reg_n_6_[6]\,
      R => \^sr\(0)
    );
\int_video_format_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(7),
      Q => \int_video_format_reg_n_6_[7]\,
      R => \^sr\(0)
    );
\int_video_format_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(8),
      Q => \int_video_format_reg_n_6_[8]\,
      R => \^sr\(0)
    );
\int_video_format_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_video_format[15]_i_1_n_6\,
      D => int_video_format0(9),
      Q => \int_video_format_reg_n_6_[9]\,
      R => \^sr\(0)
    );
\int_width[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(0),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(0),
      O => int_width0(0)
    );
\int_width[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(10),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(10),
      O => int_width0(10)
    );
\int_width[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => width(11),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(11),
      O => int_width0(11)
    );
\int_width[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => width(12),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(12),
      O => int_width0(12)
    );
\int_width[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => width(13),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(13),
      O => int_width0(13)
    );
\int_width[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => width(14),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(14),
      O => int_width0(14)
    );
\int_width[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \int_width[15]_i_3_n_6\,
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => \int_width[15]_i_1_n_6\
    );
\int_width[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => width(15),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(15),
      O => int_width0(15)
    );
\int_width[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => \int_width[15]_i_4_n_6\,
      I4 => p_29_in,
      O => \int_width[15]_i_3_n_6\
    );
\int_width[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \waddr_reg_n_6_[12]\,
      I1 => \waddr_reg_n_6_[11]\,
      I2 => p_0_in(8),
      I3 => p_0_in(7),
      O => \int_width[15]_i_4_n_6\
    );
\int_width[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(1),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(1),
      O => int_width0(1)
    );
\int_width[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(2),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(2),
      O => int_width0(2)
    );
\int_width[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(3),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(3),
      O => int_width0(3)
    );
\int_width[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(4),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(4),
      O => int_width0(4)
    );
\int_width[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(5),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(5),
      O => int_width0(5)
    );
\int_width[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(6),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(6),
      O => int_width0(6)
    );
\int_width[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(7),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => s_axi_CTRL_WDATA(7),
      O => int_width0(7)
    );
\int_width[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(8),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(8),
      O => int_width0(8)
    );
\int_width[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(9),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => s_axi_CTRL_WDATA(9),
      O => int_width0(9)
    );
\int_width_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(0),
      Q => \^int_width_reg[10]_0\(0),
      R => \^sr\(0)
    );
\int_width_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(10),
      Q => \^int_width_reg[10]_0\(10),
      R => \^sr\(0)
    );
\int_width_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(11),
      Q => width(11),
      R => \^sr\(0)
    );
\int_width_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(12),
      Q => width(12),
      R => \^sr\(0)
    );
\int_width_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(13),
      Q => width(13),
      R => \^sr\(0)
    );
\int_width_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(14),
      Q => width(14),
      R => \^sr\(0)
    );
\int_width_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(15),
      Q => width(15),
      R => \^sr\(0)
    );
\int_width_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(1),
      Q => \^int_width_reg[10]_0\(1),
      R => \^sr\(0)
    );
\int_width_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(2),
      Q => \^int_width_reg[10]_0\(2),
      R => \^sr\(0)
    );
\int_width_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(3),
      Q => \^int_width_reg[10]_0\(3),
      R => \^sr\(0)
    );
\int_width_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(4),
      Q => \^int_width_reg[10]_0\(4),
      R => \^sr\(0)
    );
\int_width_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(5),
      Q => \^int_width_reg[10]_0\(5),
      R => \^sr\(0)
    );
\int_width_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(6),
      Q => \^int_width_reg[10]_0\(6),
      R => \^sr\(0)
    );
\int_width_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(7),
      Q => \^int_width_reg[10]_0\(7),
      R => \^sr\(0)
    );
\int_width_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(8),
      Q => \^int_width_reg[10]_0\(8),
      R => \^sr\(0)
    );
\int_width_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[15]_i_1_n_6\,
      D => int_width0(9),
      Q => \^int_width_reg[10]_0\(9),
      R => \^sr\(0)
    );
ram_reg_bram_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(25),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(9),
      O => mem_reg(9)
    );
\ram_reg_bram_0_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(25),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(9),
      O => mem_reg_0(9)
    );
ram_reg_bram_0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(25),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(9),
      O => DINADIN(9)
    );
\ram_reg_bram_0_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(24),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(8),
      O => mem_reg(8)
    );
\ram_reg_bram_0_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(24),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(8),
      O => mem_reg_0(8)
    );
ram_reg_bram_0_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(24),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(8),
      O => DINADIN(8)
    );
\ram_reg_bram_0_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(23),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(7),
      O => mem_reg(7)
    );
\ram_reg_bram_0_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(23),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(7),
      O => mem_reg_0(7)
    );
ram_reg_bram_0_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(23),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(7),
      O => DINADIN(7)
    );
\ram_reg_bram_0_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(22),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(6),
      O => mem_reg(6)
    );
\ram_reg_bram_0_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(22),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(6),
      O => mem_reg_0(6)
    );
ram_reg_bram_0_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(22),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(6),
      O => DINADIN(6)
    );
\ram_reg_bram_0_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(21),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(5),
      O => mem_reg(5)
    );
\ram_reg_bram_0_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(21),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(5),
      O => mem_reg_0(5)
    );
ram_reg_bram_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(21),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(5),
      O => DINADIN(5)
    );
\ram_reg_bram_0_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(20),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(4),
      O => mem_reg(4)
    );
\ram_reg_bram_0_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(20),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(4),
      O => mem_reg_0(4)
    );
ram_reg_bram_0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(20),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(4),
      O => DINADIN(4)
    );
\ram_reg_bram_0_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(19),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(3),
      O => mem_reg(3)
    );
\ram_reg_bram_0_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(19),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(3),
      O => mem_reg_0(3)
    );
ram_reg_bram_0_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(19),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(3),
      O => DINADIN(3)
    );
\ram_reg_bram_0_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(18),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(2),
      O => mem_reg(2)
    );
\ram_reg_bram_0_i_18__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(18),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(2),
      O => mem_reg_0(2)
    );
ram_reg_bram_0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(18),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(2),
      O => DINADIN(2)
    );
\ram_reg_bram_0_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(17),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(1),
      O => mem_reg(1)
    );
\ram_reg_bram_0_i_19__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(17),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(1),
      O => mem_reg_0(1)
    );
ram_reg_bram_0_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(17),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(1),
      O => DINADIN(1)
    );
\ram_reg_bram_0_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_1_q0(16),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_1_q0(0),
      O => mem_reg(0)
    );
\ram_reg_bram_0_i_20__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_2_q0(16),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_2_q0(0),
      O => mem_reg_0(0)
    );
ram_reg_bram_0_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => int_gamma_lut_0_q0(16),
      I1 => \^int_gamma_lut_0_shift0_reg[0]_0\,
      I2 => int_gamma_lut_0_q0(0),
      O => DINADIN(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[0]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(0),
      I4 => \^int_height_reg[10]_0\(0),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[0]_i_2_n_6\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFAC0FACF0AC00A"
    )
        port map (
      I0 => \^ap_start\,
      I1 => \int_isr_reg_n_6_[0]\,
      I2 => \rdata[1]_i_5_n_6\,
      I3 => \rdata[1]_i_6_n_6\,
      I4 => int_gie_reg_n_6,
      I5 => \^int_ier_reg[0]_0\(0),
      O => \rdata[0]_i_4_n_6\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(8),
      I1 => s_axi_CTRL_ARADDR(7),
      I2 => s_axi_CTRL_ARADDR(6),
      I3 => \rdata[0]_i_6_n_6\,
      I4 => \rdata[0]_i_7_n_6\,
      I5 => \rdata[0]_i_8_n_6\,
      O => \rdata[0]_i_5_n_6\
    );
\rdata[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_CTRL_ARADDR(10),
      I3 => s_axi_CTRL_ARADDR(9),
      O => \rdata[0]_i_6_n_6\
    );
\rdata[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(11),
      I1 => s_axi_CTRL_ARADDR(12),
      O => \rdata[0]_i_7_n_6\
    );
\rdata[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(5),
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(1),
      O => \rdata[0]_i_8_n_6\
    );
\rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[10]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(10),
      I4 => \^int_height_reg[10]_0\(10),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[10]_i_3_n_6\
    );
\rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[11]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => width(11),
      I4 => height(11),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[11]_i_3_n_6\
    );
\rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[12]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => width(12),
      I4 => height(12),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[12]_i_3_n_6\
    );
\rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[13]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => width(13),
      I4 => height(13),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[13]_i_3_n_6\
    );
\rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[14]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => width(14),
      I4 => height(14),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[14]_i_3_n_6\
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[15]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => width(15),
      I4 => height(15),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[15]_i_3_n_6\
    );
\rdata[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \rdata[15]_i_8_n_6\,
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(4),
      I4 => s_axi_CTRL_ARADDR(5),
      O => \rdata[15]_i_4_n_6\
    );
\rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000002"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(5),
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => s_axi_CTRL_ARADDR(1),
      I3 => s_axi_CTRL_ARADDR(2),
      I4 => s_axi_CTRL_ARADDR(0),
      I5 => s_axi_CTRL_ARADDR(3),
      O => \rdata[15]_i_5_n_6\
    );
\rdata[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(5),
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => s_axi_CTRL_ARADDR(0),
      I4 => s_axi_CTRL_ARADDR(3),
      O => \rdata[15]_i_6_n_6\
    );
\rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000100"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(5),
      I1 => s_axi_CTRL_ARADDR(0),
      I2 => s_axi_CTRL_ARADDR(1),
      I3 => s_axi_CTRL_ARADDR(2),
      I4 => s_axi_CTRL_ARADDR(4),
      I5 => s_axi_CTRL_ARADDR(3),
      O => \rdata[15]_i_7_n_6\
    );
\rdata[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(11),
      I1 => s_axi_CTRL_ARADDR(12),
      I2 => \rdata[0]_i_6_n_6\,
      I3 => s_axi_CTRL_ARADDR(6),
      I4 => s_axi_CTRL_ARADDR(7),
      I5 => s_axi_CTRL_ARADDR(8),
      O => \rdata[15]_i_8_n_6\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA80A0800A8000"
    )
        port map (
      I0 => \rdata[0]_i_5_n_6\,
      I1 => \int_isr_reg_n_6_[1]\,
      I2 => \rdata[1]_i_5_n_6\,
      I3 => \rdata[1]_i_6_n_6\,
      I4 => \int_task_ap_done__0\,
      I5 => \int_ier_reg_n_6_[1]\,
      O => \rdata[1]_i_2_n_6\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[1]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(1),
      I4 => \^int_height_reg[10]_0\(1),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[1]_i_4_n_6\
    );
\rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE2"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => s_axi_CTRL_ARADDR(1),
      I4 => s_axi_CTRL_ARADDR(0),
      I5 => s_axi_CTRL_ARADDR(5),
      O => \rdata[1]_i_5_n_6\
    );
\rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFC"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => s_axi_CTRL_ARADDR(0),
      I2 => s_axi_CTRL_ARADDR(2),
      I3 => s_axi_CTRL_ARADDR(1),
      I4 => s_axi_CTRL_ARADDR(4),
      I5 => s_axi_CTRL_ARADDR(5),
      O => \rdata[1]_i_6_n_6\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[2]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(2),
      I4 => \^int_height_reg[10]_0\(2),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[2]_i_3_n_6\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_CTRL_ARVALID,
      O => \rdata[31]_i_1_n_6\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => int_gamma_lut_2_read,
      I1 => int_gamma_lut_1_read,
      I2 => int_gamma_lut_0_read,
      I3 => s_axi_CTRL_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \rdata[31]_i_2_n_6\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[3]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(3),
      I4 => \^int_height_reg[10]_0\(3),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[3]_i_3_n_6\
    );
\rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[4]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(4),
      I4 => \^int_height_reg[10]_0\(4),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[4]_i_3_n_6\
    );
\rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[5]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(5),
      I4 => \^int_height_reg[10]_0\(5),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[5]_i_3_n_6\
    );
\rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[6]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(6),
      I4 => \^int_height_reg[10]_0\(6),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[6]_i_3_n_6\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[7]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(7),
      I4 => \^int_height_reg[10]_0\(7),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[7]_i_3_n_6\
    );
\rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[8]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(8),
      I4 => \^int_height_reg[10]_0\(8),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[8]_i_3_n_6\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(5),
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(1),
      I4 => \rdata[15]_i_8_n_6\,
      I5 => \rdata[15]_i_6_n_6\,
      O => \rdata[9]_i_2_n_6\
    );
\rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rdata[15]_i_5_n_6\,
      I1 => \int_video_format_reg_n_6_[9]\,
      I2 => \rdata[15]_i_6_n_6\,
      I3 => \^int_width_reg[10]_0\(9),
      I4 => \^int_height_reg[10]_0\(9),
      I5 => \rdata[15]_i_7_n_6\,
      O => \rdata[9]_i_4_n_6\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(0),
      Q => s_axi_CTRL_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(10),
      Q => s_axi_CTRL_RDATA(10),
      R => '0'
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(11),
      Q => s_axi_CTRL_RDATA(11),
      R => '0'
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(12),
      Q => s_axi_CTRL_RDATA(12),
      R => '0'
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(13),
      Q => s_axi_CTRL_RDATA(13),
      R => '0'
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(14),
      Q => s_axi_CTRL_RDATA(14),
      R => '0'
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(15),
      Q => s_axi_CTRL_RDATA(15),
      R => '0'
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_42,
      Q => s_axi_CTRL_RDATA(16),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_43,
      Q => s_axi_CTRL_RDATA(17),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_44,
      Q => s_axi_CTRL_RDATA(18),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_45,
      Q => s_axi_CTRL_RDATA(19),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(1),
      Q => s_axi_CTRL_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_46,
      Q => s_axi_CTRL_RDATA(20),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_47,
      Q => s_axi_CTRL_RDATA(21),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_48,
      Q => s_axi_CTRL_RDATA(22),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_49,
      Q => s_axi_CTRL_RDATA(23),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_50,
      Q => s_axi_CTRL_RDATA(24),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_51,
      Q => s_axi_CTRL_RDATA(25),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_52,
      Q => s_axi_CTRL_RDATA(26),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_53,
      Q => s_axi_CTRL_RDATA(27),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_54,
      Q => s_axi_CTRL_RDATA(28),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_55,
      Q => s_axi_CTRL_RDATA(29),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(2),
      Q => s_axi_CTRL_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_56,
      Q => s_axi_CTRL_RDATA(30),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => int_gamma_lut_1_n_57,
      Q => s_axi_CTRL_RDATA(31),
      R => \rdata[31]_i_1_n_6\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(3),
      Q => s_axi_CTRL_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(4),
      Q => s_axi_CTRL_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(5),
      Q => s_axi_CTRL_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(6),
      Q => s_axi_CTRL_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(7),
      Q => s_axi_CTRL_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(8),
      Q => s_axi_CTRL_RDATA(8),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_6\,
      D => \p_0_in__0\(9),
      Q => s_axi_CTRL_RDATA(9),
      R => '0'
    );
s_axi_CTRL_RVALID_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => int_gamma_lut_2_read,
      I1 => \FSM_onehot_rstate_reg_n_6_[2]\,
      I2 => int_gamma_lut_0_read,
      I3 => int_gamma_lut_1_read,
      O => s_axi_CTRL_RVALID
    );
s_axi_CTRL_WREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_6_[2]\,
      I1 => s_axi_CTRL_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      O => s_axi_CTRL_WREADY
    );
\sub_i_i_i_reg_179[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(0),
      O => \int_width_reg[9]_0\(0)
    );
\sub_i_i_i_reg_179[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(9),
      I1 => \^int_width_reg[10]_0\(7),
      I2 => \sub_i_i_i_reg_179[10]_i_2_n_6\,
      I3 => \^int_width_reg[10]_0\(6),
      I4 => \^int_width_reg[10]_0\(8),
      I5 => \^int_width_reg[10]_0\(10),
      O => \int_width_reg[9]_0\(10)
    );
\sub_i_i_i_reg_179[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(4),
      I1 => \^int_width_reg[10]_0\(2),
      I2 => \^int_width_reg[10]_0\(0),
      I3 => \^int_width_reg[10]_0\(1),
      I4 => \^int_width_reg[10]_0\(3),
      I5 => \^int_width_reg[10]_0\(5),
      O => \sub_i_i_i_reg_179[10]_i_2_n_6\
    );
\sub_i_i_i_reg_179[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(0),
      I1 => \^int_width_reg[10]_0\(1),
      O => \int_width_reg[9]_0\(1)
    );
\sub_i_i_i_reg_179[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(1),
      I1 => \^int_width_reg[10]_0\(0),
      I2 => \^int_width_reg[10]_0\(2),
      O => \int_width_reg[9]_0\(2)
    );
\sub_i_i_i_reg_179[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(2),
      I1 => \^int_width_reg[10]_0\(0),
      I2 => \^int_width_reg[10]_0\(1),
      I3 => \^int_width_reg[10]_0\(3),
      O => \int_width_reg[9]_0\(3)
    );
\sub_i_i_i_reg_179[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(3),
      I1 => \^int_width_reg[10]_0\(1),
      I2 => \^int_width_reg[10]_0\(0),
      I3 => \^int_width_reg[10]_0\(2),
      I4 => \^int_width_reg[10]_0\(4),
      O => \int_width_reg[9]_0\(4)
    );
\sub_i_i_i_reg_179[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(4),
      I1 => \^int_width_reg[10]_0\(2),
      I2 => \^int_width_reg[10]_0\(0),
      I3 => \^int_width_reg[10]_0\(1),
      I4 => \^int_width_reg[10]_0\(3),
      I5 => \^int_width_reg[10]_0\(5),
      O => \int_width_reg[9]_0\(5)
    );
\sub_i_i_i_reg_179[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sub_i_i_i_reg_179[10]_i_2_n_6\,
      I1 => \^int_width_reg[10]_0\(6),
      O => \int_width_reg[9]_0\(6)
    );
\sub_i_i_i_reg_179[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(6),
      I1 => \sub_i_i_i_reg_179[10]_i_2_n_6\,
      I2 => \^int_width_reg[10]_0\(7),
      O => \int_width_reg[9]_0\(7)
    );
\sub_i_i_i_reg_179[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(7),
      I1 => \sub_i_i_i_reg_179[10]_i_2_n_6\,
      I2 => \^int_width_reg[10]_0\(6),
      I3 => \^int_width_reg[10]_0\(8),
      O => \int_width_reg[9]_0\(8)
    );
\sub_i_i_i_reg_179[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^int_width_reg[10]_0\(8),
      I1 => \^int_width_reg[10]_0\(6),
      I2 => \sub_i_i_i_reg_179[10]_i_2_n_6\,
      I3 => \^int_width_reg[10]_0\(7),
      I4 => \^int_width_reg[10]_0\(9),
      O => \int_width_reg[9]_0\(9)
    );
\waddr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_AWVALID,
      O => aw_hs
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(8),
      Q => p_0_in(8),
      R => '0'
    );
\waddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(9),
      Q => \waddr_reg_n_6_[11]\,
      R => '0'
    );
\waddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(10),
      Q => \waddr_reg_n_6_[12]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(0),
      Q => p_0_in(0),
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(1),
      Q => p_0_in(1),
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(2),
      Q => p_0_in(2),
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(3),
      Q => p_0_in(3),
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(4),
      Q => p_0_in(4),
      R => '0'
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(5),
      Q => p_0_in(5),
      R => '0'
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(6),
      Q => p_0_in(6),
      R => '0'
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_CTRL_AWADDR(7),
      Q => p_0_in(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_315_1 is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \ap_CS_fsm_reg[3]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \i_fu_50_reg[0]_0\ : out STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_NS_fsm13_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i_fu_50_reg[10]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \int_gamma_lut_0_shift0_reg[0]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_315_1;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_315_1 is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Gamma_U0_gamma_lut_2_address0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln315_fu_146_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_31 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_32 : STD_LOGIC;
  signal i_fu_500 : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[0]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[10]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[1]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[2]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[3]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[4]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[5]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[6]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[7]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[8]\ : STD_LOGIC;
  signal \i_fu_50_reg_n_6_[9]\ : STD_LOGIC;
  signal zext_ln315_reg_189_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_10 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_10__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_10__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_11 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_1__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_2 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_2__0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_2__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_3 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_3__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_3__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_4 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_4__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_4__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_5 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_5__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_5__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_6 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_6__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_6__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_7 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_7__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_7__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_8 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_8__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_8__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_9 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_9__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \ram_reg_bram_0_i_9__1\ : label is "soft_lutpair102";
begin
  ADDRBWRADDR(8 downto 0) <= \^addrbwraddr\(8 downto 0);
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_32,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_6
     port map (
      ADDRBWRADDR(8 downto 0) => \^addrbwraddr\(8 downto 0),
      D(0) => D(0),
      E(0) => E(0),
      Gamma_U0_gamma_lut_2_address0(0) => Gamma_U0_gamma_lut_2_address0(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      ap_NS_fsm13_out => ap_NS_fsm13_out,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg(0) => i_fu_500,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_31,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_1 => flow_control_loop_pipe_sequential_init_U_n_32,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg_2 => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg,
      \i_fu_50_reg[0]\ => \i_fu_50_reg[0]_0\,
      \i_fu_50_reg[10]\ => \i_fu_50_reg[10]_0\,
      \i_fu_50_reg[10]_0\(10) => \i_fu_50_reg_n_6_[10]\,
      \i_fu_50_reg[10]_0\(9) => \i_fu_50_reg_n_6_[9]\,
      \i_fu_50_reg[10]_0\(8) => \i_fu_50_reg_n_6_[8]\,
      \i_fu_50_reg[10]_0\(7) => \i_fu_50_reg_n_6_[7]\,
      \i_fu_50_reg[10]_0\(6) => \i_fu_50_reg_n_6_[6]\,
      \i_fu_50_reg[10]_0\(5) => \i_fu_50_reg_n_6_[5]\,
      \i_fu_50_reg[10]_0\(4) => \i_fu_50_reg_n_6_[4]\,
      \i_fu_50_reg[10]_0\(3) => \i_fu_50_reg_n_6_[3]\,
      \i_fu_50_reg[10]_0\(2) => \i_fu_50_reg_n_6_[2]\,
      \i_fu_50_reg[10]_0\(1) => \i_fu_50_reg_n_6_[1]\,
      \i_fu_50_reg[10]_0\(0) => \i_fu_50_reg_n_6_[0]\,
      \i_fu_50_reg[8]\(10 downto 0) => add_ln315_fu_146_p2(10 downto 0),
      \int_gamma_lut_0_shift0_reg[0]\ => \int_gamma_lut_0_shift0_reg[0]\
    );
\i_fu_50_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(0),
      Q => \i_fu_50_reg_n_6_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(10),
      Q => \i_fu_50_reg_n_6_[10]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(1),
      Q => \i_fu_50_reg_n_6_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(2),
      Q => \i_fu_50_reg_n_6_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(3),
      Q => \i_fu_50_reg_n_6_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(4),
      Q => \i_fu_50_reg_n_6_[4]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(5),
      Q => \i_fu_50_reg_n_6_[5]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(6),
      Q => \i_fu_50_reg_n_6_[6]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(7),
      Q => \i_fu_50_reg_n_6_[7]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(8),
      Q => \i_fu_50_reg_n_6_[8]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
\i_fu_50_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_500,
      D => add_ln315_fu_146_p2(9),
      Q => \i_fu_50_reg_n_6_[9]\,
      R => flow_control_loop_pipe_sequential_init_U_n_31
    );
ram_reg_bram_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(0),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(0),
      O => ADDRARDADDR(0)
    );
\ram_reg_bram_0_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(10),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(0),
      O => \ap_CS_fsm_reg[3]\(0)
    );
\ram_reg_bram_0_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(21),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(1),
      O => \ap_CS_fsm_reg[3]_0\(1)
    );
ram_reg_bram_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(20),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(0),
      O => \ap_CS_fsm_reg[3]_0\(0)
    );
\ram_reg_bram_0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(9),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(9),
      O => ADDRARDADDR(9)
    );
\ram_reg_bram_0_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(19),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(9),
      O => \ap_CS_fsm_reg[3]\(9)
    );
ram_reg_bram_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(8),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(8),
      O => ADDRARDADDR(8)
    );
ram_reg_bram_0_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \^ap_enable_reg_pp0_iter1\,
      O => WEA(0)
    );
\ram_reg_bram_0_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(18),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(8),
      O => \ap_CS_fsm_reg[3]\(8)
    );
\ram_reg_bram_0_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(29),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(9),
      O => \ap_CS_fsm_reg[3]_0\(9)
    );
ram_reg_bram_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(7),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(7),
      O => ADDRARDADDR(7)
    );
\ram_reg_bram_0_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(17),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(7),
      O => \ap_CS_fsm_reg[3]\(7)
    );
\ram_reg_bram_0_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(28),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(8),
      O => \ap_CS_fsm_reg[3]_0\(8)
    );
ram_reg_bram_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(6),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(6),
      O => ADDRARDADDR(6)
    );
\ram_reg_bram_0_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(16),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(6),
      O => \ap_CS_fsm_reg[3]\(6)
    );
\ram_reg_bram_0_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(27),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(7),
      O => \ap_CS_fsm_reg[3]_0\(7)
    );
ram_reg_bram_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(5),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(5),
      O => ADDRARDADDR(5)
    );
\ram_reg_bram_0_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(15),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(5),
      O => \ap_CS_fsm_reg[3]\(5)
    );
\ram_reg_bram_0_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(26),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(6),
      O => \ap_CS_fsm_reg[3]_0\(6)
    );
ram_reg_bram_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(4),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(4),
      O => ADDRARDADDR(4)
    );
\ram_reg_bram_0_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(14),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(4),
      O => \ap_CS_fsm_reg[3]\(4)
    );
\ram_reg_bram_0_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(25),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(5),
      O => \ap_CS_fsm_reg[3]_0\(5)
    );
ram_reg_bram_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(3),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(3),
      O => ADDRARDADDR(3)
    );
\ram_reg_bram_0_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(13),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(3),
      O => \ap_CS_fsm_reg[3]\(3)
    );
\ram_reg_bram_0_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(24),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(4),
      O => \ap_CS_fsm_reg[3]_0\(4)
    );
ram_reg_bram_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(2),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(2),
      O => ADDRARDADDR(2)
    );
\ram_reg_bram_0_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(12),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(2),
      O => \ap_CS_fsm_reg[3]\(2)
    );
\ram_reg_bram_0_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(23),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(3),
      O => \ap_CS_fsm_reg[3]_0\(3)
    );
ram_reg_bram_0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(1),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(1),
      O => ADDRARDADDR(1)
    );
\ram_reg_bram_0_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(11),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(1),
      O => \ap_CS_fsm_reg[3]\(1)
    );
\ram_reg_bram_0_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(22),
      I1 => Q(2),
      I2 => zext_ln315_reg_189_reg(2),
      O => \ap_CS_fsm_reg[3]_0\(2)
    );
\zext_ln315_reg_189_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => Gamma_U0_gamma_lut_2_address0(0),
      Q => zext_ln315_reg_189_reg(0),
      R => '0'
    );
\zext_ln315_reg_189_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(0),
      Q => zext_ln315_reg_189_reg(1),
      R => '0'
    );
\zext_ln315_reg_189_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(1),
      Q => zext_ln315_reg_189_reg(2),
      R => '0'
    );
\zext_ln315_reg_189_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(2),
      Q => zext_ln315_reg_189_reg(3),
      R => '0'
    );
\zext_ln315_reg_189_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(3),
      Q => zext_ln315_reg_189_reg(4),
      R => '0'
    );
\zext_ln315_reg_189_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(4),
      Q => zext_ln315_reg_189_reg(5),
      R => '0'
    );
\zext_ln315_reg_189_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(5),
      Q => zext_ln315_reg_189_reg(6),
      R => '0'
    );
\zext_ln315_reg_189_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(6),
      Q => zext_ln315_reg_189_reg(7),
      R => '0'
    );
\zext_ln315_reg_189_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(7),
      Q => zext_ln315_reg_189_reg(8),
      R => '0'
    );
\zext_ln315_reg_189_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^addrbwraddr\(8),
      Q => zext_ln315_reg_189_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_327_4 is
  port (
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg_0 : out STD_LOGIC;
    full_n_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : out STD_LOGIC;
    lut_0_ce0 : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg : in STD_LOGIC;
    Gamma_U0_ap_ready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    push_0 : in STD_LOGIC;
    imgRgb_empty_n : in STD_LOGIC;
    imgGamma_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \x_fu_60[10]_i_4\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \icmp_ln325_fu_134_p2__20\ : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_327_4;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_327_4 is
  signal ap_done_reg1 : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter1_reg_0\ : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter2_i_1__0_n_6\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter2_reg_0\ : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_23 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal \^full_n_reg\ : STD_LOGIC;
  signal x_2_fu_136_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal x_fu_60 : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[0]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[10]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[1]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[2]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[3]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[4]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[5]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[6]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[7]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[8]\ : STD_LOGIC;
  signal \x_fu_60_reg_n_6_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[15][0]_srl16_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_3\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter2_i_1__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_1\ : label is "soft_lutpair109";
begin
  ap_enable_reg_pp0_iter1_reg_0 <= \^ap_enable_reg_pp0_iter1_reg_0\;
  ap_enable_reg_pp0_iter2_reg_0 <= \^ap_enable_reg_pp0_iter2_reg_0\;
  full_n_reg <= \^full_n_reg\;
\SRL_SIG_reg[15][0]_srl16_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I1 => imgRgb_empty_n,
      I2 => \^ap_enable_reg_pp0_iter2_reg_0\,
      I3 => imgGamma_full_n,
      O => push
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A200A2"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I2 => imgRgb_empty_n,
      I3 => \^ap_enable_reg_pp0_iter2_reg_0\,
      I4 => imgGamma_full_n,
      O => ap_done_reg1
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => \^ap_enable_reg_pp0_iter1_reg_0\,
      R => '0'
    );
\ap_enable_reg_pp0_iter2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8F8"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I1 => imgRgb_empty_n,
      I2 => \^ap_enable_reg_pp0_iter2_reg_0\,
      I3 => imgGamma_full_n,
      O => \ap_enable_reg_pp0_iter2_i_1__0_n_6\
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_enable_reg_pp0_iter2_i_1__0_n_6\,
      Q => \^ap_enable_reg_pp0_iter2_reg_0\,
      R => SR(0)
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_23,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init_5
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => x_fu_60,
      Gamma_U0_ap_ready => Gamma_U0_ap_ready,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm_reg[2]\,
      \ap_CS_fsm_reg[2]_0\(0) => \ap_CS_fsm_reg[2]_0\(0),
      ap_clk => ap_clk,
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter1_reg => \^ap_enable_reg_pp0_iter1_reg_0\,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_10,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => flow_control_loop_pipe_sequential_init_U_n_6,
      full_n_reg => \^full_n_reg\,
      grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_23,
      \icmp_ln325_fu_134_p2__20\ => \icmp_ln325_fu_134_p2__20\,
      imgGamma_full_n => imgGamma_full_n,
      imgRgb_empty_n => imgRgb_empty_n,
      \x_fu_60[10]_i_4_0\(10 downto 0) => \x_fu_60[10]_i_4\(10 downto 0),
      \x_fu_60_reg[0]\ => \^ap_enable_reg_pp0_iter2_reg_0\,
      \x_fu_60_reg[10]\(10) => \x_fu_60_reg_n_6_[10]\,
      \x_fu_60_reg[10]\(9) => \x_fu_60_reg_n_6_[9]\,
      \x_fu_60_reg[10]\(8) => \x_fu_60_reg_n_6_[8]\,
      \x_fu_60_reg[10]\(7) => \x_fu_60_reg_n_6_[7]\,
      \x_fu_60_reg[10]\(6) => \x_fu_60_reg_n_6_[6]\,
      \x_fu_60_reg[10]\(5) => \x_fu_60_reg_n_6_[5]\,
      \x_fu_60_reg[10]\(4) => \x_fu_60_reg_n_6_[4]\,
      \x_fu_60_reg[10]\(3) => \x_fu_60_reg_n_6_[3]\,
      \x_fu_60_reg[10]\(2) => \x_fu_60_reg_n_6_[2]\,
      \x_fu_60_reg[10]\(1) => \x_fu_60_reg_n_6_[1]\,
      \x_fu_60_reg[10]\(0) => \x_fu_60_reg_n_6_[0]\,
      \x_fu_60_reg[8]\(10 downto 0) => x_2_fu_136_p2(10 downto 0)
    );
\mOutPtr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A6AAA6A"
    )
        port map (
      I0 => push_0,
      I1 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I2 => imgRgb_empty_n,
      I3 => \^ap_enable_reg_pp0_iter2_reg_0\,
      I4 => imgGamma_full_n,
      O => E(0)
    );
ram_reg_bram_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => \^full_n_reg\,
      I1 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I2 => Q(2),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(0),
      O => lut_0_ce0
    );
\x_fu_60_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(0),
      Q => \x_fu_60_reg_n_6_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(10),
      Q => \x_fu_60_reg_n_6_[10]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(1),
      Q => \x_fu_60_reg_n_6_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(2),
      Q => \x_fu_60_reg_n_6_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(3),
      Q => \x_fu_60_reg_n_6_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(4),
      Q => \x_fu_60_reg_n_6_[4]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(5),
      Q => \x_fu_60_reg_n_6_[5]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(6),
      Q => \x_fu_60_reg_n_6_[6]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(7),
      Q => \x_fu_60_reg_n_6_[7]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(8),
      Q => \x_fu_60_reg_n_6_[8]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
\x_fu_60_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => x_fu_60,
      D => x_2_fu_136_p2(9),
      Q => \x_fu_60_reg_n_6_[9]\,
      R => flow_control_loop_pipe_sequential_init_U_n_10
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2 is
  port (
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST : out STD_LOGIC;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_9_in : out STD_LOGIC;
    \icmp_ln258_reg_193_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln258_reg_193_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \m_axis_video_TDATA_reg1__0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TLAST_int_regslice : out STD_LOGIC;
    m_axis_video_TUSER_int_regslice : out STD_LOGIC;
    ap_done_cache_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sof_reg_86_reg[0]\ : out STD_LOGIC;
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg : out STD_LOGIC;
    \sof_2_reg_133_reg[0]_0\ : out STD_LOGIC;
    \axi_last_reg_197_reg[0]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg : in STD_LOGIC;
    sof_reg_86 : in STD_LOGIC;
    push : in STD_LOGIC;
    imgGamma_empty_n : in STD_LOGIC;
    m_axis_video_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_p2_reg[3]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \data_p2_reg[29]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \data_p2_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TLAST_reg : in STD_LOGIC;
    m_axis_video_TUSER_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_start : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sof_reg_86_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_last_reg_197_reg[0]_1\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \icmp_ln258_reg_193_reg[0]_2\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \data_p2_reg[0]\ : in STD_LOGIC;
    data_p2 : in STD_LOGIC;
    \data_p2_reg[0]_0\ : in STD_LOGIC;
    data_p2_0 : in STD_LOGIC
  );
end design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2 is
  signal \^ap_cs_fsm_reg[2]\ : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter1_i_1__1_n_6\ : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal axi_last_fu_165_p2 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tlast\ : STD_LOGIC;
  signal \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tuser\ : STD_LOGIC;
  signal icmp_ln258_fu_153_p2 : STD_LOGIC;
  signal \icmp_ln258_reg_193_reg_n_6_[0]\ : STD_LOGIC;
  signal j_2_fu_159_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal j_fu_76 : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[0]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[10]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[1]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[2]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[3]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[4]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[5]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[6]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[7]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[8]\ : STD_LOGIC;
  signal \j_fu_76_reg_n_6_[9]\ : STD_LOGIC;
  signal \^m_axis_video_tdata_reg1__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_p1[29]_i_3\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \data_p2[29]_i_1__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[0]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[10]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[11]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[12]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[13]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[14]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[15]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[16]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[17]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[18]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[19]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[1]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[20]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[21]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[22]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[23]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[24]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[25]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[26]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[27]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[28]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[29]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[2]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[3]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[4]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[5]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[6]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[7]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[8]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m_axis_video_TDATA_reg[9]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m_axis_video_TLAST_reg[0]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \m_axis_video_TUSER_reg[0]_i_1\ : label is "soft_lutpair139";
begin
  \ap_CS_fsm_reg[2]\ <= \^ap_cs_fsm_reg[2]\;
  grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST <= \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tlast\;
  grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER <= \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tuser\;
  \m_axis_video_TDATA_reg1__0\ <= \^m_axis_video_tdata_reg1__0\;
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8000AAAAAAAA"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => Q(1),
      I2 => m_axis_video_TREADY_int_regslice,
      I3 => imgGamma_empty_n,
      I4 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_done_reg1
    );
\ap_enable_reg_pp0_iter1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAEAEAEAEAEAE"
    )
        port map (
      I0 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I3 => imgGamma_empty_n,
      I4 => m_axis_video_TREADY_int_regslice,
      I5 => Q(1),
      O => \ap_enable_reg_pp0_iter1_i_1__1_n_6\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_enable_reg_pp0_iter1_i_1__1_n_6\,
      Q => ap_enable_reg_pp0_iter1,
      R => SR(0)
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
\axi_last_reg_197_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => axi_last_fu_165_p2,
      Q => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tlast\,
      R => '0'
    );
\data_p1[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => Q(1),
      I1 => m_axis_video_TREADY_int_regslice,
      I2 => imgGamma_empty_n,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      O => \^ap_cs_fsm_reg[2]\
    );
\data_p1[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => imgGamma_empty_n,
      I3 => m_axis_video_TREADY_int_regslice,
      I4 => Q(1),
      O => \^m_axis_video_tdata_reg1__0\
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => Q(1),
      I1 => m_axis_video_TREADY_int_regslice,
      I2 => imgGamma_empty_n,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I5 => \data_p2_reg[3]_0\(0),
      O => \ap_CS_fsm_reg[2]_0\(0)
    );
\data_p2[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tuser\,
      I1 => Q(1),
      I2 => m_axis_video_TUSER_reg,
      I3 => \^ap_cs_fsm_reg[2]\,
      I4 => \data_p2_reg[0]\,
      I5 => data_p2,
      O => \sof_2_reg_133_reg[0]_0\
    );
\data_p2[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tlast\,
      I1 => Q(1),
      I2 => m_axis_video_TLAST_reg,
      I3 => \^ap_cs_fsm_reg[2]\,
      I4 => \data_p2_reg[0]_0\,
      I5 => data_p2_0,
      O => \axi_last_reg_197_reg[0]_0\
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => Q(1),
      I1 => m_axis_video_TREADY_int_regslice,
      I2 => imgGamma_empty_n,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I5 => \data_p2_reg[3]_0\(1),
      O => \ap_CS_fsm_reg[2]_0\(1)
    );
\data_p2[29]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => imgGamma_empty_n,
      I3 => Q(1),
      I4 => m_axis_video_TREADY_int_regslice,
      O => \icmp_ln258_reg_193_reg[0]_0\(0)
    );
\data_p2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => Q(1),
      I1 => m_axis_video_TREADY_int_regslice,
      I2 => imgGamma_empty_n,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I5 => \data_p2_reg[3]_0\(2),
      O => \ap_CS_fsm_reg[2]_0\(2)
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => imgGamma_empty_n,
      I3 => m_axis_video_TREADY_int_regslice,
      I4 => Q(1),
      I5 => \data_p2_reg[3]\,
      O => \icmp_ln258_reg_193_reg[0]_1\(0)
    );
\data_p2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => Q(1),
      I1 => m_axis_video_TREADY_int_regslice,
      I2 => imgGamma_empty_n,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I5 => \data_p2_reg[3]_0\(3),
      O => \ap_CS_fsm_reg[2]_0\(3)
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_v_gamma_lut_0_0_flow_control_loop_pipe_sequential_init
     port map (
      D(10 downto 0) => j_2_fu_159_p2(10 downto 0),
      E(0) => j_fu_76,
      MultiPixStream2AXIvideo_U0_ap_start => MultiPixStream2AXIvideo_U0_ap_start,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[2]\(0) => \ap_CS_fsm_reg[2]_1\(0),
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_done_cache_reg_0(1 downto 0) => ap_done_cache_reg(1 downto 0),
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_14,
      ap_rst_n => ap_rst_n,
      axi_last_fu_165_p2 => axi_last_fu_165_p2,
      \axi_last_reg_197_reg[0]\(10 downto 0) => \axi_last_reg_197_reg[0]_1\(10 downto 0),
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_8,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg_0 => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg,
      icmp_ln258_fu_153_p2 => icmp_ln258_fu_153_p2,
      \icmp_ln258_reg_193_reg[0]\ => \icmp_ln258_reg_193_reg_n_6_[0]\,
      \icmp_ln258_reg_193_reg[0]_0\(10 downto 0) => \icmp_ln258_reg_193_reg[0]_2\(10 downto 0),
      imgGamma_empty_n => imgGamma_empty_n,
      \j_fu_76_reg[10]\(10) => \j_fu_76_reg_n_6_[10]\,
      \j_fu_76_reg[10]\(9) => \j_fu_76_reg_n_6_[9]\,
      \j_fu_76_reg[10]\(8) => \j_fu_76_reg_n_6_[8]\,
      \j_fu_76_reg[10]\(7) => \j_fu_76_reg_n_6_[7]\,
      \j_fu_76_reg[10]\(6) => \j_fu_76_reg_n_6_[6]\,
      \j_fu_76_reg[10]\(5) => \j_fu_76_reg_n_6_[5]\,
      \j_fu_76_reg[10]\(4) => \j_fu_76_reg_n_6_[4]\,
      \j_fu_76_reg[10]\(3) => \j_fu_76_reg_n_6_[3]\,
      \j_fu_76_reg[10]\(2) => \j_fu_76_reg_n_6_[2]\,
      \j_fu_76_reg[10]\(1) => \j_fu_76_reg_n_6_[1]\,
      \j_fu_76_reg[10]\(0) => \j_fu_76_reg_n_6_[0]\,
      m_axis_video_TREADY_int_regslice => m_axis_video_TREADY_int_regslice,
      \sof_2_reg_133_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_6,
      \sof_2_reg_133_reg[0]_0\ => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tuser\,
      \sof_2_reg_133_reg[0]_1\ => \^ap_cs_fsm_reg[2]\,
      sof_reg_86 => sof_reg_86,
      \sof_reg_86_reg[0]\ => \sof_reg_86_reg[0]\,
      \sof_reg_86_reg[0]_0\(0) => \sof_reg_86_reg[0]_0\(0)
    );
\icmp_ln258_reg_193_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => icmp_ln258_fu_153_p2,
      Q => \icmp_ln258_reg_193_reg_n_6_[0]\,
      R => '0'
    );
\j_fu_76_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(0),
      Q => \j_fu_76_reg_n_6_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(10),
      Q => \j_fu_76_reg_n_6_[10]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(1),
      Q => \j_fu_76_reg_n_6_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(2),
      Q => \j_fu_76_reg_n_6_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(3),
      Q => \j_fu_76_reg_n_6_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(4),
      Q => \j_fu_76_reg_n_6_[4]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(5),
      Q => \j_fu_76_reg_n_6_[5]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(6),
      Q => \j_fu_76_reg_n_6_[6]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(7),
      Q => \j_fu_76_reg_n_6_[7]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(8),
      Q => \j_fu_76_reg_n_6_[8]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\j_fu_76_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => j_fu_76,
      D => j_2_fu_159_p2(9),
      Q => \j_fu_76_reg_n_6_[9]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\mOutPtr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => push,
      I1 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => imgGamma_empty_n,
      I4 => m_axis_video_TREADY_int_regslice,
      I5 => Q(1),
      O => E(0)
    );
\mOutPtr[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => push,
      I1 => Q(1),
      I2 => m_axis_video_TREADY_int_regslice,
      I3 => imgGamma_empty_n,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \icmp_ln258_reg_193_reg_n_6_[0]\,
      O => p_9_in
    );
\m_axis_video_TDATA_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(0),
      O => D(0)
    );
\m_axis_video_TDATA_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(10),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(10),
      O => D(10)
    );
\m_axis_video_TDATA_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(11),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(11),
      O => D(11)
    );
\m_axis_video_TDATA_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(12),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(12),
      O => D(12)
    );
\m_axis_video_TDATA_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(13),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(13),
      O => D(13)
    );
\m_axis_video_TDATA_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(14),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(14),
      O => D(14)
    );
\m_axis_video_TDATA_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(15),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(15),
      O => D(15)
    );
\m_axis_video_TDATA_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(16),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(16),
      O => D(16)
    );
\m_axis_video_TDATA_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(17),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(17),
      O => D(17)
    );
\m_axis_video_TDATA_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(18),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(18),
      O => D(18)
    );
\m_axis_video_TDATA_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(19),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(19),
      O => D(19)
    );
\m_axis_video_TDATA_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(1),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(1),
      O => D(1)
    );
\m_axis_video_TDATA_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(20),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(20),
      O => D(20)
    );
\m_axis_video_TDATA_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(21),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(21),
      O => D(21)
    );
\m_axis_video_TDATA_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(22),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(22),
      O => D(22)
    );
\m_axis_video_TDATA_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(23),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(23),
      O => D(23)
    );
\m_axis_video_TDATA_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(24),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(24),
      O => D(24)
    );
\m_axis_video_TDATA_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(25),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(25),
      O => D(25)
    );
\m_axis_video_TDATA_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(26),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(26),
      O => D(26)
    );
\m_axis_video_TDATA_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(27),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(27),
      O => D(27)
    );
\m_axis_video_TDATA_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(28),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(28),
      O => D(28)
    );
\m_axis_video_TDATA_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(29),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(29),
      O => D(29)
    );
\m_axis_video_TDATA_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(2),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(2),
      O => D(2)
    );
\m_axis_video_TDATA_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(3),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(3),
      O => D(3)
    );
\m_axis_video_TDATA_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(4),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(4),
      O => D(4)
    );
\m_axis_video_TDATA_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(5),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(5),
      O => D(5)
    );
\m_axis_video_TDATA_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(6),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(6),
      O => D(6)
    );
\m_axis_video_TDATA_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(7),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(7),
      O => D(7)
    );
\m_axis_video_TDATA_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(8),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(8),
      O => D(8)
    );
\m_axis_video_TDATA_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(9),
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => \data_p2_reg[29]\(9),
      O => D(9)
    );
\m_axis_video_TLAST_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tlast\,
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => m_axis_video_TLAST_reg,
      O => m_axis_video_TLAST_int_regslice
    );
\m_axis_video_TUSER_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tuser\,
      I1 => \^m_axis_video_tdata_reg1__0\,
      I2 => m_axis_video_TUSER_reg,
      O => m_axis_video_TUSER_int_regslice
    );
\sof_2_reg_133_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => \^grp_multipixstream2axivideo_pipeline_vitis_loop_258_2_fu_100_m_axis_video_tuser\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_fifo_w30_d16_S is
  port (
    imgGamma_empty_n : out STD_LOGIC;
    imgGamma_full_n : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    p_9_in : in STD_LOGIC;
    push : in STD_LOGIC;
    empty_n_reg_0 : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_v_gamma_lut_0_0_fifo_w30_d16_S;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_fifo_w30_d16_S is
  signal Gamma_U0_imgGamma_num_data_valid : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \addr[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \addr[1]_i_1__0_n_6\ : STD_LOGIC;
  signal \addr[2]_i_1__0_n_6\ : STD_LOGIC;
  signal \addr[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \addr[3]_i_2__0_n_6\ : STD_LOGIC;
  signal \addr[3]_i_3__0_n_6\ : STD_LOGIC;
  signal \addr[3]_i_4_n_6\ : STD_LOGIC;
  signal addr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \empty_n_i_1__0_n_6\ : STD_LOGIC;
  signal \full_n1__4\ : STD_LOGIC;
  signal \full_n_i_1__0_n_6\ : STD_LOGIC;
  signal \^imggamma_empty_n\ : STD_LOGIC;
  signal \^imggamma_full_n\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__1_n_6\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__0_n_6\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__0_n_6\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[0]_i_1__0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \addr[1]_i_1__0\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \addr[2]_i_1__0\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \addr[3]_i_2__0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \addr[3]_i_3__0\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__0\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__0\ : label is "soft_lutpair150";
begin
  imgGamma_empty_n <= \^imggamma_empty_n\;
  imgGamma_full_n <= \^imggamma_full_n\;
U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg: entity work.design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg_1
     port map (
      Q(3 downto 0) => addr_reg(3 downto 0),
      ap_clk => ap_clk,
      \in\(29 downto 0) => \in\(29 downto 0),
      \out\(29 downto 0) => \out\(29 downto 0),
      push => push
    );
\addr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_reg(0),
      O => \addr[0]_i_1__0_n_6\
    );
\addr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => addr_reg(0),
      I1 => push,
      I2 => empty_n_reg_0,
      I3 => addr_reg(1),
      O => \addr[1]_i_1__0_n_6\
    );
\addr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF20F20D"
    )
        port map (
      I0 => push,
      I1 => empty_n_reg_0,
      I2 => addr_reg(0),
      I3 => addr_reg(2),
      I4 => addr_reg(1),
      O => \addr[2]_i_1__0_n_6\
    );
\addr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EF00FF000000"
    )
        port map (
      I0 => \addr[3]_i_3__0_n_6\,
      I1 => \addr[3]_i_4_n_6\,
      I2 => Gamma_U0_imgGamma_num_data_valid(0),
      I3 => \^imggamma_empty_n\,
      I4 => push,
      I5 => empty_n_reg_0,
      O => \addr[3]_i_1__0_n_6\
    );
\addr[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => addr_reg(0),
      I2 => addr_reg(1),
      I3 => addr_reg(3),
      I4 => addr_reg(2),
      O => \addr[3]_i_2__0_n_6\
    );
\addr[3]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Gamma_U0_imgGamma_num_data_valid(2),
      I1 => Gamma_U0_imgGamma_num_data_valid(1),
      O => \addr[3]_i_3__0_n_6\
    );
\addr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Gamma_U0_imgGamma_num_data_valid(3),
      I1 => Gamma_U0_imgGamma_num_data_valid(4),
      O => \addr[3]_i_4_n_6\
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1__0_n_6\,
      D => \addr[0]_i_1__0_n_6\,
      Q => addr_reg(0),
      R => SR(0)
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1__0_n_6\,
      D => \addr[1]_i_1__0_n_6\,
      Q => addr_reg(1),
      R => SR(0)
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1__0_n_6\,
      D => \addr[2]_i_1__0_n_6\,
      Q => addr_reg(2),
      R => SR(0)
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1__0_n_6\,
      D => \addr[3]_i_2__0_n_6\,
      Q => addr_reg(3),
      R => SR(0)
    );
\empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFB00FF00"
    )
        port map (
      I0 => \addr[3]_i_4_n_6\,
      I1 => Gamma_U0_imgGamma_num_data_valid(0),
      I2 => \addr[3]_i_3__0_n_6\,
      I3 => \^imggamma_empty_n\,
      I4 => empty_n_reg_0,
      I5 => push,
      O => \empty_n_i_1__0_n_6\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__0_n_6\,
      Q => \^imggamma_empty_n\,
      R => SR(0)
    );
\full_n_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551000"
    )
        port map (
      I0 => \full_n1__4\,
      I1 => push,
      I2 => \^imggamma_empty_n\,
      I3 => empty_n_reg_0,
      I4 => \^imggamma_full_n\,
      O => \full_n_i_1__0_n_6\
    );
full_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => Gamma_U0_imgGamma_num_data_valid(3),
      I1 => Gamma_U0_imgGamma_num_data_valid(4),
      I2 => Gamma_U0_imgGamma_num_data_valid(2),
      I3 => Gamma_U0_imgGamma_num_data_valid(1),
      I4 => Gamma_U0_imgGamma_num_data_valid(0),
      I5 => p_9_in,
      O => \full_n1__4\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__0_n_6\,
      Q => \^imggamma_full_n\,
      S => SR(0)
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gamma_U0_imgGamma_num_data_valid(0),
      O => \mOutPtr[0]_i_1__0_n_6\
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95AA6A55"
    )
        port map (
      I0 => Gamma_U0_imgGamma_num_data_valid(0),
      I1 => \^imggamma_empty_n\,
      I2 => empty_n_reg_0,
      I3 => push,
      I4 => Gamma_U0_imgGamma_num_data_valid(1),
      O => \mOutPtr[1]_i_1__1_n_6\
    );
\mOutPtr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => \^imggamma_empty_n\,
      I1 => empty_n_reg_0,
      I2 => push,
      I3 => Gamma_U0_imgGamma_num_data_valid(0),
      I4 => Gamma_U0_imgGamma_num_data_valid(2),
      I5 => Gamma_U0_imgGamma_num_data_valid(1),
      O => \mOutPtr[2]_i_1__0_n_6\
    );
\mOutPtr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => Gamma_U0_imgGamma_num_data_valid(0),
      I2 => Gamma_U0_imgGamma_num_data_valid(1),
      I3 => Gamma_U0_imgGamma_num_data_valid(3),
      I4 => Gamma_U0_imgGamma_num_data_valid(2),
      O => \mOutPtr[3]_i_1__0_n_6\
    );
\mOutPtr[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => p_9_in,
      I1 => Gamma_U0_imgGamma_num_data_valid(0),
      I2 => Gamma_U0_imgGamma_num_data_valid(1),
      I3 => Gamma_U0_imgGamma_num_data_valid(2),
      I4 => Gamma_U0_imgGamma_num_data_valid(3),
      I5 => Gamma_U0_imgGamma_num_data_valid(4),
      O => \mOutPtr[4]_i_2__0_n_6\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__0_n_6\,
      Q => Gamma_U0_imgGamma_num_data_valid(0),
      R => SR(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__1_n_6\,
      Q => Gamma_U0_imgGamma_num_data_valid(1),
      R => SR(0)
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[2]_i_1__0_n_6\,
      Q => Gamma_U0_imgGamma_num_data_valid(2),
      R => SR(0)
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[3]_i_1__0_n_6\,
      Q => Gamma_U0_imgGamma_num_data_valid(3),
      R => SR(0)
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[4]_i_2__0_n_6\,
      Q => Gamma_U0_imgGamma_num_data_valid(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_fifo_w30_d16_S_0 is
  port (
    imgRgb_empty_n : out STD_LOGIC;
    imgRgb_full_n : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    push : in STD_LOGIC;
    imgGamma_full_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    p_9_in : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_v_gamma_lut_0_0_fifo_w30_d16_S_0 : entity is "design_1_v_gamma_lut_0_0_fifo_w30_d16_S";
end design_1_v_gamma_lut_0_0_fifo_w30_d16_S_0;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_fifo_w30_d16_S_0 is
  signal addr15_in : STD_LOGIC;
  signal \addr[0]_i_1_n_6\ : STD_LOGIC;
  signal \addr[1]_i_1_n_6\ : STD_LOGIC;
  signal \addr[2]_i_1_n_6\ : STD_LOGIC;
  signal \addr[3]_i_1_n_6\ : STD_LOGIC;
  signal \addr[3]_i_2_n_6\ : STD_LOGIC;
  signal addr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal empty_n_i_1_n_6 : STD_LOGIC;
  signal \empty_n_i_2__0_n_6\ : STD_LOGIC;
  signal full_n_i_1_n_6 : STD_LOGIC;
  signal \full_n_i_2__0_n_6\ : STD_LOGIC;
  signal \^imgrgb_empty_n\ : STD_LOGIC;
  signal \^imgrgb_full_n\ : STD_LOGIC;
  signal imgRgb_num_data_valid : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \mOutPtr[0]_i_1_n_6\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__0_n_6\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1_n_6\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1_n_6\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2_n_6\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[0]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \addr[1]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \addr[2]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \addr[3]_i_2\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \addr[3]_i_3\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \empty_n_i_2__0\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \full_n_i_2__0\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1\ : label is "soft_lutpair154";
begin
  imgRgb_empty_n <= \^imgrgb_empty_n\;
  imgRgb_full_n <= \^imgrgb_full_n\;
U_design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg: entity work.design_1_v_gamma_lut_0_0_fifo_w30_d16_S_ShiftReg
     port map (
      Q(3 downto 0) => addr_reg(3 downto 0),
      ap_clk => ap_clk,
      \in\(29 downto 0) => \in\(29 downto 0),
      \out\(29 downto 0) => \out\(29 downto 0),
      push => push
    );
\addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_reg(0),
      O => \addr[0]_i_1_n_6\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A669599"
    )
        port map (
      I0 => addr_reg(0),
      I1 => push,
      I2 => ap_block_pp0_stage0_11001,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => addr_reg(1),
      O => \addr[1]_i_1_n_6\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => addr_reg(0),
      I2 => addr_reg(2),
      I3 => addr_reg(1),
      O => \addr[2]_i_1_n_6\
    );
\addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08C00808C0C0C0C0"
    )
        port map (
      I0 => addr15_in,
      I1 => \^imgrgb_empty_n\,
      I2 => push,
      I3 => imgGamma_full_n,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => ap_enable_reg_pp0_iter1,
      O => \addr[3]_i_1_n_6\
    );
\addr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => addr_reg(0),
      I2 => addr_reg(1),
      I3 => addr_reg(3),
      I4 => addr_reg(2),
      O => \addr[3]_i_2_n_6\
    );
\addr[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => imgRgb_num_data_valid(2),
      I1 => imgRgb_num_data_valid(1),
      I2 => imgRgb_num_data_valid(3),
      I3 => imgRgb_num_data_valid(4),
      I4 => imgRgb_num_data_valid(0),
      O => addr15_in
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1_n_6\,
      D => \addr[0]_i_1_n_6\,
      Q => addr_reg(0),
      R => SR(0)
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1_n_6\,
      D => \addr[1]_i_1_n_6\,
      Q => addr_reg(1),
      R => SR(0)
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1_n_6\,
      D => \addr[2]_i_1_n_6\,
      Q => addr_reg(2),
      R => SR(0)
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \addr[3]_i_1_n_6\,
      D => \addr[3]_i_2_n_6\,
      Q => addr_reg(3),
      R => SR(0)
    );
empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7070F070"
    )
        port map (
      I0 => \empty_n_i_2__0_n_6\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \^imgrgb_empty_n\,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => imgGamma_full_n,
      I5 => push,
      O => empty_n_i_1_n_6
    );
\empty_n_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => imgRgb_num_data_valid(3),
      I1 => imgRgb_num_data_valid(4),
      I2 => imgRgb_num_data_valid(0),
      I3 => imgRgb_num_data_valid(1),
      I4 => imgRgb_num_data_valid(2),
      O => \empty_n_i_2__0_n_6\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => empty_n_i_1_n_6,
      Q => \^imgrgb_empty_n\,
      R => SR(0)
    );
full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F77700003000"
    )
        port map (
      I0 => \full_n_i_2__0_n_6\,
      I1 => push,
      I2 => \^imgrgb_empty_n\,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_block_pp0_stage0_11001,
      I5 => \^imgrgb_full_n\,
      O => full_n_i_1_n_6
    );
\full_n_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => imgRgb_num_data_valid(0),
      I1 => imgRgb_num_data_valid(1),
      I2 => imgRgb_num_data_valid(2),
      I3 => imgRgb_num_data_valid(4),
      I4 => imgRgb_num_data_valid(3),
      O => \full_n_i_2__0_n_6\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => full_n_i_1_n_6,
      Q => \^imgrgb_full_n\,
      S => SR(0)
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => imgRgb_num_data_valid(0),
      O => \mOutPtr[0]_i_1_n_6\
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5595AAAAAA6A5555"
    )
        port map (
      I0 => imgRgb_num_data_valid(0),
      I1 => \^imgrgb_empty_n\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_block_pp0_stage0_11001,
      I4 => push,
      I5 => imgRgb_num_data_valid(1),
      O => \mOutPtr[1]_i_1__0_n_6\
    );
\mOutPtr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => imgRgb_num_data_valid(0),
      I2 => imgRgb_num_data_valid(2),
      I3 => imgRgb_num_data_valid(1),
      O => \mOutPtr[2]_i_1_n_6\
    );
\mOutPtr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => imgRgb_num_data_valid(0),
      I2 => imgRgb_num_data_valid(1),
      I3 => imgRgb_num_data_valid(3),
      I4 => imgRgb_num_data_valid(2),
      O => \mOutPtr[3]_i_1_n_6\
    );
\mOutPtr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => p_9_in,
      I1 => imgRgb_num_data_valid(0),
      I2 => imgRgb_num_data_valid(1),
      I3 => imgRgb_num_data_valid(2),
      I4 => imgRgb_num_data_valid(3),
      I5 => imgRgb_num_data_valid(4),
      O => \mOutPtr[4]_i_2_n_6\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1_n_6\,
      Q => imgRgb_num_data_valid(0),
      R => SR(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__0_n_6\,
      Q => imgRgb_num_data_valid(1),
      R => SR(0)
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[2]_i_1_n_6\,
      Q => imgRgb_num_data_valid(2),
      R => SR(0)
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[3]_i_1_n_6\,
      Q => imgRgb_num_data_valid(3),
      R => SR(0)
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[4]_i_2_n_6\,
      Q => imgRgb_num_data_valid(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream is
  port (
    ack_in_t_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIvideo2MultiPixStream_U0_ap_ready : out STD_LOGIC;
    ap_sync_AXIvideo2MultiPixStream_U0_ap_ready : out STD_LOGIC;
    p_9_in : out STD_LOGIC;
    push : out STD_LOGIC;
    \axi_data_fu_84_reg[29]\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready : in STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    imgRgb_full_n : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    imgRgb_empty_n : in STD_LOGIC;
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \d_read_reg_22_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \d_read_reg_22_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream is
  signal \^axivideo2multipixstream_u0_ap_ready\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal and_ln216_reg_465 : STD_LOGIC;
  signal \and_ln216_reg_465[0]_i_1_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_4_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_5_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_6_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_7_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_8_n_6\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 to 2 );
  signal ap_NS_fsm14_out : STD_LOGIC;
  signal \ap_NS_fsm__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_data_2_fu_74 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \axi_data_2_fu_741__0\ : STD_LOGIC;
  signal axi_last_2_reg_122 : STD_LOGIC;
  signal axi_last_4_loc_fu_82 : STD_LOGIC;
  signal cmp10252_i_fu_267_p2 : STD_LOGIC;
  signal cmp10252_i_reg_449 : STD_LOGIC;
  signal cols_reg_441 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal d_read_reg_22 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \flow_control_loop_pipe_sequential_init_U/ap_loop_init_int\ : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_11 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_12 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_7 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_10 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_11 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_12 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_13 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_14 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_15 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_16 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_17 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_18 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_19 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_20 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_21 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_22 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_23 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_24 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_25 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_26 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_27 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_28 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_29 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_30 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_31 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_32 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_33 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_34 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_35 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_36 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_37 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_38 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_39 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_40 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_41 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_42 : STD_LOGIC;
  signal grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_43 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_216_ap_ce : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_10 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_11 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_12 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_13 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_14 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_15 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_16 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_6 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_7 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_8 : STD_LOGIC;
  signal grp_reg_unsigned_short_s_fu_222_n_9 : STD_LOGIC;
  signal i_5_fu_287_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \i_fu_78[10]_i_5_n_6\ : STD_LOGIC;
  signal i_fu_78_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \icmp_ln188_fu_282_p2__20\ : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_21 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_22 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_23 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_24 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_25 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_26 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_27 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_28 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_29 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_30 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_31 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_32 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_33 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_34 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_35 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_36 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_37 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_9 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_user_V_U_n_6 : STD_LOGIC;
  signal rows_reg_436 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s_axis_video_TLAST_int_regslice : STD_LOGIC;
  signal \s_axis_video_TREADY_int_regslice__1\ : STD_LOGIC;
  signal s_axis_video_TVALID_int_regslice : STD_LOGIC;
  signal select_ln216_reg_476 : STD_LOGIC;
  signal \sof_reg_110[0]_i_1_n_6\ : STD_LOGIC;
  signal \sof_reg_110_reg_n_6_[0]\ : STD_LOGIC;
  signal xor_ln216_fu_273_p2 : STD_LOGIC;
  signal xor_ln216_reg_454 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_8\ : label is "soft_lutpair22";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute SOFT_HLUTNM of ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_fu_78[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_fu_78[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_fu_78[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i_fu_78[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i_fu_78[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i_fu_78[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_fu_78[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_fu_78[9]_i_1\ : label is "soft_lutpair19";
begin
  AXIvideo2MultiPixStream_U0_ap_ready <= \^axivideo2multipixstream_u0_ap_ready\;
  Q(0) <= \^q\(0);
\and_ln216_reg_465[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => xor_ln216_reg_454,
      I1 => \sof_reg_110_reg_n_6_[0]\,
      I2 => ap_CS_fsm_state5,
      I3 => and_ln216_reg_465,
      O => \and_ln216_reg_465[0]_i_1_n_6\
    );
\and_ln216_reg_465_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \and_ln216_reg_465[0]_i_1_n_6\,
      Q => and_ln216_reg_465,
      R => '0'
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA2A2A2"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_start,
      I2 => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      I3 => \^axivideo2multipixstream_u0_ap_ready\,
      I4 => ap_CS_fsm_state5,
      O => \ap_NS_fsm__0\(0)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => ap_CS_fsm_state9,
      O => \ap_NS_fsm__0\(4)
    );
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => \ap_CS_fsm[5]_i_4_n_6\,
      I2 => \ap_CS_fsm[5]_i_5_n_6\,
      I3 => \ap_CS_fsm[5]_i_6_n_6\,
      I4 => \ap_CS_fsm[5]_i_7_n_6\,
      I5 => \ap_CS_fsm[5]_i_8_n_6\,
      O => \^axivideo2multipixstream_u0_ap_ready\
    );
\ap_CS_fsm[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i_fu_78_reg(0),
      I1 => rows_reg_436(0),
      I2 => i_fu_78_reg(1),
      I3 => rows_reg_436(1),
      O => \ap_CS_fsm[5]_i_4_n_6\
    );
\ap_CS_fsm[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i_fu_78_reg(3),
      I1 => rows_reg_436(3),
      I2 => i_fu_78_reg(4),
      I3 => rows_reg_436(4),
      O => \ap_CS_fsm[5]_i_5_n_6\
    );
\ap_CS_fsm[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i_fu_78_reg(2),
      I1 => rows_reg_436(2),
      I2 => i_fu_78_reg(5),
      I3 => rows_reg_436(5),
      O => \ap_CS_fsm[5]_i_6_n_6\
    );
\ap_CS_fsm[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_fu_78_reg(8),
      I1 => rows_reg_436(8),
      I2 => rows_reg_436(10),
      I3 => i_fu_78_reg(10),
      I4 => rows_reg_436(9),
      I5 => i_fu_78_reg(9),
      O => \ap_CS_fsm[5]_i_7_n_6\
    );
\ap_CS_fsm[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rows_reg_436(6),
      I1 => i_fu_78_reg(6),
      I2 => rows_reg_436(7),
      I3 => i_fu_78_reg(7),
      O => \ap_CS_fsm[5]_i_8_n_6\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(0),
      Q => \^q\(0),
      S => SR(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => D(0),
      Q => ap_CS_fsm_state2,
      R => SR(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => SR(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(3),
      Q => ap_CS_fsm_state4,
      R => SR(0)
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(4),
      Q => ap_CS_fsm_state5,
      R => SR(0)
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(5),
      Q => ap_CS_fsm_state6,
      R => SR(0)
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(6),
      Q => ap_CS_fsm_state7,
      R => SR(0)
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(7),
      Q => ap_CS_fsm_state8,
      R => SR(0)
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_NS_fsm__0\(8),
      Q => ap_CS_fsm_state9,
      R => SR(0)
    );
ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      I1 => \^axivideo2multipixstream_u0_ap_ready\,
      O => ap_sync_AXIvideo2MultiPixStream_U0_ap_ready
    );
\axi_data_2_fu_74_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_43,
      Q => axi_data_2_fu_74(0),
      R => '0'
    );
\axi_data_2_fu_74_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_33,
      Q => axi_data_2_fu_74(10),
      R => '0'
    );
\axi_data_2_fu_74_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_32,
      Q => axi_data_2_fu_74(11),
      R => '0'
    );
\axi_data_2_fu_74_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_31,
      Q => axi_data_2_fu_74(12),
      R => '0'
    );
\axi_data_2_fu_74_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_30,
      Q => axi_data_2_fu_74(13),
      R => '0'
    );
\axi_data_2_fu_74_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_29,
      Q => axi_data_2_fu_74(14),
      R => '0'
    );
\axi_data_2_fu_74_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_28,
      Q => axi_data_2_fu_74(15),
      R => '0'
    );
\axi_data_2_fu_74_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_27,
      Q => axi_data_2_fu_74(16),
      R => '0'
    );
\axi_data_2_fu_74_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_26,
      Q => axi_data_2_fu_74(17),
      R => '0'
    );
\axi_data_2_fu_74_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_25,
      Q => axi_data_2_fu_74(18),
      R => '0'
    );
\axi_data_2_fu_74_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_24,
      Q => axi_data_2_fu_74(19),
      R => '0'
    );
\axi_data_2_fu_74_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_42,
      Q => axi_data_2_fu_74(1),
      R => '0'
    );
\axi_data_2_fu_74_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_23,
      Q => axi_data_2_fu_74(20),
      R => '0'
    );
\axi_data_2_fu_74_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_22,
      Q => axi_data_2_fu_74(21),
      R => '0'
    );
\axi_data_2_fu_74_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_21,
      Q => axi_data_2_fu_74(22),
      R => '0'
    );
\axi_data_2_fu_74_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_20,
      Q => axi_data_2_fu_74(23),
      R => '0'
    );
\axi_data_2_fu_74_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_19,
      Q => axi_data_2_fu_74(24),
      R => '0'
    );
\axi_data_2_fu_74_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_18,
      Q => axi_data_2_fu_74(25),
      R => '0'
    );
\axi_data_2_fu_74_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_17,
      Q => axi_data_2_fu_74(26),
      R => '0'
    );
\axi_data_2_fu_74_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_16,
      Q => axi_data_2_fu_74(27),
      R => '0'
    );
\axi_data_2_fu_74_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_15,
      Q => axi_data_2_fu_74(28),
      R => '0'
    );
\axi_data_2_fu_74_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_14,
      Q => axi_data_2_fu_74(29),
      R => '0'
    );
\axi_data_2_fu_74_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_41,
      Q => axi_data_2_fu_74(2),
      R => '0'
    );
\axi_data_2_fu_74_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_40,
      Q => axi_data_2_fu_74(3),
      R => '0'
    );
\axi_data_2_fu_74_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_39,
      Q => axi_data_2_fu_74(4),
      R => '0'
    );
\axi_data_2_fu_74_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_38,
      Q => axi_data_2_fu_74(5),
      R => '0'
    );
\axi_data_2_fu_74_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_37,
      Q => axi_data_2_fu_74(6),
      R => '0'
    );
\axi_data_2_fu_74_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_36,
      Q => axi_data_2_fu_74(7),
      R => '0'
    );
\axi_data_2_fu_74_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_35,
      Q => axi_data_2_fu_74(8),
      R => '0'
    );
\axi_data_2_fu_74_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_34,
      Q => axi_data_2_fu_74(9),
      R => '0'
    );
\axi_last_2_reg_122_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_10,
      Q => axi_last_2_reg_122,
      R => '0'
    );
\axi_last_4_loc_fu_82_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_11,
      Q => axi_last_4_loc_fu_82,
      R => '0'
    );
\cmp10252_i_reg_449_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => cmp10252_i_fu_267_p2,
      Q => cmp10252_i_reg_449,
      R => '0'
    );
\cols_reg_441_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_16,
      Q => cols_reg_441(0),
      R => '0'
    );
\cols_reg_441_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_6,
      Q => cols_reg_441(10),
      R => '0'
    );
\cols_reg_441_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_15,
      Q => cols_reg_441(1),
      R => '0'
    );
\cols_reg_441_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_14,
      Q => cols_reg_441(2),
      R => '0'
    );
\cols_reg_441_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_13,
      Q => cols_reg_441(3),
      R => '0'
    );
\cols_reg_441_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_12,
      Q => cols_reg_441(4),
      R => '0'
    );
\cols_reg_441_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_11,
      Q => cols_reg_441(5),
      R => '0'
    );
\cols_reg_441_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_10,
      Q => cols_reg_441(6),
      R => '0'
    );
\cols_reg_441_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_9,
      Q => cols_reg_441(7),
      R => '0'
    );
\cols_reg_441_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_8,
      Q => cols_reg_441(8),
      R => '0'
    );
\cols_reg_441_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => grp_reg_unsigned_short_s_fu_222_n_7,
      Q => cols_reg_441(9),
      R => '0'
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180: entity work.design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol
     port map (
      D(1 downto 0) => \ap_NS_fsm__0\(8 downto 7),
      Q(3) => ap_CS_fsm_state8,
      Q(2) => ap_CS_fsm_state7,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => ap_CS_fsm_state3,
      SR(0) => SR(0),
      \ap_CS_fsm_reg[5]\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_7,
      ap_clk => ap_clk,
      ap_loop_init_int => \flow_control_loop_pipe_sequential_init_U/ap_loop_init_int\,
      ap_loop_init_int_reg(0) => s_axis_video_TVALID_int_regslice,
      ap_rst_n => ap_rst_n,
      \axi_data_2_fu_741__0\ => \axi_data_2_fu_741__0\,
      axi_last_4_loc_fu_82 => axi_last_4_loc_fu_82,
      \eol_reg_155_reg[0]\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_12,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      s_axis_video_TLAST_int_regslice => s_axis_video_TLAST_int_regslice,
      select_ln216_reg_476 => select_ln216_reg_476,
      \select_ln216_reg_476_reg[0]\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_11
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_12,
      Q => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      R => SR(0)
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132: entity work.design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
     port map (
      D(1) => \ap_NS_fsm__0\(3),
      D(0) => ap_NS_fsm(2),
      E(0) => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_7,
      Q(0) => s_axis_video_TVALID_int_regslice,
      SR(0) => SR(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \axi_data_2_fu_741__0\ => \axi_data_2_fu_741__0\,
      axi_last_2_reg_122 => axi_last_2_reg_122,
      \axi_last_2_reg_122_reg[0]\(3) => ap_CS_fsm_state9,
      \axi_last_2_reg_122_reg[0]\(2) => ap_CS_fsm_state4,
      \axi_last_2_reg_122_reg[0]\(1) => ap_CS_fsm_state3,
      \axi_last_2_reg_122_reg[0]\(0) => ap_CS_fsm_state2,
      axi_last_4_loc_fu_82 => axi_last_4_loc_fu_82,
      \axi_last_4_loc_fu_82_reg[0]\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_10,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_11,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_s_axis_video_TREADY,
      s_axis_video_TLAST_int_regslice => s_axis_video_TLAST_int_regslice,
      \sof_reg_83_reg[0]_0\(0) => grp_reg_unsigned_short_s_fu_216_ap_ce,
      \sof_reg_83_reg[0]_1\ => regslice_both_s_axis_video_V_user_V_U_n_6
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_n_11,
      Q => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_132_ap_start_reg,
      R => SR(0)
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152: entity work.design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width
     port map (
      D(1 downto 0) => \ap_NS_fsm__0\(6 downto 5),
      Q(3) => ap_CS_fsm_state8,
      Q(2) => ap_CS_fsm_state7,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => ap_CS_fsm_state5,
      SR(0) => SR(0),
      \ap_CS_fsm_reg[4]\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_13,
      \ap_CS_fsm_reg[5]\ => \^axivideo2multipixstream_u0_ap_ready\,
      \ap_CS_fsm_reg[7]\(29) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_14,
      \ap_CS_fsm_reg[7]\(28) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_15,
      \ap_CS_fsm_reg[7]\(27) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_16,
      \ap_CS_fsm_reg[7]\(26) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_17,
      \ap_CS_fsm_reg[7]\(25) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_18,
      \ap_CS_fsm_reg[7]\(24) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_19,
      \ap_CS_fsm_reg[7]\(23) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_20,
      \ap_CS_fsm_reg[7]\(22) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_21,
      \ap_CS_fsm_reg[7]\(21) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_22,
      \ap_CS_fsm_reg[7]\(20) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_23,
      \ap_CS_fsm_reg[7]\(19) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_24,
      \ap_CS_fsm_reg[7]\(18) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_25,
      \ap_CS_fsm_reg[7]\(17) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_26,
      \ap_CS_fsm_reg[7]\(16) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_27,
      \ap_CS_fsm_reg[7]\(15) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_28,
      \ap_CS_fsm_reg[7]\(14) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_29,
      \ap_CS_fsm_reg[7]\(13) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_30,
      \ap_CS_fsm_reg[7]\(12) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_31,
      \ap_CS_fsm_reg[7]\(11) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_32,
      \ap_CS_fsm_reg[7]\(10) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_33,
      \ap_CS_fsm_reg[7]\(9) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_34,
      \ap_CS_fsm_reg[7]\(8) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_35,
      \ap_CS_fsm_reg[7]\(7) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_36,
      \ap_CS_fsm_reg[7]\(6) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_37,
      \ap_CS_fsm_reg[7]\(5) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_38,
      \ap_CS_fsm_reg[7]\(4) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_39,
      \ap_CS_fsm_reg[7]\(3) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_40,
      \ap_CS_fsm_reg[7]\(2) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_41,
      \ap_CS_fsm_reg[7]\(1) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_42,
      \ap_CS_fsm_reg[7]\(0) => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_43,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_done_cache_reg(0) => s_axis_video_TVALID_int_regslice,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_init_int => \flow_control_loop_pipe_sequential_init_U/ap_loop_init_int\,
      ap_rst_n => ap_rst_n,
      \axi_data_fu_84_reg[29]_0\(29 downto 0) => \axi_data_fu_84_reg[29]\(29 downto 0),
      \axi_data_fu_84_reg[29]_1\(29 downto 0) => axi_data_2_fu_74(29 downto 0),
      \axi_data_fu_84_reg[29]_2\(29) => regslice_both_s_axis_video_V_data_V_U_n_8,
      \axi_data_fu_84_reg[29]_2\(28) => regslice_both_s_axis_video_V_data_V_U_n_9,
      \axi_data_fu_84_reg[29]_2\(27) => regslice_both_s_axis_video_V_data_V_U_n_10,
      \axi_data_fu_84_reg[29]_2\(26) => regslice_both_s_axis_video_V_data_V_U_n_11,
      \axi_data_fu_84_reg[29]_2\(25) => regslice_both_s_axis_video_V_data_V_U_n_12,
      \axi_data_fu_84_reg[29]_2\(24) => regslice_both_s_axis_video_V_data_V_U_n_13,
      \axi_data_fu_84_reg[29]_2\(23) => regslice_both_s_axis_video_V_data_V_U_n_14,
      \axi_data_fu_84_reg[29]_2\(22) => regslice_both_s_axis_video_V_data_V_U_n_15,
      \axi_data_fu_84_reg[29]_2\(21) => regslice_both_s_axis_video_V_data_V_U_n_16,
      \axi_data_fu_84_reg[29]_2\(20) => regslice_both_s_axis_video_V_data_V_U_n_17,
      \axi_data_fu_84_reg[29]_2\(19) => regslice_both_s_axis_video_V_data_V_U_n_18,
      \axi_data_fu_84_reg[29]_2\(18) => regslice_both_s_axis_video_V_data_V_U_n_19,
      \axi_data_fu_84_reg[29]_2\(17) => regslice_both_s_axis_video_V_data_V_U_n_20,
      \axi_data_fu_84_reg[29]_2\(16) => regslice_both_s_axis_video_V_data_V_U_n_21,
      \axi_data_fu_84_reg[29]_2\(15) => regslice_both_s_axis_video_V_data_V_U_n_22,
      \axi_data_fu_84_reg[29]_2\(14) => regslice_both_s_axis_video_V_data_V_U_n_23,
      \axi_data_fu_84_reg[29]_2\(13) => regslice_both_s_axis_video_V_data_V_U_n_24,
      \axi_data_fu_84_reg[29]_2\(12) => regslice_both_s_axis_video_V_data_V_U_n_25,
      \axi_data_fu_84_reg[29]_2\(11) => regslice_both_s_axis_video_V_data_V_U_n_26,
      \axi_data_fu_84_reg[29]_2\(10) => regslice_both_s_axis_video_V_data_V_U_n_27,
      \axi_data_fu_84_reg[29]_2\(9) => regslice_both_s_axis_video_V_data_V_U_n_28,
      \axi_data_fu_84_reg[29]_2\(8) => regslice_both_s_axis_video_V_data_V_U_n_29,
      \axi_data_fu_84_reg[29]_2\(7) => regslice_both_s_axis_video_V_data_V_U_n_30,
      \axi_data_fu_84_reg[29]_2\(6) => regslice_both_s_axis_video_V_data_V_U_n_31,
      \axi_data_fu_84_reg[29]_2\(5) => regslice_both_s_axis_video_V_data_V_U_n_32,
      \axi_data_fu_84_reg[29]_2\(4) => regslice_both_s_axis_video_V_data_V_U_n_33,
      \axi_data_fu_84_reg[29]_2\(3) => regslice_both_s_axis_video_V_data_V_U_n_34,
      \axi_data_fu_84_reg[29]_2\(2) => regslice_both_s_axis_video_V_data_V_U_n_35,
      \axi_data_fu_84_reg[29]_2\(1) => regslice_both_s_axis_video_V_data_V_U_n_36,
      \axi_data_fu_84_reg[29]_2\(0) => regslice_both_s_axis_video_V_data_V_U_n_37,
      axi_last_2_reg_122 => axi_last_2_reg_122,
      cmp10252_i_reg_449 => cmp10252_i_reg_449,
      \data_p1_reg[0]\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_n_7,
      \eol_reg_155_reg[0]_0\ => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_12,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_180_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_eol_out,
      \icmp_ln188_fu_282_p2__20\ => \icmp_ln188_fu_282_p2__20\,
      \icmp_ln191_reg_279_reg[0]_0\(10 downto 0) => cols_reg_441(10 downto 0),
      imgRgb_empty_n => imgRgb_empty_n,
      imgRgb_full_n => imgRgb_full_n,
      p_9_in => p_9_in,
      push => push,
      s_axis_video_TLAST_int_regslice => s_axis_video_TLAST_int_regslice,
      \s_axis_video_TREADY_int_regslice__1\ => \s_axis_video_TREADY_int_regslice__1\,
      select_ln216_reg_476 => select_ln216_reg_476,
      \sof_reg_167_reg[0]_0\ => \sof_reg_110_reg_n_6_[0]\
    );
grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_13,
      Q => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg,
      R => SR(0)
    );
grp_reg_unsigned_short_s_fu_216: entity work.design_1_v_gamma_lut_0_0_reg_unsigned_short_s
     port map (
      E(0) => grp_reg_unsigned_short_s_fu_216_ap_ce,
      Q(10 downto 0) => d_read_reg_22(10 downto 0),
      ap_clk => ap_clk,
      \d_read_reg_22_reg[10]_0\(10 downto 0) => \d_read_reg_22_reg[10]_0\(10 downto 0)
    );
grp_reg_unsigned_short_s_fu_222: entity work.design_1_v_gamma_lut_0_0_reg_unsigned_short_s_9
     port map (
      E(0) => grp_reg_unsigned_short_s_fu_216_ap_ce,
      Q(10) => grp_reg_unsigned_short_s_fu_222_n_6,
      Q(9) => grp_reg_unsigned_short_s_fu_222_n_7,
      Q(8) => grp_reg_unsigned_short_s_fu_222_n_8,
      Q(7) => grp_reg_unsigned_short_s_fu_222_n_9,
      Q(6) => grp_reg_unsigned_short_s_fu_222_n_10,
      Q(5) => grp_reg_unsigned_short_s_fu_222_n_11,
      Q(4) => grp_reg_unsigned_short_s_fu_222_n_12,
      Q(3) => grp_reg_unsigned_short_s_fu_222_n_13,
      Q(2) => grp_reg_unsigned_short_s_fu_222_n_14,
      Q(1) => grp_reg_unsigned_short_s_fu_222_n_15,
      Q(0) => grp_reg_unsigned_short_s_fu_222_n_16,
      ap_clk => ap_clk,
      cmp10252_i_fu_267_p2 => cmp10252_i_fu_267_p2,
      \d_read_reg_22_reg[10]_0\(10 downto 0) => \d_read_reg_22_reg[10]\(10 downto 0),
      xor_ln216_fu_273_p2 => xor_ln216_fu_273_p2
    );
\i_fu_78[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_fu_78_reg(0),
      O => i_5_fu_287_p2(0)
    );
\i_fu_78[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_start,
      I2 => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      O => ap_NS_fsm14_out
    );
\i_fu_78[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => \icmp_ln188_fu_282_p2__20\,
      O => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0
    );
\i_fu_78[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i_fu_78_reg(8),
      I1 => i_fu_78_reg(6),
      I2 => \i_fu_78[10]_i_5_n_6\,
      I3 => i_fu_78_reg(7),
      I4 => i_fu_78_reg(9),
      I5 => i_fu_78_reg(10),
      O => i_5_fu_287_p2(10)
    );
\i_fu_78[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \ap_CS_fsm[5]_i_8_n_6\,
      I1 => \ap_CS_fsm[5]_i_7_n_6\,
      I2 => \ap_CS_fsm[5]_i_6_n_6\,
      I3 => \ap_CS_fsm[5]_i_5_n_6\,
      I4 => \ap_CS_fsm[5]_i_4_n_6\,
      O => \icmp_ln188_fu_282_p2__20\
    );
\i_fu_78[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_fu_78_reg(5),
      I1 => i_fu_78_reg(3),
      I2 => i_fu_78_reg(1),
      I3 => i_fu_78_reg(0),
      I4 => i_fu_78_reg(2),
      I5 => i_fu_78_reg(4),
      O => \i_fu_78[10]_i_5_n_6\
    );
\i_fu_78[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fu_78_reg(0),
      I1 => i_fu_78_reg(1),
      O => i_5_fu_287_p2(1)
    );
\i_fu_78[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i_fu_78_reg(0),
      I1 => i_fu_78_reg(1),
      I2 => i_fu_78_reg(2),
      O => i_5_fu_287_p2(2)
    );
\i_fu_78[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i_fu_78_reg(1),
      I1 => i_fu_78_reg(0),
      I2 => i_fu_78_reg(2),
      I3 => i_fu_78_reg(3),
      O => i_5_fu_287_p2(3)
    );
\i_fu_78[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i_fu_78_reg(2),
      I1 => i_fu_78_reg(0),
      I2 => i_fu_78_reg(1),
      I3 => i_fu_78_reg(3),
      I4 => i_fu_78_reg(4),
      O => i_5_fu_287_p2(4)
    );
\i_fu_78[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i_fu_78_reg(3),
      I1 => i_fu_78_reg(1),
      I2 => i_fu_78_reg(0),
      I3 => i_fu_78_reg(2),
      I4 => i_fu_78_reg(4),
      I5 => i_fu_78_reg(5),
      O => i_5_fu_287_p2(5)
    );
\i_fu_78[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_fu_78[10]_i_5_n_6\,
      I1 => i_fu_78_reg(6),
      O => i_5_fu_287_p2(6)
    );
\i_fu_78[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i_fu_78[10]_i_5_n_6\,
      I1 => i_fu_78_reg(6),
      I2 => i_fu_78_reg(7),
      O => i_5_fu_287_p2(7)
    );
\i_fu_78[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i_fu_78_reg(6),
      I1 => \i_fu_78[10]_i_5_n_6\,
      I2 => i_fu_78_reg(7),
      I3 => i_fu_78_reg(8),
      O => i_5_fu_287_p2(8)
    );
\i_fu_78[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i_fu_78_reg(7),
      I1 => \i_fu_78[10]_i_5_n_6\,
      I2 => i_fu_78_reg(6),
      I3 => i_fu_78_reg(8),
      I4 => i_fu_78_reg(9),
      O => i_5_fu_287_p2(9)
    );
\i_fu_78_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(0),
      Q => i_fu_78_reg(0),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(10),
      Q => i_fu_78_reg(10),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(1),
      Q => i_fu_78_reg(1),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(2),
      Q => i_fu_78_reg(2),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(3),
      Q => i_fu_78_reg(3),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(4),
      Q => i_fu_78_reg(4),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(5),
      Q => i_fu_78_reg(5),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(6),
      Q => i_fu_78_reg(6),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(7),
      Q => i_fu_78_reg(7),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(8),
      Q => i_fu_78_reg(8),
      R => ap_NS_fsm14_out
    );
\i_fu_78_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_ap_start_reg0,
      D => i_5_fu_287_p2(9),
      Q => i_fu_78_reg(9),
      R => ap_NS_fsm14_out
    );
regslice_both_s_axis_video_V_data_V_U: entity work.design_1_v_gamma_lut_0_0_regslice_both_10
     port map (
      Q(0) => s_axis_video_TVALID_int_regslice,
      SR(0) => SR(0),
      ack_in_t_reg_0 => ack_in_t_reg,
      ap_clk => ap_clk,
      \data_p1_reg[29]_0\(29) => regslice_both_s_axis_video_V_data_V_U_n_8,
      \data_p1_reg[29]_0\(28) => regslice_both_s_axis_video_V_data_V_U_n_9,
      \data_p1_reg[29]_0\(27) => regslice_both_s_axis_video_V_data_V_U_n_10,
      \data_p1_reg[29]_0\(26) => regslice_both_s_axis_video_V_data_V_U_n_11,
      \data_p1_reg[29]_0\(25) => regslice_both_s_axis_video_V_data_V_U_n_12,
      \data_p1_reg[29]_0\(24) => regslice_both_s_axis_video_V_data_V_U_n_13,
      \data_p1_reg[29]_0\(23) => regslice_both_s_axis_video_V_data_V_U_n_14,
      \data_p1_reg[29]_0\(22) => regslice_both_s_axis_video_V_data_V_U_n_15,
      \data_p1_reg[29]_0\(21) => regslice_both_s_axis_video_V_data_V_U_n_16,
      \data_p1_reg[29]_0\(20) => regslice_both_s_axis_video_V_data_V_U_n_17,
      \data_p1_reg[29]_0\(19) => regslice_both_s_axis_video_V_data_V_U_n_18,
      \data_p1_reg[29]_0\(18) => regslice_both_s_axis_video_V_data_V_U_n_19,
      \data_p1_reg[29]_0\(17) => regslice_both_s_axis_video_V_data_V_U_n_20,
      \data_p1_reg[29]_0\(16) => regslice_both_s_axis_video_V_data_V_U_n_21,
      \data_p1_reg[29]_0\(15) => regslice_both_s_axis_video_V_data_V_U_n_22,
      \data_p1_reg[29]_0\(14) => regslice_both_s_axis_video_V_data_V_U_n_23,
      \data_p1_reg[29]_0\(13) => regslice_both_s_axis_video_V_data_V_U_n_24,
      \data_p1_reg[29]_0\(12) => regslice_both_s_axis_video_V_data_V_U_n_25,
      \data_p1_reg[29]_0\(11) => regslice_both_s_axis_video_V_data_V_U_n_26,
      \data_p1_reg[29]_0\(10) => regslice_both_s_axis_video_V_data_V_U_n_27,
      \data_p1_reg[29]_0\(9) => regslice_both_s_axis_video_V_data_V_U_n_28,
      \data_p1_reg[29]_0\(8) => regslice_both_s_axis_video_V_data_V_U_n_29,
      \data_p1_reg[29]_0\(7) => regslice_both_s_axis_video_V_data_V_U_n_30,
      \data_p1_reg[29]_0\(6) => regslice_both_s_axis_video_V_data_V_U_n_31,
      \data_p1_reg[29]_0\(5) => regslice_both_s_axis_video_V_data_V_U_n_32,
      \data_p1_reg[29]_0\(4) => regslice_both_s_axis_video_V_data_V_U_n_33,
      \data_p1_reg[29]_0\(3) => regslice_both_s_axis_video_V_data_V_U_n_34,
      \data_p1_reg[29]_0\(2) => regslice_both_s_axis_video_V_data_V_U_n_35,
      \data_p1_reg[29]_0\(1) => regslice_both_s_axis_video_V_data_V_U_n_36,
      \data_p1_reg[29]_0\(0) => regslice_both_s_axis_video_V_data_V_U_n_37,
      s_axis_video_TDATA(29 downto 0) => s_axis_video_TDATA(29 downto 0),
      \s_axis_video_TREADY_int_regslice__1\ => \s_axis_video_TREADY_int_regslice__1\,
      s_axis_video_TVALID => s_axis_video_TVALID
    );
regslice_both_s_axis_video_V_last_V_U: entity work.\design_1_v_gamma_lut_0_0_regslice_both__parameterized1_11\
     port map (
      SR(0) => SR(0),
      ap_clk => ap_clk,
      s_axis_video_TLAST(0) => s_axis_video_TLAST(0),
      s_axis_video_TLAST_int_regslice => s_axis_video_TLAST_int_regslice,
      \s_axis_video_TREADY_int_regslice__1\ => \s_axis_video_TREADY_int_regslice__1\,
      s_axis_video_TVALID => s_axis_video_TVALID
    );
regslice_both_s_axis_video_V_user_V_U: entity work.\design_1_v_gamma_lut_0_0_regslice_both__parameterized1_12\
     port map (
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \data_p1_reg[0]_0\ => regslice_both_s_axis_video_V_user_V_U_n_6,
      \s_axis_video_TREADY_int_regslice__1\ => \s_axis_video_TREADY_int_regslice__1\,
      s_axis_video_TUSER(0) => s_axis_video_TUSER(0),
      s_axis_video_TVALID => s_axis_video_TVALID
    );
\rows_reg_436_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(0),
      Q => rows_reg_436(0),
      R => '0'
    );
\rows_reg_436_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(10),
      Q => rows_reg_436(10),
      R => '0'
    );
\rows_reg_436_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(1),
      Q => rows_reg_436(1),
      R => '0'
    );
\rows_reg_436_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(2),
      Q => rows_reg_436(2),
      R => '0'
    );
\rows_reg_436_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(3),
      Q => rows_reg_436(3),
      R => '0'
    );
\rows_reg_436_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(4),
      Q => rows_reg_436(4),
      R => '0'
    );
\rows_reg_436_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(5),
      Q => rows_reg_436(5),
      R => '0'
    );
\rows_reg_436_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(6),
      Q => rows_reg_436(6),
      R => '0'
    );
\rows_reg_436_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(7),
      Q => rows_reg_436(7),
      R => '0'
    );
\rows_reg_436_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(8),
      Q => rows_reg_436(8),
      R => '0'
    );
\rows_reg_436_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => d_read_reg_22(9),
      Q => rows_reg_436(9),
      R => '0'
    );
\select_ln216_reg_476_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_152_n_12,
      Q => select_ln216_reg_476,
      R => '0'
    );
\sof_reg_110[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \sof_reg_110_reg_n_6_[0]\,
      I2 => ap_CS_fsm_state9,
      I3 => and_ln216_reg_465,
      O => \sof_reg_110[0]_i_1_n_6\
    );
\sof_reg_110_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \sof_reg_110[0]_i_1_n_6\,
      Q => \sof_reg_110_reg_n_6_[0]\,
      R => '0'
    );
\xor_ln216_reg_454_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => xor_ln216_fu_273_p2,
      Q => xor_ln216_reg_454,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_Gamma is
  port (
    \in\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    ap_enable_reg_pp0_iter2 : out STD_LOGIC;
    start_once_reg : out STD_LOGIC;
    ap_block_pp0_stage0_11001 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_sync_ready : out STD_LOGIC;
    ap_sync_Gamma_U0_ap_ready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    push : out STD_LOGIC;
    \i_fu_50_reg[0]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    DINADIN : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_bram_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_reg_bram_0_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    start_for_MultiPixStream2AXIvideo_U0_full_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    start_once_reg_reg_0 : in STD_LOGIC;
    AXIvideo2MultiPixStream_U0_ap_ready : in STD_LOGIC;
    ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready : in STD_LOGIC;
    push_0 : in STD_LOGIC;
    imgRgb_empty_n : in STD_LOGIC;
    imgGamma_full_n : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \int_gamma_lut_0_shift0_reg[0]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \empty_reg_157_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end design_1_v_gamma_lut_0_0_Gamma;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_Gamma is
  signal Gamma_U0_ap_ready : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[3]_i_4_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_5_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_6_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_7_n_6\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_8_n_6\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_NS_fsm12_out : STD_LOGIC;
  signal ap_NS_fsm13_out : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_0 : STD_LOGIC;
  signal empty_55_reg_162 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal empty_reg_157 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^grp_gamma_pipeline_vitis_loop_315_1_fu_90_ap_start_reg\ : STD_LOGIC;
  signal grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_n_50 : STD_LOGIC;
  signal grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg : STD_LOGIC;
  signal grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0 : STD_LOGIC;
  signal grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_n_14 : STD_LOGIC;
  signal \icmp_ln325_fu_134_p2__20\ : STD_LOGIC;
  signal lut_0_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal lut_0_ce0 : STD_LOGIC;
  signal lut_0_we0 : STD_LOGIC;
  signal lut_1_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal lut_2_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^start_once_reg\ : STD_LOGIC;
  signal start_once_reg_i_1_n_6 : STD_LOGIC;
  signal y_2_fu_139_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \y_fu_62[10]_i_5_n_6\ : STD_LOGIC;
  signal y_fu_62_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_4\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_8\ : label is "soft_lutpair115";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of ap_sync_reg_Gamma_U0_ap_ready_i_1 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of start_once_reg_i_1 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \y_fu_62[0]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \y_fu_62[1]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \y_fu_62[2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \y_fu_62[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \y_fu_62[4]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \y_fu_62[7]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \y_fu_62[8]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \y_fu_62[9]_i_1\ : label is "soft_lutpair112";
begin
  Q(0) <= \^q\(0);
  grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg <= \^grp_gamma_pipeline_vitis_loop_315_1_fu_90_ap_start_reg\;
  start_once_reg <= \^start_once_reg\;
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => ap_NS_fsm13_out,
      I1 => \^q\(0),
      I2 => Gamma_U0_ap_ready,
      I3 => ap_CS_fsm_state3,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_4_n_6\,
      I1 => \ap_CS_fsm[3]_i_5_n_6\,
      I2 => \ap_CS_fsm[3]_i_6_n_6\,
      I3 => \ap_CS_fsm[3]_i_7_n_6\,
      I4 => \ap_CS_fsm[3]_i_8_n_6\,
      I5 => ap_CS_fsm_state3,
      O => Gamma_U0_ap_ready
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => y_fu_62_reg(0),
      I1 => empty_reg_157(0),
      I2 => y_fu_62_reg(1),
      I3 => empty_reg_157(1),
      O => \ap_CS_fsm[3]_i_4_n_6\
    );
\ap_CS_fsm[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => y_fu_62_reg(3),
      I1 => empty_reg_157(3),
      I2 => y_fu_62_reg(4),
      I3 => empty_reg_157(4),
      O => \ap_CS_fsm[3]_i_5_n_6\
    );
\ap_CS_fsm[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => y_fu_62_reg(2),
      I1 => empty_reg_157(2),
      I2 => y_fu_62_reg(5),
      I3 => empty_reg_157(5),
      O => \ap_CS_fsm[3]_i_6_n_6\
    );
\ap_CS_fsm[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => y_fu_62_reg(8),
      I1 => empty_reg_157(8),
      I2 => empty_reg_157(10),
      I3 => y_fu_62_reg(10),
      I4 => empty_reg_157(9),
      I5 => y_fu_62_reg(9),
      O => \ap_CS_fsm[3]_i_7_n_6\
    );
\ap_CS_fsm[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => empty_reg_157(6),
      I1 => y_fu_62_reg(6),
      I2 => empty_reg_157(7),
      I3 => y_fu_62_reg(7),
      O => \ap_CS_fsm[3]_i_8_n_6\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => SR(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => SR(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => SR(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => SR(0)
    );
ap_sync_reg_Gamma_U0_ap_ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start_once_reg_reg_0,
      I1 => Gamma_U0_ap_ready,
      O => ap_sync_Gamma_U0_ap_ready
    );
\empty_55_reg_162_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(0),
      Q => empty_55_reg_162(0),
      R => '0'
    );
\empty_55_reg_162_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(10),
      Q => empty_55_reg_162(10),
      R => '0'
    );
\empty_55_reg_162_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(1),
      Q => empty_55_reg_162(1),
      R => '0'
    );
\empty_55_reg_162_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(2),
      Q => empty_55_reg_162(2),
      R => '0'
    );
\empty_55_reg_162_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(3),
      Q => empty_55_reg_162(3),
      R => '0'
    );
\empty_55_reg_162_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(4),
      Q => empty_55_reg_162(4),
      R => '0'
    );
\empty_55_reg_162_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(5),
      Q => empty_55_reg_162(5),
      R => '0'
    );
\empty_55_reg_162_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(6),
      Q => empty_55_reg_162(6),
      R => '0'
    );
\empty_55_reg_162_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(7),
      Q => empty_55_reg_162(7),
      R => '0'
    );
\empty_55_reg_162_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(8),
      Q => empty_55_reg_162(8),
      R => '0'
    );
\empty_55_reg_162_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => D(9),
      Q => empty_55_reg_162(9),
      R => '0'
    );
\empty_reg_157_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(0),
      Q => empty_reg_157(0),
      R => '0'
    );
\empty_reg_157_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(10),
      Q => empty_reg_157(10),
      R => '0'
    );
\empty_reg_157_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(1),
      Q => empty_reg_157(1),
      R => '0'
    );
\empty_reg_157_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(2),
      Q => empty_reg_157(2),
      R => '0'
    );
\empty_reg_157_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(3),
      Q => empty_reg_157(3),
      R => '0'
    );
\empty_reg_157_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(4),
      Q => empty_reg_157(4),
      R => '0'
    );
\empty_reg_157_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(5),
      Q => empty_reg_157(5),
      R => '0'
    );
\empty_reg_157_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(6),
      Q => empty_reg_157(6),
      R => '0'
    );
\empty_reg_157_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(7),
      Q => empty_reg_157(7),
      R => '0'
    );
\empty_reg_157_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(8),
      Q => empty_reg_157(8),
      R => '0'
    );
\empty_reg_157_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm12_out,
      D => \empty_reg_157_reg[10]_0\(9),
      Q => empty_reg_157(9),
      R => '0'
    );
grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90: entity work.design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_315_1
     port map (
      ADDRARDADDR(9 downto 0) => lut_1_address0(9 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      D(0) => ap_NS_fsm(1),
      E(0) => ap_NS_fsm12_out,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \^q\(0),
      SR(0) => SR(0),
      WEA(0) => lut_0_we0,
      \ap_CS_fsm_reg[3]\(9 downto 0) => lut_2_address0(9 downto 0),
      \ap_CS_fsm_reg[3]_0\(9 downto 0) => lut_0_address0(9 downto 0),
      ap_NS_fsm13_out => ap_NS_fsm13_out,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_0,
      ap_rst_n => ap_rst_n,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_n_50,
      \i_fu_50_reg[0]_0\ => \i_fu_50_reg[0]\,
      \i_fu_50_reg[10]_0\ => \^grp_gamma_pipeline_vitis_loop_315_1_fu_90_ap_start_reg\,
      \int_gamma_lut_0_shift0_reg[0]\ => \int_gamma_lut_0_shift0_reg[0]\,
      \out\(29 downto 0) => \out\(29 downto 0)
    );
grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_n_50,
      Q => \^grp_gamma_pipeline_vitis_loop_315_1_fu_90_ap_start_reg\,
      R => SR(0)
    );
grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106: entity work.design_1_v_gamma_lut_0_0_Gamma_Pipeline_VITIS_LOOP_327_4
     port map (
      D(1 downto 0) => ap_NS_fsm(3 downto 2),
      E(0) => E(0),
      Gamma_U0_ap_ready => Gamma_U0_ap_ready,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state2,
      SR(0) => SR(0),
      \ap_CS_fsm_reg[2]\ => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_n_14,
      \ap_CS_fsm_reg[2]_0\(0) => ap_NS_fsm12_out,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_0,
      ap_enable_reg_pp0_iter1_reg_0 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter2_reg_0 => ap_enable_reg_pp0_iter2,
      ap_rst_n => ap_rst_n,
      full_n_reg => ap_block_pp0_stage0_11001,
      grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      \icmp_ln325_fu_134_p2__20\ => \icmp_ln325_fu_134_p2__20\,
      imgGamma_full_n => imgGamma_full_n,
      imgRgb_empty_n => imgRgb_empty_n,
      lut_0_ce0 => lut_0_ce0,
      push => push,
      push_0 => push_0,
      \x_fu_60[10]_i_4\(10 downto 0) => empty_55_reg_162(10 downto 0)
    );
grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_n_14,
      Q => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg,
      R => SR(0)
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => Gamma_U0_ap_ready,
      I1 => start_once_reg_reg_0,
      I2 => AXIvideo2MultiPixStream_U0_ap_ready,
      I3 => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      O => ap_sync_ready
    );
lut_0_U: entity work.design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W
     port map (
      DINADIN(9 downto 0) => DINADIN(9 downto 0),
      WEA(0) => lut_0_we0,
      ap_clk => ap_clk,
      \in\(9 downto 0) => \in\(29 downto 20),
      lut_0_ce0 => lut_0_ce0,
      ram_reg_bram_0_0(9 downto 0) => lut_0_address0(9 downto 0)
    );
lut_1_U: entity work.design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_3
     port map (
      ADDRARDADDR(9 downto 0) => lut_1_address0(9 downto 0),
      WEA(0) => lut_0_we0,
      ap_clk => ap_clk,
      \in\(9 downto 0) => \in\(9 downto 0),
      lut_0_ce0 => lut_0_ce0,
      ram_reg_bram_0_0(9 downto 0) => ram_reg_bram_0(9 downto 0)
    );
lut_2_U: entity work.design_1_v_gamma_lut_0_0_Gamma_lut_0_RAM_AUTO_1R1W_4
     port map (
      WEA(0) => lut_0_we0,
      ap_clk => ap_clk,
      \in\(9 downto 0) => \in\(19 downto 10),
      lut_0_ce0 => lut_0_ce0,
      ram_reg_bram_0_0(9 downto 0) => lut_2_address0(9 downto 0),
      ram_reg_bram_0_1(9 downto 0) => ram_reg_bram_0_0(9 downto 0)
    );
start_once_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50505450"
    )
        port map (
      I0 => Gamma_U0_ap_ready,
      I1 => start_for_MultiPixStream2AXIvideo_U0_full_n,
      I2 => \^start_once_reg\,
      I3 => ap_start,
      I4 => start_once_reg_reg_0,
      O => start_once_reg_i_1_n_6
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => start_once_reg_i_1_n_6,
      Q => \^start_once_reg\,
      R => SR(0)
    );
\y_fu_62[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_fu_62_reg(0),
      O => y_2_fu_139_p2(0)
    );
\y_fu_62[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => \^q\(0),
      I1 => start_for_MultiPixStream2AXIvideo_U0_full_n,
      I2 => \^start_once_reg\,
      I3 => ap_start,
      I4 => start_once_reg_reg_0,
      O => ap_NS_fsm13_out
    );
\y_fu_62[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \icmp_ln325_fu_134_p2__20\,
      O => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0
    );
\y_fu_62[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => y_fu_62_reg(8),
      I1 => y_fu_62_reg(6),
      I2 => \y_fu_62[10]_i_5_n_6\,
      I3 => y_fu_62_reg(7),
      I4 => y_fu_62_reg(9),
      I5 => y_fu_62_reg(10),
      O => y_2_fu_139_p2(10)
    );
\y_fu_62[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_8_n_6\,
      I1 => \ap_CS_fsm[3]_i_7_n_6\,
      I2 => \ap_CS_fsm[3]_i_6_n_6\,
      I3 => \ap_CS_fsm[3]_i_5_n_6\,
      I4 => \ap_CS_fsm[3]_i_4_n_6\,
      O => \icmp_ln325_fu_134_p2__20\
    );
\y_fu_62[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => y_fu_62_reg(5),
      I1 => y_fu_62_reg(3),
      I2 => y_fu_62_reg(1),
      I3 => y_fu_62_reg(0),
      I4 => y_fu_62_reg(2),
      I5 => y_fu_62_reg(4),
      O => \y_fu_62[10]_i_5_n_6\
    );
\y_fu_62[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_fu_62_reg(0),
      I1 => y_fu_62_reg(1),
      O => y_2_fu_139_p2(1)
    );
\y_fu_62[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => y_fu_62_reg(0),
      I1 => y_fu_62_reg(1),
      I2 => y_fu_62_reg(2),
      O => y_2_fu_139_p2(2)
    );
\y_fu_62[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => y_fu_62_reg(1),
      I1 => y_fu_62_reg(0),
      I2 => y_fu_62_reg(2),
      I3 => y_fu_62_reg(3),
      O => y_2_fu_139_p2(3)
    );
\y_fu_62[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => y_fu_62_reg(2),
      I1 => y_fu_62_reg(0),
      I2 => y_fu_62_reg(1),
      I3 => y_fu_62_reg(3),
      I4 => y_fu_62_reg(4),
      O => y_2_fu_139_p2(4)
    );
\y_fu_62[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => y_fu_62_reg(3),
      I1 => y_fu_62_reg(1),
      I2 => y_fu_62_reg(0),
      I3 => y_fu_62_reg(2),
      I4 => y_fu_62_reg(4),
      I5 => y_fu_62_reg(5),
      O => y_2_fu_139_p2(5)
    );
\y_fu_62[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_fu_62[10]_i_5_n_6\,
      I1 => y_fu_62_reg(6),
      O => y_2_fu_139_p2(6)
    );
\y_fu_62[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \y_fu_62[10]_i_5_n_6\,
      I1 => y_fu_62_reg(6),
      I2 => y_fu_62_reg(7),
      O => y_2_fu_139_p2(7)
    );
\y_fu_62[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => y_fu_62_reg(6),
      I1 => \y_fu_62[10]_i_5_n_6\,
      I2 => y_fu_62_reg(7),
      I3 => y_fu_62_reg(8),
      O => y_2_fu_139_p2(8)
    );
\y_fu_62[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => y_fu_62_reg(7),
      I1 => \y_fu_62[10]_i_5_n_6\,
      I2 => y_fu_62_reg(6),
      I3 => y_fu_62_reg(8),
      I4 => y_fu_62_reg(9),
      O => y_2_fu_139_p2(9)
    );
\y_fu_62_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(0),
      Q => y_fu_62_reg(0),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(10),
      Q => y_fu_62_reg(10),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(1),
      Q => y_fu_62_reg(1),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(2),
      Q => y_fu_62_reg(2),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(3),
      Q => y_fu_62_reg(3),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(4),
      Q => y_fu_62_reg(4),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(5),
      Q => y_fu_62_reg(5),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(6),
      Q => y_fu_62_reg(6),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(7),
      Q => y_fu_62_reg(7),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(8),
      Q => y_fu_62_reg(8),
      R => ap_NS_fsm13_out
    );
\y_fu_62_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106_ap_start_reg0,
      D => y_2_fu_139_p2(9),
      Q => y_fu_62_reg(9),
      R => ap_NS_fsm13_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo is
  port (
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_isr8_out : out STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_ready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_9_in : out STD_LOGIC;
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TREADY : in STD_LOGIC;
    MultiPixStream2AXIvideo_U0_ap_start : in STD_LOGIC;
    \int_isr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    push : in STD_LOGIC;
    imgGamma_empty_n : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \i_fu_70_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sub_i_i_i_reg_179_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \empty_52_reg_174_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_cs_fsm_reg[2]_0\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_p2 : STD_LOGIC;
  signal data_p2_1 : STD_LOGIC;
  signal empty_52_reg_174 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal empty_reg_169 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_44 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_45 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_46 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_47 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_52 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_53 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_54 : STD_LOGIC;
  signal grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_55 : STD_LOGIC;
  signal i_2_fu_151_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \i_fu_70[10]_i_3_n_6\ : STD_LOGIC;
  signal \i_fu_70[10]_i_4_n_6\ : STD_LOGIC;
  signal \i_fu_70[10]_i_5_n_6\ : STD_LOGIC;
  signal \i_fu_70[10]_i_6_n_6\ : STD_LOGIC;
  signal \i_fu_70[10]_i_7_n_6\ : STD_LOGIC;
  signal \i_fu_70[10]_i_8_n_6\ : STD_LOGIC;
  signal i_fu_70_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \icmp_ln256_fu_146_p2__20\ : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal load_p2_0 : STD_LOGIC;
  signal m_axis_video_TDATA_int_regslice : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal m_axis_video_TDATA_reg : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \m_axis_video_TDATA_reg1__0\ : STD_LOGIC;
  signal m_axis_video_TKEEP_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m_axis_video_TLAST_int_regslice : STD_LOGIC;
  signal m_axis_video_TLAST_reg : STD_LOGIC;
  signal m_axis_video_TREADY_int_regslice : STD_LOGIC;
  signal m_axis_video_TUSER_int_regslice : STD_LOGIC;
  signal m_axis_video_TUSER_reg : STD_LOGIC;
  signal regslice_both_m_axis_video_V_keep_V_U_n_6 : STD_LOGIC;
  signal regslice_both_m_axis_video_V_last_V_U_n_6 : STD_LOGIC;
  signal regslice_both_m_axis_video_V_user_V_U_n_6 : STD_LOGIC;
  signal sof_reg_86 : STD_LOGIC;
  signal sub_i_i_i_reg_179 : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_fu_70[0]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \i_fu_70[10]_i_7\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \i_fu_70[1]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \i_fu_70[2]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \i_fu_70[3]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \i_fu_70[4]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \i_fu_70[6]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \i_fu_70[7]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \i_fu_70[8]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \i_fu_70[9]_i_1\ : label is "soft_lutpair145";
begin
  Q(0) <= \^q\(0);
  \ap_CS_fsm_reg[2]_0\ <= \^ap_cs_fsm_reg[2]_0\;
\ap_CS_fsm[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090000"
    )
        port map (
      I0 => empty_52_reg_174(6),
      I1 => i_fu_70_reg(6),
      I2 => empty_52_reg_174(7),
      I3 => i_fu_70_reg(7),
      I4 => \i_fu_70[10]_i_4_n_6\,
      I5 => \i_fu_70[10]_i_3_n_6\,
      O => \icmp_ln256_fu_146_p2__20\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => SR(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => SR(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => SR(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => SR(0)
    );
\empty_52_reg_174_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(0),
      Q => empty_52_reg_174(0),
      R => '0'
    );
\empty_52_reg_174_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(10),
      Q => empty_52_reg_174(10),
      R => '0'
    );
\empty_52_reg_174_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(1),
      Q => empty_52_reg_174(1),
      R => '0'
    );
\empty_52_reg_174_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(2),
      Q => empty_52_reg_174(2),
      R => '0'
    );
\empty_52_reg_174_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(3),
      Q => empty_52_reg_174(3),
      R => '0'
    );
\empty_52_reg_174_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(4),
      Q => empty_52_reg_174(4),
      R => '0'
    );
\empty_52_reg_174_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(5),
      Q => empty_52_reg_174(5),
      R => '0'
    );
\empty_52_reg_174_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(6),
      Q => empty_52_reg_174(6),
      R => '0'
    );
\empty_52_reg_174_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(7),
      Q => empty_52_reg_174(7),
      R => '0'
    );
\empty_52_reg_174_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(8),
      Q => empty_52_reg_174(8),
      R => '0'
    );
\empty_52_reg_174_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \empty_52_reg_174_reg[10]_0\(9),
      Q => empty_52_reg_174(9),
      R => '0'
    );
\empty_reg_169_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(0),
      Q => empty_reg_169(0),
      R => '0'
    );
\empty_reg_169_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(10),
      Q => empty_reg_169(10),
      R => '0'
    );
\empty_reg_169_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(1),
      Q => empty_reg_169(1),
      R => '0'
    );
\empty_reg_169_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(2),
      Q => empty_reg_169(2),
      R => '0'
    );
\empty_reg_169_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(3),
      Q => empty_reg_169(3),
      R => '0'
    );
\empty_reg_169_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(4),
      Q => empty_reg_169(4),
      R => '0'
    );
\empty_reg_169_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(5),
      Q => empty_reg_169(5),
      R => '0'
    );
\empty_reg_169_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(6),
      Q => empty_reg_169(6),
      R => '0'
    );
\empty_reg_169_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(7),
      Q => empty_reg_169(7),
      R => '0'
    );
\empty_reg_169_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(8),
      Q => empty_reg_169(8),
      R => '0'
    );
\empty_reg_169_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => D(9),
      Q => empty_reg_169(9),
      R => '0'
    );
grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100: entity work.design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2
     port map (
      D(29 downto 0) => m_axis_video_TDATA_int_regslice(29 downto 0),
      E(0) => E(0),
      MultiPixStream2AXIvideo_U0_ap_start => MultiPixStream2AXIvideo_U0_ap_start,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => \^q\(0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[2]\ => \^ap_cs_fsm_reg[2]_0\,
      \ap_CS_fsm_reg[2]_0\(3) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_44,
      \ap_CS_fsm_reg[2]_0\(2) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_45,
      \ap_CS_fsm_reg[2]_0\(1) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_46,
      \ap_CS_fsm_reg[2]_0\(0) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_47,
      \ap_CS_fsm_reg[2]_1\(0) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      ap_clk => ap_clk,
      ap_done_cache_reg(1 downto 0) => ap_NS_fsm(2 downto 1),
      ap_rst_n => ap_rst_n,
      \axi_last_reg_197_reg[0]_0\ => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_55,
      \axi_last_reg_197_reg[0]_1\(10 downto 0) => sub_i_i_i_reg_179(10 downto 0),
      data_p2 => data_p2_1,
      data_p2_0 => data_p2,
      \data_p2_reg[0]\ => regslice_both_m_axis_video_V_user_V_U_n_6,
      \data_p2_reg[0]_0\ => regslice_both_m_axis_video_V_last_V_U_n_6,
      \data_p2_reg[29]\(29 downto 0) => m_axis_video_TDATA_reg(29 downto 0),
      \data_p2_reg[3]\ => regslice_both_m_axis_video_V_keep_V_U_n_6,
      \data_p2_reg[3]_0\(3 downto 0) => m_axis_video_TKEEP_reg(3 downto 0),
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_53,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER,
      \icmp_ln258_reg_193_reg[0]_0\(0) => load_p2_0,
      \icmp_ln258_reg_193_reg[0]_1\(0) => load_p2,
      \icmp_ln258_reg_193_reg[0]_2\(10 downto 0) => empty_reg_169(10 downto 0),
      imgGamma_empty_n => imgGamma_empty_n,
      \m_axis_video_TDATA_reg1__0\ => \m_axis_video_TDATA_reg1__0\,
      m_axis_video_TLAST_int_regslice => m_axis_video_TLAST_int_regslice,
      m_axis_video_TLAST_reg => m_axis_video_TLAST_reg,
      m_axis_video_TREADY_int_regslice => m_axis_video_TREADY_int_regslice,
      m_axis_video_TUSER_int_regslice => m_axis_video_TUSER_int_regslice,
      m_axis_video_TUSER_reg => m_axis_video_TUSER_reg,
      \out\(29 downto 0) => \out\(29 downto 0),
      p_9_in => p_9_in,
      push => push,
      \sof_2_reg_133_reg[0]_0\ => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_54,
      sof_reg_86 => sof_reg_86,
      \sof_reg_86_reg[0]\ => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_52,
      \sof_reg_86_reg[0]_0\(0) => \i_fu_70_reg[10]_0\(0)
    );
grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_53,
      Q => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg,
      R => SR(0)
    );
\i_fu_70[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_fu_70_reg(0),
      O => i_2_fu_151_p2(0)
    );
\i_fu_70[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAA8AAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \i_fu_70[10]_i_3_n_6\,
      I2 => \i_fu_70[10]_i_4_n_6\,
      I3 => i_fu_70_reg(7),
      I4 => empty_52_reg_174(7),
      I5 => \i_fu_70[10]_i_5_n_6\,
      O => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0
    );
\i_fu_70[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i_fu_70_reg(8),
      I1 => i_fu_70_reg(6),
      I2 => \i_fu_70[10]_i_6_n_6\,
      I3 => i_fu_70_reg(7),
      I4 => i_fu_70_reg(9),
      I5 => i_fu_70_reg(10),
      O => i_2_fu_151_p2(10)
    );
\i_fu_70[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \i_fu_70[10]_i_7_n_6\,
      I1 => i_fu_70_reg(3),
      I2 => empty_52_reg_174(3),
      I3 => i_fu_70_reg(4),
      I4 => empty_52_reg_174(4),
      I5 => \i_fu_70[10]_i_8_n_6\,
      O => \i_fu_70[10]_i_3_n_6\
    );
\i_fu_70[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_fu_70_reg(8),
      I1 => empty_52_reg_174(8),
      I2 => empty_52_reg_174(10),
      I3 => i_fu_70_reg(10),
      I4 => empty_52_reg_174(9),
      I5 => i_fu_70_reg(9),
      O => \i_fu_70[10]_i_4_n_6\
    );
\i_fu_70[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => empty_52_reg_174(6),
      I1 => i_fu_70_reg(6),
      O => \i_fu_70[10]_i_5_n_6\
    );
\i_fu_70[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_fu_70_reg(5),
      I1 => i_fu_70_reg(3),
      I2 => i_fu_70_reg(1),
      I3 => i_fu_70_reg(0),
      I4 => i_fu_70_reg(2),
      I5 => i_fu_70_reg(4),
      O => \i_fu_70[10]_i_6_n_6\
    );
\i_fu_70[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i_fu_70_reg(0),
      I1 => empty_52_reg_174(0),
      I2 => i_fu_70_reg(1),
      I3 => empty_52_reg_174(1),
      O => \i_fu_70[10]_i_7_n_6\
    );
\i_fu_70[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i_fu_70_reg(2),
      I1 => empty_52_reg_174(2),
      I2 => i_fu_70_reg(5),
      I3 => empty_52_reg_174(5),
      O => \i_fu_70[10]_i_8_n_6\
    );
\i_fu_70[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fu_70_reg(0),
      I1 => i_fu_70_reg(1),
      O => i_2_fu_151_p2(1)
    );
\i_fu_70[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i_fu_70_reg(0),
      I1 => i_fu_70_reg(1),
      I2 => i_fu_70_reg(2),
      O => i_2_fu_151_p2(2)
    );
\i_fu_70[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i_fu_70_reg(1),
      I1 => i_fu_70_reg(0),
      I2 => i_fu_70_reg(2),
      I3 => i_fu_70_reg(3),
      O => i_2_fu_151_p2(3)
    );
\i_fu_70[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i_fu_70_reg(2),
      I1 => i_fu_70_reg(0),
      I2 => i_fu_70_reg(1),
      I3 => i_fu_70_reg(3),
      I4 => i_fu_70_reg(4),
      O => i_2_fu_151_p2(4)
    );
\i_fu_70[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i_fu_70_reg(3),
      I1 => i_fu_70_reg(1),
      I2 => i_fu_70_reg(0),
      I3 => i_fu_70_reg(2),
      I4 => i_fu_70_reg(4),
      I5 => i_fu_70_reg(5),
      O => i_2_fu_151_p2(5)
    );
\i_fu_70[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_fu_70[10]_i_6_n_6\,
      I1 => i_fu_70_reg(6),
      O => i_2_fu_151_p2(6)
    );
\i_fu_70[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i_fu_70[10]_i_6_n_6\,
      I1 => i_fu_70_reg(6),
      I2 => i_fu_70_reg(7),
      O => i_2_fu_151_p2(7)
    );
\i_fu_70[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i_fu_70_reg(6),
      I1 => \i_fu_70[10]_i_6_n_6\,
      I2 => i_fu_70_reg(7),
      I3 => i_fu_70_reg(8),
      O => i_2_fu_151_p2(8)
    );
\i_fu_70[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i_fu_70_reg(7),
      I1 => \i_fu_70[10]_i_6_n_6\,
      I2 => i_fu_70_reg(6),
      I3 => i_fu_70_reg(8),
      I4 => i_fu_70_reg(9),
      O => i_2_fu_151_p2(9)
    );
\i_fu_70_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(0),
      Q => i_fu_70_reg(0),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(10),
      Q => i_fu_70_reg(10),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(1),
      Q => i_fu_70_reg(1),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(2),
      Q => i_fu_70_reg(2),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(3),
      Q => i_fu_70_reg(3),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(4),
      Q => i_fu_70_reg(4),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(5),
      Q => i_fu_70_reg(5),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(6),
      Q => i_fu_70_reg(6),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(7),
      Q => i_fu_70_reg(7),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(8),
      Q => i_fu_70_reg(8),
      R => \i_fu_70_reg[10]_0\(0)
    );
\i_fu_70_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_ap_start_reg0,
      D => i_2_fu_151_p2(9),
      Q => i_fu_70_reg(9),
      R => \i_fu_70_reg[10]_0\(0)
    );
\m_axis_video_TDATA_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(0),
      Q => m_axis_video_TDATA_reg(0),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(10),
      Q => m_axis_video_TDATA_reg(10),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(11),
      Q => m_axis_video_TDATA_reg(11),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(12),
      Q => m_axis_video_TDATA_reg(12),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(13),
      Q => m_axis_video_TDATA_reg(13),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(14),
      Q => m_axis_video_TDATA_reg(14),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(15),
      Q => m_axis_video_TDATA_reg(15),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(16),
      Q => m_axis_video_TDATA_reg(16),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(17),
      Q => m_axis_video_TDATA_reg(17),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(18),
      Q => m_axis_video_TDATA_reg(18),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(19),
      Q => m_axis_video_TDATA_reg(19),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(1),
      Q => m_axis_video_TDATA_reg(1),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(20),
      Q => m_axis_video_TDATA_reg(20),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(21),
      Q => m_axis_video_TDATA_reg(21),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(22),
      Q => m_axis_video_TDATA_reg(22),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(23),
      Q => m_axis_video_TDATA_reg(23),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(24),
      Q => m_axis_video_TDATA_reg(24),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(25),
      Q => m_axis_video_TDATA_reg(25),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(26),
      Q => m_axis_video_TDATA_reg(26),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(27),
      Q => m_axis_video_TDATA_reg(27),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(28),
      Q => m_axis_video_TDATA_reg(28),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(29),
      Q => m_axis_video_TDATA_reg(29),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(2),
      Q => m_axis_video_TDATA_reg(2),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(3),
      Q => m_axis_video_TDATA_reg(3),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(4),
      Q => m_axis_video_TDATA_reg(4),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(5),
      Q => m_axis_video_TDATA_reg(5),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(6),
      Q => m_axis_video_TDATA_reg(6),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(7),
      Q => m_axis_video_TDATA_reg(7),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(8),
      Q => m_axis_video_TDATA_reg(8),
      R => '0'
    );
\m_axis_video_TDATA_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TDATA_int_regslice(9),
      Q => m_axis_video_TDATA_reg(9),
      R => '0'
    );
\m_axis_video_TKEEP_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_47,
      Q => m_axis_video_TKEEP_reg(0),
      R => '0'
    );
\m_axis_video_TKEEP_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_46,
      Q => m_axis_video_TKEEP_reg(1),
      R => '0'
    );
\m_axis_video_TKEEP_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_45,
      Q => m_axis_video_TKEEP_reg(2),
      R => '0'
    );
\m_axis_video_TKEEP_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_44,
      Q => m_axis_video_TKEEP_reg(3),
      R => '0'
    );
\m_axis_video_TLAST_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TLAST_int_regslice,
      Q => m_axis_video_TLAST_reg,
      R => '0'
    );
\m_axis_video_TUSER_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => m_axis_video_TUSER_int_regslice,
      Q => m_axis_video_TUSER_reg,
      R => '0'
    );
regslice_both_m_axis_video_V_data_V_U: entity work.design_1_v_gamma_lut_0_0_regslice_both
     port map (
      D(1) => ap_NS_fsm(3),
      D(0) => ap_NS_fsm(0),
      E(0) => load_p2_0,
      \FSM_sequential_state_reg[0]_0\ => \^ap_cs_fsm_reg[2]_0\,
      MultiPixStream2AXIvideo_U0_ap_ready => MultiPixStream2AXIvideo_U0_ap_ready,
      MultiPixStream2AXIvideo_U0_ap_start => MultiPixStream2AXIvideo_U0_ap_start,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \^q\(0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      \data_p1_reg[29]_0\(29 downto 0) => m_axis_video_TDATA_reg(29 downto 0),
      \data_p2_reg[29]_0\(29 downto 0) => m_axis_video_TDATA_int_regslice(29 downto 0),
      \icmp_ln256_fu_146_p2__20\ => \icmp_ln256_fu_146_p2__20\,
      int_isr8_out => int_isr8_out,
      \int_isr_reg[0]\(0) => \int_isr_reg[0]\(0),
      m_axis_video_TDATA(29 downto 0) => m_axis_video_TDATA(29 downto 0),
      \m_axis_video_TDATA_reg1__0\ => \m_axis_video_TDATA_reg1__0\,
      m_axis_video_TREADY => m_axis_video_TREADY,
      m_axis_video_TREADY_int_regslice => m_axis_video_TREADY_int_regslice,
      m_axis_video_TVALID => m_axis_video_TVALID,
      \out\(29 downto 0) => \out\(29 downto 0)
    );
regslice_both_m_axis_video_V_keep_V_U: entity work.\design_1_v_gamma_lut_0_0_regslice_both__parameterized0\
     port map (
      D(3) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_44,
      D(2) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_45,
      D(1) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_46,
      D(0) => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_47,
      E(0) => load_p2,
      Q(3 downto 0) => m_axis_video_TKEEP_reg(3 downto 0),
      SR(0) => SR(0),
      ack_in_t_reg_0 => regslice_both_m_axis_video_V_keep_V_U_n_6,
      ap_clk => ap_clk,
      \data_p1_reg[0]_0\ => \^ap_cs_fsm_reg[2]_0\,
      \m_axis_video_TDATA_reg1__0\ => \m_axis_video_TDATA_reg1__0\,
      m_axis_video_TKEEP(3 downto 0) => m_axis_video_TKEEP(3 downto 0),
      m_axis_video_TREADY => m_axis_video_TREADY
    );
regslice_both_m_axis_video_V_last_V_U: entity work.\design_1_v_gamma_lut_0_0_regslice_both__parameterized1\
     port map (
      \FSM_sequential_state_reg[0]_0\ => \^ap_cs_fsm_reg[2]_0\,
      SR(0) => SR(0),
      ack_in_t_reg_0 => regslice_both_m_axis_video_V_last_V_U_n_6,
      ap_clk => ap_clk,
      data_p2 => data_p2,
      \data_p2_reg[0]_0\ => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_55,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TLAST,
      \m_axis_video_TDATA_reg1__0\ => \m_axis_video_TDATA_reg1__0\,
      m_axis_video_TLAST(0) => m_axis_video_TLAST(0),
      m_axis_video_TLAST_reg => m_axis_video_TLAST_reg,
      m_axis_video_TREADY => m_axis_video_TREADY
    );
regslice_both_m_axis_video_V_user_V_U: entity work.\design_1_v_gamma_lut_0_0_regslice_both__parameterized1_2\
     port map (
      \FSM_sequential_state_reg[0]_0\ => \^ap_cs_fsm_reg[2]_0\,
      SR(0) => SR(0),
      ack_in_t_reg_0 => regslice_both_m_axis_video_V_user_V_U_n_6,
      ap_clk => ap_clk,
      data_p2 => data_p2_1,
      \data_p2_reg[0]_0\ => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_54,
      grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_m_axis_video_TUSER,
      \m_axis_video_TDATA_reg1__0\ => \m_axis_video_TDATA_reg1__0\,
      m_axis_video_TREADY => m_axis_video_TREADY,
      m_axis_video_TUSER(0) => m_axis_video_TUSER(0),
      m_axis_video_TUSER_reg => m_axis_video_TUSER_reg
    );
\sof_reg_86_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_258_2_fu_100_n_52,
      Q => sof_reg_86,
      R => '0'
    );
\sub_i_i_i_reg_179_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(0),
      Q => sub_i_i_i_reg_179(0),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(10),
      Q => sub_i_i_i_reg_179(10),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(1),
      Q => sub_i_i_i_reg_179(1),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(2),
      Q => sub_i_i_i_reg_179(2),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(3),
      Q => sub_i_i_i_reg_179(3),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(4),
      Q => sub_i_i_i_reg_179(4),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(5),
      Q => sub_i_i_i_reg_179(5),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(6),
      Q => sub_i_i_i_reg_179(6),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(7),
      Q => sub_i_i_i_reg_179(7),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(8),
      Q => sub_i_i_i_reg_179(8),
      R => '0'
    );
\sub_i_i_i_reg_179_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \i_fu_70_reg[10]_0\(0),
      D => \sub_i_i_i_reg_179_reg[10]_0\(9),
      Q => sub_i_i_i_reg_179(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0_v_gamma_lut is
  port (
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC
  );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of design_1_v_gamma_lut_0_0_v_gamma_lut : entity is 13;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of design_1_v_gamma_lut_0_0_v_gamma_lut : entity is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of design_1_v_gamma_lut_0_0_v_gamma_lut : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_v_gamma_lut_0_0_v_gamma_lut : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_v_gamma_lut_0_0_v_gamma_lut : entity is 4;
  attribute hls_module : string;
  attribute hls_module of design_1_v_gamma_lut_0_0_v_gamma_lut : entity is "yes";
end design_1_v_gamma_lut_0_0_v_gamma_lut;

architecture STRUCTURE of design_1_v_gamma_lut_0_0_v_gamma_lut is
  signal \<const0>\ : STD_LOGIC;
  signal AXIvideo2MultiPixStream_U0_ap_ready : STD_LOGIC;
  signal AXIvideo2MultiPixStream_U0_imgRgb_din : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal AXIvideo2MultiPixStream_U0_n_7 : STD_LOGIC;
  signal CTRL_s_axi_U_n_16 : STD_LOGIC;
  signal CTRL_s_axi_U_n_8 : STD_LOGIC;
  signal Gamma_U0_gamma_lut_2_address0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal Gamma_U0_imgGamma_din : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal Gamma_U0_n_41 : STD_LOGIC;
  signal Gamma_U0_n_44 : STD_LOGIC;
  signal Gamma_U0_n_55 : STD_LOGIC;
  signal MultiPixStream2AXIvideo_U0_ap_ready : STD_LOGIC;
  signal MultiPixStream2AXIvideo_U0_ap_start : STD_LOGIC;
  signal MultiPixStream2AXIvideo_U0_n_12 : STD_LOGIC;
  signal MultiPixStream2AXIvideo_U0_n_8 : STD_LOGIC;
  signal MultiPixStream2AXIvideo_U0_n_9 : STD_LOGIC;
  signal \ap_NS_fsm__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ap_sync_AXIvideo2MultiPixStream_U0_ap_ready : STD_LOGIC;
  signal ap_sync_Gamma_U0_ap_ready : STD_LOGIC;
  signal ap_sync_ready : STD_LOGIC;
  signal ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready : STD_LOGIC;
  signal ap_sync_reg_Gamma_U0_ap_ready : STD_LOGIC;
  signal ap_sync_reg_Gamma_U0_ap_ready_reg_n_6 : STD_LOGIC;
  signal gamma_lut_0_q0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gamma_lut_1_q0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gamma_lut_2_q0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg : STD_LOGIC;
  signal \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_block_pp0_stage0_11001\ : STD_LOGIC;
  signal \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter2\ : STD_LOGIC;
  signal height : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal imgGamma_dout : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal imgGamma_empty_n : STD_LOGIC;
  signal imgGamma_full_n : STD_LOGIC;
  signal imgRgb_dout : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal imgRgb_empty_n : STD_LOGIC;
  signal imgRgb_full_n : STD_LOGIC;
  signal int_isr8_out : STD_LOGIC;
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal p_9_in : STD_LOGIC;
  signal p_9_in_1 : STD_LOGIC;
  signal push : STD_LOGIC;
  signal push_0 : STD_LOGIC;
  signal start_for_MultiPixStream2AXIvideo_U0_U_n_8 : STD_LOGIC;
  signal start_for_MultiPixStream2AXIvideo_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal sub_i_i_i_fu_132_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal width : STD_LOGIC_VECTOR ( 10 downto 0 );
begin
  m_axis_video_TDATA(31) <= \<const0>\;
  m_axis_video_TDATA(30) <= \<const0>\;
  m_axis_video_TDATA(29 downto 0) <= \^m_axis_video_tdata\(29 downto 0);
  m_axis_video_TDEST(0) <= \<const0>\;
  m_axis_video_TID(0) <= \<const0>\;
  m_axis_video_TSTRB(3) <= \<const0>\;
  m_axis_video_TSTRB(2) <= \<const0>\;
  m_axis_video_TSTRB(1) <= \<const0>\;
  m_axis_video_TSTRB(0) <= \<const0>\;
  s_axi_CTRL_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BRESP(0) <= \<const0>\;
  s_axi_CTRL_RRESP(1) <= \<const0>\;
  s_axi_CTRL_RRESP(0) <= \<const0>\;
AXIvideo2MultiPixStream_U0: entity work.design_1_v_gamma_lut_0_0_AXIvideo2MultiPixStream
     port map (
      AXIvideo2MultiPixStream_U0_ap_ready => AXIvideo2MultiPixStream_U0_ap_ready,
      D(0) => \ap_NS_fsm__0\(1),
      Q(0) => AXIvideo2MultiPixStream_U0_n_7,
      SR(0) => ap_rst_n_inv,
      ack_in_t_reg => s_axis_video_TREADY,
      ap_block_pp0_stage0_11001 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_block_pp0_stage0_11001\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter1\,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_sync_AXIvideo2MultiPixStream_U0_ap_ready => ap_sync_AXIvideo2MultiPixStream_U0_ap_ready,
      ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      \axi_data_fu_84_reg[29]\(29 downto 0) => AXIvideo2MultiPixStream_U0_imgRgb_din(29 downto 0),
      \d_read_reg_22_reg[10]\(10 downto 0) => width(10 downto 0),
      \d_read_reg_22_reg[10]_0\(10 downto 0) => height(10 downto 0),
      imgRgb_empty_n => imgRgb_empty_n,
      imgRgb_full_n => imgRgb_full_n,
      p_9_in => p_9_in,
      push => push,
      s_axis_video_TDATA(29 downto 0) => s_axis_video_TDATA(29 downto 0),
      s_axis_video_TLAST(0) => s_axis_video_TLAST(0),
      s_axis_video_TUSER(0) => s_axis_video_TUSER(0),
      s_axis_video_TVALID => s_axis_video_TVALID
    );
CTRL_s_axi_U: entity work.design_1_v_gamma_lut_0_0_CTRL_s_axi
     port map (
      ADDRBWRADDR(8 downto 0) => Gamma_U0_gamma_lut_2_address0(9 downto 1),
      D(0) => \ap_NS_fsm__0\(1),
      DINADIN(9 downto 0) => gamma_lut_0_q0(9 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_CTRL_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_CTRL_AWREADY,
      MultiPixStream2AXIvideo_U0_ap_ready => MultiPixStream2AXIvideo_U0_ap_ready,
      MultiPixStream2AXIvideo_U0_ap_start => MultiPixStream2AXIvideo_U0_ap_start,
      Q(0) => MultiPixStream2AXIvideo_U0_n_9,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_sync_ready => ap_sync_ready,
      ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      ap_sync_reg_Gamma_U0_ap_ready => ap_sync_reg_Gamma_U0_ap_ready,
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      int_ap_idle_reg_0(0) => AXIvideo2MultiPixStream_U0_n_7,
      int_ap_idle_reg_1(0) => Gamma_U0_n_41,
      int_ap_idle_reg_2 => ap_sync_reg_Gamma_U0_ap_ready_reg_n_6,
      \int_gamma_lut_0_shift0_reg[0]_0\ => CTRL_s_axi_U_n_8,
      \int_gamma_lut_0_shift0_reg[0]_1\ => Gamma_U0_n_55,
      \int_height_reg[10]_0\(10 downto 0) => height(10 downto 0),
      \int_ier_reg[0]_0\(0) => CTRL_s_axi_U_n_16,
      int_isr8_out => int_isr8_out,
      \int_width_reg[10]_0\(10 downto 0) => width(10 downto 0),
      \int_width_reg[9]_0\(10 downto 0) => sub_i_i_i_fu_132_p2(10 downto 0),
      interrupt => interrupt,
      mem_reg(9 downto 0) => gamma_lut_1_q0(9 downto 0),
      mem_reg_0(9 downto 0) => gamma_lut_2_q0(9 downto 0),
      s_axi_CTRL_ARADDR(12 downto 0) => s_axi_CTRL_ARADDR(12 downto 0),
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_AWADDR(10 downto 0) => s_axi_CTRL_AWADDR(12 downto 2),
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => s_axi_CTRL_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID,
      start_for_MultiPixStream2AXIvideo_U0_full_n => start_for_MultiPixStream2AXIvideo_U0_full_n,
      start_once_reg => start_once_reg
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Gamma_U0: entity work.design_1_v_gamma_lut_0_0_Gamma
     port map (
      ADDRBWRADDR(8 downto 0) => Gamma_U0_gamma_lut_2_address0(9 downto 1),
      AXIvideo2MultiPixStream_U0_ap_ready => AXIvideo2MultiPixStream_U0_ap_ready,
      D(10 downto 0) => width(10 downto 0),
      DINADIN(9 downto 0) => gamma_lut_0_q0(9 downto 0),
      E(0) => Gamma_U0_n_44,
      Q(0) => Gamma_U0_n_41,
      SR(0) => ap_rst_n_inv,
      ap_block_pp0_stage0_11001 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_block_pp0_stage0_11001\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter1\,
      ap_enable_reg_pp0_iter2 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter2\,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_sync_Gamma_U0_ap_ready => ap_sync_Gamma_U0_ap_ready,
      ap_sync_ready => ap_sync_ready,
      ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      \empty_reg_157_reg[10]_0\(10 downto 0) => height(10 downto 0),
      grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg => grp_Gamma_Pipeline_VITIS_LOOP_315_1_fu_90_ap_start_reg,
      \i_fu_50_reg[0]\ => Gamma_U0_n_55,
      imgGamma_full_n => imgGamma_full_n,
      imgRgb_empty_n => imgRgb_empty_n,
      \in\(29 downto 0) => Gamma_U0_imgGamma_din(29 downto 0),
      \int_gamma_lut_0_shift0_reg[0]\ => CTRL_s_axi_U_n_8,
      \out\(29 downto 0) => imgRgb_dout(29 downto 0),
      push => push_0,
      push_0 => push,
      ram_reg_bram_0(9 downto 0) => gamma_lut_1_q0(9 downto 0),
      ram_reg_bram_0_0(9 downto 0) => gamma_lut_2_q0(9 downto 0),
      start_for_MultiPixStream2AXIvideo_U0_full_n => start_for_MultiPixStream2AXIvideo_U0_full_n,
      start_once_reg => start_once_reg,
      start_once_reg_reg_0 => ap_sync_reg_Gamma_U0_ap_ready_reg_n_6
    );
MultiPixStream2AXIvideo_U0: entity work.design_1_v_gamma_lut_0_0_MultiPixStream2AXIvideo
     port map (
      D(10 downto 0) => width(10 downto 0),
      E(0) => MultiPixStream2AXIvideo_U0_n_12,
      MultiPixStream2AXIvideo_U0_ap_ready => MultiPixStream2AXIvideo_U0_ap_ready,
      MultiPixStream2AXIvideo_U0_ap_start => MultiPixStream2AXIvideo_U0_ap_start,
      Q(0) => MultiPixStream2AXIvideo_U0_n_9,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[2]_0\ => MultiPixStream2AXIvideo_U0_n_8,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \empty_52_reg_174_reg[10]_0\(10 downto 0) => height(10 downto 0),
      \i_fu_70_reg[10]_0\(0) => start_for_MultiPixStream2AXIvideo_U0_U_n_8,
      imgGamma_empty_n => imgGamma_empty_n,
      int_isr8_out => int_isr8_out,
      \int_isr_reg[0]\(0) => CTRL_s_axi_U_n_16,
      m_axis_video_TDATA(29 downto 0) => \^m_axis_video_tdata\(29 downto 0),
      m_axis_video_TKEEP(3 downto 0) => m_axis_video_TKEEP(3 downto 0),
      m_axis_video_TLAST(0) => m_axis_video_TLAST(0),
      m_axis_video_TREADY => m_axis_video_TREADY,
      m_axis_video_TUSER(0) => m_axis_video_TUSER(0),
      m_axis_video_TVALID => m_axis_video_TVALID,
      \out\(29 downto 0) => imgGamma_dout(29 downto 0),
      p_9_in => p_9_in_1,
      push => push_0,
      \sub_i_i_i_reg_179_reg[10]_0\(10 downto 0) => sub_i_i_i_fu_132_p2(10 downto 0)
    );
ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_sync_AXIvideo2MultiPixStream_U0_ap_ready,
      Q => ap_sync_reg_AXIvideo2MultiPixStream_U0_ap_ready,
      R => ap_sync_reg_Gamma_U0_ap_ready
    );
ap_sync_reg_Gamma_U0_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_sync_Gamma_U0_ap_ready,
      Q => ap_sync_reg_Gamma_U0_ap_ready_reg_n_6,
      R => ap_sync_reg_Gamma_U0_ap_ready
    );
imgGamma_U: entity work.design_1_v_gamma_lut_0_0_fifo_w30_d16_S
     port map (
      E(0) => MultiPixStream2AXIvideo_U0_n_12,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      empty_n_reg_0 => MultiPixStream2AXIvideo_U0_n_8,
      imgGamma_empty_n => imgGamma_empty_n,
      imgGamma_full_n => imgGamma_full_n,
      \in\(29 downto 0) => Gamma_U0_imgGamma_din(29 downto 0),
      \out\(29 downto 0) => imgGamma_dout(29 downto 0),
      p_9_in => p_9_in_1,
      push => push_0
    );
imgRgb_U: entity work.design_1_v_gamma_lut_0_0_fifo_w30_d16_S_0
     port map (
      E(0) => Gamma_U0_n_44,
      SR(0) => ap_rst_n_inv,
      ap_block_pp0_stage0_11001 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_block_pp0_stage0_11001\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter1\,
      ap_enable_reg_pp0_iter2 => \grp_Gamma_Pipeline_VITIS_LOOP_327_4_fu_106/ap_enable_reg_pp0_iter2\,
      imgGamma_full_n => imgGamma_full_n,
      imgRgb_empty_n => imgRgb_empty_n,
      imgRgb_full_n => imgRgb_full_n,
      \in\(29 downto 0) => AXIvideo2MultiPixStream_U0_imgRgb_din(29 downto 0),
      \out\(29 downto 0) => imgRgb_dout(29 downto 0),
      p_9_in => p_9_in,
      push => push
    );
start_for_MultiPixStream2AXIvideo_U0_U: entity work.design_1_v_gamma_lut_0_0_start_for_MultiPixStream2AXIvideo_U0
     port map (
      MultiPixStream2AXIvideo_U0_ap_ready => MultiPixStream2AXIvideo_U0_ap_ready,
      MultiPixStream2AXIvideo_U0_ap_start => MultiPixStream2AXIvideo_U0_ap_start,
      Q(0) => MultiPixStream2AXIvideo_U0_n_9,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_start => ap_start,
      empty_n_reg_0(0) => start_for_MultiPixStream2AXIvideo_U0_U_n_8,
      \mOutPtr_reg[0]_0\ => ap_sync_reg_Gamma_U0_ap_ready_reg_n_6,
      start_for_MultiPixStream2AXIvideo_U0_full_n => start_for_MultiPixStream2AXIvideo_U0_full_n,
      start_once_reg => start_once_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_v_gamma_lut_0_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_v_gamma_lut_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_v_gamma_lut_0_0 : entity is "design_1_v_gamma_lut_0_0,design_1_v_gamma_lut_0_0_v_gamma_lut,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_v_gamma_lut_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_v_gamma_lut_0_0 : entity is "design_1_v_gamma_lut_0_0_v_gamma_lut,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of design_1_v_gamma_lut_0_0 : entity is "yes";
end design_1_v_gamma_lut_0_0;

architecture STRUCTURE of design_1_v_gamma_lut_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_inst_m_axis_video_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal NLW_inst_m_axis_video_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_video_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_video_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 13;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:s_axis_video:m_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 149998505, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_axis_video_TREADY : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute X_INTERFACE_INFO of m_axis_video_TVALID : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute X_INTERFACE_MODE of m_axis_video_TVALID : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_video_TVALID : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 149998505, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID";
  attribute X_INTERFACE_INFO of s_axis_video_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_video TREADY";
  attribute X_INTERFACE_INFO of s_axis_video_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_video TVALID";
  attribute X_INTERFACE_MODE of s_axis_video_TVALID : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_video_TVALID : signal is "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 149998505, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_TDATA : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute X_INTERFACE_INFO of m_axis_video_TDEST : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDEST";
  attribute X_INTERFACE_INFO of m_axis_video_TID : signal is "xilinx.com:interface:axis:1.0 m_axis_video TID";
  attribute X_INTERFACE_INFO of m_axis_video_TKEEP : signal is "xilinx.com:interface:axis:1.0 m_axis_video TKEEP";
  attribute X_INTERFACE_INFO of m_axis_video_TLAST : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute X_INTERFACE_INFO of m_axis_video_TSTRB : signal is "xilinx.com:interface:axis:1.0 m_axis_video TSTRB";
  attribute X_INTERFACE_INFO of m_axis_video_TUSER : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute X_INTERFACE_INFO of s_axi_CTRL_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR";
  attribute X_INTERFACE_MODE of s_axi_CTRL_AWADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_CTRL_AWADDR : signal is "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 13, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 149998505, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB";
  attribute X_INTERFACE_INFO of s_axis_video_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDATA";
  attribute X_INTERFACE_INFO of s_axis_video_TDEST : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDEST";
  attribute X_INTERFACE_INFO of s_axis_video_TID : signal is "xilinx.com:interface:axis:1.0 s_axis_video TID";
  attribute X_INTERFACE_INFO of s_axis_video_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_axis_video TKEEP";
  attribute X_INTERFACE_INFO of s_axis_video_TLAST : signal is "xilinx.com:interface:axis:1.0 s_axis_video TLAST";
  attribute X_INTERFACE_INFO of s_axis_video_TSTRB : signal is "xilinx.com:interface:axis:1.0 s_axis_video TSTRB";
  attribute X_INTERFACE_INFO of s_axis_video_TUSER : signal is "xilinx.com:interface:axis:1.0 s_axis_video TUSER";
begin
  m_axis_video_TDATA(31) <= \<const0>\;
  m_axis_video_TDATA(30) <= \<const0>\;
  m_axis_video_TDATA(29 downto 0) <= \^m_axis_video_tdata\(29 downto 0);
  m_axis_video_TDEST(0) <= \<const0>\;
  m_axis_video_TID(0) <= \<const0>\;
  m_axis_video_TSTRB(3) <= \<const0>\;
  m_axis_video_TSTRB(2) <= \<const0>\;
  m_axis_video_TSTRB(1) <= \<const0>\;
  m_axis_video_TSTRB(0) <= \<const0>\;
  s_axi_CTRL_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BRESP(0) <= \<const0>\;
  s_axi_CTRL_RRESP(1) <= \<const0>\;
  s_axi_CTRL_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_v_gamma_lut_0_0_v_gamma_lut
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      m_axis_video_TDATA(31 downto 30) => NLW_inst_m_axis_video_TDATA_UNCONNECTED(31 downto 30),
      m_axis_video_TDATA(29 downto 0) => \^m_axis_video_tdata\(29 downto 0),
      m_axis_video_TDEST(0) => NLW_inst_m_axis_video_TDEST_UNCONNECTED(0),
      m_axis_video_TID(0) => NLW_inst_m_axis_video_TID_UNCONNECTED(0),
      m_axis_video_TKEEP(3 downto 0) => m_axis_video_TKEEP(3 downto 0),
      m_axis_video_TLAST(0) => m_axis_video_TLAST(0),
      m_axis_video_TREADY => m_axis_video_TREADY,
      m_axis_video_TSTRB(3 downto 0) => NLW_inst_m_axis_video_TSTRB_UNCONNECTED(3 downto 0),
      m_axis_video_TUSER(0) => m_axis_video_TUSER(0),
      m_axis_video_TVALID => m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(12 downto 0) => s_axi_CTRL_ARADDR(12 downto 0),
      s_axi_CTRL_ARREADY => s_axi_CTRL_ARREADY,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_AWADDR(12 downto 2) => s_axi_CTRL_AWADDR(12 downto 2),
      s_axi_CTRL_AWADDR(1 downto 0) => B"00",
      s_axi_CTRL_AWREADY => s_axi_CTRL_AWREADY,
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => NLW_inst_s_axi_CTRL_BRESP_UNCONNECTED(1 downto 0),
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => s_axi_CTRL_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => NLW_inst_s_axi_CTRL_RRESP_UNCONNECTED(1 downto 0),
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID,
      s_axis_video_TDATA(31 downto 30) => B"00",
      s_axis_video_TDATA(29 downto 0) => s_axis_video_TDATA(29 downto 0),
      s_axis_video_TDEST(0) => '0',
      s_axis_video_TID(0) => '0',
      s_axis_video_TKEEP(3 downto 0) => B"0000",
      s_axis_video_TLAST(0) => s_axis_video_TLAST(0),
      s_axis_video_TREADY => s_axis_video_TREADY,
      s_axis_video_TSTRB(3 downto 0) => B"0000",
      s_axis_video_TUSER(0) => s_axis_video_TUSER(0),
      s_axis_video_TVALID => s_axis_video_TVALID
    );
end STRUCTURE;
