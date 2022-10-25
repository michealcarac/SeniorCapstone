LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY LCD_Transmitter IS
	GENERIC (
		CONSTANT input_clock : integer := 125_000_000); 
	PORT(
		clk       : IN    STD_LOGIC;                     --system clock
		reset_n   : IN    STD_LOGIC;
        indata	  : IN    STD_LOGIC_VECTOR(255 downto 0);
        
--		run_clk   : IN    STD_LOGIC;  --is the clock on
--		adc_sel   : IN    STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		sda       : inout std_logic;                     --i2c data
		scl       : inout std_logic                      --i2c clock
    );                   
END LCD_Transmitter;

ARCHITECTURE user_logic OF LCD_Transmitter IS

component i2c_master is
	generic(
		input_clk : INTEGER := 125_000_000; --input clock speed from user logic in Hz
		bus_clk   : INTEGER := 50_000);    --speed the i2c bus (scl) will run at in Hz
	port(
		clk       : IN     STD_LOGIC;                    --system clock
		reset_n   : IN     STD_LOGIC;                    --active low reset
		ena       : IN     STD_LOGIC;                    --latch in command
		addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
		rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
		data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
		busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
		data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
		ack_error : BUFFER STD_LOGIC;                  --flag if improper acknowledge from slave
		sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
		scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
end component;

--LCD Arrays
--type LCD_FirstLine is array(0 to 3) of std_logic_vector(255 downto 128);
--signal first_line : LCD_FirstLine := (others => (others => '0'));
--TYPE LCD_SecondLine is array(0 to 1) of std_logic_vector(127 downto 0);
--signal second_line : LCD_SecondLine := (others => (others => '0'));

signal first_line : std_logic_vector(127 downto 0) := (others => '0');
signal second_line : std_logic_vector(127 downto 0) := (others => '0');

--state machine
type state_type is (start, ready, data_valid, busy_high, pause, repeat, do_nothing); --needed states
signal state       : state_type;                   --state machine

--i2c master signals
signal i2c_enable  : std_logic;                    --enable/start the i2c_master component
signal i2c_address : std_logic_vector(7 downto 0); --Ignore the MSB when connecting to i2c component
signal i2c_data    : std_logic_vector(7 downto 0); --data to write
signal i2c_busy    : std_logic;                    --is the i2c component busy?

--control signals
signal nibble_sel : std_logic;                    --upper when 0, lower when 1
signal data       : STD_LOGIC_VECTOR(8 DOWNTO 0); -- 9 bits, MSB is RS
signal byteSel    : integer range 0 to 40:=0;
signal EN_sig     : std_logic;
signal en_cnt     : integer range 0 to 2;
signal pause_cnt  : integer range 0 to input_clock / 2;
signal pause_max  : integer range 0 to input_clock / 2;

function std_to_integer( s : std_logic ) return natural is
begin
      if s = '1' then
      return 1;
   else
      return 0;
   end if;
end function;

BEGIN

Inst_i2c_master : i2c_master
		port map(
			clk       => clk,
			reset_n   => reset_n,
			ena       => i2c_enable,
			addr      => "0100111",
			rw        => '0',          --we're only writing
			data_wr   => i2c_data,
			busy      => i2c_busy,
			data_rd   => open,         --we're only writing
			ack_error => open,         --we're only writing
			sda       => sda,
			scl       => scl
		);

-- DATA PREPERATION --
-- First Line  --
-- This part is editable for custom messages 
--first_line(0)     <= indata(127 downto 0);
--second_line(0)    <= indata(255 downto 128);
second_line <= indata(127 downto 0);
first_line <= indata(255 downto 128);

 

process(byteSel)
 begin
    case byteSel is
       when 0  => data  <= '0'& X"33"; --Initialization Start
       when 1  => data  <= '0'& X"32";
       when 2  => data  <= '0'& X"28";
       when 3  => data  <= '0'& X"06";
       when 4  => data  <= '0'& X"01";
       when 5  => data  <= '0'& X"0F";
       when 6  => data  <= '0' & X"0C";
       when 7  => data  <= '0' & X"80";
       when 8 => data   <= '1'& first_line(127 downto 120);
       when 9 => data   <= '1' & first_line(119 downto 112);
       when 10 => data   <= '1'& first_line(111 downto 104);
       when 11 => data  <= '1'& first_line(103 downto  96);
       when 12 => data  <= '1'& first_line(95  downto  88);
       when 13 => data  <= '1'& first_line(87  downto  80);
       when 14 => data  <= '1'& first_line(79  downto  72); 
       when 15 => data  <= '1'& first_line(71  downto  64);
       when 16=> data   <= '1'& first_line(63  downto  56);
       when 17 => data  <= '1'& first_line(55  downto  48);
       when 18 => data  <= '1'& first_line(47  downto  40);
       when 19 => data  <= '1'& first_line(39  downto  32);
       when 20 => data  <= '1'& first_line(31  downto  24);
       when 21 => data  <= '1'& first_line(23  downto  16);
       when 22 => data  <= '1'& first_line(15  downto   8);
       when 23 => data  <= '1'& first_line(7   downto   0);
       when 24 => data  <= '0'& X"C0";--Change address to bottom left of screen--
       when 25 => data  <= '1'& second_line(127 downto 120);
       when 26 => data  <= '1'& second_line(119 downto 112);
       when 27 => data  <= '1'& second_line(111 downto 104);
       when 28 => data  <= '1'& second_line(103 downto  96);
       when 29 => data  <= '1'& second_line(95  downto  88);
       when 30 => data  <= '1'& second_line(87  downto  80);
       when 31 => data  <= '1'& second_line(79  downto  72); 
       when 32 => data  <= '1'& second_line(71  downto  64);
       when 33 => data  <= '1'& second_line(63  downto  56);
       when 34 => data  <= '1'& second_line(55  downto  48);
       when 35 => data  <= '1'& second_line(47  downto  40);
       when 36 => data  <= '1'& second_line(39  downto  32);
       when 37 => data  <= '1'& second_line(31  downto  24);
       when 38 => data  <= '1'& second_line(23  downto  16);
       when 39 => data  <= '1'& second_line(15  downto   8);
       when 40 => data  <= '1'& second_line(7   downto   0);
       when others => data <= '0'& X"20"; 
   end case;
end process;

process(clk) 
	begin
	   if rising_edge(clk) then
		if reset_n = '0' then
			byteSel <= 7;
			en_cnt <= 0;
			EN_sig <= '0';
			nibble_sel <= '0';
			state <= start;
		else
			case(state) is
				when start => 
					i2c_enable <= '0';
					state <= ready;
					pause_cnt <= 0;
					if en_cnt = 1 then
						EN_sig <= '1';
					else
						EN_sig <= '0';
					end if;
					if nibble_sel = '1' then 
						i2c_data <= data(3 downto 0) & '1' & EN_sig & '0' & data(8);
					else
						i2c_data <= data(7 downto 4) & '1' & EN_sig & '0' & data(8);
					end if;
					
				when ready => 
					if i2c_busy = '0' then
						i2c_enable <= '1';
						state <= data_valid;
					end if;
				
				when data_valid => 
					if i2c_busy = '1' then       --if the transaction has started
						i2c_enable <= '0';        --reset the enable signal
						state <= busy_high;  --and move to the next state
					end if;
					
				when busy_high => 
					if i2c_busy = '0' then       --once the i2c transaction has completed
						state <= repeat;     --move to the next state
					end if;
				
				when repeat => 
					if en_cnt < 2 then
					    EN_sig <= not EN_sig;
						en_cnt <= en_cnt + 1;
						state <= start;
				    else
				        EN_sig <= '0';
				        en_cnt <= 0;
				        state <= pause;
				    end if;
					case(byteSel) is
						when 0      => pause_max <= input_clock / 200;
						when 1      => pause_max <= input_clock / 200;
						--when 39     => pause_max <= input_clock / 5;
						when others => pause_max <= input_clock / 1000;
					end case;
				
				when pause => 
					if pause_cnt < pause_max then
						pause_cnt <= pause_cnt + 1;
					else
					   pause_cnt <= 0;
					   if nibble_sel = '1' then --if we're at the lower nibble
                            en_cnt <= 0;
                            nibble_sel <= '0';   -- go to the top nibble
                            if byteSel = 40 then  --if we've done every byte
                                --state <= start;
                                --byteSel <= 6;
                                state <= do_nothing; --do nothing until reset
                            else
                                byteSel <= byteSel + 1; --otherwise increment byteSel 
                                state <= pause;         --and start over
                            end if;
                        else
                            nibble_sel <= '1';
                            state <= pause;
                        end if;
                        if byteSel /= 40 then
                            state <= start;
                        end if;
                    end if;
					
				when do_nothing => 
					byteSel <= 0;
					EN_sig <= '0';
					i2c_enable <= '0';
					en_cnt <= 0;
					nibble_sel <= '0';
					
			end case;
		end if;
		end if;
end process;





end user_logic;  
 