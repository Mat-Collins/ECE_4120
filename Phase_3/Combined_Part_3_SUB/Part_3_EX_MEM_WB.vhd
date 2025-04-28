-- Design Phase 3 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

-- The Execute, Memory, and Write Back stages of the pipelined architecture with forwarding
entity Part_3_EX_MEM_WB is
	port(
		clock				: in std_logic;										-- Clock Signal
		reset				: in std_logic;										-- Reset Signal
		
		-- Inputs from ID stage via ID/EX pipeline register
		
		-- Data
		PC_plus_4		: in std_logic_vector(31 downto 0);				-- PC+4 Value from ID/EX Register	
		read_data_1		: in std_logic_vector(31 downto 0);				-- Read Data 1 value from ID/EX Register
		read_data_2		: in std_logic_vector(31 downto 0);				-- Read Data 2 value from ID/EX Register
		sign_extended	: in std_logic_vector(31 downto 0);				-- Sign Extended value from ID/EX Register
		rd_register		: in std_logic_vector(4 downto 0);				-- RD Register number from ID/EX Register
		rt_register		: in std_logic_vector(4 downto 0);				-- RT Register number from ID/EX Register
		rs_register		: in std_logic_vector(4 downto 0);				-- RS Register Number from ID/EX Register 
		-- Control
		RegDst			: in std_logic;										-- Register Destination control bit for Write Register Mux
		Branch			: in std_logic;										-- Branch control bit for branch instructions
		RegWrite			: in std_logic;										-- Register Write control bit for data right back
		ALUSrc			: in std_logic;										-- ALU Source Control to select between Read data and sign extend
		MemRead			: in std_logic;										-- Memory Read control bit for reading from memory
		MemWrite			: in std_logic;										-- Memory Write bit for writing to memory
		MemtoReg			: in std_logic;										-- Memory to Register control bit to select between memory and ALU for writeback 
		ALUOp				: in std_logic_vector(1 downto 0);				-- ALU Operation Control bits to select ALU Operation type
		
		-- Outputs
		branch_address	: out std_logic_vector(31 downto 0);			-- The address to branch to given a branch instruction
		pc_select		: out std_logic;										-- Select bit to choose PC+4 or the branch address
		write_register	: out std_logic_vector(4 downto 0);				-- The register number to write to if writing to register
		write_data		: out	std_logic_vector(31 downto 0);			-- Data to write to register if writing to a register
		reg_write		: out std_logic;										-- Register write control bit to enable writing to a register
		
		ID_EX_mem_read_ex		: out std_logic;								-- The Memory Read Control bit in the EX stage to be used in Hazard Detection
		ID_EX_rt_register_ex	: out std_logic_vector(4 downto 0)		-- The RT Reguster in the EX stage to bee used in hazard detection
	);
end Part_3_EX_MEM_WB;

architecture structure of Part_3_EX_MEM_WB is
	
	-- Components to be used in the top-level entity
	
	component ALU is
		port (
        A, B     : in  std_logic_vector(31 downto 0);  -- Two 32-bit operands
        Control  : in  std_logic_vector(3 downto 0);   -- 4-bit ALU operation control
        Result   : out std_logic_vector(31 downto 0);  -- 32-bit result
        Zero     : out std_logic                       -- 1-bit zero flag
		);
	end component;
	
	component ALU_Control is
		port(
			ALU_Op			: in std_logic_vector(1 downto 0);	-- The operation type control input
			instr_funct		: in std_logic_vector(5 downto 0);	-- The function bits of the instruction (Only used for R-type)
			operation		: out std_logic_vector(3 downto 0)	-- The operation select bits for the ALU
		);
	end component;
	
	component generic_adder is
		 generic(n : integer := 32);
		 PORT (
			  A, B : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);  -- (n-1)-bit inputs
			  F 	 : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)   -- (n-1)-bit output (A + B)
		 );
	end component;
	
	component memory_1 is
		port(
			address : in std_logic_vector(7 downto 0);		-- The address to to be accessed for reading or writing
			clock		: in std_logic;
			data		: in std_logic_vector(31 downto 0);		-- The data to be written
			wren		: in std_logic;								-- The write enable bit
			q			: out std_logic_vector(31 downto 0)		-- The value stored at the inputted address
		);
	end component;
	
	component Two_Input_Mux is
		generic(n : integer := 32); 
		 port (
			  Input0, Input1 : in  std_logic_vector(n-1 downto 0);  	-- Two (n-1)-bit inputs
			  Sel            : in  std_logic;                      	-- 1-bit select signal
			  Output         : out std_logic_vector(n-1 downto 0)   	-- (n-1)-bit output
		 );
	end component;
	
	component shift_left_by_2 is
		generic(n : integer := 32);
		port(
			input 	: in std_logic_vector(n-1 downto 0);	-- Unshifted input
			output 	: out std_logic_vector(n-1 downto 0)	-- Input value shifted to the left by two bits
		);
	end component;
	
	component register_N is
		 GENERIC (N : INTEGER := 32);
		 PORT (
			  D       : IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0);	-- Input value to be loaded
			  enable  : IN  STD_LOGIC;									-- Register enable
			  Resetn  : IN  STD_LOGIC;									-- Active-low reset
			  Clock   : IN  STD_LOGIC;									-- Clock signal
			  Q       : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)		-- Register output (stored value)
		 );
	end component;
	
	component Four_Input_Mux is
		generic(n : integer := 32);
		port(
			Input0 	: in std_logic_vector(n-1 downto 0);	-- Input0 of Mux
			Input1 	: in std_logic_vector(n-1 downto 0);	-- Inout1 of Mux
			Input2 	: in std_logic_vector(n-1 downto 0);	-- Input2 of Mux
			Input3 	: in std_logic_vector(n-1 downto 0);	-- Input3 of Mux
			Sel		: in std_logic_vector(1 downto 0);		-- Select line or the Mux
			Output	: out std_logic_vector(n-1 downto 0)	-- The Output of the Mux
		);
	end component;
	
	component forward_unit is
		port(
			ID_EX_rs_register		: in std_logic_vector(4 downto 0);	-- The RS Register number from the ID/EX Register
			ID_EX_rt_register		: in std_logic_vector(4 downto 0);	-- The RT Register number from the ID/EX Register
			EX_MEM_RegWrite		: in std_logic;							-- The Register Write control bit from the EX/MEM Register
			MEM_WB_RegWrite		: in std_logic;							-- The Register Write control bit from the MEM/WB Register 
			EX_MEM_rd_register	: in std_logic_vector(4 downto 0);	-- The RD Register number from the EX/MEM Register
			MEM_WB_rd_register	: in std_logic_vector(4 downto 0);	-- The RD Register number from the MEM/WB Register
			Forward_A				: out std_logic_vector(1 downto 0);	-- The control bits for the RS Forwarding Mux
			Forward_B				: out std_logic_vector(1 downto 0)	-- The control bits for the RT Forwarding Mux 
		);
	end component;
	
	-- Internal Signals
	
	-- ALU Signals
	signal ALU_Input_2 : std_logic_vector(31 downto 0); -- Output of the ALU Source Mux 
	signal operation	: std_logic_vector(3 downto 0);	-- Operation to be performed by the ALU
	signal ALU_out		: std_logic_vector(31 downto 0); -- Output of the ALU
	signal ALU_Zero	: std_logic;	-- Status bit for if the ALU output is zero
		
	-- Branch Signals
	signal branch_offset	: std_logic_vector(31 downto 0);	-- Offset value for branch instructions
	signal branch_address_sig : std_logic_vector(31 downto 0); -- Branch Address value to feed to EX/MEM register
	
	-- Write Register Signals
	signal write_reg_sig_1	: std_logic_vector(4 downto 0); -- Write Register value to pass to EX/MEM register
	
	-- EX/MEM Register Signals
	signal EX_MEM_reg_in 	: std_logic_vector(106 downto 0); -- Input signal to the EX/MEM Register
	signal EX_MEM_reg_out 	: std_logic_vector(106 downto 0); -- Output signal from the EX/MEM Register
	
	-- Memory Signals
	signal data_memory_out_sig : std_logic_vector(31 downto 0); -- Output from the data memory to pass to MEM/WB register
	
	-- MEM/WB Register Signals
	signal MEM_WB_reg_in		: std_logic_vector(70 downto 0); -- Input signal to the MEM/WB Register
	signal MEM_WB_reg_out	: std_logic_vector(70 downto 0); -- Output signal from the MEM/WB Register
	
	-- Forward Unit Signals
	signal Forward_A			: std_logic_vector(1 downto 0); -- The control command for the RS register forwarding mux
	signal Forward_B			: std_logic_vector(1 downto 0); -- The control command for the RT register forwarding mux
	signal write_back_sig	: std_logic_vector(31 downto 0); -- The register value to be written back
	signal RS_forward_mux_out	: std_logic_vector(31 downto 0); -- The output of the RS forwarding mux
	signal RT_forward_mux_out	: std_logic_vector(31 downto 0); -- The output of the RT forwarding mux

	
	begin
	
		-- Output MemRead and EX stage RT Register for hazard functionality
		ID_EX_mem_read_ex 	<= MemRead;
		ID_EX_rt_register_ex <= rt_register;
		
		Forwarding_unit: forward_unit port map(
													ID_EX_rs_register		=> rs_register,
													ID_EX_rt_register		=> rt_register,
													EX_MEM_RegWrite		=> EX_MEM_reg_out(105),
													MEM_WB_RegWrite		=> MEM_WB_reg_out(69),
													EX_MEM_rd_register	=>	EX_MEM_reg_out(4 downto 0),
													MEM_WB_rd_register	=> MEM_WB_reg_out(4 downto 0),
													Forward_A				=> Forward_A,	
													Forward_B				=> Forward_B
												);
												
		RS_reg_forward_mux:	Four_Input_Mux generic map(32)
														port map(
															Input0 	=>	read_data_1,
															Input1 	=> write_back_sig,
															Input2 	=>	EX_MEM_reg_out(68 downto 37),
															Input3 	=> (others => '0'),
															Sel		=> Forward_A,
															Output	=> RS_forward_mux_out
														);
														
		RT_reg_forward_mux:	Four_Input_Mux generic map(32)
														port map(
															Input0 	=> read_data_2,
															Input1 	=> write_back_sig,
															Input2 	=> EX_MEM_reg_out(68 downto 37),
															Input3 	=> (others => '0'),
															Sel		=> Forward_B,
															Output	=> RT_forward_mux_out
														);
	
		ALUSrc_Mux: Two_Input_Mux generic map(32)
										  port map(
												Input0 	=> RT_forward_mux_out,
												Input1 	=> sign_extended,
												Sel		=> ALUSrc,
												Output	=> ALU_Input_2
										  );
										  
		ALU_Control_unit: ALU_Control port map(
													ALU_Op		=> ALUOp,
													instr_funct	=>	sign_extended(5 downto 0),
													operation	=> operation
												);
												
		ALU_unit:	ALU port map(
									A			=> RS_forward_mux_out,
									B			=> ALU_Input_2,
									Control	=> operation,
									Result	=> ALU_out,
									Zero		=> ALU_Zero
								);
								
		shift_left_2: shift_left_by_2 generic map(32)
												port map(
													input 	=> sign_extended,
													output	=> branch_offset
												);
												
		branch_adder: generic_adder generic map(32)
											 port map(
													A => PC_plus_4,
													B => branch_offset,
													F => branch_address_sig
											 );
											 
		write_reg_mux: Two_Input_Mux generic map(5)
											  port map(
													Input0	=> rt_register,
													Input1	=> rd_register,
													sel 		=> RegDst,
													Output	=> write_reg_sig_1
											  );
											  
		-- Append bits and vectors to input to EX/MEM Register
		EX_MEM_reg_in <= 	MemtoReg &					-- [106]
								RegWrite &					-- [105]
								MemWrite &					-- [104]
								MemRead &					-- [103]
								Branch &						-- [102]
								branch_address_sig &		-- [101:70]
								ALU_Zero &					-- [69]
								ALU_out &					-- [68:37]
								RT_forward_mux_out &		-- [36:5]
								write_reg_sig_1;			-- [4:0]
								
		EX_MEM_register: register_N generic map(107)
											 port map(
													D 			=> EX_MEM_reg_in,
													enable 	=> '1',
													Resetn 	=> reset,
													Clock 	=> clock,
													Q 			=> EX_MEM_reg_out
											 );
											 
		branch_address <= EX_MEM_reg_out(101 downto 70);
		pc_select <= EX_MEM_reg_out(102) and EX_MEM_reg_out(69);	-- Branch AND ALU_Zero
		
		data_memory: memory_1 port map(
											address 	=> EX_MEM_reg_out(44 downto 37), -- ALU Output
											clock 	=> clock,
											data		=> EX_MEM_reg_out(36 downto 5), -- RT forward mux out
											wren		=> EX_MEM_reg_out(104), -- Memory Write 
											q			=> data_memory_out_sig
										);
										
		-- Append bits and vectors to input to MEM/WB Register
		MEM_WB_reg_in <= EX_MEM_reg_out(106) &				-- [70] MemtoReg
							  EX_MEM_reg_out(105) &				-- [69] RegWrite
							  data_memory_out_sig &				-- [68:37]
							  EX_MEM_reg_out(68 downto 37) & -- [36:5] ALU Output
							  EX_MEM_reg_out(4 downto 0);		-- [4:0] Write Register
							  
		MEM_WB_register: register_N generic map(71)
											 port map(
													D			=> MEM_WB_reg_in,
													enable 	=> '1',
													Resetn 	=> reset,
													Clock 	=> clock,
													Q 			=> MEM_WB_reg_out
											 );
											 
		reg_write <= MEM_WB_reg_out(69); -- RegWrite
		write_register <= MEM_WB_reg_out(4 downto 0); -- Write Register
		
		write_back_mux: Two_Input_Mux generic map(32)
												port map(
													Input0	=> MEM_WB_reg_out(36 downto 5), 		-- ALU Output
													Input1	=> MEM_WB_reg_out(68 downto 37), 	-- Data Memory Output
													Sel		=> MEM_WB_reg_out(70),					-- MemtoReg
													Output	=> write_back_sig
												);
	   -- Additional signal allows use in forwarding
		write_data <= write_back_sig;
	
	
end architecture;