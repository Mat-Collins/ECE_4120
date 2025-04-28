-- Design PHASE 2 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu


LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- A generic register with enable and active-low reset functionality
ENTITY register_N IS
    GENERIC (N : INTEGER := 32);
    PORT (
        D       : IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0);	-- Input value to be loaded
		  enable  : IN  STD_LOGIC;									-- Register enable
        Resetn  : IN  STD_LOGIC;									-- Active-low reset
        Clock   : IN  STD_LOGIC;									-- Clock signal
        Q       : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)		-- Register output (stored value)
    );
END ENTITY register_N;

ARCHITECTURE behavioral OF register_N IS
    
	 -- Internal Signal
	 SIGNAL reg_data : STD_LOGIC_VECTOR (N-1 DOWNTO 0) := (OTHERS => '0');	-- Value that will be stored in the register

BEGIN
    
	 PROCESS (Clock, Resetn)
    BEGIN
        
		  -- Active-low Reset fucntion
		  IF Resetn = '0' THEN
            reg_data <= (OTHERS => '0');
        
		  -- Synchronous and Enable function
		  ELSIF rising_edge(Clock) and enable = '1' THEN
            reg_data <= D;
        END IF;
    
	 END PROCESS;

    Q <= reg_data;

END behavioral;
