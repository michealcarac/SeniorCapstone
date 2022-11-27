library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
   generic(OUTPUT_WIDTH : Integer := 32;     -- Max Output Width of 32 (Integer Limitations)
           CLOCK_DIVIDER: Integer := 5000);  -- Default Divider of 5000, period of 1/10000. If 100MHz clock, this allows for a resolution of 0.0001
   port(
      clk   : in std_logic;
      reset : in std_logic;
      en    : in std_logic;
      q	    : out std_logic_vector(OUTPUT_WIDTH-1 downto 0)
   );
end timer;

architecture arch of timer is
   -- Divider
   signal count_div   : unsigned(OUTPUT_WIDTH-1 downto 0) := (others => '0');
   signal clk_div     : std_logic := '0';
   -- Timer
   signal count_timer : unsigned(OUTPUT_WIDTH-1 downto 0) := (others => '0');
   constant COUNT_MAX : integer := 2**(count_timer'length)-1; -- Length -1 for signed. 
begin
    -- Output Data Lines
    q <= std_logic_vector(count_timer);
   
    -- Clock Divider (Add Multiple for various clocks)
    process(clk,reset)
    begin
        -- Reset Stage
        if(reset = '1') then
            clk_div   <= '0'; -- Divider Clock
            count_div <=   (others => '0'); -- Divider Count
        -- Counting Stage
        elsif (rising_edge(clk)) then
            count_div <= count_div + 1;
        -- Bounds Stage
        if (count_div = to_unsigned(CLOCK_DIVIDER,count_div'length)) then -- If at the CLOCK_DIVIDER value, trigger the clock
            clk_div   <= NOT clk_div;  -- NOT The Clock
            count_div <= (others => '0');  -- Reset Counter
        end if;
        end if;
    end process;
            
    -- Timer
    process(clk_div,reset,en) 
    begin
        -- Reset Stage
        if (reset = '1') then
            count_timer <= (others => '0');
        -- Counting Stage
        elsif (rising_edge(clk_div) and en = '1') then
            count_timer <= count_timer + 1;
          -- Bounds Stage
--        if (count_timer = to_unsigned(COUNT_MAX,count_timer'length)) then -- If Max value reached, it will automatically rollover to 0
--            count_timer <= (others => '0');
--        end if;
        end if;
    end process;

end arch;
