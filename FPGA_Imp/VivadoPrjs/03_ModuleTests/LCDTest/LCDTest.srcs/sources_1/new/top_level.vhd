library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity top_level is
    port(
    je       : inout std_logic_vector(7 downto 0);
    btn      : in std_logic_vector(3 downto 0);
    sw       : in std_logic_vector(3 downto 0);
    led      : in std_logic_vector(3 downto 0);
    clk      : in std_logic);
end top_level;

architecture Behavioral of top_level is


component I2C_User_LCD is
    generic(
        input_clk : integer := 100_000_000;  -- System Clock Speed
        bus_clk   : integer := 100_000); 
    port(
    clk_i       : in    std_logic; --Clock In
    reset_n     : in    std_logic; --Asynchronous Reset Active Low  
    data_i      : in    std_logic_vector(255 downto 0); -- To be displayed (In ASCII format already)
    en          : in    std_logic;
    refresh     : in    std_logic;
    SDA         : inout std_logic;   --Data/Address Line
    SCL         : inout std_logic    --Clock Line
  );
end component;

-- ASCII Array--
TYPE ASCII_32Letters is array(0 to 31) of std_logic_vector(7 downto 0);
signal ASCII_Data : ASCII_32Letters := (x"68",x"69",x"20",x"73",x"65",x"6E",x"69",x"6F"
                                         ,x"72",x"20",x"6C",x"61",x"62",x"20",x"20",x"20"
                                         ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20"
                                         ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20");
signal LCD_Data    : std_logic_vector(255 downto 0);

begin

Inst_top_level: I2C_User_LCD
    port map (
        reset_n	=> sw(0),
        clk_i   => clk, 
        data_i  => x"68692073656E696F72206C616220202020202020202020202020202020202020",
        en      => sw(1),
        refresh => sw(2),
        SDA     => je(2),
        SCL     => je(3)
); 

LCD_Data <= ASCII_Data(0)    & ASCII_Data(1)   -- 32 Character
            & ASCII_Data(2)  & ASCII_Data(3) 
            & ASCII_Data(4)  & ASCII_Data(5) 
            & ASCII_Data(6)  & ASCII_Data(7) 
            & ASCII_Data(8)  & ASCII_Data(9) 
            & ASCII_Data(10) & ASCII_Data(11) 
            & ASCII_Data(12) & ASCII_Data(13) 
            & ASCII_Data(14) & ASCII_Data(15)
            & ASCII_Data(16) & ASCII_Data(17) 
            & ASCII_Data(18) & ASCII_Data(19) 
            & ASCII_Data(20) & ASCII_Data(21) 
            & ASCII_Data(22) & ASCII_Data(23) 
            & ASCII_Data(24) & ASCII_Data(25) 
            & ASCII_Data(26) & ASCII_Data(27) 
            & ASCII_Data(28) & ASCII_Data(29)
            & ASCII_Data(30) & ASCII_Data(31);


end Behavioral;
