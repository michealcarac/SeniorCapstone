-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Oct 15 22:33:34 2022
-- Host        : DESKTOP-8DKIKNE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/spixy/Documents/00_Github/SeniorCapstone/PL_BTN_LED/PL_BTN_LED.gen/sources_1/bd/BTN_LED/ip/BTN_LED_btn_to_led_0_0/BTN_LED_btn_to_led_0_0_stub.vhdl
-- Design      : BTN_LED_btn_to_led_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BTN_LED_btn_to_led_0_0 is
  Port ( 
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC
  );

end BTN_LED_btn_to_led_0_0;

architecture stub of BTN_LED_btn_to_led_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "btn[3:0],led";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "btn_to_led,Vivado 2022.1";
begin
end;
