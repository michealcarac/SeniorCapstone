// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Oct 15 22:33:34 2022
// Host        : DESKTOP-8DKIKNE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/spixy/Documents/00_Github/SeniorCapstone/PL_BTN_LED/PL_BTN_LED.gen/sources_1/bd/BTN_LED/ip/BTN_LED_btn_to_led_clk_0_0/BTN_LED_btn_to_led_clk_0_0_stub.v
// Design      : BTN_LED_btn_to_led_clk_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "btn_to_led_clk,Vivado 2022.1" *)
module BTN_LED_btn_to_led_clk_0_0(clk, btn, led)
/* synthesis syn_black_box black_box_pad_pin="clk,btn[3:0],led" */;
  input clk;
  input [3:0]btn;
  output led;
endmodule
