-- Design Phase 3 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;  -- For addition

-- A generic adder with two inputs
ENTITY generic_adder IS
	 generic(n : integer := 32);
    PORT (
        A, B : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);  -- (n-1)-bit inputs
        F 	 : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)   -- (n-1)-bit output (A + B)
    );
END generic_adder;

ARCHITECTURE behavioral OF generic_adder IS
BEGIN
    F <= A + B;  -- Add input A and input B
END behavioral;