-- Design Phase 2 
-- Date: 4/4/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu


library IEEE;
use IEEE.std_logic_1164.all;

entity SignExtend is
    port (
        Input  : in  std_logic_vector(15 downto 0);   -- 16-bit input
        Output : out std_logic_vector(31 downto 0)    -- 32-bit sign-extended output
    );
end SignExtend;

architecture Behavioral of SignExtend is
begin
    -- Replicate the sign bit (Input(15)) 16 times and concatenate with the lower 16 bits
    Output <= (31 downto 16 => Input(15)) & Input(15 downto 0);
end Behavioral;