LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY uart_user IS
  GENERIC(
    clk_freq  :  INTEGER    := 125_000_000;  --frequency of system clock in Hertz
    baud_rate :  INTEGER    := 115_200;      --data link baud rate in bits/second
    os_rate   :  INTEGER    := 16;          --oversampling rate to find center of receive bits (in samples per baud period)
    d_width   :  INTEGER    := 8;           --data bus width
    parity    :  INTEGER    := 0;           --0 for no parity, 1 for parity
    parity_eo :  STD_LOGIC  := '0');        --'0' for even, '1' for odd parity
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
    rx_new        :  OUT  STD_LOGIC);
END uart_user;
    
ARCHITECTURE logic OF uart_user IS
    component uart is
      GENERIC(
          clk_freq  :  INTEGER    := 125_000_000;  --frequency of system clock in Hertz
          baud_rate :  INTEGER    := 115_200;      --data link baud rate in bits/second
          os_rate   :  INTEGER    := 16;          --oversampling rate to find center of receive bits (in samples per baud period)
          d_width   :  INTEGER    := 8;           --data bus width
          parity    :  INTEGER    := 1;           --0 for no parity, 1 for parity
          parity_eo :  STD_LOGIC  := '0');        --'0' for even, '1' for odd parity
      PORT(
          clk      :  IN   STD_LOGIC;                             --system clock
          reset_n  :  IN   STD_LOGIC;                             --ascynchronous reset
          tx_ena   :  IN   STD_LOGIC;                             --initiate transmission
          tx_data  :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
          rx       :  IN   STD_LOGIC;                             --receive pin
          rx_busy  :  OUT  STD_LOGIC;                             --data reception in progress
          rx_error :  OUT  STD_LOGIC;                             --start, parity, or stop bit error detected
          rx_data  :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received
          tx_busy  :  OUT  STD_LOGIC;                             --transmission in progress
          tx       :  OUT  STD_LOGIC);                            --transmit pin
    end component;
    -- Case Statement --
    type stateType is (start, ready, write_0);
	signal next_state   : stateType := start;            --state machine 
    -- To UART Master --
    -- TX Signals --
    signal user_tx_data : std_logic_vector(d_width-1 downto 0); -- TX Data (Transmit)
    signal user_tx_ena  : std_logic;  -- TX Enable Flag
    signal user_tx_busy : std_logic;  -- TX Busy Flag
    -- RX Signals --
    signal user_rx_data : std_logic_vector(d_width-1 downto 0); -- RX Data (Recieved)
    signal user_rx_error: std_logic;  -- RX Error Flag
    signal user_rx_busy : std_logic;  -- RX Busy Flag
    signal user_rx_busy_prev : std_logic;  -- RX Busy Flag
    signal user_rx_new  : std_logic;

    -- Transciever --
    signal user_transcieve_tx : std_logic; -- Transmitter
    signal user_transcieve_rx : std_logic; -- Reciever

BEGIN

Inst_uart_master : uart
	    GENERIC MAP(
          clk_freq  => clk_freq,      -- frequency of system clock in Hertz
          baud_rate => baud_rate,     -- data link baud rate in bits/second
          os_rate   => os_rate,       -- oversampling rate to find center of receive bits (in samples per baud period)
          d_width   => d_width,       -- data bus width
          parity    => parity,        -- 0 for no parity, 1 for parity
          parity_eo => parity_eo)     -- '0' for even, '1' for odd parity
		  port map(
			    clk       => clk_i,
			    reset_n   => reset_n,
          -- TX --
			    tx_ena    => user_tx_ena,   -- TX Enable
			    tx_data   => user_tx_data,  -- TX Data
                tx_busy  => user_tx_busy,  -- TX Busy
          -- RX --     
			    rx_busy   => user_rx_busy_prev,  -- RX Busy
			    rx_error  => user_rx_error, -- RX Error
			    rx_data   => user_rx_data,  -- RX Data
          -- Transciever --               
			    tx        => user_transcieve_tx, -- TX Pin
          rx        => user_transcieve_rx -- RX Pin
);

-- Tie ports --
-- TX --
user_tx_data  <= data_i; 
-- RX --
data_o        <= user_rx_data;
rx_new        <= user_rx_new;
-- Transciever --
transcieve_tx <= user_transcieve_tx;
user_transcieve_rx <= transcieve_rx;


-- Reading --
process(clk_i)
begin
    if rising_edge(clk_i) then
        user_rx_busy <= user_rx_busy_prev;
        if user_rx_busy_prev = '0' and user_rx_busy = '1' then -- Rising edge
            user_rx_new <= '1';
        else
            user_rx_new <= '0';
        end if;
    end if;
end process;

-- Writing --
process(clk_i, reset_n)
begin
    if rising_edge(clk_i) then
        if reset_n = '0' then   -- If Reset
            user_tx_ena <= '0';
        else
            case(next_state) is 
                when start =>
                    next_state <= ready;
                when ready =>   -- Stay in Ready state until EN goes high
                    if en = '0' then
                        next_state <= ready;
                    elsif en = '1' then
                        user_tx_ena <= '1';  -- Enable UART send
                        next_state <= write_0;
                    end if;
                when write_0 =>
                    user_tx_ena <= '0';
                    if user_tx_busy = '1' then
                        next_state <= write_0;
                    else
                        next_state <= ready;
                    end if;
            end case;
        end if;
    end if;
end process;

-- add a \n\r bytesel for every keyboard press?


END logic;
