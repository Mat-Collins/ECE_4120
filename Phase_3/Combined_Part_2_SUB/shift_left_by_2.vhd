-- Design Phase 3 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

-- An entity to take the input and shift the bits to the left by 2
entity shift_left_by_2 is
	generic(n : integer := 32);
	port(
		input 	: in std_logic_vector(n-1 downto 0);	-- Unshifted input
		output 	: out std_logic_vector(n-1 downto 0)	-- Input value shifted to the left by two bits
	);
end shift_left_by_2;
	
architecture behavior of shift_left_by_2 is
	begin
	
		-- Outputs the input vector shifted left by 2
		output <= input(n-3 downto 0) & "00";
		
end architecture;