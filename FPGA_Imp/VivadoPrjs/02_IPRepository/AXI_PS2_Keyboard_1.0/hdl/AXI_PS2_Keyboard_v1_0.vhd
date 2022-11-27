library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_PS2_Keyboard_v1_0 is
	generic (
		-- Users to add parameters here
        PS2_CLK_FREQ                   : integer   := 100_000_000;  --system clock frequency in Hz
        PS2_DEBOUNCE_COUNTER_SIZE : integer   := 2;     --set such that 2^size/clk_freq = 5us (size = 2 for 100MHz)
        TIMER_OUTPUT_WIDTH        : integer   := 32;    -- Timer Width 
        TIMER_CLOCK_DIVIDER       : integer   := 5000;  -- Default 0.0001 sec resolution ->  period of 1/10000  for 100MHZ clock
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        -- USER
		ps2_clk   : in  std_logic;                    --clock signal from PS2 keyboard
        ps2_data  : in  std_logic;                    --data signal from PS2 keyboard
        ascii_new : out std_logic;                    --output flag indicating new ASCII value
        ascii     : out std_logic_vector(6 downto 0);
        timer     : out std_logic_vector(TIMER_OUTPUT_WIDTH-1 downto 0);
        break_o   : out std_logic;
        int_o     : out std_logic;
		-- USER ENDS
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end AXI_PS2_Keyboard_v1_0;

architecture arch_imp of AXI_PS2_Keyboard_v1_0 is

	-- component declaration
	component AXI_PS2_Keyboard_v1_0_S00_AXI is
		generic (
		-- USER GENERICS
        -- USER GENERICS END
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		-- USER
        -- USER ENDS
		
		-- Messing with slave registers
		command_reg  : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); -- Input to ps2 keyboard module as a command register
		data_reg0    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  -- Output from ps2 keyboard to slave register 0
		data_reg1    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  -- Output from ps2 keyboard to slave register 1
		-- end
		
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_PS2_Keyboard_v1_0_S00_AXI;

    -- USER COMPONENTS
    signal ascii_temp  : std_logic_vector(6 downto 0);
    -- Slave registers
    signal command_reg : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');  -- Reset and Enable, from slv_reg2
    signal data_reg0   : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');  -- Keypress Data, to slv_reg0
    signal data_reg1   : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');  -- Keypress Timestamp, to slv_reg1
    
    
    -- end
    
    COMPONENT ps2_keyboard_ascii_timer IS
          GENERIC(
              clk_freq                  : INTEGER := 100_000_000; --system clock frequency in Hz
              ps2_debounce_counter_size : INTEGER := 2;           --set such that 2^size/clk_freq = 5us (size = 2 for 100MHz)
              TIMER_OUTPUT_WIDTH        : INTEGER := 32;          -- Timer Width 
              TIMER_CLOCK_DIVIDER       : INTEGER := 5_000        -- Default 0.0001 sec resolution ->  period of 1/10000  for 100MHZ clock
              );         
          PORT(
              clk        : IN  STD_LOGIC;                     --system clock input
              ps2_clk    : IN  STD_LOGIC;                     --clock signal from PS2 keyboard
              ps2_data   : IN  STD_LOGIC;                     --data signal from PS2 keyboard
              -- MC -> 
              -- ASCII code: Outputs the translated ASCII code every Make or Break, originally only on make, which can lead to issues if a key is pressed but not released before another one is pressed.
              -- ASCII New: Outputs a pulse every MAKE
              -- Break code: Stays high after a translation with a break code until a make code is translated
              -- Interrupt: Outputs a pulse every MAKE or BREAK
              -- Timer: Outputs a timer value that constantly increments, but is only outputted on every MAKE or BREAK 
              -- Timer Reset: Reset Timer with a pulse of '1'
              -- Timer Enable: Hold '1' to keep timer enabled.
              ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);   --ASCII value
              ascii_new  : OUT STD_LOGIC; -- ASCII New
              break_o    : OUT STD_LOGIC; -- Break
              int_o      : OUT STD_LOGIC; -- Interrupt
              timer_o    : OUT STD_LOGIC_VECTOR(TIMER_OUTPUT_WIDTH-1 downto 0);  -- Timer
              timer_rs   : IN  STD_LOGIC;    -- Timer Reset
              timer_en   : IN  STD_LOGIC    -- Timer Enable
              
              ); 
    END COMPONENT;
    
    -- END USER COMPONENTS	

begin

    -- Instantiation of Axi Bus Interface S00_AXI
    AXI_PS2_Keyboard_v1_0_S00_AXI_inst : AXI_PS2_Keyboard_v1_0_S00_AXI
	generic map (
	    -- USER GENERICS
		-- USER GENERICS END
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	
	    -- USER
	    command_reg     => command_reg,
		data_reg0       => data_reg0,
		data_reg1       => data_reg1,
	    -- USER ENDS
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here
    ps2 : ps2_keyboard_ascii_timer      
    port map(
        clk        => S00_AXI_ACLK,   --system clock input
        ps2_clk    => ps2_clk,      --clock signal from PS2 keyboard
        ps2_data   => ps2_data,     --data signal from PS2 keyboard
        ascii_new  => ascii_new,    --output flag indicating new ASCII value
        ascii_code => data_reg0(6 downto 0),   --ASCII value
        -- interrupt on every make/break
        int_o      =>  int_o,
        -- Break/Make Code
        break_o    => data_reg0(7),
        -- TIMER
        timer_rs   => command_reg(1),   -- '1' to reset TIMER
        timer_en   => command_reg(0), -- command_reg(0),   -- '1' to enable TIMER
        timer_o    => data_reg1(TIMER_OUTPUT_WIDTH-1 downto 0)  -- Data of timer, changes upon new ascii character
    ); 

    -- Assign to output
    ascii   <= data_reg0(6 downto 0) when command_reg(2) = '1' else -- '1' On or '0' off ASCII Output
               (others => '0');
    break_o <= data_reg0(7) when command_reg(2) = '1' else -- '1' On or '0' off ASCII break output
               '0';
    timer   <= data_reg1(TIMER_OUTPUT_WIDTH-1 downto 0);
	-- User logic ends

end arch_imp;
