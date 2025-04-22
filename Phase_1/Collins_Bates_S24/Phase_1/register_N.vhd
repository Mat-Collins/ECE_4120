-- Design Phase 1 
-- Date: 3/14/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcolins42@tntech.edu & lfbates42@tntech.edu


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY register_N IS
    GENERIC (N : INTEGER := 32);
    PORT (
        D       : IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        Resetn  : IN  STD_LOGIC;
        Clock   : IN  STD_LOGIC;
        Q       : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
END ENTITY register_N;

ARCHITECTURE behavioral OF register_N IS
    SIGNAL reg_data : STD_LOGIC_VECTOR (N-1 DOWNTO 0) := (OTHERS => '0');

BEGIN
    PROCESS (Clock, Resetn)
    BEGIN
        IF Resetn = '0' THEN
            reg_data <= (OTHERS => '0');
        ELSIF rising_edge(Clock) THEN
            reg_data <= D;
        END IF;
    END PROCESS;

    Q <= reg_data;

END behavioral;