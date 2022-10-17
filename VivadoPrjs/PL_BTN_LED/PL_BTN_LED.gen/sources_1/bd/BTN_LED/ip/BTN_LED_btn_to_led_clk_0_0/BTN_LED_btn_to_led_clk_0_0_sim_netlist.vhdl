-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sat Oct 15 22:33:34 2022
-- Host        : DESKTOP-8DKIKNE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/spixy/Documents/00_Github/SeniorCapstone/PL_BTN_LED/PL_BTN_LED.gen/sources_1/bd/BTN_LED/ip/BTN_LED_btn_to_led_clk_0_0/BTN_LED_btn_to_led_clk_0_0_sim_netlist.vhdl
-- Design      : BTN_LED_btn_to_led_clk_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BTN_LED_btn_to_led_clk_0_0_btn_to_led_clk is
  port (
    led : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BTN_LED_btn_to_led_clk_0_0_btn_to_led_clk : entity is "btn_to_led_clk";
end BTN_LED_btn_to_led_clk_0_0_btn_to_led_clk;

architecture STRUCTURE of BTN_LED_btn_to_led_clk_0_0_btn_to_led_clk is
  signal logic_btns : STD_LOGIC;
begin
led_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => logic_btns,
      Q => led,
      R => '0'
    );
logic_btns0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => btn(1),
      I1 => btn(0),
      I2 => btn(3),
      I3 => btn(2),
      O => logic_btns
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BTN_LED_btn_to_led_clk_0_0 is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BTN_LED_btn_to_led_clk_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BTN_LED_btn_to_led_clk_0_0 : entity is "BTN_LED_btn_to_led_clk_0_0,btn_to_led_clk,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BTN_LED_btn_to_led_clk_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BTN_LED_btn_to_led_clk_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BTN_LED_btn_to_led_clk_0_0 : entity is "btn_to_led_clk,Vivado 2022.1";
end BTN_LED_btn_to_led_clk_0_0;

architecture STRUCTURE of BTN_LED_btn_to_led_clk_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN BTN_LED_clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.BTN_LED_btn_to_led_clk_0_0_btn_to_led_clk
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      clk => clk,
      led => led
    );
end STRUCTURE;
