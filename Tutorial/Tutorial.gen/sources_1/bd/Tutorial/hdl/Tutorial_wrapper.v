//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Oct 14 01:14:20 2022
//Host        : DESKTOP-8DKIKNE running 64-bit major release  (build 9200)
//Command     : generate_target Tutorial_wrapper.bd
//Design      : Tutorial_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Tutorial_wrapper
   (GPIO_0_tri_i);
  input [3:0]GPIO_0_tri_i;

  wire [3:0]GPIO_0_tri_i;

  Tutorial Tutorial_i
       (.GPIO_0_tri_i(GPIO_0_tri_i));
endmodule
