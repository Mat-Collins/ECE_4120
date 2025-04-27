-- Design Phase 3 
-- Date: 4/26/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity Four_Input_Mux is
	generic(n : integer := 32);
	port(
		Input0 	: in std_logic_vector(n-1 downto 0);
		Input1 	: in std_logic_vector(n-1 downto 0);
		Input2 	: in std_logic_vector(n-1 downto 0);
		Input3 	: in std_logic_vector(n-1 downto 0);
		Sel		: in std_logic_vector(1 downto 0);
		Output	: out std_logic_vector(n-1 downto 0)
	);
end Four_Input_Mux;

architecture behavior of Four_Input_Mux is
	begin
	
	beh: process(Input0, Input1, Input2, Input3)
	begin
	
		case (Sel) is
			when "00" => Output <= Input0;
			when "01" => Output <= Input1;
			when "10" => Output <= Input2;
			when "11" => Output <= Input3;
		end case;
	end process;
end architecture;