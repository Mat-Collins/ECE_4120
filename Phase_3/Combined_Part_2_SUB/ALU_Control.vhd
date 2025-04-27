-- Design Phase 3 
-- Date: 4/25/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity ALU_Control is
	port(
		ALU_Op			: in std_logic_vector(1 downto 0);
		instr_funct		: in std_logic_vector(5 downto 0);
		operation		: out std_logic_vector(3 downto 0)
	);
end ALU_Control;
	
architecture behavior of ALU_Control is
	begin
	
	beh: process(ALU_Op, instr_funct)
	begin
	
		-- Store or Load Instruction
		if ALU_Op = "00" then
			operation <= "0010";
		
		-- Branch Instruction
		elsif ALU_Op(0) = '1' then
			operation <= "0110";
		
		-- R-Type Instruction
		elsif ALU_Op(1) = '1' then
			
			-- ADD
			if instr_funct(3 downto 0) = "0000" then
				operation <= "0010";
			
			-- SUB
			elsif instr_funct(3 downto 0) = "0010" then
				operation <= "0110";
				
			-- AND
			elsif instr_funct(3 downto 0) = "0100" then
				operation <= "0000";
				
			-- OR
			elsif instr_funct(3 downto 0) = "0101" then
				operation <= "0001";
				
			-- XOR
			elsif instr_funct(3 downto 0) = "1010" then
				operation <= "0111";
				
			else operation <= "0011";
			end if;
			
		else operation <= "0011";
		end if;
		
	end process;
end architecture;