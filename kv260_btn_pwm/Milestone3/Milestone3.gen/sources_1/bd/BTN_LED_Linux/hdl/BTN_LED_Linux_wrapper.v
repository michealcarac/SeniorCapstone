//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sun Oct 16 12:56:05 2022
//Host        : DESKTOP-8DKIKNE running 64-bit major release  (build 9200)
//Command     : generate_target BTN_LED_Linux_wrapper.bd
//Design      : BTN_LED_Linux_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BTN_LED_Linux_wrapper
   (btn_i_tri_i,
    pwm0_o,
    pwm1_o);
  input [3:0]btn_i_tri_i;
  output pwm0_o;
  output pwm1_o;

  wire [3:0]btn_i_tri_i;
  wire pwm0_o;
  wire pwm1_o;

  BTN_LED_Linux BTN_LED_Linux_i
       (.btn_i_tri_i(btn_i_tri_i),
        .pwm0_o(pwm0_o),
        .pwm1_o(pwm1_o));
endmodule
