LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;

ENTITY Top_Level_LCD_IP IS
  PORT(
      clk        : IN  STD_LOGIC;     
      --btn        : in std_logic_vector(1 downto 0) ;           
      --led0_r     : OUT std_logic; 
      ja         : inout std_logic_vector(7 downto 0)
      --jb         : in std_logic_vector(7 downto 0)           
      );
END Top_Level_LCD_IP;

ARCHITECTURE behavior OF Top_Level_LCD_IP IS

component lcd_user_level is 
 GENERIC(
    input_clk : INTEGER := 100_000_000 --input clock speed from user logic in Hz
    );
		port (
			iClk     : in std_logic;
			reset_n  : in std_logic;
			ena      : in std_LOGIC;
			oSDA     : inout std_logic;
			oSCL     : inout std_logic;
			oRow     : out std_logic;
			oCol     : out std_logic_vector(3 downto 0);
			iData    : in std_logic_vector(7 downto 0)
		);
end component;

--component ps2_keyboard_to_ascii is 
--GENERIC(
--      clk_freq                  : INTEGER := 125_000_000; --system clock frequency in Hz
--      ps2_debounce_counter_size : INTEGER := 8);         --set such that 2^size/clk_freq = 5us (size = 8 for 50MHz)
--  PORT(
--      clk        : IN  STD_LOGIC;                     --system clock input
--      ps2_clk    : IN  STD_LOGIC;                     --clock signal from PS2 keyboard
--      ps2_data   : IN  STD_LOGIC;                     --data signal from PS2 keyboard 
--      ascii_new  : OUT STD_LOGIC;                    --output flag indicating new ASCII value
--      ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)); --ASCII value
--end component;

    
--component uart is
--    port (
--        clk:   in std_logic;
--        reset       :in  std_logic;
--        txclk       :in  std_logic;
--        ld_tx_data  :in  std_logic;
--        tx_data     :in  std_logic_vector (7 downto 0);
--        tx_enable   :in  std_logic;
--        tx_out      :out std_logic;
--        tx_empty    :out std_logic;
--        rxclk       :in  std_logic;
--        uld_rx_data :in  std_logic;
--        rx_data     :out std_logic_vector (7 downto 0);
--        rx_enable   :in  std_logic;
--        rx_in       :in  std_logic;
--        rx_empty    :out std_logic
--    );
--end component;

component reset_delay is
GENERIC (DELAY_LENGTH : unsigned(19 DOWNTO 0) := X"FFFFF");
    PORT (
        iCLK : IN std_logic;	
        oRESET : OUT std_logic := '1'
			);
end component;

signal reset_sig      : std_logic;
signal txclk_sig      : std_logic;
signal txclk_sig_last : std_logic;
signal ld_tx_data_sig     : std_logic;
signal tx_data_sig    : std_logic_vector(7 downto 0);
signal tx_enable_sig  : std_logic;
signal tx_out_sig     : std_logic;
signal tx_empty_sig   : std_logic;
signal rxclk_sig      : std_logic;
signal rxclk_sig_last : std_logic;
signal uld_rx_data_sig: std_logic;
signal rx_data_sig        : std_logic_vector(7 downto 0);
signal rx_enable_sig  : std_logic;
signal rx_in_sig      : std_logic;
signal rx_empty_sig   : std_logic;
signal ascii_flag_sig : std_logic;
signal ascii_flag_sig_last : std_logic;
signal ascii_code_sig : std_logic_vector(6 downto 0);
signal D1_signal      : std_logic;
signal C1_signal      : std_logic;
signal led0_r_sig     : std_logic:='0';
signal flag           : std_logic;
signal rx_empty_sig_last : std_logic;
CONSTANT counter_max    : integer :=542;--6808;
CONSTANT counterrx_max  : integer :=34;--425;
signal countertx        : integer range 0 to counter_max;
signal counterrx        : integer range 0 to counterrx_max;
signal LCD_oRow_SIG     : std_logic_vector(0 downto 0);
signal LCD_iRow_sig     : std_logic_vector(0 downto 0);
signal LCD_iCol_sig     : std_logic_vector(6 downto 0);
signal LCD_oCol_SIG     : std_logic_vector(3 DOWNTO 0);
signal LCD_iData_SIG    : std_logic_vector(7 downto 0);
signal reset            : std_logic;
signal reset_sig_n      : std_logic;
signal do_character     : std_logic;
signal Scroll_Counter   : natural range 0 to 63;
signal Scroll_Delay     : natural range 0 to 49990000;

TYPE ROW is array (0 to 127) of std_logic_vector(7 downto 0);
    CONSTANT spaces : row := (others => x"20");
TYPE LCD is array (0 to 1) of ROW;
    signal LCD_BUFF : LCD;
begin
reset_sig_n <= not reset;
--C1_signal <= jb(2);
--D1_signal <= jb(0);
--led0_r <= led0_r_sig;
--led0_r <= flag;

process(LCD_oRow_sig, LCD_oCol_sig)
begin
    if LCD_oRow_sig = "0" then
        if to_integer(unsigned(lcd_iCol_sig)) > 15 then
            if  scroll_counter < to_integer(unsigned((LCD_icol_sig))) - 16 then
                LCD_iData_sig <= LCD_BUFF(to_integer(unsigned(LCD_oRow_sig)))(to_integer(unsigned(LCD_oCol_sig)) + scroll_counter);
            else
                LCD_iData_sig <= LCD_BUFF(to_integer(unsigned(LCD_oRow_sig)))(to_integer(unsigned(LCD_oCol_sig)) + (to_integer(unsigned((LCD_icol_sig)))) - 16);
            end if;
        else
            LCD_iData_sig <= LCD_BUFF(to_integer(unsigned(LCD_oRow_sig)))(to_integer(unsigned(LCD_oCol_sig)));  
        end if;
    else
        LCD_iData_sig <= LCD_BUFF(to_integer(unsigned(LCD_oRow_sig)))(to_integer(unsigned(LCD_oCol_sig)));  
    
    end if;
end process;

--process(clk)
--begin
--    if(rising_edge(clk)) then
--        countertx <= countertx + 1;
--        if(btn(0) = '1') then
--            countertx <= 0;
--            txclk_sig <= '0';
--        end if; 
--        if(countertx = counter_max) then 
--            txclk_sig <= not txclk_sig;
--            countertx <= 0;
--        end if;
--    end if;
--end process;

--process(clk)
--begin
--    if(rising_edge(clk)) then
--        counterrx <= counterrx + 1;
--        if(btn(0) = '1') then
--            counterrx <= 0;
--            rxclk_sig <= '0';
--        end if; 
--        if(counterrx = counterrx_max) then 
--            rxclk_sig <= not rxclk_sig;
--            counterrx <= 0;
--        end if;
--    end if;
--end process;

--process(clk)
--begin 
--   if rising_edge(clk) then
--        ascii_flag_sig_last <= ascii_flag_sig;
--        if ascii_flag_sig_last = '0' and ascii_flag_sig = '1' and tx_empty_sig ='1' then
--            ld_tx_data_sig <= '1';
--            tx_data_sig <= '0' & ascii_code_sig;
--        elsif txclk_sig_last = '0' and txclk_sig = '1'  then
--            ld_tx_data_sig <= '0';
--        end if;
--   end if;
--end process;

process(clk)
begin 
    if rising_edge(clk) then
        scroll_delay <= scroll_delay + 1;
        if scroll_delay = 0 then
            if scroll_counter < (to_integer(unsigned(LCD_iCol_sig))) - 6 then  -- (iCol_sig + 10) - 16
                scroll_counter <= scroll_counter + 1;
            else 
                scroll_counter <= 0;
            end if;
        end if;
        if do_character = '1' then
           if rx_data_sig = x"2F" then 
                scroll_counter <= 0; 
                LCD_BUFF(0) <= spaces;
                LCD_iRow_sig <= "0";
                LCD_iCol_sig <= (others => '0');
           elsif rx_data_sig = x"2E" then
                scroll_counter <= 0;
                LCD_BUFF(1) <= spaces;
                LCD_iRow_sig <= "1";
                LCD_iCol_sig <= (others => '0'); 
           else 
                LCD_BUFF (to_integer(unsigned(LCD_iRow_sig)))(to_integer(unsigned(LCD_iCol_sig))) <= rx_data_sig;
                LCD_iCol_sig <= std_logic_vector(unsigned(LCD_iCol_sig) + 1);
           end if;
        end if;
    end if;
end process;

--process(clk)
--begin 
--   if rising_edge(clk) then
--        if rx_empty_sig = '0' then
--            uld_rx_data_sig <= '1';
--        elsif uld_rx_data_sig = '1' then  
--            uld_rx_data_sig <= '0';
--            do_character <= '1';
--        else 
--            do_character <= '0';
--            uld_rx_data_sig <= '0';
--        end if;
        
----        tx_data_sig <= rx_data_sig ;
----        if ld_tx_data_sig = '1'   then
----            ld_tx_data_sig <= '0';
----        end if;
--    end if;
--end process;


--process(clk)
--begin
--    if(rising_edge(clk)) then 
--        if((ascii_code_sig = "1000001" or ascii_code_sig = "1100001") and (ascii_flag_sig_last = '0' and ascii_flag_sig_last = '0')) then 
--            led0_r_sig <= '1';
--        elsif((ascii_code_sig = "1100010" or ascii_code_sig = "1000010") and (ascii_flag_sig ='1' and ascii_flag_sig_last = '0')) then 
--            led0_r_sig <= '0';
--        end if;
--    end if;
--end process;

--process(clk)
--begin 
--    if(rising_edge(clk)) then 
--        ascii_flag_sig_last <= ascii_flag_sig;
--      if(ascii_flag_sig ='1' and ascii_flag_sig_last = '0') then
--        led0_r_sig <= not led0_r_sig;
--      end if;
--    end if;
--end process;

INST_RESET_DELAY : reset_delay
GENERIC MAP(DELAY_LENGTH => X"FFFFF")
    PORT MAP(
        iCLK => clk,	
        oRESET => reset);
        
INST_LCD : lcd_user_level
 GENERIC MAP(
    input_clk => 125_000_000 --input clock speed from user logic in Hz
    )
		port map(
			iClk => clk,
			reset_n => reset,
			ena     => '1',
			oSDA    => ja(2), 
			oSCL    => ja(3), 
			oRow    => LCD_oRow_SIG(0),
			oCol    => LCD_oCol_sig,
			iData   => LCD_iData_sig
		);

--INST_UART : uart 
--port map(
--        clk         => clk,
--        reset       => reset_sig_n,
--        txclk       => txclk_sig,    
--        ld_tx_data  => ld_tx_data_sig,   
--        tx_data     => tx_data_sig,--x"66",  
--        tx_enable   => '1',  
--        tx_out      => ja(0),   
--        tx_empty    => tx_empty_sig, 
--        rxclk       => rxclk_sig,  
--        uld_rx_data => uld_rx_data_sig, 
--        rx_data     => rx_data_sig,   
--        rx_enable   => '1',  
--        rx_in       => ja(1),  
--        rx_empty    => rx_empty_sig  
--    );

--INST_PS2_Keyboard : ps2_keyboard_to_ascii
--generic map (clk_freq => 125_000_000,
--             ps2_debounce_counter_size => 9)
--port map(
--      clk        => clk,                     --system clock input
--      ps2_clk    => C1_signal,               --clock signal from PS2 keyboard
--      ps2_data   => D1_signal,               --data signal from PS2 keyboard
--      ascii_new  => ascii_flag_sig,          --output flag indicating new ASCII value
--      ascii_code => ascii_code_sig);         -- the ascii value to be outputted

end behavior;