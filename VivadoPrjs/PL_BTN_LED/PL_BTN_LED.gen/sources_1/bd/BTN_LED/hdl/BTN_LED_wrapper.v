//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Mon Oct 17 01:37:25 2022
//Host        : UbuntuSeniorLab running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target BTN_LED_wrapper.bd
//Design      : BTN_LED_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BTN_LED_wrapper
   (btn_i,
    led_0,
    led_1);
  input [3:0]btn_i;
  output led_0;
  output led_1;

  wire [3:0]btn_i;
  wire led_0;
  wire led_1;

  BTN_LED BTN_LED_i
       (.btn_i(btn_i),
        .led_0(led_0),
        .led_1(led_1));
endmodule
