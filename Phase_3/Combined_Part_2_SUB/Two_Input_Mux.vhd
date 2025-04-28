-- Design Phase 3 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu


library IEEE;
use IEEE.std_logic_1164.all;

-- A generic two input multiplexer
entity Two_Input_Mux is
	 generic(n : integer := 32); 
    port (
        Input0, Input1 : in  std_logic_vector(n-1 downto 0);  -- Two (n-1)-bit inputs
        Sel            : in  std_logic;                       -- 1-bit select signal
        Output         : out std_logic_vector(n-1 downto 0)   -- (n-1)-bit output
    );
end Two_Input_Mux;

architecture Behavioral of Two_Input_Mux is
begin
    -- Select Input0 when Sel = '0', Input1 when Sel = '1'
    Output <= Input0 when Sel = '0' else Input1;
end Behavioral;