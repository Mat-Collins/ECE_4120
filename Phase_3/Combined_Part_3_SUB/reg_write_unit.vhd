-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY WORK;
USE WORK.type_def.all;


ENTITY reg_write_unit IS
	GENERIC (LEN : INTEGER := 32);
	PORT(
		write_en		: IN STD_LOGIC;									-- Register Write Enable
		clock			: IN STD_LOGIC;									
		write_reg	: IN STD_LOGIC_VECTOR(4 DOWNTO 0);			-- Write Register Selection
		write_data	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);			-- Data to write to Register
		reset			: IN STD_LOGIC;
		reg_data		: OUT REG_ARRAY(LEN-1 DOWNTO 0)				-- Values of all the registers (Feeds to reg_read_unit)
	);
END ENTITY;

ARCHITECTURE behavior OF reg_write_unit IS

	-- Component Declarations
	COMPONENT register_N IS
		GENERIC (N : INTEGER := 32);
		PORT (
			  D       : IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0);	-- Register Input
			  enable  : IN  STD_LOGIC;									-- Register Write Enable
			  Resetn  : IN  STD_LOGIC;
			  Clock   : IN  STD_LOGIC;
			  Q       : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)		-- Register Output
		 );
	END COMPONENT;
	
	COMPONENT decoder IS
		GENERIC(n: INTEGER := 5);
		PORT(
				input		: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);	-- Write Register Selection 
				output	: OUT STD_LOGIC_ARRAY(31 DOWNTO 0));	-- Register Enable Selection
	END COMPONENT;

	-- Internal Signals
	SIGNAL decoder_out: STD_LOGIC_ARRAY(LEN-1 DOWNTO 0) 	:= (OTHERS => '0');  -- Bit array from decoder
	SIGNAL reg_en: STD_LOGIC_VECTOR(LEN-1 DOWNTO 0) 		:= (OTHERS => '0');	-- Register Enable array (write reg & Write enable)
	
	
BEGIN


	dec: decoder GENERIC MAP (5)
				    PORT MAP (input 	=> write_reg,	-- Write Register Selection
								  output => decoder_out	-- Register Selection Bit
									);
						
	
	-- The list of registers to store the value
	reg_list: FOR i IN 0 TO LEN-1 GENERATE
	
		reg_en(i) <= decoder_out(i) and write_en;
	
		registers: register_N	GENERIC MAP (32)
										PORT MAP (
											D 			=> write_data,		-- Data to write to register
											enable 	=> reg_en(i),		-- Register enable
											Resetn 	=> reset,
											Clock 	=> clock,
											Q 			=> reg_data(i)		-- Data stored in register
										);
	END GENERATE;	
END ARCHITECTURE;