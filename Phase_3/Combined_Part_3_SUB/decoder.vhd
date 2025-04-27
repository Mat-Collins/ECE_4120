-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;

LIBRARY WORK;
USE WORK.type_def.all;

-- 5-to-32 bit decoder
ENTITY decoder IS
	GENERIC(n: INTEGER := 5);
	PORT(
			input		: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			output	: OUT STD_LOGIC_ARRAY(31 DOWNTO 0) := (OTHERS => '0'));
END ENTITY;

ARCHITECTURE behavior OF decoder IS
BEGIN
	
	dec: PROCESS(input)
		
		VARIABLE input_val	: INTEGER := 0;
		VARIABLE output_val 	: STD_LOGIC_ARRAY(31 DOWNTO 0) := (OTHERS => '0');
		
		BEGIN
		
			-- Convert input vectr to integer
			input_val := to_integer(unsigned(input));
			
			-- Turn out output bit corresponding to input selection
			output_val := (OTHERS => '0');
			output_val(input_val) := '1';
			output <= output_val;
			
	END PROCESS;
END ARCHITECTURE;