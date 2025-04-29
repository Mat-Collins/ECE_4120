-- Design Phase 3 
-- Date: 4/29/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity Part_3_Combined_tb is
end Part_3_Combined_tb;

architecture testbench of Part_3_Combined_tb is

	-- The top-level entity to be tested
	component Part_3_Combined is
		port(
			clock	: in std_logic;		-- The clock signal
			reset	: in std_logic;		-- The reset signal
			
			instr_input					: in std_logic_vector(31 downto 0);		-- The intruction to be saved to the instruction memory
			instr_mem_wren				: in std_logic;								-- Write enable for the instruction memory
			IF_ID_instruction			: out std_logic_vector(31 downto 0);	-- The instruction read from the memory in the IF stage
			ID_EX_read_data_1			: out std_logic_vector(31 downto 0);	-- The data read from the RS register number
			ID_EX_read_data_2			: out std_logic_vector(31 downto 0);	-- The data read from the RT register number
			ID_EX_sign_extend			: out std_logic_vector(31 downto 0);	-- The sign extend value from the address
			EX_MEM_branch_address	: out std_logic_vector(31 downto 0);	-- The address to branch to given a branch instruction
			EX_MEM_ALU_output			: out std_logic_vector(31 downto 0);	-- The output from the ALU execution
			MEM_WB_data_mem_out		: out std_logic_vector(31 downto 0);	-- The output from the data memory
			MEM_PC_select				: out std_logic;								-- The output bit that selects the branch address
			WB_write_back_data		: out std_logic_vector(31 downto 0);	-- The data to be writteen back to a register
			WB_write_back_reg			: out std_logic_vector(4 downto 0);		-- The register number to write data back to
			Forward_A, Forward_B		: out std_logic_vector(1 downto 0)
		);
	end component;
	
	-- Internal Signals
	signal clock						: std_logic;
	signal reset						: std_logic;
	signal instr_input				: std_logic_vector(31 downto 0);
	signal instr_mem_wren			: std_logic;
	signal IF_ID_instruction		: std_logic_vector(31 downto 0);
	signal ID_EX_read_data_1		: std_logic_vector(31 downto 0);
	signal ID_EX_read_data_2		: std_logic_vector(31 downto 0);
	signal ID_EX_sign_extend		: std_logic_vector(31 downto 0);
	signal EX_MEM_branch_address	: std_logic_vector(31 downto 0);
	signal EX_MEM_ALU_output		: std_logic_vector(31 downto 0);
	signal MEM_WB_data_mem_out		: std_logic_vector(31 downto 0);
	signal MEM_PC_select				: std_logic;
	signal WB_write_back_data		: std_logic_vector(31 downto 0);
	signal WB_write_back_reg		: std_logic_vector(4 downto 0);
	signal Forward_A, Forward_B	: std_logic_vector(1 downto 0);

	begin

		DUT: Part_3_Combined port map(
											clock							=> clock,
											reset							=> reset,
											instr_input					=> instr_input,
											instr_mem_wren				=> instr_mem_wren,
											IF_ID_instruction			=> IF_ID_instruction,
											ID_EX_read_data_1			=> ID_EX_read_data_1,
											ID_EX_read_data_2			=> ID_EX_read_data_2,
											ID_EX_sign_extend			=> ID_EX_sign_extend,
											EX_MEM_branch_address	=> EX_MEM_branch_address,
											EX_MEM_ALU_output			=> EX_MEM_ALU_output,
											MEM_WB_data_mem_out		=> MEM_WB_data_mem_out,
											MEM_PC_select				=> MEM_PC_select,
											WB_write_back_data		=> WB_write_back_data,
											WB_write_back_reg			=> WB_write_back_reg,
											Forward_A					=> Forward_A,
											Forward_B					=> Forward_B
									);

		process
		begin
		
			-- Initialize the inputs
			clock					<= '0';
			reset					<= '1';
			instr_input			<= (others => '0');
			instr_mem_wren		<= '0';
			wait for 5ns;
		
			-- Reset the Pipeline
			reset <= '0';
			wait for 5ns;
			reset <= '1';
			wait for 5ns;
			
			-- Enable Writing
			instr_mem_wren <= '1';
			wait for 5ns;
			
			
			-- -----------------------------
			-- INITIALIZE INSTRUCTION MEMORY
			-- -----------------------------
			
			-- Set up Instructions
			
			-- 1. addi $t2, $zero, 2
			instr_input <= "00100000000010100000000000000010";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 2. addi $t1, $zero, 1
			instr_input <= "00100000000010010000000000000001";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 3. addi $t3, $zero, 3
			instr_input <= "00100000000010110000000000000011";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 4. addi $t4, $zero, 15
			instr_input <= "00100000000011000000000000001111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 5. sw $t4, 8($t2)
			instr_input <= "10101101010011000000000000001000";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- Test Instructions
			
			-- 6. beq $t1, $t2, Equal
			instr_input <= "00010001001010100000000000000100";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 7. lw $t1, 8($t2)
			instr_input <= "10001101010010010000000000001000";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 8. add $t2, $t1, $t2
			instr_input <= "00000001001010100101000000100000";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 9. sw $t3, 100($t2)
			instr_input <= "10101101010010110000000001100100";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 10. add $t4, $t1, $t2
			instr_input <= "00000001001010100110000000100000";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 11. Equal
			instr_input <= "00000000000000000000000000000000";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- Confirmation Instructions
			
			-- 12. lw $t5, 100($t2)
			instr_input <= "10001101010011010000000001100100";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;

			-- 13. nop $zero, $t1, $t1
			instr_input <= "11111101001010010000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 14. nop $zero, $t2, $t2
			instr_input <= "11111101010010100000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 15. nop $zero, $t3, $t3
			instr_input <= "11111101011010110000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 16. nop $zero, $t4, $t4
			instr_input <= "11111101100011000000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- 17. nop $zero, $t5, $t5
			instr_input <= "11111101101011010000000000111111";
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
			
			-- ------------------------
			-- EXECUTE THE INSTRUCTIONS
			-- ------------------------
			
			-- Disable Writing
			instr_mem_wren 	<= '0';
			instr_input			<= (others => '0');
			
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