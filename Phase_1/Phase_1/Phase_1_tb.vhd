-- Design Phase 1 
-- Date: 3/14/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcolins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity phase_1_tb is
end entity phase_1_tb;

architecture testbench of phase_1_tb is

component Phase_1 is
    PORT (
        clock         : IN  STD_LOGIC;
        reset         : IN  STD_LOGIC;
        wren          : IN  STD_LOGIC;
        data          : IN  STD_LOGIC_VECTOR(31 downto 0);
        -- For simulation: expose internal signals
        PC_out        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- PC output
        instr_mem_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Instruction Memory output
        alu_out       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- ALU output
        alu_const_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- ALU constant input
    );
end component;

signal clock, reset, wren : STD_LOGIC;
signal data, PC_out, instr_mem_out, alu_out, alu_const : STD_LOGIC_VECTOR(31 DOWNTO 0);

begin

    Phase1: Phase_1 port map(
        clock         => clock,
        reset         => reset,
        wren          => wren,
        data          => data,
        PC_out        => PC_out,
        instr_mem_out => instr_mem_out,
        alu_out       => alu_out,
        alu_const_out => alu_const
    ); 

    test_bench: process
    
    variable lw    : std_logic_vector(31 downto 0) := "10001101000010010000000000000101";
    variable add   : std_logic_vector(31 downto 0) := "00000001001010100100100000100000";
    variable sub   : std_logic_vector(31 downto 0) := "00000001001010110100100000100010";
    variable shift : std_logic_vector(31 downto 0) := "00000000000010010100100010000010";
    variable sw    : std_logic_vector(31 downto 0) := "10101101001010000000000000000101";
    
    begin
    
        -- Enable Data Write
        wren <= '1';
        reset <= '1';
    
        -- Store Instruction 1
        data <= lw;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Store Instruction 2
        data <= add;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Store Instruction 3
        data <= sub;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Store Instruction 4
        data <= shift;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Store Instruction 5
        data <= sw;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Reset PC Register and disable Writing to Memory
        clock <= '0';
        reset <= '0';
        wren <= '0';
        wait for 5ns;
        reset <= '1';
        wait for 15ns;
        
        -- Display Instruction 1
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Display Instruction 2
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Display Instruction 3
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Display Instruction 4
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        -- Display Instruction 5
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        clock <= '0';
        wait for 5ns;
        clock <= '1';
        wait for 5ns;
        
        wait;
    end process test_bench;
end architecture testbench;