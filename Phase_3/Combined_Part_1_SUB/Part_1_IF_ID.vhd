-- Part_1_IF_ID.vhd
-- Implements the IF and ID blocks of a single-cycle processor

-- Design Phase 3
-- Date: 4/29/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library IEEE;
use IEEE.std_logic_1164.all;

entity Part_1_IF_ID is
    port (
        -- Inputs
        clock       : in  std_logic;                      -- Clock signal
        reset       : in  std_logic;                      -- Reset signal (active low)
        next_PC     : in  std_logic_vector(31 downto 0);  -- Next PC value from EX (Mux 4 output)
        write_data  : in  std_logic_vector(31 downto 0);  -- Write data from WB (Mux 3 output)
		  -- Inputs for testbench
		  instr_input : in  std_logic_vector(31 downto 0);	 -- The instruction to be loaded into the instruction memory
		  instr_wren  : in  std_logic;							 -- The write enable bit for the instruction memory

        -- Outputs
        PC_plus_4   : out std_logic_vector(31 downto 0);  -- PC + 4 for EX (branch calculation)
        read_data_1 : out std_logic_vector(31 downto 0);  -- Register read data 1 for EX
        read_data_2 : out std_logic_vector(31 downto 0);  -- Register read data 2 for EX and MEM
        sign_ext_imm: out std_logic_vector(31 downto 0);  -- Sign-extended immediate for EX
        Branch      : out std_logic;                      -- Control signal for EX (branch logic)
        ALUSrc      : out std_logic;                      -- Control signal for EX (Mux 2 select)
        ALUOp       : out std_logic_vector(1 downto 0);   -- Control signal for EX (ALU operation)
        MemRead     : out std_logic;                      -- Control signal for MEM (memory read)
        MemWrite    : out std_logic;                      -- Control signal for MEM (memory write)
        MemtoReg    : out std_logic;                      -- Control signal for WB (Mux 3 select)
        instruction : out std_logic_vector(31 downto 0);  -- Fetched instruction (for debugging)
		  instr_funct : out std_logic_vector(5 downto 0);	 -- required for the instruction’s function code for R-type instructions
		  -- Outputs for Testbench
		  Write_Back_reg	: out std_logic_vector(4 downto 0)	-- The register number to write data back to
    );
end Part_1_IF_ID;

architecture structural of Part_1_IF_ID is
    -- Component declarations
    component PC is
        port (
            Clock  : in  std_logic;
            Resetn : in  std_logic;
            D      : in  std_logic_vector(31 downto 0);
            Q      : out std_logic_vector(31 downto 0)
        );
    end component;

    component memory_1 is
        port (
            address : in  std_logic_vector(7 downto 0);
            clock   : in  std_logic;
            data    : in  std_logic_vector(31 downto 0);
            wren    : in  std_logic;
            q       : out std_logic_vector(31 downto 0)
        );
    end component;

    component pc_adder is
        port (
            A : in  std_logic_vector(31 downto 0);
            B : in  std_logic_vector(31 downto 0);
            F : out std_logic_vector(31 downto 0)
        );
    end component;

    component control_unit is
        port (
            opcode   : in  std_logic_vector(5 downto 0);
            RegDst   : out std_logic;
            Branch   : out std_logic;
            RegWrite : out std_logic;
            ALUSrc   : out std_logic;
            MemRead  : out std_logic;
            MemWrite : out std_logic;
            MemtoReg : out std_logic;
            ALUOp    : out std_logic_vector(1 downto 0)
        );
    end component;

    component register_file is
        generic (LEN : integer := 32);
        port (
            read_reg_1  : in  std_logic_vector(4 downto 0);
            read_reg_2  : in  std_logic_vector(4 downto 0);
            write_reg   : in  std_logic_vector(4 downto 0);
            write_data  : in  std_logic_vector(31 downto 0);
            regwrite_bit: in  std_logic;
            reset       : in  std_logic;
            clock       : in  std_logic;
            read_data_1 : out std_logic_vector(31 downto 0);
            read_data_2 : out std_logic_vector(31 downto 0)
        );
    end component;

    component SignExtend is
        port (
            Input  : in  std_logic_vector(15 downto 0);
            Output : out std_logic_vector(31 downto 0)
        );
    end component;

    -- Internal signals
    signal pc_current     : std_logic_vector(31 downto 0);  -- Current PC value
    signal instr_internal : std_logic_vector(31 downto 0);  -- Fetched instruction
    signal write_reg      : std_logic_vector(4 downto 0);   -- Write register address (Mux 1 output)
    signal RegDst         : std_logic;                      -- Internal control signal for Mux 1
    signal RegWrite       : std_logic;                      -- Internal control signal for Register File

begin
    -- IF Block Instantiations
    pc_inst: PC
        port map (
            Clock  => clock,
            Resetn => reset,
            D      => next_PC,
            Q      => pc_current
        );

    instr_mem: memory_1
        port map (
            address => pc_current(7 downto 0),  -- Using lower 8 bits (adjust if needed)
            clock   => clock,
            data    => instr_input,					-- The data input for the memory
            wren    => instr_wren,  				-- The instruction memory write enable
            q       => instr_internal
        );

    adder_1: pc_adder
        port map (
            A => pc_current,
            B => X"00000004",                   -- Constant 4
            F => PC_plus_4
        );

    -- ID Block Instantiations
    ctrl_unit: control_unit
        port map (
            opcode   => instr_internal(31 downto 26),
            RegDst   => RegDst,
            Branch   => Branch,
            RegWrite => RegWrite,
            ALUSrc   => ALUSrc,
            MemRead  => MemRead,
            MemWrite => MemWrite,
            MemtoReg => MemtoReg,
            ALUOp    => ALUOp
        );

    -- Mux 1: Selects write register (rt or rd) based on RegDst
    write_reg <= instr_internal(20 downto 16) when RegDst = '0' else instr_internal(15 downto 11);

    reg_file: register_file
        generic map (LEN => 32)
        port map (
            read_reg_1   => instr_internal(25 downto 21),  -- rs
            read_reg_2   => instr_internal(20 downto 16),  -- rt
            write_reg    => write_reg,                     -- From Mux 1
            write_data   => write_data,                    -- From WB
            regwrite_bit => RegWrite,                      -- From Control Unit
            reset        => reset,
            clock        => clock,
            read_data_1  => read_data_1,
            read_data_2  => read_data_2
        );

    sign_ext: SignExtend
        port map (
            Input  => instr_internal(15 downto 0),
            Output => sign_ext_imm
        );

    -- Output the fetched instruction for debugging
    instruction <= instr_internal;
	 instr_funct <= instr_internal(5 downto 0);
	 -- Outputs used for the testbench
	 Write_Back_reg <= write_reg;

end structural;