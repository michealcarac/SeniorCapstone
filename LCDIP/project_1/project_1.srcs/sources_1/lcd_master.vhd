----------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity lcd_user_level is
  GENERIC(
    input_clk : INTEGER := 100_000_000 --input clock speed from user logic in Hz
    );
		port (
			iClk : in std_logic;
			reset_n  : in std_logic;
			ena      : in std_LOGIC;
			oSDA     : inout std_logic;
			oSCL     : inout std_logic;
			oRow     : out std_logic;
			oCol     : out std_logic_vector(3 downto 0);
			iData    : in std_logic_vector(7 downto 0)
		);
end lcd_user_level;

architecture Structural of lcd_user_level is
COMPONENT i2c_master IS
  GENERIC(
    input_clk : INTEGER := 100_000_000; --input clock speed from user logic in Hz
    bus_clk   : INTEGER := 400_000);   --speed the i2c bus (scl) will run at in Hz
  PORT(
    clk       : IN     STD_LOGIC;                    --system clock
    reset_n   : IN     STD_LOGIC;                    --active low reset
    ena       : IN     STD_LOGIC;                    --latch in command
    addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
    rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
    data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
    busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
    data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
    ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
    sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
    scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
END component;

TYPE state_types IS(start, lcd_init1,lcd_init2); --needed states
signal state: state_types := start;
signal busy_sig : std_LOGIC;
signal data_rd : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal ack_error : std_LOGIC;
signal ena_sig : std_LOGIC;
signal reset_sig	: std_LOGIC;
signal data_wr_sig :std_LOGIC_VECTOR(7 downto 0);
signal data       : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal the_handshake : std_LOGIC;
CONSTANT delay_time : integer := input_clk*2/1000; --15 ms delay between steps
signal rw_sig : std_logic;
signal adc_channel : std_logic_vector(7 downto 0);
signal delay: integer;
signal seq_cntr: integer;

type lcd_data_type is array( 0 to 239) of std_logic_vector(7 downto 0);
signal  lcd_data: lcd_data_type := (
    "00111000", "00111100", "00111000", --0x3 
    "00111000", "00111100", "00111000", --0x3 
    "00111000", "00111100", "00111000", --0x3
    "00101000", "00101100", "00101000", --0x2
    
    "00101000", "00101100", "00101000", --0x28
    "10001000", "10001100", "10001000",
     
    "00001000", "00001100", "00001000", --0x06 
    "01101000", "01101100", "01101000",

    "00001000", "00001100", "00001000", --0x01 
    "00011000", "00011100", "00011000",
    
    "00001000", "00001100", "00001000", --0x06 
    "11111000", "11111100", "11111000",

    
    --start of repeating sequence
    "00001000", "00001100", "00001000", --return home
    "00101000", "00101100", "00101000",
    
    "11111001", "11111101", "11111001", -- 42
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001", 
    "00001001", "00001101", "00001001",
    
    "11001000", "11001100", "11001000", --switch rows 
    "00001000", "00001100", "00001000",
    
    "11111001", "11111101", "11111001", -- 95
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",--50
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001",
    "00001001", "00001101", "00001001",
    "11111001", "11111101", "11111001", 
    "00001001", "00001101", "00001001" 

    );


begin

process(iclk)
begin  
if(rising_edge(iClk)) then
	if(reset_n = '0') then
		state <= lcd_init1;
		ena_sig <= '0';
		data_wr_sig <= (others => '0');
		rw_sig<='0';
		delay<=2500000;
		seq_cntr <= 0; 
	elsif delay /= 0 then
	    delay <= delay -1;
	else --delay=0 
        case state is 
          when lcd_init1 => --wait for display power on
            state <= lcd_init2;
            seq_cntr<=0;
            delay<=625000;
          when lcd_init2=>
            ena_sig <= '1';
            rw_sig <= '0';
            delay <= 0;
            data_wr_sig <= lcd_data(seq_cntr);
            if( seq_cntr >= 42 and lcd_data(seq_cntr)(7)='1' and lcd_data(seq_cntr)(0)='1') then
                data_wr_sig(7 downto 4) <= iData(7 downto 4);
            elsif ( seq_cntr >= 42 and lcd_data(seq_cntr)(7)='0' and lcd_data(seq_cntr)(0)='1') then
                data_wr_sig(7 downto 4) <= iData(3 downto 0);
            end if;
            if busy_sig = '1' then
               if seq_cntr /= 239 then
                  seq_cntr <= seq_cntr+1; 
               else
                  seq_cntr <= 36;
               end if;
               delay <= 250000;
                ena_sig <= '0';
            end if; 
         when others =>
                state <= lcd_init1;	
         end case;  
      end if; 
    end if;  
end process; 

process(seq_cntr)
begin
    if seq_cntr < 144 then
        oRow <= '0';
    else 
        oRow <= '1';
    end if;

case seq_cntr is    
    when 42 to 47  |144 to 149 => oCol <= "0000";
    when 48 to 53  |150 to 155 => oCol <= "0001";
    when 54 to 59  |156 to 161 => oCol <= "0010";
    when 60 to 65  |162 to 167 => oCol <= "0011";
    when 66 to 71  |168 to 173 => oCol <= "0100";
    when 72 to 78  |174 to 179 => oCol <= "0101";
    when 79 to 84  |180 to 185 => oCol <= "0110";
    when 85 to 90  |186 to 191 => oCol <= "0111";
    when 91 to 96  |192 to 197 => oCol <= "1000";
    when 97 to 102 |198 to 203 => oCol <= "1001";
    when 103 to 108|204 to 209 => oCol <= "1010";
    when 109 to 114|210 to 215 => oCol <= "1011";
    when 115 to 120|216 to 221 => oCol <= "1100";
    when 121 to 126|222 to 227 => oCol <= "1101";
    when 127 to 132|228 to 233 => oCol <= "1110";
    when 133 to 138|234 to 239 => oCol <= "1111";
    when others => oCol <= "0000";
end case; 
end process;
 

	inst_i2cm: i2c_master
	generic map(
		input_clk => input_clk, --input clock speed from user logic in Hz
		bus_clk   => 100_000
	 )   --speed the i2c bus (scl) will run at in Hz)
		port map(
			clk  => iClk,                 --system clock
			reset_n => reset_n,                          --active low reset
			ena     => ena_sig,                          --latch in command
			addr    => "0100111",    					  --address of target slave
			rw      => rw_sig,                          --'0' is write, '1' is read
			data_wr => data_wr_sig,      					     --data to write to slave
			busy    => busy_sig,                         --indicates transaction in progress
			data_rd => open,   					     --data read from slave
			ack_error => ack_error,                  --flag if improper acknowledge from slave
			sda       => oSDA,                        --serial data output of i2c bus
			scl       => oSCL                         --serial clock output of i2c bus
			
		);

end Structural;

