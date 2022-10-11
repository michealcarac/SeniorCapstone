//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Mon Oct 10 22:25:30 2022
//Host        : DESKTOP-8DKIKNE running 64-bit major release  (build 9200)
//Command     : generate_target ButtonTest_wrapper.bd
//Design      : ButtonTest_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ButtonTest_wrapper
   (btns_4_i_tri_i,
    clk_100MHz,
    reset_rtl);
  input [3:0]btns_4_i_tri_i;
  input clk_100MHz;
  input reset_rtl;

  wire [3:0]btns_4_i_tri_i;
  wire clk_100MHz;
  wire reset_rtl;

  ButtonTest ButtonTest_i
       (.btns_4_i_tri_i(btns_4_i_tri_i),
        .clk_100MHz(clk_100MHz),
        .reset_rtl(reset_rtl));
endmodule
