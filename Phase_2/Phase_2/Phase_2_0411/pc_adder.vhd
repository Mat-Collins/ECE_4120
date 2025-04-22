-- Design Phase 2 
-- Date: 4/5/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;  -- For addition

ENTITY pc_adder IS
    PORT (
        A : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- 32-bit input from PC
        B : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- 32-bit constant input (4)
        F : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- 32-bit output (A + B)
    );
END pc_adder;

ARCHITECTURE behavioral OF pc_adder IS
BEGIN
    F <= A + B;  -- Add input A and input B
END behavioral;