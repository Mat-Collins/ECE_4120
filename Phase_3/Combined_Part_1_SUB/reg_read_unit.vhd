-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

LIBRARY WORK;
USE WORK.type_def.all;


ENTITY reg_read_unit IS
	GENERIC (LEN : INTEGER := 32);
	PORT(
		read_reg_1		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Output register 1 Selection
		read_reg_2		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Output register 2 Selection
		reg_values		: IN REG_ARRAY(LEN-1 DOWNTO 0);			-- Array of all the register values
		read_data_1		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	-- Output register 1 Value
		read_data_2		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		-- Output register 2 Value
	);
END ENTITY;

ARCHITECTURE behavior OF reg_read_unit IS
	
BEGIN

	-- Multiplexer to select the output for Read Register 1
	read_mux_1: PROCESS(read_reg_1, reg_values)
	BEGIN
		
	read_data_1 <= reg_values(to_integer(unsigned(read_reg_1)));
		
	END PROCESS;
	
	-- Multiplexer to select the output for Read Register 2
	read_mux_2: PROCESS(read_reg_2, reg_values)
	BEGIN
	
	read_data_2 <= reg_values(to_integer(unsigned(read_reg_2)));
		
	END PROCESS;
	
END ARCHITECTURE;