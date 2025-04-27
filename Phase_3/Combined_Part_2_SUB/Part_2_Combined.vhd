-- Part_2_Combined.vhd
-- This file integrates the IF_ID and EX_MEM_WB blocks to form a complete pipelined processor as per Figure 2 of the Project PDF.
-- Implements a simple pipelined architecture without forwarding or hazard units, supporting instructions like beq, add, sw, and or.
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu
-- Date: April 26, 2025

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration for the top-level combined module
entity Part_2_Combined is
    port (
        clk   : in std_logic;  -- Clock signal for synchronous operations across all pipeline stages
        reset : in std_logic   -- Reset signal to initialize all registers and stages to a known state
    );
end Part_2_Combined;

architecture structural of Part_2_Combined is
    -- Component declaration for Part_2_IF_ID
    -- Manages Instruction Fetch (IF) and Instruction Decode (ID) stages
    component Part_2_IF_ID
        port (
            clk                 : in  std_logic;                      -- Clock signal for timing and synchronization
            reset               : in  std_logic;                      -- Reset signal to clear registers and counters
            branch_address      : in  std_logic_vector(31 downto 0);  -- Branch target address from EX stage
            pc_select           : in  std_logic;                      -- Signal to choose between PC+4 or branch address
            write_register      : in  std_logic_vector(4 downto 0);   -- Register address for write-back from WB stage
            write_data          : in  std_logic_vector(31 downto 0);  -- Data to write into register file from WB stage
            reg_write           : in  std_logic;                      -- Enable signal for register write from WB stage
            ID_EX_PC_plus_4     : out std_logic_vector(31 downto 0);  -- PC+4 value passed to EX stage
            ID_EX_rd_read_data  : out std_logic_vector(31 downto 0);  -- rs register data passed to EX stage
            ID_EX_rt_read_data  : out std_logic_vector(31 downto 0);  -- rt register data passed to EX stage
            ID_EX_sign_extended : out std_logic_vector(31 downto 0);  -- Sign-extended immediate passed to EX stage
            ID_EX_write_register: out std_logic_vector(4 downto 0);   -- Destination register for EX stage
            ID_EX_rd_register   : out std_logic_vector(4 downto 0);   -- rd register address for EX stage
            ID_EX_rt_register   : out std_logic_vector(4 downto 0);   -- rt register address for EX stage
            ID_EX_RegDst        : out std_logic;                      -- Control signal to select rt or rd as destination
            ID_EX_Branch        : out std_logic;                      -- Control signal indicating a branch instruction
            ID_EX_RegWrite      : out std_logic;                      -- Control signal to enable register write in WB
            ID_EX_ALUSrc        : out std_logic;                      -- Control signal to select ALU operand
            ID_EX_MemRead       : out std_logic;                      -- Control signal to enable memory read in MEM
            ID_EX_MemWrite      : out std_logic;                      -- Control signal to enable memory write in MEM
            ID_EX_MemtoReg      : out std_logic;                      -- Control signal to select write-back source
            ID_EX_ALUOp         : out std_logic_vector(1 downto 0)    -- Control signal defining ALU operation
        );
    end component;

    -- Component declaration for Part_2_EX_MEM_WB
    -- Manages Execute (EX), Memory (MEM), and Write-Back (WB) stages
    component Part_2_EX_MEM_WB
        port (
            clock              : in  std_logic;                      -- Clock signal for timing and synchronization
            reset              : in  std_logic;                      -- Reset signal to clear pipeline registers
            PC_plus_4          : in  std_logic_vector(31 downto 0);  -- PC+4 from IF/ID for branch calculation
            read_data_1        : in  std_logic_vector(31 downto 0);  -- rs data from IF/ID for ALU
            read_data_2        : in  std_logic_vector(31 downto 0);  -- rt data from IF/ID for ALU/memory
            sign_extended      : in  std_logic_vector(31 downto 0);  -- Sign-extended immediate from IF/ID
            rd_register        : in  std_logic_vector(4 downto 0);   -- rd register address from IF/ID
            rt_register        : in  std_logic_vector(4 downto 0);   -- rt register address from IF/ID
            RegDst             : in  std_logic;                      -- Control signal to choose rt or rd for write-back
            Branch             : in  std_logic;                      -- Control signal indicating a branch
            RegWrite           : in  std_logic;                      -- Control signal to enable register write
            ALUSrc             : in  std_logic;                      -- Control signal to select ALU operand
            MemRead            : in  std_logic;                      -- Control signal to enable memory read
            MemWrite           : in  std_logic;                      -- Control signal to enable memory write
            MemtoReg           : in  std_logic;                      -- Control signal to select write-back source
            ALUOp              : in  std_logic_vector(1 downto 0);   -- Control signal specifying ALU operation
            branch_address     : out std_logic_vector(31 downto 0);  -- Calculated branch address to IF stage
            pc_select          : out std_logic;                      -- Signal to select PC source to IF stage
            write_register     : out std_logic_vector(4 downto 0);   -- Register address for write-back to IF stage
            write_data         : out std_logic_vector(31 downto 0);  -- Data for write-back to IF stage
            reg_write          : out std_logic                       -- Enable signal for register write to IF stage
        );
    end component;

    -- Signals connecting IF_ID outputs to EX_MEM_WB inputs via ID/EX pipeline register
    signal ID_EX_PC_plus_4      : std_logic_vector(31 downto 0);  -- PC+4 between ID and EX stages
    signal ID_EX_rd_read_data   : std_logic_vector(31 downto 0);  -- rs data between ID and EX stages
    signal ID_EX_rt_read_data   : std_logic_vector(31 downto 0);  -- rt data between ID and EX stages
    signal ID_EX_sign_extended  : std_logic_vector(31 downto 0);  -- Sign-extended immediate between ID and EX
    signal ID_EX_write_register : std_logic_vector(4 downto 0);   -- Destination register between ID and EX
    signal ID_EX_rd_register    : std_logic_vector(4 downto 0);   -- rd register address between ID and EX
    signal ID_EX_rt_register    : std_logic_vector(4 downto 0);   -- rt register address between ID and EX
    signal ID_EX_RegDst         : std_logic;                      -- RegDst control between ID and EX
    signal ID_EX_Branch         : std_logic;                      -- Branch control between ID and EX
    signal ID_EX_RegWrite       : std_logic;                      -- RegWrite control between ID and EX
    signal ID_EX_ALUSrc         : std_logic;                      -- ALUSrc control between ID and EX
    signal ID_EX_MemRead        : std_logic;                      -- MemRead control between ID and EX
    signal ID_EX_MemWrite       : std_logic;                      -- MemWrite control between ID and EX
    signal ID_EX_MemtoReg       : std_logic;                      -- MemtoReg control between ID and EX
    signal ID_EX_ALUOp          : std_logic_vector(1 downto 0);   -- ALUOp control between ID and EX

    -- Signals connecting EX_MEM_WB outputs back to IF_ID (feedback signals)
    signal branch_address_from_EX : std_logic_vector(31 downto 0); -- Branch target address from EX to IF
    signal pc_select_from_EX      : std_logic;                     -- PC selection signal from EX to IF
    signal write_register_from_WB : std_logic_vector(4 downto 0);  -- Register address from WB to IF
    signal write_data_from_WB     : std_logic_vector(31 downto 0); -- Write-back data from WB to IF
    signal reg_write_from_WB      : std_logic;                     -- Register write enable from WB to IF

begin
    -- IF_ID Block Instantiation
    -- Connects Instruction Fetch and Decode stages to the pipeline
    IF_ID_inst : Part_2_IF_ID
        port map (
            clk                 => clk,                      -- System clock input
            reset               => reset,                    -- System reset input
            branch_address      => branch_address_from_EX,   -- Feedback: branch address from EX stage
            pc_select           => pc_select_from_EX,        -- Feedback: PC select signal from EX stage
            write_register      => write_register_from_WB,   -- Feedback: write register from WB stage
            write_data          => write_data_from_WB,       -- Feedback: write data from WB stage
            reg_write           => reg_write_from_WB,        -- Feedback: register write enable from WB
            ID_EX_PC_plus_4     => ID_EX_PC_plus_4,          -- Output: PC+4 to EX stage
            ID_EX_rd_read_data  => ID_EX_rd_read_data,       -- Output: rd data to EX stage
            ID_EX_rt_read_data  => ID_EX_rt_read_data,       -- Output: rt data to EX stage
            ID_EX_sign_extended => ID_EX_sign_extended,      -- Output: sign-extended immediate to EX
            ID_EX_write_register=> ID_EX_write_register,     -- Output: destination register to EX
            ID_EX_rd_register   => ID_EX_rd_register,        -- Output: rd register address to EX
            ID_EX_rt_register   => ID_EX_rt_register,        -- Output: rt register address to EX
            ID_EX_RegDst        => ID_EX_RegDst,             -- Output: RegDst control to EX
            ID_EX_Branch        => ID_EX_Branch,             -- Output: Branch control to EX
            ID_EX_RegWrite      => ID_EX_RegWrite,           -- Output: RegWrite control to EX
            ID_EX_ALUSrc        => ID_EX_ALUSrc,             -- Output: ALUSrc control to EX
            ID_EX_MemRead       => ID_EX_MemRead,            -- Output: MemRead control to EX
            ID_EX_MemWrite      => ID_EX_MemWrite,           -- Output: MemWrite control to EX
            ID_EX_MemtoReg      => ID_EX_MemtoReg,           -- Output: MemtoReg control to EX
            ID_EX_ALUOp         => ID_EX_ALUOp               -- Output: ALUOp control to EX
        );

    -- EX_MEM_WB Block Instantiation
    -- Connects Execute, Memory, and Write-Back stages to complete the pipeline
    EX_MEM_WB_inst : Part_2_EX_MEM_WB
        port map (
            clock              => clk,                      -- System clock input
            reset              => reset,                    -- System reset input
            PC_plus_4          => ID_EX_PC_plus_4,          -- Input: PC+4 from IF/ID stage
            read_data_1        => ID_EX_rd_read_data,       -- Input: rd data from IF/ID stage
            read_data_2        => ID_EX_rt_read_data,       -- Input: rt data from IF/ID stage
            sign_extended      => ID_EX_sign_extended,      -- Input: sign-extended immediate from IF/ID
            rd_register        => ID_EX_rd_register,        -- Input: rd register address from IF/ID
            rt_register        => ID_EX_rt_register,        -- Input: rt register address from IF/ID
            RegDst             => ID_EX_RegDst,             -- Input: RegDst control from IF/ID
            Branch             => ID_EX_Branch,             -- Input: Branch control from IF/ID
            RegWrite           => ID_EX_RegWrite,           -- Input: RegWrite control from IF/ID
            ALUSrc             => ID_EX_ALUSrc,             -- Input: ALUSrc control from IF/ID
            MemRead            => ID_EX_MemRead,            -- Input: MemRead control from IF/ID
            MemWrite           => ID_EX_MemWrite,           -- Input: MemWrite control from IF/ID
            MemtoReg           => ID_EX_MemtoReg,           -- Input: MemtoReg control from IF/ID
            ALUOp              => ID_EX_ALUOp,              -- Input: ALUOp control from IF/ID
            branch_address     => branch_address_from_EX,   -- Output: branch address to IF stage
            pc_select          => pc_select_from_EX,        -- Output: PC select signal to IF stage
            write_register     => write_register_from_WB,   -- Output: write register to IF stage
            write_data         => write_data_from_WB,       -- Output: write data to IF stage
            reg_write          => reg_write_from_WB         -- Output: register write enable to IF stage
        );

end structural;