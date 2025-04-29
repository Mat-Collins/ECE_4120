-- Design Phase 3
-- Date: 4/29/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu
--
-- Description:
-- This VHDL file integrates the IF/ID and EX/MEM/WB stages to form a complete
-- single-cycle MIPS processor. It connects the two main components and provides
-- top-level inputs and outputs for clock, reset, and verification signals.

library IEEE;
use IEEE.std_logic_1164.all;
use work.type_def.all; -- For REG_ARRAY and STD_LOGIC_ARRAY types

entity Part_1_Combined is
    port (
        clock      : in  std_logic;                      -- Single clock source for all clocked components
        reset      : in  std_logic;                      -- Synchronous reset signal
		
		  Instruction_input	: in std_logic_vector(31 downto 0); -- The input to store data in the instruction memory
		  Instruction_wren	: in std_logic;							-- The instruction memory write enable
		  Instruction_out		: out std_logic_vector(31 downto 0); -- The instruction currently being executed
		  Read_data_1			: out std_logic_vector(31 downto 0); -- The register data associated with the RS register number
		  Read_data_2			: out std_logic_vector(31 downto 0); -- The register data associated with the RT register number
		  Sign_extend			: out std_logic_vector(31 downto 0); -- The output of the sign extend
		  Branch_address		: out std_logic_vector(31 downto 0); -- The next address given a branch condition
		  ALU_output			: out std_logic_vector(31 downto 0); -- The output of the ALU
		  Data_memory_out		: out std_logic_vector(31 downto 0); -- The output of the data memory
		  Write_back_data		: out std_logic_vector(31 downto 0); -- The data to be written back into a register
		  Write_back_register: out std_logic_vector(4 downto 0);  -- The register number to write data back to
		  PC_Select				: out std_logic							 -- The bit that seelects the branch address given a branch condition 
    );
end Part_1_Combined;

architecture structural of Part_1_Combined is
    -- Component Declarations
    
    -- Part_1_IF_ID: Instruction Fetch and Decode stages
    component Part_1_IF_ID
        port (
            clock         : in  std_logic;                      -- Clock signal
            reset         : in  std_logic;                      -- Reset signal
            next_PC       : in  std_logic_vector(31 downto 0);  -- Feedback from EX/MEM/WB
            write_data    : in  std_logic_vector(31 downto 0);  -- Write-back data from EX/MEM/WB
            PC_plus_4     : out std_logic_vector(31 downto 0);  -- PC + 4 to EX
            read_data_1   : out std_logic_vector(31 downto 0);  -- Register read data 1 to EX
            read_data_2   : out std_logic_vector(31 downto 0);  -- Register read data 2 to EX/MEM
            sign_ext_imm  : out std_logic_vector(31 downto 0);  -- Sign-extended immediate to EX
            Branch        : out std_logic;                      -- Branch control to EX
            ALUSrc        : out std_logic;                      -- ALU source control to EX
            ALUOp         : out std_logic_vector(1 downto 0);   -- ALU operation control to EX
            MemRead       : out std_logic;                      -- Memory read control to MEM (unused here)
            MemWrite      : out std_logic;                      -- Memory write control to MEM
            MemtoReg      : out std_logic;                      -- Write-back control to WB
            instruction   : out std_logic_vector(31 downto 0);  -- Fetched instruction (optional)
            instr_funct   : out std_logic_vector(5 downto 0);   -- Function code to EX for ALU control
				-- Inputs and Outputs for the testbench
				instr_input 	: in  std_logic_vector(31 downto 0); -- The instruction to be loaded into the instruction memory
				instr_wren  	: in  std_logic;							 -- The write enable bit for the instruction memory
				Write_Back_reg	: out std_logic_vector(4 downto 0)	 -- The register number to write data back to
        );
    end component;

    -- Part_1_EX_MEM_WB: Execute, Memory Access, and Write-Back stages
    component Part_1_EX_MEM_WB
        port (
            clock         : in  std_logic;                      -- Clock signal
            reset         : in  std_logic;                      -- Reset signal
            PC_plus_4     : in  std_logic_vector(31 downto 0);  -- PC + 4 from IF/ID
            read_data_1   : in  std_logic_vector(31 downto 0);  -- Register read data 1 from IF/ID
            read_data_2   : in  std_logic_vector(31 downto 0);  -- Register read data 2 from IF/ID
            sign_ext_imm  : in  std_logic_vector(31 downto 0);  -- Sign-extended immediate from IF/ID
            Branch        : in  std_logic;                      -- Branch control from IF/ID
            ALUSrc        : in  std_logic;                      -- ALU source control from IF/ID
            ALUOp         : in  std_logic_vector(1 downto 0);   -- ALU operation control from IF/ID
            MemWrite      : in  std_logic;                      -- Memory write control from IF/ID
            MemToReg      : in  std_logic;                      -- Write-back control from IF/ID
            instr_funct   : in  std_logic_vector(5 downto 0);   -- Function code from IF/ID
            next_PC       : out std_logic_vector(31 downto 0);  -- Next PC value to IF/ID
            write_data    : out std_logic_vector(31 downto 0);  -- Data to write back to IF/ID
				-- Outputs for Testbench
			   Branch_Address_tb		: out std_logic_vector(31 downto 0); -- The next address given a branch condition
			   ALU_output_tb			: out std_logic_vector(31 downto 0); -- The output of the ALU
			   Data_Memory_out_tb	: out std_logic_vector(31 downto 0); -- The output of the data memory
			   PC_select_tb			: out std_logic							 -- The control bit that selects the branch address or PC+4
        );
    end component;

    -- Internal Signals for Interconnection
    signal PC_plus_4_int      : std_logic_vector(31 downto 0);  -- Connects PC + 4 between stages
    signal read_data_1_int    : std_logic_vector(31 downto 0);  -- First register operand
    signal read_data_2_int    : std_logic_vector(31 downto 0);  -- Second register operand
    signal sign_ext_imm_int   : std_logic_vector(31 downto 0);  -- Sign-extended immediate
    signal instr_funct_int    : std_logic_vector(5 downto 0);   -- Function code for ALU
    signal Branch_int         : std_logic;                      -- Branch control signal
    signal MemRead_int        : std_logic;                      -- Memory read control (unused in EX/MEM/WB)
    signal MemWrite_int       : std_logic;                      -- Memory write control
    signal MemtoReg_int       : std_logic;                      -- Write-back control
    signal ALUOp_int          : std_logic_vector(1 downto 0);   -- ALU operation control
    signal ALUSrc_int         : std_logic;                      -- ALU source control
    signal next_PC_int        : std_logic_vector(31 downto 0);  -- Next PC feedback
    signal write_data_int     : std_logic_vector(31 downto 0);  -- Write-back data feedback

begin
    -- Instantiate IF/ID Block
    IF_ID_inst : Part_1_IF_ID
        port map (
            clock         => clock,           -- Top-level clock
            reset         => reset,           -- Top-level reset
            next_PC       => next_PC_int,     -- Feedback from EX/MEM/WB
            write_data    => write_data_int,  -- Feedback from EX/MEM/WB
            PC_plus_4     => PC_plus_4_int,   -- To EX/MEM/WB
            read_data_1   => read_data_1_int, -- To EX/MEM/WB
            read_data_2   => read_data_2_int, -- To EX/MEM/WB
            sign_ext_imm  => sign_ext_imm_int,-- To EX/MEM/WB
            Branch        => Branch_int,      -- To EX/MEM/WB
            ALUSrc        => ALUSrc_int,      -- To EX/MEM/WB
            ALUOp         => ALUOp_int,       -- To EX/MEM/WB
            MemRead       => MemRead_int,     -- Not used in EX/MEM/WB
            MemWrite      => MemWrite_int,    -- To EX/MEM/WB
            MemtoReg      => MemtoReg_int,    -- To EX/MEM/WB
            instruction   => Instruction_out, -- For Testbench
            instr_funct   => instr_funct_int, -- To EX/MEM/WB
				-- Inputs and Outputs for the testbench
				instr_input 	=> Instruction_input,  -- For Testbench
				instr_wren  	=> Instruction_wren,   -- For Testbench
				Write_Back_reg	=> Write_back_register -- For Testbench
        );

    -- Instantiate EX/MEM/WB Block
    EX_MEM_WB_inst : Part_1_EX_MEM_WB
        port map (
            clock         => clock,           -- Top-level clock
            reset         => reset,           -- Top-level reset
            PC_plus_4     => PC_plus_4_int,   -- From IF/ID
            read_data_1   => read_data_1_int, -- From IF/ID
            read_data_2   => read_data_2_int, -- From IF/ID
            sign_ext_imm  => sign_ext_imm_int,-- From IF/ID
            Branch        => Branch_int,      -- From IF/ID
            ALUSrc        => ALUSrc_int,      -- From IF/ID
            ALUOp         => ALUOp_int,       -- From IF/ID
            MemWrite      => MemWrite_int,    -- From IF/ID
            MemToReg      => MemtoReg_int,    -- From IF/ID
            instr_funct   => instr_funct_int, -- From IF/ID
            next_PC       => next_PC_int,     -- Feedback to IF/ID
            write_data    => write_data_int,  -- Feedback to IF/ID
            -- Outputs for Testbench
			   Branch_Address_tb	 => Branch_address,  -- For Testbench
			   ALU_output_tb		 => ALU_output,		-- For Testbench
			   Data_Memory_out_tb => Data_memory_out,	-- For Testbench
			   PC_select_tb		 => PC_select			-- For Testbench
        );
		  
	-- Outputs for the Testbench
	Read_data_1		 <= read_data_1_int;
	Read_data_2		 <= read_data_2_int;
	Sign_extend		 <= sign_ext_imm_int;
	write_back_data <= write_data_int;

end structural;