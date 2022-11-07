--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1.2 (lin64) Build 3605665 Fri Aug  5 22:52:02 MDT 2022
--Date        : Sat Nov  5 14:25:28 2022
--Host        : UbuntuSeniorLab running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target Imp_wrapper.bd
--Design      : Imp_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Imp_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LCD_SCL_0 : inout STD_LOGIC;
    LCD_SDA_0 : inout STD_LOGIC;
    btn_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    lcd_reset_n : in STD_LOGIC;
    led5_rgb_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led6_rgb_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmod_tri_io : inout STD_LOGIC_VECTOR ( 23 downto 0 );
    reset : in STD_LOGIC;
    sysclk_100Mhz : in STD_LOGIC
  );
end Imp_wrapper;

architecture STRUCTURE of Imp_wrapper is
  component Imp is
  port (
    sysclk_100Mhz : in STD_LOGIC;
    reset : in STD_LOGIC;
    lcd_reset_n : in STD_LOGIC;
    LCD_SDA_0 : inout STD_LOGIC;
    LCD_SCL_0 : inout STD_LOGIC;
    led5_rgb_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led6_rgb_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmod_tri_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    pmod_tri_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    pmod_tri_t : out STD_LOGIC_VECTOR ( 23 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component Imp;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal pmod_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal pmod_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal pmod_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal pmod_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal pmod_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal pmod_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal pmod_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal pmod_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal pmod_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal pmod_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal pmod_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal pmod_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal pmod_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal pmod_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal pmod_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal pmod_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal pmod_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal pmod_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal pmod_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal pmod_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal pmod_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal pmod_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal pmod_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal pmod_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal pmod_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal pmod_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal pmod_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal pmod_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal pmod_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal pmod_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal pmod_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal pmod_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal pmod_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal pmod_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal pmod_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal pmod_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal pmod_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal pmod_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal pmod_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal pmod_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal pmod_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal pmod_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal pmod_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal pmod_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal pmod_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal pmod_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal pmod_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal pmod_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal pmod_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pmod_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pmod_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal pmod_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal pmod_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal pmod_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal pmod_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal pmod_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal pmod_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal pmod_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal pmod_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal pmod_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal pmod_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pmod_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal pmod_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal pmod_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal pmod_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal pmod_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal pmod_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal pmod_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pmod_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal pmod_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal pmod_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal pmod_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
begin
Imp_i: component Imp
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LCD_SCL_0 => LCD_SCL_0,
      LCD_SDA_0 => LCD_SDA_0,
      btn_tri_i(2 downto 0) => btn_tri_i(2 downto 0),
      lcd_reset_n => lcd_reset_n,
      led5_rgb_tri_o(2 downto 0) => led5_rgb_tri_o(2 downto 0),
      led6_rgb_tri_o(2 downto 0) => led6_rgb_tri_o(2 downto 0),
      led_tri_o(3 downto 0) => led_tri_o(3 downto 0),
      pmod_tri_i(23) => pmod_tri_i_23(23),
      pmod_tri_i(22) => pmod_tri_i_22(22),
      pmod_tri_i(21) => pmod_tri_i_21(21),
      pmod_tri_i(20) => pmod_tri_i_20(20),
      pmod_tri_i(19) => pmod_tri_i_19(19),
      pmod_tri_i(18) => pmod_tri_i_18(18),
      pmod_tri_i(17) => pmod_tri_i_17(17),
      pmod_tri_i(16) => pmod_tri_i_16(16),
      pmod_tri_i(15) => pmod_tri_i_15(15),
      pmod_tri_i(14) => pmod_tri_i_14(14),
      pmod_tri_i(13) => pmod_tri_i_13(13),
      pmod_tri_i(12) => pmod_tri_i_12(12),
      pmod_tri_i(11) => pmod_tri_i_11(11),
      pmod_tri_i(10) => pmod_tri_i_10(10),
      pmod_tri_i(9) => pmod_tri_i_9(9),
      pmod_tri_i(8) => pmod_tri_i_8(8),
      pmod_tri_i(7) => pmod_tri_i_7(7),
      pmod_tri_i(6) => pmod_tri_i_6(6),
      pmod_tri_i(5) => pmod_tri_i_5(5),
      pmod_tri_i(4) => pmod_tri_i_4(4),
      pmod_tri_i(3) => pmod_tri_i_3(3),
      pmod_tri_i(2) => pmod_tri_i_2(2),
      pmod_tri_i(1) => pmod_tri_i_1(1),
      pmod_tri_i(0) => pmod_tri_i_0(0),
      pmod_tri_o(23) => pmod_tri_o_23(23),
      pmod_tri_o(22) => pmod_tri_o_22(22),
      pmod_tri_o(21) => pmod_tri_o_21(21),
      pmod_tri_o(20) => pmod_tri_o_20(20),
      pmod_tri_o(19) => pmod_tri_o_19(19),
      pmod_tri_o(18) => pmod_tri_o_18(18),
      pmod_tri_o(17) => pmod_tri_o_17(17),
      pmod_tri_o(16) => pmod_tri_o_16(16),
      pmod_tri_o(15) => pmod_tri_o_15(15),
      pmod_tri_o(14) => pmod_tri_o_14(14),
      pmod_tri_o(13) => pmod_tri_o_13(13),
      pmod_tri_o(12) => pmod_tri_o_12(12),
      pmod_tri_o(11) => pmod_tri_o_11(11),
      pmod_tri_o(10) => pmod_tri_o_10(10),
      pmod_tri_o(9) => pmod_tri_o_9(9),
      pmod_tri_o(8) => pmod_tri_o_8(8),
      pmod_tri_o(7) => pmod_tri_o_7(7),
      pmod_tri_o(6) => pmod_tri_o_6(6),
      pmod_tri_o(5) => pmod_tri_o_5(5),
      pmod_tri_o(4) => pmod_tri_o_4(4),
      pmod_tri_o(3) => pmod_tri_o_3(3),
      pmod_tri_o(2) => pmod_tri_o_2(2),
      pmod_tri_o(1) => pmod_tri_o_1(1),
      pmod_tri_o(0) => pmod_tri_o_0(0),
      pmod_tri_t(23) => pmod_tri_t_23(23),
      pmod_tri_t(22) => pmod_tri_t_22(22),
      pmod_tri_t(21) => pmod_tri_t_21(21),
      pmod_tri_t(20) => pmod_tri_t_20(20),
      pmod_tri_t(19) => pmod_tri_t_19(19),
      pmod_tri_t(18) => pmod_tri_t_18(18),
      pmod_tri_t(17) => pmod_tri_t_17(17),
      pmod_tri_t(16) => pmod_tri_t_16(16),
      pmod_tri_t(15) => pmod_tri_t_15(15),
      pmod_tri_t(14) => pmod_tri_t_14(14),
      pmod_tri_t(13) => pmod_tri_t_13(13),
      pmod_tri_t(12) => pmod_tri_t_12(12),
      pmod_tri_t(11) => pmod_tri_t_11(11),
      pmod_tri_t(10) => pmod_tri_t_10(10),
      pmod_tri_t(9) => pmod_tri_t_9(9),
      pmod_tri_t(8) => pmod_tri_t_8(8),
      pmod_tri_t(7) => pmod_tri_t_7(7),
      pmod_tri_t(6) => pmod_tri_t_6(6),
      pmod_tri_t(5) => pmod_tri_t_5(5),
      pmod_tri_t(4) => pmod_tri_t_4(4),
      pmod_tri_t(3) => pmod_tri_t_3(3),
      pmod_tri_t(2) => pmod_tri_t_2(2),
      pmod_tri_t(1) => pmod_tri_t_1(1),
      pmod_tri_t(0) => pmod_tri_t_0(0),
      reset => reset,
      sysclk_100Mhz => sysclk_100Mhz
    );
pmod_tri_iobuf_0: component IOBUF
     port map (
      I => pmod_tri_o_0(0),
      IO => pmod_tri_io(0),
      O => pmod_tri_i_0(0),
      T => pmod_tri_t_0(0)
    );
pmod_tri_iobuf_1: component IOBUF
     port map (
      I => pmod_tri_o_1(1),
      IO => pmod_tri_io(1),
      O => pmod_tri_i_1(1),
      T => pmod_tri_t_1(1)
    );
pmod_tri_iobuf_10: component IOBUF
     port map (
      I => pmod_tri_o_10(10),
      IO => pmod_tri_io(10),
      O => pmod_tri_i_10(10),
      T => pmod_tri_t_10(10)
    );
pmod_tri_iobuf_11: component IOBUF
     port map (
      I => pmod_tri_o_11(11),
      IO => pmod_tri_io(11),
      O => pmod_tri_i_11(11),
      T => pmod_tri_t_11(11)
    );
pmod_tri_iobuf_12: component IOBUF
     port map (
      I => pmod_tri_o_12(12),
      IO => pmod_tri_io(12),
      O => pmod_tri_i_12(12),
      T => pmod_tri_t_12(12)
    );
pmod_tri_iobuf_13: component IOBUF
     port map (
      I => pmod_tri_o_13(13),
      IO => pmod_tri_io(13),
      O => pmod_tri_i_13(13),
      T => pmod_tri_t_13(13)
    );
pmod_tri_iobuf_14: component IOBUF
     port map (
      I => pmod_tri_o_14(14),
      IO => pmod_tri_io(14),
      O => pmod_tri_i_14(14),
      T => pmod_tri_t_14(14)
    );
pmod_tri_iobuf_15: component IOBUF
     port map (
      I => pmod_tri_o_15(15),
      IO => pmod_tri_io(15),
      O => pmod_tri_i_15(15),
      T => pmod_tri_t_15(15)
    );
pmod_tri_iobuf_16: component IOBUF
     port map (
      I => pmod_tri_o_16(16),
      IO => pmod_tri_io(16),
      O => pmod_tri_i_16(16),
      T => pmod_tri_t_16(16)
    );
pmod_tri_iobuf_17: component IOBUF
     port map (
      I => pmod_tri_o_17(17),
      IO => pmod_tri_io(17),
      O => pmod_tri_i_17(17),
      T => pmod_tri_t_17(17)
    );
pmod_tri_iobuf_18: component IOBUF
     port map (
      I => pmod_tri_o_18(18),
      IO => pmod_tri_io(18),
      O => pmod_tri_i_18(18),
      T => pmod_tri_t_18(18)
    );
pmod_tri_iobuf_19: component IOBUF
     port map (
      I => pmod_tri_o_19(19),
      IO => pmod_tri_io(19),
      O => pmod_tri_i_19(19),
      T => pmod_tri_t_19(19)
    );
pmod_tri_iobuf_2: component IOBUF
     port map (
      I => pmod_tri_o_2(2),
      IO => pmod_tri_io(2),
      O => pmod_tri_i_2(2),
      T => pmod_tri_t_2(2)
    );
pmod_tri_iobuf_20: component IOBUF
     port map (
      I => pmod_tri_o_20(20),
      IO => pmod_tri_io(20),
      O => pmod_tri_i_20(20),
      T => pmod_tri_t_20(20)
    );
pmod_tri_iobuf_21: component IOBUF
     port map (
      I => pmod_tri_o_21(21),
      IO => pmod_tri_io(21),
      O => pmod_tri_i_21(21),
      T => pmod_tri_t_21(21)
    );
pmod_tri_iobuf_22: component IOBUF
     port map (
      I => pmod_tri_o_22(22),
      IO => pmod_tri_io(22),
      O => pmod_tri_i_22(22),
      T => pmod_tri_t_22(22)
    );
pmod_tri_iobuf_23: component IOBUF
     port map (
      I => pmod_tri_o_23(23),
      IO => pmod_tri_io(23),
      O => pmod_tri_i_23(23),
      T => pmod_tri_t_23(23)
    );
pmod_tri_iobuf_3: component IOBUF
     port map (
      I => pmod_tri_o_3(3),
      IO => pmod_tri_io(3),
      O => pmod_tri_i_3(3),
      T => pmod_tri_t_3(3)
    );
pmod_tri_iobuf_4: component IOBUF
     port map (
      I => pmod_tri_o_4(4),
      IO => pmod_tri_io(4),
      O => pmod_tri_i_4(4),
      T => pmod_tri_t_4(4)
    );
pmod_tri_iobuf_5: component IOBUF
     port map (
      I => pmod_tri_o_5(5),
      IO => pmod_tri_io(5),
      O => pmod_tri_i_5(5),
      T => pmod_tri_t_5(5)
    );
pmod_tri_iobuf_6: component IOBUF
     port map (
      I => pmod_tri_o_6(6),
      IO => pmod_tri_io(6),
      O => pmod_tri_i_6(6),
      T => pmod_tri_t_6(6)
    );
pmod_tri_iobuf_7: component IOBUF
     port map (
      I => pmod_tri_o_7(7),
      IO => pmod_tri_io(7),
      O => pmod_tri_i_7(7),
      T => pmod_tri_t_7(7)
    );
pmod_tri_iobuf_8: component IOBUF
     port map (
      I => pmod_tri_o_8(8),
      IO => pmod_tri_io(8),
      O => pmod_tri_i_8(8),
      T => pmod_tri_t_8(8)
    );
pmod_tri_iobuf_9: component IOBUF
     port map (
      I => pmod_tri_o_9(9),
      IO => pmod_tri_io(9),
      O => pmod_tri_i_9(9),
      T => pmod_tri_t_9(9)
    );
end STRUCTURE;
