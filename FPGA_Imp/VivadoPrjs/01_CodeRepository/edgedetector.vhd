-- vendor: empyrea.dev


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY edgedetector IS
  GENERIC(
    edge :  std_logic_vector(1 downto 0) := "00"); --00 -> either edge, 01 -> rising edge, 10 -> falling edge
  PORT(
    clk     : IN  STD_LOGIC;  --input clock
    sig     : IN  STD_LOGIC;  -- To be checked
    sig_o   : OUT STD_LOGIC;  -- passthrough signal
    pulse   : OUT STD_LOGIC); --debounced signal
END edgedetector;

ARCHITECTURE logic OF edgedetector IS
  signal sig_next : std_logic;
BEGIN

-- Passthrough
sig_o <= sig;

process(clk)
begin
    if rising_edge(clk) then
        sig_next <= sig;
        -- Either Edge
        if edge = "00" then
            if sig_next = NOT sig then
                pulse <= '1';
            else
                pulse <= '0';
            end if;
        -- Rising Edge
        elsif edge = "01" then
            if sig_next = '0' and sig = '1' then
                pulse <= '1';
            else
                pulse <= '0';
            end if;
        -- Falling Edge
        elsif edge = "10" then
            if sig_next = '1' and sig = '0' then
                pulse <= '1';
            else
                pulse <= '0';
            end if;     
        end if;     
    end if;
end process;

end;
