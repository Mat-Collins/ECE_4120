-- Design Phase 3 
-- Date: 4/26/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity Part_3_EX_MEM_WB is
	port(
		
		clock				: in std_logic;
		reset				: in std_logic;
		
		-- Inputs from ID stage via ID/EX pipeline register
		PC_plus_4		: in std_logic_vector(31 downto 0);
		read_data_1		: in std_logic_vector(31 downto 0);
		read_data_2		: in std_logic_vector(31 downto 0);
		sign_extended	: in std_logic_vector(31 downto 0);
		rd_register		: in std_logic_vector(4 downto 0);
		rt_register		: in std_logic_vector(4 downto 0);
		rs_register		: in std_logic_vector(4 downto 0);
		RegDst			: in std_logic;
		Branch			: in std_logic;
		RegWrite			: in std_logic;
		ALUSrc			: in std_logic;
		MemRead			: in std_logic;
		MemWrite			: in std_logic;
		MemtoReg			: in std_logic;
		ALUOp				: in std_logic_vector(1 downto 0);
		
		-- Outputs
		branch_address	: out std_logic_vector(31 downto 0);
		pc_select		: out std_logic;
		write_register	: out std_logic_vector(4 downto 0);
		write_data		: out	std_logic_vector(31 downto 0);
		reg_write		: out std_logic;
		
		ID_EX_mem_read_ex		: out std_logic;
		ID_EX_rt_register_ex	: out std_logic_vector(4 downto 0)
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
			ALU_Op			: in std_logic_vector(1 downto 0);
			instr_funct		: in std_logic_vector(5 downto 0);
			operation		: out std_logic_vector(3 downto 0)
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
			address : in std_logic_vector(7 downto 0);
			clock		: in std_logic;
			data		: in std_logic_vector(31 downto 0);
			wren		: in std_logic;
			q			: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Two_Input_Mux is
		generic(n : integer := 32); 
		 port (
			  Input0, Input1 : in  std_logic_vector(n-1 downto 0);  -- Two (n-1)-bit inputs
			  Sel            : in  std_logic;                      -- 1-bit select signal
			  Output         : out std_logic_vector(n-1 downto 0)   -- (n-1)-bit output
		 );
	end component;
	
	component shift_left_by_2 is
		generic(n : integer := 32);
		port(
			input 	: in std_logic_vector(n-1 downto 0);
			output 	: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	component register_N is
		 GENERIC (N : INTEGER := 32);
		 PORT (
			  D       : IN  STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			  enable  : IN  STD_LOGIC;
			  Resetn  : IN  STD_LOGIC;
			  Clock   : IN  STD_LOGIC;
			  Q       : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
		 );
	end component;
	
	component Four_Input_Mux is
		generic(n : integer := 32);
		port(
			Input0 	: in std_logic_vector(n-1 downto 0);
			Input1 	: in std_logic_vector(n-1 downto 0);
			Input2 	: in std_logic_vector(n-1 downto 0);
			Input3 	: in std_logic_vector(n-1 downto 0);
			Sel		: in std_logic_vector(1 downto 0);
			Output	: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	component forward_unit is
		port(
			ID_EX_rs_register		: in std_logic_vector(4 downto 0);
			ID_EX_rt_register		: in std_logic_vector(4 downto 0);
			EX_MEM_RegWrite		: in std_logic;
			MEM_WB_RegWrite		: in std_logic;
			EX_MEM_rd_register	: in std_logic_vector(4 downto 0);
			MEM_WB_rd_register	: in std_logic_vector(4 downto 0);
			Forward_A				: out std_logic_vector(1 downto 0);
			Forward_B				: out std_logic_vector(1 downto 0)
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