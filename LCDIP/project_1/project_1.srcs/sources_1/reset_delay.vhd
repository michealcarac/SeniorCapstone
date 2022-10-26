library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

-- NOTE: THIS VERSION OF THE RESET DELAY IS ACTIVE HIGH --


ENTITY reset_delay IS	
    GENERIC (DELAY_LENGTH : unsigned(19 DOWNTO 0) := X"FFFFF");
    PORT (
        SIGNAL iCLK   : IN std_logic;	
        SIGNAL oRESET : OUT std_logic := '1'
			);	
END Reset_Delay;


ARCHITECTURE Arch OF reset_delay IS
	
    SIGNAL Cont : unsigned(19 DOWNTO 0):=X"00000";

BEGIN

 PROCESS
 BEGIN

	  WAIT UNTIL rising_edge (iCLK);
	  IF Cont /= DELAY_LENGTH THEN
--	  IF Cont /= X"0000F" THEN
		  Cont <= Cont + 1;	
		  oRESET <= '0';	
	  ELSE
		  oRESET <= '1';	
	  END IF;
 END PROCESS;
	
END Arch;