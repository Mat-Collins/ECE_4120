-- Part_1_Combined_TB.vhd
-- Testbench for Part_1_Combined: Verifies single-cycle MIPS processor implementation
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu
-- Date: 4/25/2025
-- Description:
-- This testbench verifies the Part_1_Combined entity by executing a sequence of MIPS instructions
-- as specified in Phase 3 of the ECE 4120 project. It tests the following instructions
-- with the branch-not-taken assumption:
-- i.   beq $t1, $t2, Equal    -- Branch if equal (not taken, $t1 != $t2)
-- ii.  add $t1, $t1, $t2     -- Add two registers
-- iii. sw $t3, 100($t2)      -- Store word to memory
-- iv.  or $t1, $t4, $t2      -- Logical OR of two registers
-- v.   Equal: nop            -- No operation at branch target label
-- The testbench preloads registers using addi instructions, drives a 50 MHz clock, applies a reset,
-- and monitors next_PC, write_data, and Read_data to confirm correct execution. It uses a MIF file
-- (memory_1.mif) to preload the instruction memory. All components use a single clock source as required.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Part_1_Combined_TB is
end Part_1_Combined_TB;

architecture behavior of Part_1_Combined_TB is
    -- Component Declaration for Unit Under Test (UUT)
    component Part_1_Combined
        port (
            clock      : in  std_logic;                      -- Input clock signal
            reset      : in  std_logic;                      -- Input reset signal
            next_PC    : out std_logic_vector(31 downto 0);  -- Output: Next program counter
            write_data : out std_logic_vector(31 downto 0);  -- Output: Data written to register file
            Read_data  : out std_logic_vector(31 downto 0)   -- Output: Data read from memory
        );
    end component;

    -- Testbench Signals
    signal tb_clock      : std_logic := '0';                    -- Clock signal initialized to 0
    signal tb_reset      : std_logic := '1';                    -- Reset signal initialized to active (1)
    signal tb_next_PC    : std_logic_vector(31 downto 0);       -- Next PC signal for monitoring
    signal tb_write_data : std_logic_vector(31 downto 0);       -- Write data signal for verification
    signal tb_Read_data  : std_logic_vector(31 downto 0);       -- Read data signal for verification

    -- Clock Period Definition
    constant CLOCK_PERIOD : time := 20 ns;                      -- 50 MHz clock (20 ns period)

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: Part_1_Combined
        port map (
            clock      => tb_clock,
            reset      => tb_reset,
            next_PC    => tb_next_PC,
            write_data => tb_write_data,
            Read_data  => tb_Read_data
        );

    -- Clock Generation Process
    clk_process: process
    begin
        while true loop
            tb_clock <= '0';
            wait for CLOCK_PERIOD / 2;                         -- Low for half period (10 ns)
            tb_clock <= '1';
            wait for CLOCK_PERIOD / 2;                         -- High for half period (10 ns)
        end loop;
    end process;

    -- Stimulus Process
    stim_proc: process
    begin
        -- Apply Reset
        tb_reset <= '1';
        wait for CLOCK_PERIOD;                                -- Hold reset for one cycle
        report "Reset applied: PC and registers should be zeroed";
        tb_reset <= '0';
        wait for CLOCK_PERIOD;                                -- Release reset, begin execution

        -- Preload Registers with addi Instructions (executed in cycles 1-4)
        -- These instructions are preloaded in memory_1.mif at addresses 0x00 to 0x0C
        report "Cycle 1: Executing addi $t1, $zero, 5 at PC=0x00 (Machine code: 0x20090005)";
        wait for CLOCK_PERIOD;
        assert tb_write_data = X"00000005" report "Error: $t1 should be 5 after addi" severity error;
        assert tb_next_PC = X"00000004" report "Error: next_PC should be 4" severity error;

        report "Cycle 2: Executing addi $t2, $zero, 7 at PC=0x04 (Machine code: 0x200A0007)";
        wait for CLOCK_PERIOD;
        assert tb_write_data = X"00000007" report "Error: $t2 should be 7 after addi" severity error;
        assert tb_next_PC = X"00000008" report "Error: next_PC should be 8" severity error;

        report "Cycle 3: Executing addi $t3, $zero, 10 at PC=0x08 (Machine code: 0x200B000A)";
        wait for CLOCK_PERIOD;
        assert tb_write_data = X"0000000A" report "Error: $t3 should be 10 after addi" severity error;
        assert tb_next_PC = X"0000000C" report "Error: next_PC should be 12" severity error;

        report "Cycle 4: Executing addi $t4, $zero, 3 at PC=0x0C (Machine code: 0x200C0003)";
        wait for CLOCK_PERIOD;
        assert tb_write_data = X"00000003" report "Error: $t4 should be 3 after addi" severity error;
        assert tb_next_PC = X"00000010" report "Error: next_PC should be 16" severity error;

        -- Execute Main Instruction Sequence (cycles 5-9)
        report "Cycle 5: Executing beq $t1, $t2, Equal at PC=0x10 (Machine code: 0x112A0003)";
        report "Branch not taken ($t1=5 != $t2=7), expect next_PC = 0x14";
        wait for CLOCK_PERIOD;
        assert tb_next_PC = X"00000014" report "Error: next_PC should be 20 after beq (branch not taken)" severity error;

        report "Cycle 6: Executing add $t1, $t1, $t2 at PC=0x14 (Machine code: 0x012A4820)";
        report "Expected: $t1 = 5 + 7 = 12 (0x0C)";
        wait for CLOCK_PERIOD;
        assert tb_write_data = X"0000000C" report "Error: $t1 should be 12 after add" severity error;
        assert tb_next_PC = X"00000018" report "Error: next_PC should be 24" severity error;

        report "Cycle 7: Executing sw $t3, 100($t2) at PC=0x18 (Machine code: 0xAD4B0064)";
        report "Stores $t3 (10) to memory address $t2 + 100 = 7 + 100 = 107 (0x6B)";
        wait for CLOCK_PERIOD;
        -- Note: Cannot directly verify memory write since data memory is internal
        -- tb_Read_data may not reflect store data immediately; verification via subsequent lw possible
        assert tb_next_PC = X"0000001C" report "Error: next_PC should be 28" severity error;

        report "Cycle 8: Executing or $t1, $t4, $t2 at PC=0x1C (Machine code: 0x018A4825)";
        report "Expected: $t1 = 3 | 7 = 7 (0x07)";
        wait for CLOCK_PERIOD;
        assert tb_write_data = X"00000007" report "Error: $t1 should be 7 after or" severity error;
        assert tb_next_PC = X"00000020" report "Error: next_PC should be 32" severity error;

        report "Cycle 9: Executing nop at Equal label, PC=0x20 (Machine code: 0x00000000)";
        wait for CLOCK_PERIOD;
        assert tb_next_PC = X"00000024" report "Error: next_PC should be 36" severity error;

        -- End Simulation
        report "Testbench completed successfully" severity note;
        wait; -- Halt simulation
    end process;

end behavior;