-- Design Phase 3 
-- Date: 4/27/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

-- The full pipelined architecture with forwarding and hazard detection units implemented
entity Part_3_Combined is
	port(
		clock	: in std_logic;		-- The clock signal
		reset	: in std_logic			-- The reset signal
	);
end Part_3_Combined;

architecture structure of Part_3_Combined is

	component Part_3_IF_ID is
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
	end component;
	
	component Part_3_EX_MEM_WB is
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
	end component;
	
	-- Internal Signals
	signal branch_address_sig	: std_logic_vector(31 downto 0);			-- The next address given a branch instruction
	signal pc_select_sig			: std_logic;									-- The select bit to choose between PC+4 and the branch address
	signal write_register_sig		: std_logic_vector(4 downto 0);		-- The register number to write data to
	signal write_data_sig				:std_logic_vector(31 downto 0);	-- The data to be written to a register
	signal reg_write_sig				: std_logic;								-- The enable bit to enable writing data to a register
	signal mem_read_ex_sig			: std_logic;								-- The Memory Read control bit in the EX stage
	signal write_reg_ex_sig				: std_logic_vector(4 downto 0);	-- The RT Register number in the EX stage
	signal PC_plus_4_sig				: std_logic_vector(31 downto 0);		-- The PC+4 value from the ID/EX Register
	signal read_data_1_sig			: std_logic_vector(31 downto 0);		-- The Read Data 1 value from the ID/EX Register
	signal read_data_2_sig			: std_logic_vector(31 downto 0);		-- The Read Data 2 value from the ID/EX Register
	signal sign_extended_sig		: std_logic_vector(31 downto 0);		-- The sign Extended vakue from the ID/EX Register
	signal rs_sig						: std_logic_vector(4 downto 0);		-- The RS Register number from the ID/EX Register
	signal rt_sig						: std_logic_vector(4 downto 0);		-- The RT Register number from the ID/EX Register
	signal rd_sig						: std_logic_vector(4 downto 0);		-- The RD Register number from the ID/EX Register
	signal Branch_sig					: std_logic;								-- The Branch control bit from the ID/EX Register
	signal RegWrite_sig				: std_logic;								-- The Register Write control bit from the ID/EX Register
	signal ALUSrc_sig					: std_logic;								-- The ALU Source control bit from the ID/EX Register
	signal MemRead_sig				: std_logic;								-- The Memory Read control bit from the ID/EX Register
	signal MemWrite_sig				: std_logic;								-- The Memory Write control bit from the ID/EX Register
	signal MemtoReg_sig				: std_logic;								-- The Memory to Register control bit from the ID/EX Register
	signal ALUOp_sig					: std_logic_vector(1 downto 0);		-- The ALU Operation control bits from the ID/EX Register
	signal reg_dst_sig				: std_logic;								-- The Register Destination control bit from the ID/EX Register
	
	
	begin
	
		IF_ID: Part_3_IF_ID port map(
										  clk 						=> clock,           
										  reset         			=> reset,
										  branch_address			=> branch_address_sig,
										  pc_select 				=> pc_select_sig,
										  write_register			=> write_register_sig,
										  write_data				=> write_data_sig,
										  reg_write 				=> reg_write_sig,
										  -- Inputs from EX stage for hazard detection (load-use hazards)
										  mem_read_ex  			=> mem_read_ex_sig,
										  write_reg_ex  			=> write_reg_ex_sig,
										  -- Outputs to EX stage via ID/EX pipeline register
										  ID_EX_PC_plus_4			=> PC_plus_4_sig,
										  ID_EX_read_data1		=> read_data_1_sig,
										  ID_EX_read_data2		=> read_data_2_sig,
										  ID_EX_sign_extended	=> sign_extended_sig,
										  ID_EX_rs					=> rs_sig,
										  ID_EX_rt 					=> rt_sig,
										  ID_EX_rd					=> rd_sig,
										  ID_EX_Branch 			=> Branch_sig,
										  ID_EX_RegWrite			=> RegWrite_sig,
										  ID_EX_ALUSrc				=> ALUSrc_sig,
										  ID_EX_MemRead  			=> MemRead_sig,
										  ID_EX_MemWrite  		=> MemWrite_sig,
										  ID_EX_MemtoReg  		=> MemtoReg_sig,
										  ID_EX_ALUOp    			=> ALUOp_sig,
										  ID_EX_reg_dst			=> reg_dst_sig
									);
									
		EX_MEM_WB: Part_3_EX_MEM_WB port map(
													clock						=> clock,
													reset						=> reset,
													
													-- Inputs from ID stage via ID/EX pipeline register
													PC_plus_4				=> PC_plus_4_sig,
													read_data_1				=> read_data_1_sig,
													read_data_2				=> read_data_2_sig,
													sign_extended			=> sign_extended_sig,
													rd_register				=> rd_sig,
													rt_register				=> rt_sig,
													rs_register				=> rs_sig,
													RegDst					=> reg_dst_sig,
													Branch					=> Branch_sig,
													RegWrite					=> RegWrite_sig,
													ALUSrc					=> ALUSrc_sig,
													MemRead					=> MemRead_sig,
													MemWrite					=> MemWrite_sig,
													MemtoReg					=> MemtoReg_sig,
													ALUOp						=> ALUOp_sig,
													
													-- Outputs
													branch_address			=> branch_address_sig,
													pc_select				=> pc_select_sig,
													write_register			=> write_register_sig,
													write_data				=> write_data_sig,
													reg_write				=> reg_write_sig,
													
													ID_EX_mem_read_ex		=> mem_read_ex_sig,
													ID_EX_rt_register_ex => write_reg_ex_sig
									);
end architecture;