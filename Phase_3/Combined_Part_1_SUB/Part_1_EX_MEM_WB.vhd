-- Design Phase 3 
-- Date: 4/26/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu
--
-- Description:
-- This VHDL file implements the Execute (EX), Memory Access (MEM), and Write-Back (WB)
-- stages of a single-cycle MIPS processor. It performs ALU operations, handles memory
-- read/write, computes the next PC for branches, and selects the write-back data.

library ieee;
use ieee.std_logic_1164.all;

entity Part_1_EX_MEM_WB is
    port (
        -- Inputs
        clock           : in std_logic;                      -- Clock signal for synchronous components
        reset           : in std_logic;                      -- Synchronous reset signal
        PC_plus_4       : in std_logic_vector(31 downto 0);  -- PC + 4 from IF/ID stage
        read_data_1     : in std_logic_vector(31 downto 0);  -- First register operand from register file
        read_data_2     : in std_logic_vector(31 downto 0);  -- Second register operand or memory write data
        sign_ext_imm    : in std_logic_vector(31 downto 0);  -- Sign-extended immediate for ALU or branching
        Branch          : in std_logic;                      -- Control signal to enable branching
        ALUSrc          : in std_logic;                      -- Selects ALU second operand (register vs immediate)
        ALUOp           : in std_logic_vector(1 downto 0);   -- ALU operation type from control unit
        MemWrite        : in std_logic;                      -- Enables writing to data memory
        MemToReg        : in std_logic;                      -- Selects write-back source (ALU vs memory)
        instr_funct     : in std_logic_vector(5 downto 0);   -- Function code for R-type ALU operations
        
        -- Outputs
        next_PC         : out std_logic_vector(31 downto 0); -- Next PC value (PC+4 or branch target)
        write_data      : out std_logic_vector(31 downto 0); -- Data to write back to register file
        Read_data       : out std_logic_vector(31 downto 0)  -- Data read from memory for verification
    );
end Part_1_EX_MEM_WB;
    
architecture structure of Part_1_EX_MEM_WB is
    
    -- Component Declarations
    
    -- ALU: Performs arithmetic and logical operations
    component ALU is
        port (
            A, B     : in  std_logic_vector(31 downto 0);  -- Two 32-bit operands
            Control  : in  std_logic_vector(3 downto 0);   -- 4-bit operation control
            Result   : out std_logic_vector(31 downto 0);  -- 32-bit result
            Zero     : out std_logic                       -- Zero flag (1 if result is zero)
        );
    end component;
    
    -- ALU_Control: Generates ALU operation based on ALUOp and function code
    component ALU_Control is
        port(
            ALU_Op          : in std_logic_vector(1 downto 0);   -- Operation type from control unit
            instr_funct     : in std_logic_vector(5 downto 0);   -- Function field from instruction
            operation       : out std_logic_vector(3 downto 0)   -- Specific ALU operation
        );
    end component;
        
    -- Memory_1: Data memory for load/store operations
    component memory_1 is
        port(
            address : in std_logic_vector(7 downto 0);    -- 8-bit memory address (from ALU)
            clock   : in std_logic;                       -- Clock signal
            data    : in std_logic_vector(31 downto 0);   -- Data to write
            wren    : in std_logic;                       -- Write enable
            q       : out std_logic_vector(31 downto 0)   -- Data read from memory
        );
    end component;

    -- Generic_Adder: Adds two 32-bit values (used for branch address)
    component generic_adder is
        generic(n : integer := 32);
        port (
            A, B : in  std_logic_vector(n-1 downto 0);    -- 32-bit inputs
            F    : out std_logic_vector(n-1 downto 0)     -- 32-bit sum
        );
    end component;
    
    -- Shift_Left_By_2: Shifts immediate left by 2 for branch offset
    component shift_left_by_2 is
        generic(n : integer := 32);
        port(
            input   : in std_logic_vector(n-1 downto 0);  -- Input to shift
            output  : out std_logic_vector(n-1 downto 0)  -- Shifted output
        );
    end component;
    
    -- Two_Input_Mux: 32-bit 2-to-1 multiplexer
    component Two_Input_Mux is
        generic(n : integer := 32); 
        port (
            Input0, Input1 : in  std_logic_vector(n-1 downto 0);  -- Two inputs
            Sel            : in  std_logic;                      -- Select signal
            Output         : out std_logic_vector(n-1 downto 0)  -- Selected output
        );
    end component;
     
    -- Internal Signals
    
    -- ALU Signals
    signal ALU_input_2   : std_logic_vector(31 downto 0); -- Second ALU operand (from mux)
    signal operation     : std_logic_vector(3 downto 0);  -- ALU operation code
    signal ALU_Output    : std_logic_vector(31 downto 0); -- ALU result (memory address or write data)
    signal ALU_Zero      : std_logic;                     -- Zero flag for branch condition
    
    -- Memory Signals
    signal data_mem_out  : std_logic_vector(31 downto 0); -- Data read from memory
    
    -- Branch Signals
    signal address_offset: std_logic_vector(31 downto 0); -- Shifted branch offset
    signal branch_address: std_logic_vector(31 downto 0); -- Calculated branch target address
    signal branch_enable : std_logic;                     -- Enables branch if Branch and Zero are true    
    
    begin
        
        -- ALU Source Mux: Selects second ALU operand (read_data_2 or immediate)
        ALU_Mux: Two_Input_Mux 
            generic map(n => 32)
            port map(
                Input0  => read_data_2,     -- Register operand
                Input1  => sign_ext_imm,    -- Sign-extended immediate
                Sel     => ALUSrc,          -- Control signal from ID stage
                Output  => ALU_input_2      -- To ALU B input
            );
                
        -- ALU Control Unit: Determines ALU operation
        ALU_Control_unit: ALU_Control 
            port map(
                ALU_Op      => ALUOp,       -- From control unit
                instr_funct => instr_funct, -- Function code for R-type instructions
                operation   => operation    -- To ALU control input
            );
                                        
        -- ALU: Executes the operation
        ALU_unit: ALU 
            port map(
                A           => read_data_1, -- First operand from register file
                B           => ALU_input_2, -- Second operand from mux
                Control     => operation,   -- Operation to perform
                Result      => ALU_Output,  -- Result (address or data)
                Zero        => ALU_Zero     -- Zero flag for branching
            );
                            
        -- Data Memory: Handles load/store operations
        data_mem: memory_1 
            port map(
                address     => ALU_Output(7 downto 0), -- Lower 8 bits of ALU result as address
                clock       => clock,                  -- Synchronous clock
                data        => read_data_2,            -- Data to write (for store)
                wren        => MemWrite,               -- Write enable from control unit
                q           => data_mem_out            -- Data read (for load)
            );
                            
        -- Write-Back Mux: Selects data to write back to register file
        write_back_mux: Two_Input_Mux 
            generic map(n => 32)
            port map(
                Input0  => ALU_Output,    -- ALU result (e.g., for R-type, addi)
                Input1  => data_mem_out,  -- Memory data (for load)
                Sel     => MemToReg,      -- Control signal from ID stage
                Output  => write_data     -- To register file
            );
                                                
        -- Shift Left by 2: Prepares branch offset
        shift_left_2: shift_left_by_2 
            generic map(n => 32)
            port map(
                input   => sign_ext_imm,  -- Sign-extended immediate
                output  => address_offset -- Shifted by 2 (word-aligned)
            );
                                                
        -- Branch Adder: Computes branch target address
        branch_adder: generic_adder 
            generic map(n => 32)
            port map(
                A => PC_plus_4,       -- Base address (PC + 4)
                B => address_offset,  -- Offset
                F => branch_address   -- Target address
            );
                                                
        -- Branch Enable: Determines if branch occurs
        branch_enable <= Branch and ALU_Zero; -- Branch if control signal and zero flag are true
        
        -- Branch Mux: Selects next PC value
        branch_mux: Two_Input_Mux 
            generic map(n => 32)
            port map(
                Input0  => PC_plus_4,     -- Normal next PC (PC + 4)
                Input1  => branch_address,-- Branch target
                Sel     => branch_enable, -- Branch condition
                Output  => next_PC        -- To PC register
            );
        
        -- Memory Read Data Output: For verification purposes
        Read_data <= data_mem_out; -- Directly output memory read data
        
end architecture;