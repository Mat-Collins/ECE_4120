-- Design Phase 3 
-- Date: 4/29/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

-- The Execute, Memory, and Write Back stages of the pipelined architecture 
entity Part_2_EX_MEM_WB is
	port(
		
		clock				: in std_logic;								-- Clock signal for synchronous behavior
		reset				: in std_logic;								-- Active-low reset for the intermediate registers
		
		-- Inputs from ID stage via ID/EX pipeline register
		PC_plus_4		: in std_logic_vector(31 downto 0);		-- The PC+4 value from the ID/EX Register
		read_data_1		: in std_logic_vector(31 downto 0);		-- The Read Data 1 from the ID/EX Register
		read_data_2		: in std_logic_vector(31 downto 0);		-- The Read Data 2 from the ID/Ex Register
		sign_extended	: in std_logic_vector(31 downto 0);		-- The Sign Extended value from the ID/EX Register
		rd_register		: in std_logic_vector(4 downto 0);		-- The RD Register number from the ID/EX Register
		rt_register		: in std_logic_vector(4 downto 0);		-- The RT Register number from the ID/Ex Register 
		RegDst			: in std_logic;								-- The Register Destination control bit from the ID/EX Register
		Branch			: in std_logic;								-- The Branch control bit rom the ID/EX Register
		RegWrite			: in std_logic;								-- The Register Write control bit from the ID/EX Register
		ALUSrc			: in std_logic;								-- The ALU Source control bit from the ID/EX Register
		MemRead			: in std_logic;								-- The Memory Read control bit from the ID/EX Register
		MemWrite			: in std_logic;								-- The Memory Write control bit from the ID/EX Register
		MemtoReg			: in std_logic;								-- The Memory to Register control bit from th ID/EX Register
		ALUOp				: in std_logic_vector(1 downto 0);		-- The ALU Operation control bits from the ID/EX Register
		
		-- Outputs
		branch_address	: out std_logic_vector(31 downto 0);	-- The branch address to bee used for a branch instruction
		pc_select		: out std_logic;								-- The PC Select bit to choose between PC+4c and the branch address
		write_register	: out std_logic_vector(4 downto 0);		-- The register to write data to
		write_data		: out	std_logic_vector(31 downto 0);	-- The data to write to a register
		reg_write		: out std_logic;								-- The enable bit to enable writing to a register
		
		-- Inputs and Outputs for the Testbench
		EX_MEM_ALU_out	  	 		: out std_logic_vector(31 downto 0);	-- The ALU output in the MEM stage
		MEM_WB_Data_mem_out		: out std_logic_vector(31 downto 0)	-- The Data Memory output in the WB stage
	);
end Part_2_EX_MEM_WB;

architecture structure of Part_2_EX_MEM_WB is
	
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
			address : in std_logic_vector(7 downto 0);		-- The address to be written to or read from
			clock		: in std_logic;
			data		: in std_logic_vector(31 downto 0);		-- The data to be written to the address
			wren		: in std_logic;								-- The write enable bit 
			q			: out std_logic_vector(31 downto 0)		-- The data stored at the address
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
	signal write_reg_sig_2	: std_logic_vector(4 downto 0); -- Write Register value to pass to MEM/WB register
	
	-- EX/MEM Register Signals
	signal EX_MEM_reg_in 	: std_logic_vector(106 downto 0); -- Input signal to the EX/MEM Register
	signal EX_MEM_reg_out 	: std_logic_vector(106 downto 0); -- Output signal from the EX/MEM Register
	
	-- Memory Signals
	signal data_memory_out_sig : std_logic_vector(31 downto 0); -- Output from the data memory to pass to MEM/WB register
	
	-- MEM/WB Register Signals
	signal MEM_WB_reg_in		: std_logic_vector(70 downto 0); -- Input signal to the MEM/WB Register
	signal MEM_WB_reg_out	: std_logic_vector(70 downto 0); -- Output signal from the MEM/WB Register

	
	begin
	
		ALUSrc_Mux: Two_Input_Mux generic map(32)
										  port map(
												Input0 	=> read_data_2,
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
									A			=> read_data_1,
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
								read_data_2 &				-- [36:5]
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
		EX_MEM_ALU_out <= EX_MEM_reg_out(68 downto 37);	-- ALU output in the MEM stage
		
		data_memory: memory_1 port map(
											address 	=> EX_MEM_reg_out(44 downto 37), -- ALU Output
											clock 	=> clock,
											data		=> EX_MEM_reg_out(36 downto 5), -- Read Data 2
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
		MEM_WB_data_mem_out <= MEM_WB_reg_out(68 downto 37);
		
		write_back_mux: Two_Input_Mux generic map(32)
												port map(
													Input0	=> MEM_WB_reg_out(36 downto 5), 		-- ALU Output
													Input1	=> MEM_WB_reg_out(68 downto 37), 	-- Data Memory Output
													Sel		=> MEM_WB_reg_out(70),					-- MemtoReg
													Output	=> write_data
												);
	
	
end architecture;