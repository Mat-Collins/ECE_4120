-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY de10_lite_top_tb IS
END ENTITY;

ARCHITECTURE testbench OF de10_lite_top_tb IS
    -- Component Declaration
    COMPONENT de10_lite_top IS
        PORT (
            CLOCK_50 : IN  STD_LOGIC;
            KEY      : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
            SW       : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            LEDR     : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
    END COMPONENT;

    -- Signals
    SIGNAL CLOCK_50 : STD_LOGIC := '0';
    SIGNAL KEY      : STD_LOGIC_VECTOR(1 DOWNTO 0) := "11";
    SIGNAL SW       : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');
    SIGNAL HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL LEDR     : STD_LOGIC_VECTOR(9 DOWNTO 0);

    -- Clock period (50 MHz)
    CONSTANT CLK_PERIOD : TIME := 20 ns;

BEGIN
    -- Instantiate de10_lite_top
    DUT : de10_lite_top
        PORT MAP (
            CLOCK_50 => CLOCK_50,
            KEY      => KEY,
            SW       => SW,
            HEX0     => HEX0,
            HEX1     => HEX1,
            HEX2     => HEX2,
            HEX3     => HEX3,
            HEX4     => HEX4,
            HEX5     => HEX5,
            LEDR     => LEDR
        );

    -- Clock generation
    clk_process : PROCESS
    BEGIN
        WHILE TRUE LOOP
            CLOCK_50 <= '0';
            WAIT FOR CLK_PERIOD / 2;
            CLOCK_50 <= '1';
            WAIT FOR CLK_PERIOD / 2;
        END LOOP;
    END PROCESS;

    -- Test sequence
    test_bench : PROCESS
    BEGIN
        -- Reset
        KEY(0) <= '0'; -- Active-low reset
        WAIT FOR 100 ns;
        KEY(0) <= '1';
        WAIT FOR 100 ns;

        -- Test instructions via switches
        -- ADD $t3, $t0, $t1
        SW(4 DOWNTO 0) <= "00001"; -- Instruction code for ADD
        SW(9 DOWNTO 5) <= "01011"; -- $t3 = register 11
        WAIT FOR 100 ns;

        -- SUB $t4, $s0, $s1
        SW(4 DOWNTO 0) <= "00010"; -- SUB
        SW(9 DOWNTO 5) <= "01100"; -- $t4 = register 12
        WAIT FOR 100 ns;

        -- AND $t5, $t3, $t4
        SW(4 DOWNTO 0) <= "00011"; -- AND
        SW(9 DOWNTO 5) <= "01101"; -- $t5 = register 13
        WAIT FOR 100 ns;

        -- XOR $t0, $s3, $s4
        SW(4 DOWNTO 0) <= "00100"; -- XOR
        SW(9 DOWNTO 5) <= "01000"; -- $t0 = register 8
        WAIT FOR 100 ns;

        -- NOR $t2, $zero, $t5
        SW(4 DOWNTO 0) <= "00101"; -- NOR
        SW(9 DOWNTO 5) <= "01010"; -- $t2 = register 10
        WAIT FOR 100 ns;

        -- ADDi $s3, $s3, 4
        SW(4 DOWNTO 0) <= "00110"; -- ADDi
        SW(9 DOWNTO 5) <= "10011"; -- $s3 = register 19
        WAIT FOR 100 ns;

        WAIT;
    END PROCESS;
END ARCHITECTURE;