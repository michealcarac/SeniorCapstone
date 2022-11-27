library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity top_level is
    port(
    ps2_data : in std_logic;
    ps2_clk  : in std_logic;
    clk_100Mhz      : in std_logic;
    uart_tx  : out std_logic;
    uart_rx  : in std_logic;
    uart_reset_n : in std_logic);
end top_level;

architecture Behavioral of top_level is

component ps2_keyboard_to_ascii is
  GENERIC(
        clk_freq                  : INTEGER := 125_000_000; --system clock frequency in Hz
        ps2_debounce_counter_size : INTEGER := 2);         --set such that 2^size/clk_freq = 5us (size = 8 for 50MHz)
  PORT(
          clk        : IN  STD_LOGIC;                     --system clock input
          ps2_clk    : IN  STD_LOGIC;                     --clock signal from PS2 keyboard
          ps2_data   : IN  STD_LOGIC;                     --data signal from PS2 keyboard
          ascii_new  : OUT STD_LOGIC;                     --output flag indicating new ASCII value
          ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   --ASCII value
	  );
end component;

component Uart_User is
    GENERIC(
        clk_freq  :  INTEGER    := 125_000_000;     -- frequency of system clock in Hertz
        baud_rate :  INTEGER    := 115_200;       -- data link baud rate in bits/second
        os_rate   :  INTEGER    := 16;    -- oversampling rate to find center of receive bits (in samples per baud period)
        d_width   :  INTEGER    := 8;    -- data bus width
        parity    :  INTEGER    := 0;     -- 0 for no parity, 1 for parity
        parity_eo :  STD_LOGIC  := '0'); -- '0' for even, '1' for odd parity
    PORT(
        -- IN --
        clk_i         :  IN   STD_LOGIC;                             --system clock
        reset_n       :  IN   STD_LOGIC;                             --ascynchronous reset
        en            :  IN   STD_LOGIC;
        -- TX --
        data_i        :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
        transcieve_tx :  OUT  STD_LOGIC;  -- Transmit Pin
        -- RX --
        data_o        :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received
        transcieve_rx :  IN   STD_LOGIC;  -- Recieve Pin 
        rx_new        :  OUT  STD_LOGIC); -- Pulse when new data comes
end component;


-- ASCII -- 
signal ascii_code : std_logic_vector(6 downto 0);
signal prev_ascii_new_pulse : std_logic;
signal ascii_new_pulse : std_logic;

-- TX --
signal uart_en : std_logic;
signal uart_data : std_logic_vector(7 downto 0);


begin


Inst_keyboard: ps2_keyboard_to_ascii
    port map (
        clk        => clk_100Mhz,
        ps2_clk    => ps2_clk,
        ps2_data   => ps2_data,
        ascii_new  => prev_ascii_new_pulse,
        ascii_code => ascii_code
);

Inst_Uart: Uart_User
    PORT MAP(
        clk_i => clk_100Mhz, 
        reset_n => uart_reset_n, 
        data_i => uart_data,
        en     => uart_en,
        transcieve_tx => uart_tx, 
        data_o => open,
        transcieve_rx => uart_rx,
        rx_new => open
); 

uart_data <= '0' & ascii_code;

-- ENABLE UART for sending --
process(clk_100Mhz)
begin
    if rising_edge(clk_100Mhz) then
        ascii_new_pulse <= prev_ascii_new_pulse;
        if prev_ascii_new_pulse = '0' AND ascii_new_pulse = '1'  then
            uart_en <= '1'; -- one transaction
        else
            uart_en <= '0'; -- disable uart
        end if;
    end if;
end process;



end Behavioral;
