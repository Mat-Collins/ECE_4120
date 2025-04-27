-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

PACKAGE type_def IS

	-- Defines the Array of Registers
	TYPE REG_ARRAY IS ARRAY (natural RANGE <>) OF STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- Defines and Array of STD_LOGIC bits
	TYPE STD_LOGIC_ARRAY IS ARRAY (natural RANGE <>) OF STD_LOGIC;
	
END PACKAGE;