-- Part_3_IF_ID.vhd
-- Implements the Instruction Fetch (IF) and Instruction Decode (ID) stages of a pipelined MIPS processor
-- architecture with forwarding and hazard units, as part of Phase 3 bonus requirements.

-- Design Phase 3
-- Date: 4/25/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library IEEE;
use IEEE.std_logic_1164.all;
use work.type_def.all;

-- Entity declaration for Part_3_IF_ID: Implements IF and ID stages with pipelining and hazard detection
entity Part_3_IF_ID is
    port (
        clk            : in  std_logic;                              -- Clock signal for synchronous operations
        reset          : in  std_logic;                              -- Reset signal to initialize registers (active high)
        branch_address : in  std_logic_vector(31 downto 0);          -- Branch target address from EX stage for PC update
        pc_select      : in  std_logic;                              -- PC source select signal (0 for PC+4, 1 for branch address)
        write_register : in  std_logic_vector(4 downto 0);           -- Write register address from WB stage for register file
        write_data     : in  std_logic_vector(31 downto 0);          -- Write data from WB stage to register file
        reg_write      : in  std_logic;                              -- Register write enable signal from WB stage
        -- Inputs from EX stage for hazard detection (load-use hazards)
        mem_read_ex    : in  std_logic;                              -- MemRead signal from ID/EX (indicates load in EX)
        write_reg_ex   : in  std_logic_vector(4 downto 0);           -- Destination register from ID/EX (for load in EX)
        -- Outputs to EX stage via ID/EX pipeline register
        ID_EX_PC_plus_4     : out std_logic_vector(31 downto 0);     -- PC+4 value passed to EX for branch calculations
        ID_EX_read_data1    : out std_logic_vector(31 downto 0);     -- rs read data for ALU operand 1 in EX
        ID_EX_read_data2    : out std_logic_vector(31 downto 0);     -- rt read data for ALU operand 2 or memory in EX
        ID_EX_sign_extended : out std_logic_vector(31 downto 0);     -- Sign-extended immediate for ALU or memory address
        ID_EX_rs            : out std_logic_vector(4 downto 0);      -- rs register number for forwarding unit
        ID_EX_rt            : out std_logic_vector(4 downto 0);      -- rt register number for forwarding unit and mux
        ID_EX_rd            : out std_logic_vector(4 downto 0);      -- rd register number for mux selection
        ID_EX_write_register: out std_logic_vector(4 downto 0);      -- Selected destination register for write-back
        ID_EX_Branch        : out std_logic;                         -- Branch control signal for EX stage
        ID_EX_RegWrite      : out std_logic;                         -- Register write control signal for WB stage
        ID_EX_ALUSrc        : out std_logic;                         -- ALU source control signal (0 for register, 1 for immediate)
        ID_EX_MemRead       : out std_logic;                         -- Memory read control signal for MEM stage
        ID_EX_MemWrite      : out std_logic;                         -- Memory write control signal for MEM stage
        ID_EX_MemtoReg      : out std_logic;                         -- Memory-to-register control signal for WB stage
        ID_EX_ALUOp         : out std_logic_vector(1 downto 0);      -- ALU operation control signal for EX stage
        ID_EX_reg_dst       : out std_logic                          -- RegDst signal to select between rt and rd for write address
    );
end Part_3_IF_ID;

architecture Behavioral of Part_3_IF_ID is
    -- Component declarations for submodules used in IF and ID stages

    -- Program Counter (PC) component to store and update the current instruction address
    component PC is
        port (
            Clock  : in  std_logic;                     -- Clock input
            Resetn : in  std_logic;                     -- Reset input (active low)
            D      : in  std_logic_vector(31 downto 0); -- Input PC value
            Q      : out std_logic_vector(31 downto 0)  -- Output PC value
        );
    end component;

    -- Instruction memory component (single-port RAM) for fetching instructions
    component memory_1 is
        port (
            address : in  std_logic_vector(7 downto 0);  -- Memory address (byte-addressable, lower 8 bits of PC)
            clock   : in  std_logic;                     -- Clock input
            data    : in  std_logic_vector(31 downto 0); -- Data input (unused for fetch)
            wren    : in  std_logic;                     -- Write enable (unused for fetch)
            q       : out std_logic_vector(31 downto 0)  -- Instruction output
        );
    end component;

    -- Multiplexer component to select between PC+4 and branch address for next PC
    component ALU_Mux is
        port (
            Input0 : in  std_logic_vector(31 downto 0); -- First input (PC+4)
            Input1 : in  std_logic_vector(31 downto 0); -- Second input (branch address)
            Sel    : in  std_logic;                     -- Select signal (pc_select)
            Output : out std_logic_vector(31 downto 0)  -- Selected output
        );
    end component;

    -- PC adder component to compute PC + 4
    component pc_adder is
        port (
            A : in  std_logic_vector(31 downto 0);  -- Current PC
            B : in  std_logic_vector(31 downto 0);  -- Constant 4
            F : out std_logic_vector(31 downto 0)   -- PC + 4
        );
    end component;

    -- Control unit component to generate control signals based on opcode
    component control_unit is
        port (
            opcode   : in  std_logic_vector(5 downto 0);  -- Instruction opcode (bits 31-26)
            RegDst   : out std_logic;                     -- Register destination signal (0 for rt, 1 for rd)
            Branch   : out std_logic;                     -- Branch signal (1 for beq)
            RegWrite : out std_logic;                     -- Register write signal
            ALUSrc   : out std_logic;                     -- ALU source signal (0 for register, 1 for immediate)
            MemRead  : out std_logic;                     -- Memory read signal (1 for lw)
            MemWrite : out std_logic;                     -- Memory write signal (1 for sw)
            MemtoReg : out std_logic;                     -- Memory-to-register signal (1 for lw)
            ALUOp    : out std_logic_vector(1 downto 0)   -- ALU operation signal
        );
    end component;

    -- Register file component to store and access 32 registers
    component register_file is
        port (
            read_reg_1   : in  std_logic_vector(4 downto 0);  -- rs register address (source 1)
            read_reg_2   : in  std_logic_vector(4 downto 0);  -- rt register address (source 2)
            write_reg    : in  std_logic_vector(4 downto 0);  -- Write register address (from WB)
            write_data   : in  std_logic_vector(31 downto 0); -- Data to write (from WB)
            regwrite_bit : in  std_logic;                     -- Write enable (from WB)
            reset        : in  std_logic;                     -- Reset signal
            clock        : in  std_logic;                     -- Clock signal
            read_data_1  : out std_logic_vector(31 downto 0); -- rs read data
            read_data_2  : out std_logic_vector(31 downto 0)  -- rt read data
        );
    end component;

    -- Sign extension component to extend 16-bit immediate to 32 bits
    component SignExtend is
        port (
            input  : in  std_logic_vector(15 downto 0);  -- 16-bit immediate input (bits 15-0)
            output : out std_logic_vector(31 downto 0)   -- 32-bit sign-extended output
        );
    end component;

    -- Internal signals for Instruction Fetch (IF) stage
    signal pc_current    : std_logic_vector(31 downto 0);    -- Current program counter value
    signal pc_plus_4     : std_logic_vector(31 downto 0);    -- PC incremented by 4
    signal instruction   : std_logic_vector(31 downto 0);    -- Fetched instruction from memory
    signal mux1_out      : std_logic_vector(31 downto 0);    -- Output of PC selection mux (PC+4 or branch address)
    signal pc_next       : std_logic_vector(31 downto 0);    -- Next PC value considering stall

    -- Internal signals for IF/ID pipeline register
    signal IF_ID_instruction : std_logic_vector(31 downto 0); -- Instruction latched in IF/ID register
    signal IF_ID_PC_plus_4   : std_logic_vector(31 downto 0); -- PC+4 latched in IF/ID register

    -- Internal signals for Instruction Decode (ID) stage
    signal reg_dst_id, branch, reg_write_id, alu_src, mem_read, mem_write, mem_to_reg : std_logic; -- Control signals from control unit
    signal alu_op : std_logic_vector(1 downto 0);            -- ALU operation code from control unit
    signal read_data1, read_data2 : std_logic_vector(31 downto 0); -- Data read from register file (rs and rt)
    signal sign_extended : std_logic_vector(31 downto 0);    -- Sign-extended immediate value
    signal rs, rt, rd : std_logic_vector(4 downto 0);        -- Explicit rs, rt, rd fields from instruction
    signal mux_write_register : std_logic_vector(4 downto 0); -- Output of mux selecting rt or rd based on RegDst

    -- Internal signals for ID/EX pipeline register (outputs to EX stage)
    signal ID_EX_PC_plus_4_reg     : std_logic_vector(31 downto 0); -- PC+4 value latched for EX stage
    signal ID_EX_read_data1_reg    : std_logic_vector(31 downto 0); -- rs data latched for EX stage
    signal ID_EX_read_data2_reg    : std_logic_vector(31 downto 0); -- rt data latched for EX stage
    signal ID_EX_sign_extended_reg : std_logic_vector(31 downto 0); -- Sign-extended immediate latched for EX stage
    signal ID_EX_rs_reg            : std_logic_vector(4 downto 0);  -- rs register number latched for forwarding
    signal ID_EX_rt_reg            : std_logic_vector(4 downto 0);  -- rt register number latched for forwarding and mux
    signal ID_EX_rd_reg            : std_logic_vector(4 downto 0);  -- rd register number latched for mux
    signal ID_EX_write_register_reg: std_logic_vector(4 downto 0);  -- Selected destination register latched for EX stage
    signal ID_EX_Branch_reg        : std_logic;                     -- Branch signal latched for EX stage
    signal ID_EX_RegWrite_reg      : std_logic;                     -- RegWrite signal latched for WB stage
    signal ID_EX_ALUSrc_reg        : std_logic;                     -- ALUSrc signal latched for EX stage
    signal ID_EX_MemRead_reg       : std_logic;                     -- MemRead signal latched for MEM stage
    signal ID_EX_MemWrite_reg      : std_logic;                     -- MemWrite signal latched for MEM stage
    signal ID_EX_MemtoReg_reg      : std_logic;                     -- MemtoReg signal latched for WB stage
    signal ID_EX_ALUOp_reg         : std_logic_vector(1 downto 0);  -- ALUOp signal latched for EX stage
    signal ID_EX_reg_dst_bit       : std_logic;                     -- RegDst signal latched for EX stage

    -- Hazard detection signal
    signal stall : std_logic;    -- Stall signal to handle load-use hazards (1 to stall, 0 to proceed)

begin
    -- ### Instruction Fetch (IF) Stage ###

    -- Determine next PC value: stall by keeping current PC or select between PC+4 and branch address
    pc_next <= pc_current when stall = '1' else mux1_out;

    -- Instantiate Program Counter
    PC_inst : PC port map (
        Clock  => clk,          -- Clock signal drives PC updates
        Resetn => not reset,    -- Adapt active-high reset to active-low for component
        D      => pc_next,      -- Next PC value (stalled or selected)
        Q      => pc_current    -- Current PC value output
    );

    -- Instantiate PC adder to compute PC + 4
    adder_inst : pc_adder port map (
        A => pc_current,        -- Current PC value as input
        B => "00000000000000000000000000000100", -- Constant 4 for next sequential instruction
        F => pc_plus_4          -- Output: PC + 4
    );

    -- Instantiate instruction memory to fetch instruction
    instr_mem_inst : memory_1 port map (
        address => pc_current(7 downto 0), -- Lower 8 bits of PC for byte-addressable memory
        clock   => clk,                    -- Clock signal synchronizes memory access
        data    => (others => '0'),        -- Data input unused (read-only for IF)
        wren    => '0',                    -- Write enable disabled for instruction fetch
        q       => instruction             -- Fetched 32-bit instruction
    );

    -- Instantiate multiplexer to select next PC (PC+4 or branch address)
    mux1_inst : ALU_Mux port map (
        Input0 => pc_plus_4,               -- Normal next PC (PC + 4)
        Input1 => branch_address,          -- Branch target address from EX stage
        Sel    => pc_select,               -- Selection signal from EX stage (0 for PC+4, 1 for branch)
        Output => mux1_out                 -- Selected next PC value
    );

    -- ### IF/ID Pipeline Register ###
    -- Latches the instruction and PC+4 from IF stage for use in ID stage
    process(reset, clk)
    begin
        if reset = '0' then
            -- Reset IF/ID register contents to zeros on reset
            IF_ID_instruction <= (others => '0');
            IF_ID_PC_plus_4   <= (others => '0');
        elsif rising_edge(clk) and stall = '0' then
            -- Latch instruction and PC+4 only if not stalling
            IF_ID_instruction <= instruction;
            IF_ID_PC_plus_4   <= pc_plus_4;
        end if; -- Stall case: retain previous values (no update)
    end process;

    -- Extract rs, rt, and rd fields from the latched instruction
    rs <= IF_ID_instruction(25 downto 21); -- rs: source register 1 (bits 25-21)
    rt <= IF_ID_instruction(20 downto 16); -- rt: source register 2 or destination for I-type (bits 20-16)
    rd <= IF_ID_instruction(15 downto 11); -- rd: destination register for R-type (bits 15-11)

    -- ### Instruction Decode (ID) Stage ###

    -- Instantiate control unit to generate control signals based on opcode
    control_unit_inst : control_unit port map (
        opcode   => IF_ID_instruction(31 downto 26), -- Opcode from instruction (bits 31-26)
        RegDst   => reg_dst_id,                      -- Intermediate signal for RegDst to avoid multiple drivers
        Branch   => branch,                          -- Branch signal for beq
        RegWrite => reg_write_id,                    -- Register write enable
        ALUSrc   => alu_src,                         -- ALU source select (0 for rt, 1 for immediate)
        MemRead  => mem_read,                        -- Memory read signal (for lw)
        MemWrite => mem_write,                       -- Memory write signal (for sw)
        MemtoReg => mem_to_reg,                      -- Memory-to-register signal (for lw)
        ALUOp    => alu_op                           -- ALU operation code (2 bits)
    );

    -- Select the write register based on RegDst (0 for rt, 1 for rd) using a concurrent statement
    mux_write_register <= rt when reg_dst_id = '0' else rd;

    -- Instantiate register file to read source registers (rs and rt) and write from WB stage
    register_file_inst : register_file port map (
        read_reg_1   => rs,                          -- rs address for source operand 1
        read_reg_2   => rt,                          -- rt address for source operand 2
        write_reg    => write_register,              -- Write register address from WB stage
        write_data   => write_data,                  -- Write data from WB stage
        regwrite_bit => reg_write,                   -- Write enable from WB stage
        reset        => reset,                       -- Reset signal
        clock        => clk,                         -- Clock signal
        read_data_1  => read_data1,                  -- rs read data (source 1)
        read_data_2  => read_data2                   -- rt read data (source 2)
    );

    -- Instantiate sign extension unit to extend 16-bit immediate to 32 bits
    sign_extend_inst : SignExtend port map (
        input  => IF_ID_instruction(15 downto 0),    -- 16-bit immediate from instruction (bits 15-0)
        output => sign_extended                      -- 32-bit sign-extended immediate
    );

    -- ### Hazard Detection for Load-Use Hazard ###
    -- Stall the pipeline if a load instruction in EX uses a register needed by the current instruction in ID
    stall <= '1' when (mem_read_ex = '1') and 
                      ((write_reg_ex = rs) or (write_reg_ex = rt)) 
             else '0'; -- Stall if EX stage is loading into rs or rt

    -- ### ID/EX Pipeline Register ###
    -- Latches ID stage outputs for use in EX stage; inserts bubble (nop) on stall
    process(reset, clk)
    begin
        if reset = '0' then
            -- Reset ID/EX register contents to zeros
            ID_EX_PC_plus_4_reg      <= (others => '0');
            ID_EX_read_data1_reg     <= (others => '0');
            ID_EX_read_data2_reg     <= (others => '0');
            ID_EX_sign_extended_reg  <= (others => '0');
            ID_EX_rs_reg             <= (others => '0');
            ID_EX_rt_reg             <= (others => '0');
            ID_EX_rd_reg             <= (others => '0');
            ID_EX_write_register_reg <= (others => '0');
            ID_EX_Branch_reg         <= '0';
            ID_EX_RegWrite_reg       <= '0';
            ID_EX_ALUSrc_reg         <= '0';
            ID_EX_MemRead_reg        <= '0';
            ID_EX_MemWrite_reg       <= '0';
            ID_EX_MemtoReg_reg       <= '0';
            ID_EX_ALUOp_reg          <= (others => '0');
            ID_EX_reg_dst_bit        <= '0';
        elsif rising_edge(clk) and stall = '1' then
            -- Insert bubble (nop) by clearing control signals on stall
            ID_EX_Branch_reg         <= '0';
            ID_EX_RegWrite_reg       <= '0';
            ID_EX_ALUSrc_reg         <= '0';
            ID_EX_MemRead_reg        <= '0';
            ID_EX_MemWrite_reg       <= '0';
            ID_EX_MemtoReg_reg       <= '0';
            ID_EX_ALUOp_reg          <= (others => '0');
            ID_EX_reg_dst_bit        <= '0';
            -- Data fields retain previous values during stall
        elsif rising_edge(clk) and stall = '0' then
            -- Normal operation: latch ID stage outputs for EX stage
            ID_EX_PC_plus_4_reg      <= IF_ID_PC_plus_4;         -- Latch PC+4
            ID_EX_read_data1_reg     <= read_data1;              -- Latch rs data
            ID_EX_read_data2_reg     <= read_data2;              -- Latch rt data
            ID_EX_sign_extended_reg  <= sign_extended;           -- Latch sign-extended immediate
            ID_EX_rs_reg             <= rs;                      -- Latch rs for forwarding unit
            ID_EX_rt_reg             <= rt;                      -- Latch rt for forwarding unit and mux
            ID_EX_rd_reg             <= rd;                      -- Latch rd for mux selection
            ID_EX_write_register_reg <= mux_write_register;      -- Latch selected destination register
            ID_EX_Branch_reg         <= branch;                  -- Latch Branch signal
            ID_EX_RegWrite_reg       <= reg_write_id;            -- Latch RegWrite signal
            ID_EX_ALUSrc_reg         <= alu_src;                 -- Latch ALUSrc signal
            ID_EX_MemRead_reg        <= mem_read;                -- Latch MemRead signal
            ID_EX_MemWrite_reg       <= mem_write;               -- Latch MemWrite signal
            ID_EX_MemtoReg_reg       <= mem_to_reg;              -- Latch MemtoReg signal
            ID_EX_ALUOp_reg          <= alu_op;                  -- Latch ALUOp signal
            ID_EX_reg_dst_bit        <= reg_dst_id;              -- Latch RegDst signal from intermediate signal
        end if;
    end process;

    -- Connect ID/EX register outputs to entity output ports for EX stage
    ID_EX_PC_plus_4      <= ID_EX_PC_plus_4_reg;      -- PC+4 to EX stage
    ID_EX_read_data1     <= ID_EX_read_data1_reg;     -- rs data to EX stage (ALU operand 1)
    ID_EX_read_data2     <= ID_EX_read_data2_reg;     -- rt data to EX stage (ALU operand 2 or memory)
    ID_EX_sign_extended  <= ID_EX_sign_extended_reg;  -- Sign-extended immediate to EX stage
    ID_EX_rs             <= ID_EX_rs_reg;             -- rs to forwarding unit in EX stage
    ID_EX_rt             <= ID_EX_rt_reg;             -- rt to forwarding unit and mux
    ID_EX_rd             <= ID_EX_rd_reg;             -- rd to EX stage for mux selection
    ID_EX_write_register <= ID_EX_write_register_reg; -- Selected destination register to EX stage
    ID_EX_Branch         <= ID_EX_Branch_reg;         -- Branch signal to EX stage
    ID_EX_RegWrite       <= ID_EX_RegWrite_reg;       -- RegWrite signal to WB stage
    ID_EX_ALUSrc         <= ID_EX_ALUSrc_reg;         -- ALUSrc signal to EX stage
    ID_EX_MemRead        <= ID_EX_MemRead_reg;        -- MemRead signal to MEM stage
    ID_EX_MemWrite       <= ID_EX_MemWrite_reg;       -- MemWrite signal to MEM stage
    ID_EX_MemtoReg       <= ID_EX_MemtoReg_reg;       -- MemtoReg signal to WB stage
    ID_EX_ALUOp          <= ID_EX_ALUOp_reg;          -- ALUOp signal to EX stage
    ID_EX_reg_dst        <= ID_EX_reg_dst_bit;        -- RegDst signal to EX stage for mux control

end Behavioral;
