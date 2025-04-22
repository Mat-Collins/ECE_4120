-- Design Phase 1 
-- Date: 3/14/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcolins42@tntech.edu & lfbates42@tntech.edu

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Phase_1 IS
    PORT (
        clock         : IN  STD_LOGIC;
        reset         : IN  STD_LOGIC;
        wren          : IN  STD_LOGIC;
        data          : IN  STD_LOGIC_VECTOR(31 downto 0);
        -- For simulation: expose internal signals
        PC_out        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- PC output
        instr_mem_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Instruction Memory output
        alu_out       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- ALU output
        alu_const_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- ALU constant input (for simulation)
    );
END Phase_1;

ARCHITECTURE structural OF Phase_1 IS
    -- Component declarations
    COMPONENT PC
        PORT (
            Clock  : IN  STD_LOGIC;
            Resetn : IN  STD_LOGIC;
            D      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            Q      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT memory_1
        PORT (
            address : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);   -- 8-bit address
            clock   : IN  STD_LOGIC;
            data    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- For testbench
            wren    : IN  STD_LOGIC;
            q       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- 32-bit instruction
        );
    END COMPONENT;

    COMPONENT alu
        PORT (
            A : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            B : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Constant input
            F : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    -- Internal signals
    SIGNAL pc_output      : STD_LOGIC_VECTOR(31 DOWNTO 0);  -- PC output (Q)
    SIGNAL mem_address    : STD_LOGIC_VECTOR(7 DOWNTO 0);   -- 8 LSB of PC for memory
    SIGNAL mem_output     : STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Instruction Memory output
    SIGNAL alu_output     : STD_LOGIC_VECTOR(31 DOWNTO 0);  -- ALU output (PC + 4)
    SIGNAL alu_constant   : STD_LOGIC_VECTOR(31 DOWNTO 0);  -- ALU constant input signal

BEGIN
    -- Assign constant value to ALU input
    alu_constant <= X"00000004";  -- Constant value of 4

    -- Port mapping
    pc_inst: PC
        PORT MAP (
            Clock  => clock,
            Resetn => reset,
            D      => alu_output,  -- ALU output (PC + 4) feeds into PC D input
            Q      => pc_output    -- PC output (Q) feeds to other components
        );

    mem_inst: memory_1
        PORT MAP (
            address => pc_output(7 DOWNTO 0),  -- 8 LSB of PC output to memory address
            clock   => clock,
            data    => data,
            wren    => wren,                    
            q       => mem_output
        );

    alu_inst: alu
        PORT MAP (
            A => pc_output,      -- PC output (Q) feeds into ALU input A
            B => alu_constant,   -- Constant input (4) feeds into ALU input B
            F => alu_output      -- ALU output (PC + 4) feeds back to PC
        );

    -- Connect internal signals to output ports for simulation
    PC_out        <= pc_output;
    instr_mem_out <= mem_output;
    alu_out       <= alu_output;
    alu_const_out <= alu_constant;  -- Expose constant input for simulation

END structural;