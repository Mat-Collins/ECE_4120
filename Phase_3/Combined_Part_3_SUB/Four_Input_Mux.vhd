-- Design Phase 3 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

-- A generic four input multiplexer with two bit select line
entity Four_Input_Mux is
	generic(n : integer := 32);
	port(
		Input0 	: in std_logic_vector(n-1 downto 0);	-- Input0 of Mux
		Input1 	: in std_logic_vector(n-1 downto 0);	-- Inout1 of Mux
		Input2 	: in std_logic_vector(n-1 downto 0);	-- Input2 of Mux
		Input3 	: in std_logic_vector(n-1 downto 0);	-- Input3 of Mux
		Sel		: in std_logic_vector(1 downto 0);		-- Select line or the Mux
		Output	: out std_logic_vector(n-1 downto 0)	-- The Output of the Mux
	);
end Four_Input_Mux;

architecture behavior of Four_Input_Mux is
	begin
	
	beh: process(Sel, Input0, Input1, Input2, Input3)
	begin
	
		-- Case statement to select the desired input number and output it
		case (Sel) is
			when "00" => Output <= Input0;
			when "01" => Output <= Input1;
			when "10" => Output <= Input2;
			when "11" => Output <= Input3;
			when others => Output <= (others => '0');
		end case;
		
	end process;
end architecture;