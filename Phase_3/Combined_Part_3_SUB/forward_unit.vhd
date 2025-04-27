-- Design Phase 3 
-- Date: 4/26/2025
-- Authors: Matthew Collins & Lewis Bates
-- Emails: mcollins42@tntech.edu & lfbates42@tntech.edu

library ieee;
use ieee.std_logic_1164.all;

entity forward_unit is
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
end forward_unit;

architecture behavior of forward_unit is
begin
	
	beh: process(EX_MEM_RegWrite, MEM_WB_RegWrite)
	begin
	
		-- EX Forwarding - RS Register
		if (EX_MEM_RegWrite = '1')
		and not(EX_MEM_rd_register = "00000")
		and (EX_MEM_rd_register = ID_EX_rs_register) then
			Forward_A <= "10";
			
		else Forward_A <= "00";
		end if;
		
		-- EX Forwarding - RT Register
		if (EX_MEM_RegWrite = '1')
		and not(EX_MEM_rd_register = "00000")
		and (EX_MEM_rd_register = ID_EX_rt_register) then
			Forward_B <= "10";
			
		else Forward_B <= "00";
		end if;
		
		-- MEM Forwarding - RS Register
		if (MEM_WB_RegWrite = '1')
		and not(MEM_WB_rd_register = "00000")
		and not(EX_MEM_rd_register = ID_EX_rs_register)
		and (MEM_WB_rd_register = ID_EX_rs_register) then
			Forward_A <= "01";
			
		else Forward_A <= "00";
		end if;
		
		-- MEM Forwarding - RT Register
		if (MEM_WB_RegWrite = '1')
		and not(MEM_WB_rd_register = "00000")
		and not(EX_MEM_rd_register = ID_EX_rt_register)
		and (MEM_WB_rd_register = ID_EX_rt_register) then
			Forward_B <= "01";
			
		else Forward_B <= "00";
		end if;
		
	end process;
end architecture;