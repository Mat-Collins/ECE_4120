-- Design Phase 2
-- Date: 4/30/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY WORK;
USE WORK.type_def.all;

ENTITY register_file IS
	GENERIC (LEN : INTEGER := 32);
	PORT(
		read_reg_1		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Read Register 1 Selection
		read_reg_2		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Read Register 2 Selection
		write_reg		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Write Register Selection
		write_data		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);		-- Data to write to register
		regwrite_bit	: IN STD_LOGIC;								-- Enable Write
		reset				: IN STD_LOGIC;
		clock				: IN STD_LOGIC;
		read_data_1		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	-- Data stored in Read Register 1
		read_data_2		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 	-- Data stored in Read register 2
	);
END ENTITY;
	
ARCHITECTURE behavior OF register_file IS

	-- Component Declarations
	COMPONENT reg_write_unit IS
		GENERIC (LEN : INTEGER := 32);
		PORT(
			write_en		: IN STD_LOGIC;									-- Register write enable
			clock			: IN STD_LOGIC;
			write_reg	: IN STD_LOGIC_VECTOR(4 DOWNTO 0);			-- Write Register Selection
			write_data	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);			-- Data to write to register
			reset			: IN STD_LOGIC;
			reg_data		: OUT REG_ARRAY(LEN-1 DOWNTO 0) 				-- Values stored in all the registers 
		);
	END COMPONENT;
	
	COMPONENT reg_read_unit IS
		GENERIC (LEN : INTEGER := 32);
			PORT(
				read_reg_1		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Read Register 1 Selection
				read_reg_2		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Read Register 2 Selection
				reg_values		: IN REG_ARRAY(LEN-1 DOWNTO 0);			-- Values stored in all the registers
				read_data_1		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	-- Values stored in read register 1
				read_data_2		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)		-- Values stored in read register 2
			);
	END COMPONENT;
	
	
	-- Internal Signals
	SIGNAL read_unit_in 		: REG_ARRAY(LEN-1 DOWNTO 0);		-- Stored register values
	SIGNAL read_data_1_sig	: STD_LOGIC_VECTOR(31 DOWNTO 0);	-- The value of read register 1 that is stored
	SIGNAL read_data_2_sig	: STD_LOGIC_VECTOR(31 DOWNTO 0);	-- The value of read register 2 that is stored
	SIGNAL Forward_1			: STD_LOGIC;							-- The select bit for forwarding read data 1
	SIGNAL Forward_2			: STD_LOGIC;							-- The select bit for forwarding read data 2
	
BEGIN


	

	write_unit: reg_write_unit GENERIC MAP (32)
										PORT MAP (
											write_en		=> regwrite_bit,		-- Write enable control bit
											clock			=> clock,				
											write_reg 	=> write_reg,			-- Write register selection
											write_data 	=> write_data,			-- Data to write to register
											reset 		=> reset,
											reg_data		=> read_unit_in		-- All the stored register values feeds to read_unit
										);
									
	read_unit: reg_read_unit GENERIC MAP (32)
									 PORT MAP (
										read_reg_1		=> read_reg_1,				-- Read register 1 selection
										read_reg_2		=> read_reg_2,				-- Read register 2 selection
										reg_values		=> read_unit_in,			-- The stored register values fed from write_unit
										read_data_1		=> read_data_1,   		-- The value stored in read register 1
										read_data_2		=> read_data_2    		-- The value stored in read register 2
									 );
									 
END ARCHITECTURE;