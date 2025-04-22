-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY phase_2_tb IS
END ENTITY;

ARCHITECTURE testbench OF phase_2_tb IS

	-- Component Declarations
	COMPONENT phase_2 IS
		PORT (
        clock         		: IN  STD_LOGIC;
        reset         		: IN  STD_LOGIC;
        instr_wren         : IN  STD_LOGIC;								-- Instruction Write enable
        instr_input        : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	-- Instruction input
		  regwrite				: IN 	STD_LOGIC;								-- Enable bit for the register file
		  alu_src				: IN  STD_LOGIC;								-- Control bit for the input of the ALU
		  alu_op					: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);		-- Control for the ALU Operation
		  reg_data_1			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  	-- Read Data 1
		  reg_data_2			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  	-- Read Data 2
		  read_reg_1			: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);  	-- Read Register 1
		  read_reg_2			: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);  	-- Read Register 2
		  write_reg				: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);  	-- Write Register
		  alu_out				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  	-- Output of the ALU
		  alu_zero				: OUT STD_LOGIC;							  	-- Zero output of ALU
        instr_mem_out 		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)    -- Instruction Memory output
		);
	END COMPONENT;

	-- Signals to test entity
	SIGNAL clock 				: STD_LOGIC;
	SIGNAL reset 				: STD_LOGIC;
	SIGNAL instr_wren 		: STD_LOGIC;
	SIGNAL instr_input 		: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL regwrite 			: STD_LOGIC;
	SIGNAL alu_src 			: STD_LOGIC;
	SIGNAL alu_op 				: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL read_data_1 		: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_data_2 		: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL read_reg_1 		: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL read_reg_2 		: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL write_reg  		: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL alu_out				: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL alu_zero 			: STD_LOGIC;
	SIGNAL instr_mem_out 	: STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

	DUT: phase_2 PORT MAP (
						  clock				=> clock,
						  reset				=> reset,
						  instr_wren		=> instr_wren,
						  instr_input		=> instr_input,
						  regwrite			=> regwrite,
						  alu_src			=> alu_src,
						  alu_op				=> alu_op,
						  reg_data_1		=> read_data_1,
						  reg_data_2		=> read_data_2,
						  read_reg_1		=> read_reg_1,
						  read_reg_2		=> read_reg_2,
						  write_reg			=> write_reg,
						  alu_out			=> alu_out,
						  alu_zero			=> alu_zero,
						  instr_mem_out	=> instr_mem_out
						  );
	
	test_bench: PROCESS
	BEGIN
		
		  -- Initialize input signals
		  clock 			<= '0';
        reset 			<= '1';
        instr_wren 	<= '1';
        instr_input 	<= "00000000000000000000000000000000";
		  regwrite 		<= '0';
		  alu_src 		<= '0';
		  alu_op 		<= "0011";
		  WAIT FOR 5ns;
		  
		  -- Toggle reset to prep the registers.
		  reset <= '0';
		  WAIT FOR 5ns;
		  reset <= '1';
		  WAIT FOR 5ns;
		  
		  -- First, Load the instructions into the memory
		  
		  -- Initialize the Register values
		  
		  -- 1. NOR $t0, $zero, $zero
		  instr_input <= "00000000000000000100000000100111";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 2. SUB $t0, $zero, $t0
		  instr_input <= "00000000000010000100000000100010";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- (3-5). ADD $t3, $t3, $t0
		  FOR i IN 1 TO 3 LOOP
			  instr_input <= "00000001011010000101100000100000";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- (6-8). ADD $t4, $t4, $t0
		  FOR i IN 1 TO 3 LOOP
			  instr_input <= "00000001100010000110000000100000";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- (9-13). ADD $s1, $s1, $t0
		  FOR i IN 1 TO 5 LOOP
			  instr_input <= "00000010001010001000100000100000";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- (14-18). ADD $s2, $s2, $t0
		  FOR i IN 1 TO 5 LOOP
			  instr_input <= "00000010010010001001000000100000";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- 19. ADD $t0, $zero, $zero
		  instr_input <= "00000000000000000100000000100000";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- Testing Instructions
		  
		  -- 20. ADD $t3, $t0, $t1
		  instr_input <= "00000001000010010101100000100000";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 21. SUB $t4, $s0, $s1
		  instr_input <= "00000010000100010110000000100010";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 22. AND $t5, $t3, $t4
		  instr_input <= "00000001011011000110100000100100";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 23. XOR $t0, $s3, $s4
		  instr_input <= "00000010011101000100000000100110";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 24. NOR $t2, $zero, $t5
		  instr_input <= "00000000000011010101000000100111";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 25. ADDi $s3, $s3, 4
		  instr_input <= "00100010011100110000000000000100";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  ------------------------------------------
		  -- Run the instructions through the ALU --
		  ------------------------------------------
		  
		  instr_wren 	<= '0';
		  instr_input 	<= (OTHERS => '0');
		  regwrite 		<= '1';
		  
		  -- Reset the PC Register
		  reset <= '0';
		  WAIT FOR 5ns;
		  reset <= '1';
		  WAIT FOR 5ns;
		  
		  -- Load in First Instruction
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  
		  -- Initialize the Register values
		  
		  -- 1. NOR $t0, $zero, $zero
		  alu_op <= "1100";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 2. SUB $t0, $zero, $t0
		  alu_op <= "0110";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- (3-5). ADD $t3, $t3, $t0
		  FOR i IN 1 TO 3 LOOP
			  alu_op <= "0010";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- (6-8). ADD $t4, $t4, $t0
		  FOR i IN 1 TO 3 LOOP
			  alu_op <= "0010";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- (9-13). ADD $s1, $s1, $t0
		  FOR i IN 1 TO 5 LOOP
			  alu_op <= "0010";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- (14-18). ADD $s2, $s2, $t0
		  FOR i IN 1 TO 5 LOOP
			  alu_op <= "0010";
			  clock <= '0';
			  WAIT FOR 5ns;
			  clock <= '1';
			  WAIT FOR 5ns;
		  END LOOP;
		  
		  -- 19. ADD $t0, $zero, $zero
		  alu_op <= "0010";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- Testing Instructions
		  
		  -- 20. ADD $t3, $t0, $t1
		  alu_op <= "0010";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 21. SUB $t4, $s0, $s1
		  alu_op <= "0110";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 22. AND $t5, $t3, $t4
		  alu_op <= "0000";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 23. XOR $t0, $s3, $s4
		  alu_op <= "0111";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 24. NOR $t2, $zero, $t5
		  alu_op <= "1100";
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  -- 25. ADDi $s3, $s3, 4
		  alu_op <= "0010";
		  alu_src <= '1';	-- Select the 16-bit address value
		  clock <= '0';
		  WAIT FOR 5ns;
		  clock <= '1';
		  WAIT FOR 5ns;
		  
		  
		  WAIT;
		
	END PROCESS;
END ARCHITECTURE;