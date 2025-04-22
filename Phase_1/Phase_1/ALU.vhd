-- Design Phase 1 
-- Date: 3/14/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcolins42@tntech.edu & lfbates42@tntech.edu

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;  -- For addition

ENTITY alu IS
    PORT (
        A : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- 32-bit input from PC
        B : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- 32-bit constant input (4)
        F : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- 32-bit output (A + B)
    );
END alu;

ARCHITECTURE behavioral OF alu IS
BEGIN
    F <= A + B;  -- Add input A and input B
END behavioral;