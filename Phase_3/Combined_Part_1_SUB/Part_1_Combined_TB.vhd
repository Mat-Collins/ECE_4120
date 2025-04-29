-- Design Phase 3
-- Date: 4/29/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity Part_1_Combined_tb is
end Part_1_Combined_tb;

architecture testbench of Part_1_Combined_tb is

	-- Component to test
	component Part_1_Combined is
		port (
			  clock      : in  std_logic;                      -- Single clock source for all clocked components
			  reset      : in  std_logic;                      -- Synchronous reset signal
			
			  Instruction_input	: in std_logic_vector(31 downto 0); -- The input to store data in the instruction memory
			  Instruction_wren	: in std_logic;							-- The instruction memory write enable
			  Instruction_out		: out std_logic_vector(31 downto 0); -- The instruction currently being executed
			  Read_data_1			: out std_logic_vector(31 downto 0); -- The register data associated with the RS register number
			  Read_data_2			: out std_logic_vector(31 downto 0); -- The register data associated with the RT register number
			  Sign_extend			: out std_logic_vector(31 downto 0); -- The output of the sign extend
			  Branch_address		: out std_logic_vector(31 downto 0); -- The next address given a branch condition
			  ALU_output			: out std_logic_vector(31 downto 0); -- The output of the ALU
			  Data_memory_out		: out std_logic_vector(31 downto 0); -- The output of the data memory
			  Write_back_data		: out std_logic_vector(31 downto 0); -- The data to be written back into a register
			  Write_back_register: out std_logic_vector(4 downto 0);  -- The register number to write data back to
			  PC_Select				: out std_logic							 -- The bit that seelects the branch address given a branch condition 
		 );
	end component;
	
	-- Internal Signals
	signal clock      			: std_logic;
	signal reset      			: std_logic;
	signal Instruction_input	: std_logic_vector(31 downto 0);
	signal Instruction_wren		: std_logic;			
	signal Instruction_out		: std_logic_vector(31 downto 0);
	signal Read_data_1			: std_logic_vector(31 downto 0);
	signal Read_data_2			: std_logic_vector(31 downto 0);
	signal Sign_extend			: std_logic_vector(31 downto 0);
	signal Branch_address		: std_logic_vector(31 downto 0);
	signal ALU_output				: std_logic_vector(31 downto 0);
	signal Data_memory_out		: std_logic_vector(31 downto 0);
	signal Write_back_data		: std_logic_vector(31 downto 0);
	signal Write_back_register	: std_logic_vector(4 downto 0);  
	signal PC_Select				: std_logic;
	
	begin
	
	DUT: Part_1_Combined port map(
								  clock						=> clock,
								  reset						=> reset,
								  Instruction_input		=> Instruction_input,
								  Instruction_wren		=> Instruction_wren,
								  Instruction_out			=> Instruction_out,
								  Read_data_1				=> Read_data_1,
								  Read_data_2				=> Read_data_2,
								  Sign_extend				=> Sign_extend,
								  Branch_address			=> Branch_address,
								  ALU_output				=> ALU_output,
								  Data_memory_out			=> Data_memory_out,
								  Write_back_data			=> Write_back_data,
								  Write_back_register	=> Write_back_register,
								  PC_Select 				=> PC_Select
								);
								
	 process
		begin
			
			-- Initialize the Inputs
			clock					<= '0';
			reset					<= '1';
			Instruction_input <= (others => '0');
			Instruction_wren	<= '0';
			
			-- Reset the Pipeline
			reset <= '0';
			wait for 5ns;
			reset <= '1';
			wait for 5ns;
			
			-- Enable writing the instruction memory
			Instruction_wren <= '1';
			
			
			-- -----------------------------
			-- INITIALIZE INSTRUCTION MEMORY
			-- -----------------------------
			
			-- Set up Instructtions
			
			-- 1. addi $t1, $zero, 1
			Instruction_input <= "00100000000010010000000000000001";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 2. addi $t2, $zero, 2
			Instruction_input <= "00100000000010100000000000000010";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 3. addi $t3, $zero, 3
			Instruction_input <= "00100000000010110000000000000011";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 4. addi $t4, $zero, 4
			Instruction_input <= "00100000000011000000000000000100";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- Test Instructions
			
			-- 5. beq $t1, $t2, Equal
			Instruction_input <= "00010001001010100000000000000011";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 6. add $t1, $t1, $t2
			Instruction_input <= "00000001001010100100100000100000";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 7. sw $t3, 100($t2)
			Instruction_input <= "10101101010010110000000001100100";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 8. or $t1, $t4, $t2
			Instruction_input <= "00000001100010100100100000100101";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 9. Equal
			Instruction_input <= (others => '0');
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- Confirmation Instructions
			
			-- 12. lw $t5, 100($t2)
			Instruction_input <= "10001101010011010000000001100100";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;

			-- 13. nop $zero, $t1, $t1
			Instruction_input <= "11111101001010010000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 14. nop $zero, $t2, $t2
			Instruction_input <= "11111101010010100000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 15. nop $zero, $t3, $t3
			Instruction_input <= "11111101011010110000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 16. nop $zero, $t4, $t4
			Instruction_input <= "11111101100011000000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 17. nop $zero, $t5, $t5
			Instruction_input <= "11111101101011010000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			
			-- ------------------------
			-- EXECUTE THE INSTRUCTIONS
			-- ------------------------
			
			-- Disable Writing
			Instruction_wren 	<= '0';
			Instruction_input	<= (others => '0');
			
			-- Align the first instruction
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- Reset the Pipeline
			reset <= '0';
			wait for 5ns;
			reset <= '1';
			wait for 5ns;
			
			-- Execute all the instructions
			for i in 1 to 27 loop
				clock <= '0';
				wait for 5ns;
				clock <= '1';
				wait for 5ns;
			end loop;
			
			wait;
	end process;
end architecture;