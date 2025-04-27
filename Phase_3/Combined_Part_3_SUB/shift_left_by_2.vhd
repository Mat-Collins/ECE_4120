-- Design Phase 3 
-- Date: 4/25/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity shift_left_by_2 is
	generic(n : integer := 32);
	port(
		input 	: in std_logic_vector(n-1 downto 0);
		output 	: out std_logic_vector(n-1 downto 0)
	);
end shift_left_by_2;
	
architecture behavior of shift_left_by_2 is
	begin
	
		-- Outputs the input vector shifted left by 2
		output <= input(n-3 downto 0) & "00";
		
end architecture;