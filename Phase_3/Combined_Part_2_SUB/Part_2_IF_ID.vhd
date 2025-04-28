-- Part_2_IF_ID.vhd
-- Implements the Instruction Fetch (IF) and Instruction Decode (ID) blocks of a Simple Pipelined Architecture.

-- Design Phase 3
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library IEEE;
use IEEE.std_logic_1164.all;
use work.type_def.all;

-- Entity declaration for the IF/ID stage module
entity Part_2_IF_ID is
    port (

        clk            : in  std_logic;		      			   -- Clock signal for synchronous operations
        reset          : in  std_logic;	       				   -- Active-high reset signal to initialize the system
        branch_address : in  std_logic_vector(31 downto 0);	   -- Branch target address for control flow instructions
        pc_select      : in  std_logic;	       				   -- Control signal to select between PC+4 and branch address
        write_register : in  std_logic_vector(4 downto 0);	   -- Register address to write data into (from later stage feedback)
        write_data     : in  std_logic_vector(31 downto 0);		-- Data to write into the register file (from later stage feedback)
        reg_write      : in  std_logic;								-- Control signal to enable writing to the register file
        
        -- Outputs to the EX stage via the ID/EX pipeline register
        ID_EX_PC_plus_4     : out std_logic_vector(31 downto 0); -- PC+4 value passed to EX stage
        ID_EX_rd_read_data  : out std_logic_vector(31 downto 0); -- Register rs data for EX stage
        ID_EX_rt_read_data  : out std_logic_vector(31 downto 0); -- Register rt data for EX stage
        ID_EX_sign_extended : out std_logic_vector(31 downto 0); -- Sign-extended immediate for EX stage
        ID_EX_write_register: out std_logic_vector(4 downto 0);  -- Destination register address for EX stage
        ID_EX_rd_register   : out std_logic_vector(4 downto 0);  -- rd register address for EX stage
        ID_EX_rt_register   : out std_logic_vector(4 downto 0);  -- rt register address for EX stage
        ID_EX_RegDst        : out std_logic;                     -- Register destination control signal
        ID_EX_Branch        : out std_logic;                     -- Branch control signal
        ID_EX_RegWrite      : out std_logic;                     -- Register write enable signal
        ID_EX_ALUSrc        : out std_logic;                     -- ALU source selection signal
        ID_EX_MemRead       : out std_logic;                     -- Memory read enable signal
        ID_EX_MemWrite      : out std_logic;                     -- Memory write enable signal
        ID_EX_MemtoReg      : out std_logic;                     -- Memory-to-register control signal
        ID_EX_ALUOp         : out std_logic_vector(1 downto 0)   -- ALU operation control signals
    );
end Part_2_IF_ID;

-- Behavioral architecture describing the functionality of the IF/ID stage
architecture Behavioral of Part_2_IF_ID is
    -- Component declarations for sub-modules used in the design

    -- Program Counter (PC) component to hold the current instruction address
    component PC is
        port (
            Clock   : in  std_logic;                     -- Clock signal for synchronous update
            Resetn  : in  std_logic;                     -- Active-high reset signal
            D       : in  std_logic_vector(31 downto 0); -- Input address (next PC value)
            Q       : out std_logic_vector(31 downto 0)  -- Output current PC value
        );
    end component;

    -- Instruction memory component to fetch instructions
    component memory_1 is
        port (
            address : in  std_logic_vector(7 downto 0);  -- 8-bit address input (subset of PC)
            clock   : in  std_logic;                     -- Clock signal for synchronous operation
            data    : in  std_logic_vector(31 downto 0); -- Data input (not used here, for writes)
            wren    : in  std_logic;                     -- Write enable (set to '0' for read-only)
            q       : out std_logic_vector(31 downto 0)  -- Output fetched instruction
        );
    end component;

    -- Multiplexer component to select between PC+4 and branch address
    component ALU_Mux is
        port (
            Input0 : in  std_logic_vector(31 downto 0); -- First input (PC+4)
            Input1 : in  std_logic_vector(31 downto 0); -- Second input (branch address)
            Sel    : in  std_logic;                     -- Selection signal (pc_select)
            Output : out std_logic_vector(31 downto 0)  -- Selected output
        );
    end component;

    -- Control unit component to decode the instruction opcode
    component control_unit is
        port (
            opcode   : in  std_logic_vector(5 downto 0); -- Instruction opcode field
            RegDst   : out std_logic;                    -- Selects destination register (rt or rd)
            Branch   : out std_logic;                    -- Indicates a branch instruction
            RegWrite : out std_logic;                    -- Enables writing to register file
            ALUSrc   : out std_logic;                    -- Selects ALU source (register or immediate)
            MemRead  : out std_logic;                    -- Enables memory read
            MemWrite : out std_logic;                    -- Enables memory write
            MemtoReg : out std_logic;                    -- Selects memory or ALU result for register
            ALUOp    : out std_logic_vector(1 downto 0)  -- ALU operation control bits
        );
    end component;

    -- Register file component to store and retrieve register values
    component register_file is
        port(
            read_reg_1    : in  std_logic_vector(4 downto 0);  -- rs register address
            read_reg_2    : in  std_logic_vector(4 downto 0);  -- rt register address
            write_reg     : in  std_logic_vector(4 downto 0);  -- Destination register address
            write_data    : in  std_logic_vector(31 downto 0); -- Data to write
            regwrite_bit  : in  std_logic;                     -- Write enable signal
            reset         : in  std_logic;                     -- Reset signal
            clock         : in  std_logic;                     -- Clock signal
            read_data_1   : out std_logic_vector(31 downto 0); -- rs register data
            read_data_2   : out std_logic_vector(31 downto 0)  -- rt register data
        );
    end component;

    -- Sign-extension component for immediate values
    component SignExtend is
        port (
            input  : in  std_logic_vector(15 downto 0); -- 16-bit immediate input
            output : out std_logic_vector(31 downto 0)  -- 32-bit sign-extended output
        );
    end component;

    -- PC adder component to increment PC by 4
    component pc_adder is
        port (
            A : in  std_logic_vector(31 downto 0); -- Current PC value
            B : in  std_logic_vector(31 downto 0); -- Constant 4
            F : out std_logic_vector(31 downto 0)  -- PC + 4 result
        );
    end component;

    -- Internal signals for connecting components and pipeline registers

    -- Current PC value from the PC component
    signal pc_current    : std_logic_vector(31 downto 0);
    -- PC value incremented by 4
    signal pc_plus_4     : std_logic_vector(31 downto 0);
    -- Fetched instruction from memory
    signal instruction   : std_logic_vector(31 downto 0);
    -- Output of the PC selection multiplexer
    signal mux1_out      : std_logic_vector(31 downto 0);
    -- IF/ID pipeline register: holds the instruction
    signal IF_ID_instruction : std_logic_vector(31 downto 0);
    -- IF/ID pipeline register: holds PC+4
    signal IF_ID_PC_plus_4   : std_logic_vector(31 downto 0);
    -- Control signals from the control unit
    signal reg_dst, branch, reg_write_id, alu_src, mem_read, mem_write, mem_to_reg : std_logic;
    -- ALU operation control bits from the control unit
    signal alu_op : std_logic_vector(1 downto 0);
    -- Data read from rs and rt registers
    signal read_data1, read_data2 : std_logic_vector(31 downto 0);
    -- Sign-extended immediate value
    signal sign_extended : std_logic_vector(31 downto 0);
    -- Selected destination register (rt or rd based on RegDst)
    signal write_register_selected : std_logic_vector(4 downto 0);

    -- ID/EX pipeline register signals (internal storage before output)
    signal ID_EX_PC_plus_4_reg     : std_logic_vector(31 downto 0); -- Stored PC+4
    signal ID_EX_rd_read_data_reg  : std_logic_vector(31 downto 0); -- Stored rs data
    signal ID_EX_rt_read_data_reg  : std_logic_vector(31 downto 0); -- Stored rt data
    signal ID_EX_sign_extended_reg : std_logic_vector(31 downto 0); -- Stored sign-extended immediate
    signal ID_EX_write_register_reg: std_logic_vector(4 downto 0);  -- Stored destination register
    signal ID_EX_rd_register_reg   : std_logic_vector(4 downto 0);  -- Stored rd register address
    signal ID_EX_rt_register_reg   : std_logic_vector(4 downto 0);  -- Stored rt register address
    signal ID_EX_RegDst_reg        : std_logic;                     -- Stored RegDst control
    signal ID_EX_Branch_reg        : std_logic;                     -- Stored Branch control
    signal ID_EX_RegWrite_reg      : std_logic;                     -- Stored RegWrite control
    signal ID_EX_ALUSrc_reg        : std_logic;                     -- Stored ALUSrc control
    signal ID_EX_MemRead_reg       : std_logic;                     -- Stored MemRead control
    signal ID_EX_MemWrite_reg      : std_logic;                     -- Stored MemWrite control
    signal ID_EX_MemtoReg_reg      : std_logic;                     -- Stored MemtoReg control
    signal ID_EX_ALUOp_reg         : std_logic_vector(1 downto 0);  -- Stored ALUOp control

begin
    -- Instruction Fetch (IF) Stage

    -- Instantiate the Program Counter
    PC_inst : PC port map(
        Clock   => clk,        -- Connect to system clock
        Resetn  => reset,      -- Connect to reset signal
        D       => mux1_out,   -- Next PC value from multiplexer
        Q       => pc_current  -- Current PC value output
    );

    -- Instantiate the PC adder to compute PC+4
    adder_inst : pc_adder port map(
        A       => pc_current,                        -- Current PC value
        B       => "00000000000000000000000000000100", -- Constant 4 (32-bit)
        F       => pc_plus_4                          -- Output PC+4
    );

    -- Instantiate the instruction memory
    instr_mem_inst : memory_1 port map(
        address => pc_current(7 downto 0), -- Use lower 8 bits of PC as address
        clock   => clk,                   -- Connect to system clock
        data    => (others => '0'),       -- No write data (read-only)
        wren    => '0',                   -- Disable writing (read-only)
        q       => instruction            -- Output fetched instruction
    );

    -- Instantiate the multiplexer to select next PC value
    mux1_inst : ALU_Mux port map(
        Input0 => pc_plus_4,     -- Normal next PC (PC+4)
        Input1 => branch_address,-- Branch target address
        Sel    => pc_select,     -- Control signal for branch selection
        Output => mux1_out       -- Selected next PC value
    );

    -- IF/ID Pipeline Register Process
    -- Stores the instruction and PC+4 for the next stage
    process(reset, clk)
    begin
        if reset = '0' then         -- If reset is active
            IF_ID_instruction <= (others => '0'); -- Clear instruction
            IF_ID_PC_plus_4   <= (others => '0'); -- Clear PC+4
        elsif rising_edge(clk) then               -- Normal operation
            IF_ID_instruction <= instruction;     -- Latch current instruction
            IF_ID_PC_plus_4   <= pc_plus_4;       -- Latch PC+4
        end if;
    end process;

    -- Instruction Decode (ID) Stage

    -- Instantiate the control unit to decode the opcode
    control_unit_inst : control_unit port map(
        opcode   => IF_ID_instruction(31 downto 26), -- Opcode field from instruction
        RegDst   => reg_dst,                         -- Destination register select
        Branch   => branch,                          -- Branch instruction signal
        RegWrite => reg_write_id,                    -- Register write enable
        ALUSrc   => alu_src,                         -- ALU source select
        MemRead  => mem_read,                        -- Memory read enable
        MemWrite => mem_write,                       -- Memory write enable
        MemtoReg => mem_to_reg,                      -- Memory-to-register select
        ALUOp    => alu_op                           -- ALU operation control
    );


    -- Instantiate the register file for reading rs and rt, and writing data
    register_file_inst : register_file port map(
        read_reg_1   => IF_ID_instruction(25 downto 21), -- rs register address
        read_reg_2   => IF_ID_instruction(20 downto 16), -- rt register address
        write_reg    => write_register,                  -- Destination register (from later stage)
        write_data   => write_data,                      -- Data to write (from later stage)
        regwrite_bit => reg_write,                       -- Write enable (from later stage)
        reset        => reset,                           -- Reset signal
        clock        => clk,                             -- System clock
        read_data_1  => read_data1,                      -- rs register data output
        read_data_2  => read_data2                       -- rt register data output
    );

    -- Instantiate the sign-extension unit for the immediate field
    sign_extend_inst : SignExtend port map(
        input  => IF_ID_instruction(15 downto 0), -- 16-bit immediate from instruction
        output => sign_extended                   -- 32-bit sign-extended output
    );

    -- ID/EX Pipeline Register Process
    -- Stores decoded information for the Execute (EX) stage
    process(reset, clk)
    begin
        if reset = '0' then         -- If reset is active
            ID_EX_PC_plus_4_reg      <= (others => '0'); -- Clear PC+4
            ID_EX_rd_read_data_reg   <= (others => '0'); -- Clear rs data
            ID_EX_rt_read_data_reg   <= (others => '0'); -- Clear rt data
            ID_EX_sign_extended_reg  <= (others => '0'); -- Clear sign-extended immediate
            ID_EX_write_register_reg <= (others => '0'); -- Clear destination register
            ID_EX_rd_register_reg    <= (others => '0'); -- Clear rd register address
            ID_EX_rt_register_reg    <= (others => '0'); -- Clear rt register address
            ID_EX_RegDst_reg         <= '0';             -- Clear RegDst
            ID_EX_Branch_reg         <= '0';             -- Clear Branch
            ID_EX_RegWrite_reg       <= '0';             -- Clear RegWrite
            ID_EX_ALUSrc_reg         <= '0';             -- Clear ALUSrc
            ID_EX_MemRead_reg        <= '0';             -- Clear MemRead
            ID_EX_MemWrite_reg       <= '0';             -- Clear MemWrite
            ID_EX_MemtoReg_reg       <= '0';             -- Clear MemtoReg
            ID_EX_ALUOp_reg          <= (others => '0'); -- Clear ALUOp
        elsif rising_edge(clk) then                    -- Normal operation
            ID_EX_PC_plus_4_reg      <= IF_ID_PC_plus_4;         -- Latch PC+4
            ID_EX_rd_read_data_reg   <= read_data1;              -- Latch rs data
            ID_EX_rt_read_data_reg   <= read_data2;              -- Latch rt data
            ID_EX_sign_extended_reg  <= sign_extended;           -- Latch sign-extended immediate
            ID_EX_write_register_reg <= write_register_selected; -- Latch destination register
            ID_EX_rd_register_reg    <= IF_ID_instruction(15 downto 11); -- Latch rd address
            ID_EX_rt_register_reg    <= IF_ID_instruction(20 downto 16); -- Latch rt address
            ID_EX_RegDst_reg         <= reg_dst;                 -- Latch RegDst
            ID_EX_Branch_reg         <= branch;                  -- Latch Branch
            ID_EX_RegWrite_reg       <= reg_write_id;            -- Latch RegWrite
            ID_EX_ALUSrc_reg         <= alu_src;                 -- Latch ALUSrc
            ID_EX_MemRead_reg        <= mem_read;                -- Latch MemRead
            ID_EX_MemWrite_reg       <= mem_write;               -- Latch MemWrite
            ID_EX_MemtoReg_reg       <= mem_to_reg;              -- Latch MemtoReg
            ID_EX_ALUOp_reg          <= alu_op;                  -- Latch ALUOp
        end if;
    end process;

    -- Output Assignments
    -- Connect internal ID/EX register signals to entity output ports
    ID_EX_PC_plus_4      <= ID_EX_PC_plus_4_reg;     -- Output PC+4 to EX stage
    ID_EX_rd_read_data   <= ID_EX_rd_read_data_reg;  -- Output rs data to EX stage
    ID_EX_rt_read_data   <= ID_EX_rt_read_data_reg;  -- Output rt data to EX stage
    ID_EX_sign_extended  <= ID_EX_sign_extended_reg; -- Output sign-extended immediate to EX stage
    ID_EX_write_register <= ID_EX_write_register_reg;-- Output destination register to EX stage
    ID_EX_rd_register    <= ID_EX_rd_register_reg;   -- Output rd register address to EX stage
    ID_EX_rt_register    <= ID_EX_rt_register_reg;   -- Output rt register address to EX stage
    ID_EX_RegDst         <= ID_EX_RegDst_reg;        -- Output RegDst to EX stage
    ID_EX_Branch         <= ID_EX_Branch_reg;        -- Output Branch to EX stage
    ID_EX_RegWrite       <= ID_EX_RegWrite_reg;      -- Output RegWrite to EX stage
    ID_EX_ALUSrc         <= ID_EX_ALUSrc_reg;        -- Output ALUSrc to EX stage
    ID_EX_MemRead        <= ID_EX_MemRead_reg;       -- Output MemRead to EX stage
    ID_EX_MemWrite       <= ID_EX_MemWrite_reg;      -- Output MemWrite to EX stage
    ID_EX_MemtoReg       <= ID_EX_MemtoReg_reg;      -- Output MemtoReg to EX stage
    ID_EX_ALUOp          <= ID_EX_ALUOp_reg;         -- Output ALUOp to EX stage

end Behavioral;
