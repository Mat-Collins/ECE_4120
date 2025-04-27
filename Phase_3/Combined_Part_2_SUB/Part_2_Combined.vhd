-- Part_2_Combined.vhd
-- This file integrates the IF_ID and EX_MEM_WB blocks to form a complete single-cycle processor.
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu
-- Date: April 26, 2025

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration for the top-level combined module
entity Part_2_Combined is
    port (
        clk   : in std_logic;  -- Clock signal for synchronous operations
        reset : in std_logic   -- Reset signal to initialize all stages
    );
end Part_2_Combined;

architecture structural of Part_2_Combined is
    -- Signals connecting IF_ID outputs to EX_MEM_WB inputs via ID/EX pipeline
    signal ID_EX_PC_plus_4      : std_logic_vector(31 downto 0); -- PC+4 forwarded to EX stage
    signal ID_EX_rd_read_data   : std_logic_vector(31 downto 0); -- rs register data (read_data_1)
    signal ID_EX_rt_read_data   : std_logic_vector(31 downto 0); -- rt register data (read_data_2)
    signal ID_EX_sign_extended  : std_logic_vector(31 downto 0); -- Sign-extended immediate
    signal ID_EX_write_register : std_logic_vector(4 downto 0);  -- Selected destination register (rt or rd)
    signal ID_EX_RegDst         : std_logic;                     -- Register destination control signal
    signal ID_EX_Branch         : std_logic;                     -- Branch control signal
    signal ID_EX_RegWrite       : std_logic;                     -- Register write control signal
    signal ID_EX_ALUSrc         : std_logic;                     -- ALU source control signal
    signal ID_EX_MemRead        : std_logic;                     -- Memory read control signal
    signal ID_EX_MemWrite       : std_logic;                     -- Memory write control signal
    signal ID_EX_MemtoReg       : std_logic;                     -- Memory-to-register control signal
    signal ID_EX_ALUOp          : std_logic_vector(1 downto 0);  -- ALU operation control signal

    -- Signals connecting EX_MEM_WB outputs back to IF_ID (feedback)
    signal branch_address_from_EX : std_logic_vector(31 downto 0); -- Branch target address
    signal pc_select_from_EX      : std_logic;                     -- PC selection signal for branching
    signal write_register_from_WB : std_logic_vector(4 downto 0);  -- Register to write back
    signal write_data_from_WB     : std_logic_vector(31 downto 0); -- Data to write back
    signal reg_write_from_WB      : std_logic;                     -- Write enable for register file

    -- Internal signal for rt register bits (extracted from instruction in IF/ID)
    signal IF_ID_instruction      : std_logic_vector(31 downto 0); -- Instruction latched in IF/ID register

begin
    -- IF_ID Block Instantiation
    -- Connects the Instruction Fetch and Decode stages to the rest of the pipeline
    IF_ID_inst : entity work.Part_2_IF_ID
        port map (
            clk                 => clk,                      -- Clock signal
            reset               => reset,                    -- Reset signal
            branch_address      => branch_address_from_EX,   -- Branch address from EX stage
            pc_select           => pc_select_from_EX,        -- PC select from EX stage
            write_register      => write_register_from_WB,   -- Write register from WB stage
            write_data          => write_data_from_WB,       -- Write data from WB stage
            reg_write           => reg_write_from_WB,        -- Register write enable from WB stage
            ID_EX_PC_plus_4     => ID_EX_PC_plus_4,          -- PC+4 to EX stage
            ID_EX_rd_read_data  => ID_EX_rd_read_data,       -- rs data (read_data_1) to EX stage
            ID_EX_rt_read_data  => ID_EX_rt_read_data,       -- rt data (read_data_2) to EX stage
            ID_EX_sign_extended => ID_EX_sign_extended,      -- Sign-extended immediate to EX stage
            ID_EX_write_register=> ID_EX_write_register,     -- Selected destination register to EX stage
            ID_EX_RegDst        => ID_EX_RegDst,             -- RegDst control signal to EX stage
            ID_EX_Branch        => ID_EX_Branch,             -- Branch control signal to EX stage
            ID_EX_RegWrite      => ID_EX_RegWrite,           -- RegWrite control signal to EX stage
            ID_EX_ALUSrc        => ID_EX_ALUSrc,             -- ALUSrc control signal to EX stage
            ID_EX_MemRead       => ID_EX_MemRead,            -- MemRead control signal to EX stage
            ID_EX_MemWrite      => ID_EX_MemWrite,           -- MemWrite control signal to EX stage
            ID_EX_MemtoReg      => ID_EX_MemtoReg,           -- MemtoReg control signal to EX stage
            ID_EX_ALUOp         => ID_EX_ALUOp               -- ALUOp control signal to EX stage
        );

    -- EX_MEM_WB Block Instantiation
    -- Connects the Execute, Memory, and Write-Back stages to complete the pipeline
    EX_MEM_WB_inst : entity work.Part_2_EX_MEM_WB
        port map (
            clock              => clk,                      -- Clock signal
            reset              => reset,                    -- Reset signal
            PC_plus_4          => ID_EX_PC_plus_4,          -- PC+4 from IF/ID stage
            read_data_1        => ID_EX_rd_read_data,       -- rs data from IF/ID (mapped to read_data_1)
            read_data_2        => ID_EX_rt_read_data,       -- rt data from IF/ID (mapped to read_data_2)
            sign_extended      => ID_EX_sign_extended,      -- Sign-extended immediate from IF/ID
            rd_register        => ID_EX_write_register,     -- Destination register (rd for R-type, rt for I-type)
            rt_register        => IF_ID_instruction(20 downto 16), -- rt register bits (not directly passed, adjust if needed)
            RegDst             => ID_EX_RegDst,             -- RegDst control signal from IF/ID
            Branch             => ID_EX_Branch,             -- Branch control signal from IF/ID
            RegWrite           => ID_EX_RegWrite,           -- RegWrite control signal from IF/ID
            ALUSrc             => ID_EX_ALUSrc,             -- ALUSrc control signal from IF/ID
            MemRead            => ID_EX_MemRead,            -- MemRead control signal from IF/ID
            MemWrite           => ID_EX_MemWrite,           -- MemWrite control signal from IF/ID
            MemtoReg           => ID_EX_MemtoReg,           -- MemtoReg control signal from IF/ID
            ALUOp              => ID_EX_ALUOp,              -- ALUOp control signal from IF/ID
            branch_address     => branch_address_from_EX,   -- Branch address output to IF/ID
            pc_select          => pc_select_from_EX,        -- PC select output to IF/ID
            write_register     => write_register_from_WB,   -- Write register output to IF/ID
            write_data         => write_data_from_WB,       -- Write data output to IF/ID
            reg_write          => reg_write_from_WB         -- RegWrite output to IF/ID
        );

    -- Process to latch the instruction from IF_ID for rt register extraction
    -- Note: This is a simplification; ideally, rt should be passed via ID/EX pipeline
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                IF_ID_instruction <= (others => '0');
            else
                -- This assumes IF_ID_instruction is available internally; adjust as per design
                IF_ID_instruction <= IF_ID_instruction; -- Placeholder; needs actual instruction signal
            end if;
        end if;
    end process;

end structural;