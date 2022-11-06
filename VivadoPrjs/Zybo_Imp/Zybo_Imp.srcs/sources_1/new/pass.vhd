library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pass is
port (data_i : in std_logic;
      data_o : out std_logic);
end pass;

architecture Behavioral of pass is
begin
data_o <= data_i;
end Behavioral;
