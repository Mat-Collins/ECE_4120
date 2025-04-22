-- Design Phase 2
-- Date: 4/11/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

-- Top Level Entity for the project 
ENTITY Phase_2 IS
    PORT (
        clock         		: IN  STD_LOGIC;
        reset         		: IN  STD_LOGIC;
        instr_wren         : IN  STD_LOGIC;								-- Instruction Write Enable
        instr_input        : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	-- Instruction Input
		  regwrite				: IN 	STD_LOGIC;								-- Register Write Enable
		  alu_src				: IN  STD_LOGIC;								-- ALU Source Select (Register or sign-extend)
		  alu_op					: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);		-- ALU Operation
		  reg_data_1			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  	-- Read Data 1
		  reg_data_2			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  	-- Read Data 2
		  read_reg_1			: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);   	-- Read Register 1
		  read_reg_2			: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);   	-- Read Register 2
		  write_reg				: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);   	-- Write Register
		  alu_out				: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  	-- Output of the ALU
		  alu_zero				: OUT STD_LOGIC;							  	-- Zero output of ALU
        instr_mem_out 		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)  	-- Instruction Memory output
    );
END Phase_2;

ARCHITECTURE structural OF Phase_2 IS
    -- Component declarations
    COMPONENT PC
        PORT (
            Clock  : IN  STD_LOGIC;
            Resetn : IN  STD_LOGIC;
            D      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);	-- Input
            Q      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)	-- Output
        );
    END COMPONENT;

    COMPONENT memory_1
        PORT (
            address : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);   -- 8-bit address
            clock   : IN  STD_LOGIC;
            data    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- For testbench
            wren    : IN  STD_LOGIC;							 -- Write Enable
            q       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- 32-bit instruction
        );
    END COMPONENT;

    COMPONENT pc_adder
        PORT (
            A : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
            B : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Constant input
            F : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;
	 
	 COMPONENT register_file
			GENERIC (LEN : INTEGER := 32);
			PORT(
				read_reg_1		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);  	-- Read Register 1 select
				read_reg_2		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);  	-- Read Register 2 select
				write_reg		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);  	-- Write Register Select
				write_data		: IN STD_LOGIC_VECTOR(31 DOWNTO 0); 	-- Data to write to Write Register 
				regwrite_bit	: IN STD_LOGIC;  								-- Enable Write  
				reset				: IN STD_LOGIC;  								-- Reset all registers
				clock				: IN STD_LOGIC;								-- Clock
				read_data_1		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 	-- Data in Read Register 1
				read_data_2		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)  	-- Data in Read Register 2
			);
	 END COMPONENT;
	 
	 COMPONENT alu
			PORT(
				A, B     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Two 32-bit operands
				Control  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);   -- 4-bit ALU operation control
				Result   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  -- 32-bit result
				Zero     : OUT STD_LOGIC                       -- 1-bit zero flag
			);
	 END COMPONENT;
	 
	 COMPONENT alu_mux
			PORT(
				Input0, Input1 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  -- Two 32-bit inputs
				Sel            : IN  STD_LOGIC;                      -- 1-bit select signal
				Output         : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   -- 32-bit output
			);
	 END COMPONENT;
	 
	 COMPONENT signextend
			PORT(
				Input  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);   -- 16-bit input
				Output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)    -- 32-bit sign-extended output
			);
	 END COMPONENT;

    -- Internal signals
    SIGNAL pc_output      			: STD_LOGIC_VECTOR(31 DOWNTO 0);   -- PC output (Q)
    SIGNAL mem_address    			: STD_LOGIC_VECTOR(7 DOWNTO 0);    -- 8 LSB of PC for memory
    SIGNAL mem_output     			: STD_LOGIC_VECTOR(31 DOWNTO 0);   -- Instruction Memory output
    SIGNAL pc_adder_output			: STD_LOGIC_VECTOR(31 DOWNTO 0);   -- PC Adder output (PC + 4)
    SIGNAL pc_adder_constant   	: STD_LOGIC_VECTOR(31 DOWNTO 0);   -- PC Adder constant input signal
	 
	 SIGNAL op_code 					: STD_LOGIC_VECTOR(5 DOWNTO 0);	  -- Opcode from instruction
	 SIGNAL rs_reg 					: STD_LOGIC_VECTOR(4 DOWNTO 0);	  -- RS Register from instruction	 
	 SIGNAL rt_reg 					: STD_LOGIC_VECTOR(4 DOWNTO 0);	  -- RT Register from Instruction
	 SIGNAL rd_reg 					: STD_LOGIC_VECTOR(4 DOWNTO 0);	  -- RD Register from Instruction
	 SIGNAL shift_amount 			: STD_LOGIC_VECTOR(4 DOWNTO 0);	  -- Shift Amount from Instruction
	 SIGNAL funct 						: STD_LOGIC_VECTOR(5 DOWNTO 0);	  -- Function from Instruction
	 SIGNAL address 					: STD_LOGIC_VECTOR(15 DOWNTO 0);	  -- Address from Instruction

	 SIGNAL alu_output				: STD_LOGIC_VECTOR(31 DOWNTO 0);   -- The output of the ALU
	 SIGNAL extended_address		: STD_LOGIC_VECTOR(31 DOWNTO 0);	  -- The output of the Sign Extend
	 SIGNAL read_data_1				: STD_LOGIC_VECTOR(31 DOWNTO 0);	  -- The Register 1 stored value
	 SIGNAL read_data_2			   : STD_LOGIC_VECTOR(31 DOWNTO 0);   -- The Register 2 stored value
	 SIGNAL alu_mux_out				: STD_LOGIC_VECTOR(31 DOWNTO 0);	  -- The output of the ALU Source Mux
		 
BEGIN
    -- Assign constant value to PC Adder input
    pc_adder_constant <= X"00000004";  -- Constant value of 4

    -- Port mapping
    pc_inst: PC
        PORT MAP (
            Clock  => clock,
            Resetn => reset,
            D      => pc_adder_output,  -- PC Adder output (PC + 4) feeds into PC D input
            Q      => pc_output    		 -- PC output (Q) feeds to other components
        );

    mem_inst: memory_1
        PORT MAP (
            address => pc_output(7 DOWNTO 0),   -- 8 LSB of PC output to memory address
            clock   => clock,
            data    => instr_input,					-- Memory Input
            wren    => instr_wren,              -- Write Enable      
            q       => mem_output					-- Memory Output
        );
		  
	 op_code 		<= mem_output(31 DOWNTO 26);	-- Instruction OP Code
	 rs_reg 			<= mem_output(25 DOWNTO 21);	-- Instruction RS Register
	 rt_reg 			<= mem_output(20 DOWNTO 16);  -- Instruction RT Register 
	 rd_reg 			<= mem_output(15 DOWNTO 11);	-- Instruction RD Register
	 shift_amount	<= mem_output(10 DOWNTO 6);	-- Instruction Shift Amount
	 funct 			<= mem_output(5 DOWNTO 0);		-- Instruction Function Code
	 address 		<= mem_output(15 DOWNTO 0); 	-- Instruction I-Format Address

    pc_adder_inst: pc_adder
        PORT MAP (
            A => pc_output,      	  -- PC output (Q) feeds into PC Adder input A
            B => pc_adder_constant,   -- Constant input (4) feeds into PC Adder input B
            F => pc_adder_output      -- PC Adder output (PC + 4) feeds back to PC
        );
		  
	 registers_inst: register_file
			GENERIC MAP (32)
			PORT MAP (
				read_reg_1		=> rs_reg,			-- The Instruction Memory output 
				read_reg_2		=> rt_reg,			-- The Instruction Memory output
				write_reg		=> rd_reg,			-- The Instruction Memory output
				write_data		=> alu_output, 	-- The output of the ALU
				regwrite_bit	=> regwrite, 		-- Control bit to enable writing.
				reset				=> reset,		
				clock				=> clock,
				read_data_1		=> read_data_1,	-- Register 1 data feeds into the ALU input
				read_data_2		=> read_data_2  	-- Register 2 data feeds into the ALU src Mux
			);
			
		sign_ext_inst: signextend
			PORT MAP (
				input 	=> address,					-- I-format address from Instruction
				output 	=> extended_address		-- Sign extend feeds into ALU src Mux
			);
			
		alu_mux_inst: alu_mux
			PORT MAP (
				input0 	=> read_data_2,			-- Feeds from the Register file
				input1 	=> extended_address,		-- Feeds from the Sign Extend
				sel 		=> alu_src,					-- Control bit to select ALU input
				output 	=> alu_mux_out				-- Feeds into the second input of the ALU
			);
			
		alu_inst: alu
			PORT MAP (
				A 			=> read_data_1, 			-- Feeeds from the Register file
				B 			=> alu_mux_out, 			-- Feeds from the ALU mux (Register file or Sign Extend)
				Control 	=> alu_op,					-- Controls the ALU Operation
				Result 	=> alu_output,				-- Output of the ALU
				Zero 		=> alu_zero					-- Bit goes high if the output is zero. Used in branching.
			);
	 
	 

    -- Connect internal signals to output ports for simulation
    instr_mem_out 	<= mem_output;
	 reg_data_1			<= read_data_1;
	 reg_data_2			<= read_data_2;
	 read_reg_1 		<= rs_reg;
	 read_reg_2 		<= rt_reg;
	 write_reg 			<= rd_reg;
	 alu_out				<= alu_output;

END structural;