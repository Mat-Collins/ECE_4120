-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "04/14/2025 17:54:13"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL a_aALTERA_TMS_a_apadout : std_logic;
SIGNAL a_aALTERA_TCK_a_apadout : std_logic;
SIGNAL a_aALTERA_TDI_a_apadout : std_logic;
SIGNAL a_aALTERA_CONFIG_SEL_a_apadout : std_logic;
SIGNAL a_aALTERA_nCONFIG_a_apadout : std_logic;
SIGNAL a_aALTERA_nSTATUS_a_apadout : std_logic;
SIGNAL a_aALTERA_CONF_DONE_a_apadout : std_logic;
SIGNAL a_aALTERA_TMS_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_TCK_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_TDI_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_CONFIG_SEL_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_nCONFIG_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_nSTATUS_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_CONF_DONE_a_aibuf_o : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	de10_lite_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END de10_lite_top;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF de10_lite_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(17 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_ADC2_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL CLOCK_50_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL KEY_a1_a_ainput_o : std_logic;
SIGNAL a_aQUARTUS_CREATED_UNVM_a_abusy : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC1_a_aeoc : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC2_a_aeoc : std_logic;
SIGNAL HEX0_a0_a_aoutput_o : std_logic;
SIGNAL HEX0_a1_a_aoutput_o : std_logic;
SIGNAL HEX0_a2_a_aoutput_o : std_logic;
SIGNAL HEX0_a3_a_aoutput_o : std_logic;
SIGNAL HEX0_a4_a_aoutput_o : std_logic;
SIGNAL HEX0_a5_a_aoutput_o : std_logic;
SIGNAL HEX0_a6_a_aoutput_o : std_logic;
SIGNAL HEX1_a0_a_aoutput_o : std_logic;
SIGNAL HEX1_a1_a_aoutput_o : std_logic;
SIGNAL HEX1_a2_a_aoutput_o : std_logic;
SIGNAL HEX1_a3_a_aoutput_o : std_logic;
SIGNAL HEX1_a4_a_aoutput_o : std_logic;
SIGNAL HEX1_a5_a_aoutput_o : std_logic;
SIGNAL HEX1_a6_a_aoutput_o : std_logic;
SIGNAL HEX2_a0_a_aoutput_o : std_logic;
SIGNAL HEX2_a1_a_aoutput_o : std_logic;
SIGNAL HEX2_a2_a_aoutput_o : std_logic;
SIGNAL HEX2_a3_a_aoutput_o : std_logic;
SIGNAL HEX2_a4_a_aoutput_o : std_logic;
SIGNAL HEX2_a5_a_aoutput_o : std_logic;
SIGNAL HEX2_a6_a_aoutput_o : std_logic;
SIGNAL HEX3_a0_a_aoutput_o : std_logic;
SIGNAL HEX3_a1_a_aoutput_o : std_logic;
SIGNAL HEX3_a2_a_aoutput_o : std_logic;
SIGNAL HEX3_a3_a_aoutput_o : std_logic;
SIGNAL HEX3_a4_a_aoutput_o : std_logic;
SIGNAL HEX3_a5_a_aoutput_o : std_logic;
SIGNAL HEX3_a6_a_aoutput_o : std_logic;
SIGNAL HEX4_a0_a_aoutput_o : std_logic;
SIGNAL HEX4_a1_a_aoutput_o : std_logic;
SIGNAL HEX4_a2_a_aoutput_o : std_logic;
SIGNAL HEX4_a3_a_aoutput_o : std_logic;
SIGNAL HEX4_a4_a_aoutput_o : std_logic;
SIGNAL HEX4_a5_a_aoutput_o : std_logic;
SIGNAL HEX4_a6_a_aoutput_o : std_logic;
SIGNAL HEX5_a0_a_aoutput_o : std_logic;
SIGNAL HEX5_a1_a_aoutput_o : std_logic;
SIGNAL HEX5_a2_a_aoutput_o : std_logic;
SIGNAL HEX5_a3_a_aoutput_o : std_logic;
SIGNAL HEX5_a4_a_aoutput_o : std_logic;
SIGNAL HEX5_a5_a_aoutput_o : std_logic;
SIGNAL HEX5_a6_a_aoutput_o : std_logic;
SIGNAL LEDR_a0_a_aoutput_o : std_logic;
SIGNAL LEDR_a1_a_aoutput_o : std_logic;
SIGNAL LEDR_a2_a_aoutput_o : std_logic;
SIGNAL LEDR_a3_a_aoutput_o : std_logic;
SIGNAL LEDR_a4_a_aoutput_o : std_logic;
SIGNAL LEDR_a5_a_aoutput_o : std_logic;
SIGNAL LEDR_a6_a_aoutput_o : std_logic;
SIGNAL LEDR_a7_a_aoutput_o : std_logic;
SIGNAL LEDR_a8_a_aoutput_o : std_logic;
SIGNAL LEDR_a9_a_aoutput_o : std_logic;
SIGNAL CLOCK_50_ainput_o : std_logic;
SIGNAL CLOCK_50_ainputclkctrl_outclk : std_logic;
SIGNAL a_aGND_acombout : std_logic;
SIGNAL dut_apc_inst_areg_data_a2_a_a15_combout : std_logic;
SIGNAL KEY_a0_a_ainput_o : std_logic;
SIGNAL dut_apc_inst_areg_data_a3_a_a5_combout : std_logic;
SIGNAL dut_apc_inst_areg_data_a3_a_a6 : std_logic;
SIGNAL dut_apc_inst_areg_data_a4_a_a7_combout : std_logic;
SIGNAL dut_apc_inst_areg_data_a4_a_a8 : std_logic;
SIGNAL dut_apc_inst_areg_data_a5_a_a9_combout : std_logic;
SIGNAL dut_apc_inst_areg_data_a5_a_a10 : std_logic;
SIGNAL dut_apc_inst_areg_data_a6_a_a11_combout : std_logic;
SIGNAL dut_apc_inst_areg_data_a6_a_a12 : std_logic;
SIGNAL dut_apc_inst_areg_data_a7_a_a13_combout : std_logic;
SIGNAL SW_a7_a_ainput_o : std_logic;
SIGNAL SW_a5_a_ainput_o : std_logic;
SIGNAL SW_a4_a_ainput_o : std_logic;
SIGNAL SW_a6_a_ainput_o : std_logic;
SIGNAL dut_aalu_inst_aMux31_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL SW_a9_a_ainput_o : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a3_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux60_a20_combout : std_logic;
SIGNAL SW_a8_a_ainput_o : std_logic;
SIGNAL dut_aalu_inst_aMux28_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a0_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a3_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a3_a_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux61_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux29_a0_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a2_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a2_a_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aMux29_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aMux29_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a1_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux62_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux30_a0_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a1_a_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aMux30_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aMux30_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a0_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux31_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux31_a0_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a0_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a0_a_a0_combout : std_logic;
SIGNAL dut_aalu_inst_aMux31_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a2_cout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux31_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux31_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux31_a5_combout : std_logic;
SIGNAL dut_aalu_inst_aMux31_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux63_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a0_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a4 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a6_combout : std_logic;
SIGNAL dut_aalu_inst_aMux30_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux30_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux30_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux30_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a7 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a9_combout : std_logic;
SIGNAL dut_aalu_inst_aMux29_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux29_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux29_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a2_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux29_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a10 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a12_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a5_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a6_combout : std_logic;
SIGNAL dut_aalu_inst_aMux28_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux28_a20_combout : std_logic;
SIGNAL Mux6_a0_combout : std_logic;
SIGNAL Mux5_a0_combout : std_logic;
SIGNAL Mux4_a0_combout : std_logic;
SIGNAL Mux3_a0_combout : std_logic;
SIGNAL Mux2_a0_combout : std_logic;
SIGNAL Mux1_a0_combout : std_logic;
SIGNAL Mux0_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a4_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux59_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux27_a0_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a4_a_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux27_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a14_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a13 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a15_combout : std_logic;
SIGNAL dut_aalu_inst_aMux27_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aMux27_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux27_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux27_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux27_a20_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux56_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux24_a0_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a7_a_a7_combout : std_logic;
SIGNAL dut_aalu_inst_aMux24_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a7_combout : std_logic;
SIGNAL dut_aalu_inst_aMux24_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a23_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a6_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a6_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux25_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux25_a0_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a6_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a6_a_a6_combout : std_logic;
SIGNAL dut_aalu_inst_aMux25_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux26_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aMux26_a0_combout : std_logic;
SIGNAL dut_aalu_mux_inst_aOutput_a5_a_a5_combout : std_logic;
SIGNAL dut_aalu_inst_aMux26_a1_combout : std_logic;
SIGNAL dut_aalu_inst_aResult_var_a5_combout : std_logic;
SIGNAL dut_aalu_inst_aMux26_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a16 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a18_combout : std_logic;
SIGNAL dut_aalu_inst_aMux26_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux26_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux26_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a5_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux58_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a17_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a19 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a21_combout : std_logic;
SIGNAL dut_aalu_inst_aMux25_a2_combout : std_logic;
SIGNAL dut_aalu_inst_aMux25_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux25_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux25_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a6_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux57_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a20_combout : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a22 : std_logic;
SIGNAL dut_aalu_inst_aAdd0_a24_combout : std_logic;
SIGNAL dut_aalu_inst_aMux24_a3_combout : std_logic;
SIGNAL dut_aalu_inst_aMux24_a4_combout : std_logic;
SIGNAL dut_aalu_inst_aMux24_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a7_a_afeeder_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a17_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a18_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a10_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a11_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a14_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a15_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a12_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a13_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a16_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a19_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a7_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a8_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a0_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a1_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a4_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a5_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a2_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a3_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a6_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a9_combout : std_logic;
SIGNAL dut_aregisters_inst_aread_unit_aMux24_a20_combout : std_logic;
SIGNAL Mux13_a0_combout : std_logic;
SIGNAL Mux12_a0_combout : std_logic;
SIGNAL Mux11_a0_combout : std_logic;
SIGNAL Mux10_a0_combout : std_logic;
SIGNAL Mux9_a0_combout : std_logic;
SIGNAL Mux8_a0_combout : std_logic;
SIGNAL Mux7_a0_combout : std_logic;
SIGNAL Mux20_a0_combout : std_logic;
SIGNAL Mux19_a0_combout : std_logic;
SIGNAL Mux18_a0_combout : std_logic;
SIGNAL Mux17_a0_combout : std_logic;
SIGNAL Mux16_a0_combout : std_logic;
SIGNAL Mux15_a0_combout : std_logic;
SIGNAL Mux14_a0_combout : std_logic;
SIGNAL Mux27_a0_combout : std_logic;
SIGNAL Mux26_a0_combout : std_logic;
SIGNAL Mux25_a0_combout : std_logic;
SIGNAL Mux24_a0_combout : std_logic;
SIGNAL Mux23_a0_combout : std_logic;
SIGNAL Mux22_a0_combout : std_logic;
SIGNAL Mux21_a0_combout : std_logic;
SIGNAL Mux34_a0_combout : std_logic;
SIGNAL Mux33_a0_combout : std_logic;
SIGNAL Mux32_a0_combout : std_logic;
SIGNAL Mux31_a0_combout : std_logic;
SIGNAL Mux30_a0_combout : std_logic;
SIGNAL Mux29_a0_combout : std_logic;
SIGNAL Mux28_a0_combout : std_logic;
SIGNAL Mux41_a0_combout : std_logic;
SIGNAL Mux40_a0_combout : std_logic;
SIGNAL Mux39_a0_combout : std_logic;
SIGNAL Mux38_a0_combout : std_logic;
SIGNAL Mux37_a0_combout : std_logic;
SIGNAL Mux36_a0_combout : std_logic;
SIGNAL Mux35_a0_combout : std_logic;
SIGNAL SW_a0_a_ainput_o : std_logic;
SIGNAL SW_a1_a_ainput_o : std_logic;
SIGNAL SW_a2_a_ainput_o : std_logic;
SIGNAL SW_a3_a_ainput_o : std_logic;
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_apc_inst_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_Mux35_a0_combout : std_logic;
SIGNAL ALT_INV_Mux28_a0_combout : std_logic;
SIGNAL ALT_INV_Mux21_a0_combout : std_logic;
SIGNAL ALT_INV_Mux14_a0_combout : std_logic;
SIGNAL ALT_INV_Mux7_a0_combout : std_logic;
SIGNAL ALT_INV_Mux0_a0_combout : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAIN_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout);

dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTAADDR_bus <= (dut_apc_inst_areg_data(7) & dut_apc_inst_areg_data(6) & dut_apc_inst_areg_data(5) & dut_apc_inst_areg_data(4) & dut_apc_inst_areg_data(3) & 
dut_apc_inst_areg_data(2) & a_aGND_acombout & a_aGND_acombout);

dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus(0);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus(1);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus(2);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus(3);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus(4);

dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & 
a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout);

dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus <= (dut_apc_inst_areg_data(7) & dut_apc_inst_areg_data(6) & dut_apc_inst_areg_data(5) & dut_apc_inst_areg_data(4) & dut_apc_inst_areg_data(3) & 
dut_apc_inst_areg_data(2) & a_aGND_acombout & a_aGND_acombout);

dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(8);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(9);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(10);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(11);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(12);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(13);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(14);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(15);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(16);
dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) <= dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus(17);

a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus <= (a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout);

a_aQUARTUS_CREATED_ADC2_a_CHSEL_bus <= (a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout & a_aGND_acombout);

CLOCK_50_ainputclkctrl_INCLK_bus <= (vcc & vcc & vcc & CLOCK_50_ainput_o);
ALT_INV_Mux35_a0_combout <= NOT Mux35_a0_combout;
ALT_INV_Mux28_a0_combout <= NOT Mux28_a0_combout;
ALT_INV_Mux21_a0_combout <= NOT Mux21_a0_combout;
ALT_INV_Mux14_a0_combout <= NOT Mux14_a0_combout;
ALT_INV_Mux7_a0_combout <= NOT Mux7_a0_combout;
ALT_INV_Mux0_a0_combout <= NOT Mux0_a0_combout;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y54_N16
HEX0_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux6_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a0_a_aoutput_o);

-- Location: IOOBUF_X74_Y54_N9
HEX0_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux5_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a1_a_aoutput_o);

-- Location: IOOBUF_X60_Y54_N2
HEX0_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux4_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a2_a_aoutput_o);

-- Location: IOOBUF_X62_Y54_N30
HEX0_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux3_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a3_a_aoutput_o);

-- Location: IOOBUF_X74_Y54_N2
HEX0_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux2_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a4_a_aoutput_o);

-- Location: IOOBUF_X74_Y54_N16
HEX0_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux1_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a5_a_aoutput_o);

-- Location: IOOBUF_X74_Y54_N23
HEX0_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Mux0_a0_combout,
	devoe => ww_devoe,
	o => HEX0_a6_a_aoutput_o);

-- Location: IOOBUF_X69_Y54_N23
HEX1_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux13_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a0_a_aoutput_o);

-- Location: IOOBUF_X78_Y49_N9
HEX1_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux12_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a1_a_aoutput_o);

-- Location: IOOBUF_X78_Y49_N2
HEX1_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux11_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a2_a_aoutput_o);

-- Location: IOOBUF_X60_Y54_N9
HEX1_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux10_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a3_a_aoutput_o);

-- Location: IOOBUF_X64_Y54_N2
HEX1_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux9_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a4_a_aoutput_o);

-- Location: IOOBUF_X66_Y54_N30
HEX1_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux8_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a5_a_aoutput_o);

-- Location: IOOBUF_X69_Y54_N30
HEX1_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Mux7_a0_combout,
	devoe => ww_devoe,
	o => HEX1_a6_a_aoutput_o);

-- Location: IOOBUF_X78_Y44_N9
HEX2_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux20_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a0_a_aoutput_o);

-- Location: IOOBUF_X66_Y54_N2
HEX2_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux19_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a1_a_aoutput_o);

-- Location: IOOBUF_X69_Y54_N16
HEX2_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux18_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a2_a_aoutput_o);

-- Location: IOOBUF_X78_Y44_N2
HEX2_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux17_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a3_a_aoutput_o);

-- Location: IOOBUF_X78_Y43_N2
HEX2_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux16_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a4_a_aoutput_o);

-- Location: IOOBUF_X78_Y35_N2
HEX2_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux15_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a5_a_aoutput_o);

-- Location: IOOBUF_X78_Y43_N9
HEX2_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Mux14_a0_combout,
	devoe => ww_devoe,
	o => HEX2_a6_a_aoutput_o);

-- Location: IOOBUF_X78_Y35_N23
HEX3_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux27_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a0_a_aoutput_o);

-- Location: IOOBUF_X78_Y33_N9
HEX3_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux26_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a1_a_aoutput_o);

-- Location: IOOBUF_X78_Y33_N2
HEX3_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux25_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a2_a_aoutput_o);

-- Location: IOOBUF_X69_Y54_N9
HEX3_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux24_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a3_a_aoutput_o);

-- Location: IOOBUF_X78_Y41_N9
HEX3_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux23_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a4_a_aoutput_o);

-- Location: IOOBUF_X78_Y41_N2
HEX3_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux22_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a5_a_aoutput_o);

-- Location: IOOBUF_X78_Y43_N16
HEX3_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Mux21_a0_combout,
	devoe => ww_devoe,
	o => HEX3_a6_a_aoutput_o);

-- Location: IOOBUF_X78_Y40_N16
HEX4_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux34_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a0_a_aoutput_o);

-- Location: IOOBUF_X78_Y40_N2
HEX4_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux33_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a1_a_aoutput_o);

-- Location: IOOBUF_X78_Y40_N23
HEX4_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux32_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a2_a_aoutput_o);

-- Location: IOOBUF_X78_Y42_N16
HEX4_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux31_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a3_a_aoutput_o);

-- Location: IOOBUF_X78_Y45_N23
HEX4_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux30_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a4_a_aoutput_o);

-- Location: IOOBUF_X78_Y40_N9
HEX4_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux29_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a5_a_aoutput_o);

-- Location: IOOBUF_X78_Y35_N16
HEX4_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Mux28_a0_combout,
	devoe => ww_devoe,
	o => HEX4_a6_a_aoutput_o);

-- Location: IOOBUF_X78_Y45_N9
HEX5_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux41_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a0_a_aoutput_o);

-- Location: IOOBUF_X78_Y42_N2
HEX5_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux40_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a1_a_aoutput_o);

-- Location: IOOBUF_X78_Y37_N16
HEX5_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux39_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a2_a_aoutput_o);

-- Location: IOOBUF_X78_Y34_N24
HEX5_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux38_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a3_a_aoutput_o);

-- Location: IOOBUF_X78_Y34_N9
HEX5_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux37_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a4_a_aoutput_o);

-- Location: IOOBUF_X78_Y34_N16
HEX5_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Mux36_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a5_a_aoutput_o);

-- Location: IOOBUF_X78_Y34_N2
HEX5_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Mux35_a0_combout,
	devoe => ww_devoe,
	o => HEX5_a6_a_aoutput_o);

-- Location: IOOBUF_X46_Y54_N2
LEDR_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a0_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a0_a_aoutput_o);

-- Location: IOOBUF_X46_Y54_N23
LEDR_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a1_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a1_a_aoutput_o);

-- Location: IOOBUF_X51_Y54_N16
LEDR_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a2_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a2_a_aoutput_o);

-- Location: IOOBUF_X46_Y54_N9
LEDR_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a3_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a3_a_aoutput_o);

-- Location: IOOBUF_X56_Y54_N30
LEDR_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a4_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a4_a_aoutput_o);

-- Location: IOOBUF_X58_Y54_N23
LEDR_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a5_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a5_a_aoutput_o);

-- Location: IOOBUF_X66_Y54_N23
LEDR_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a6_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a6_a_aoutput_o);

-- Location: IOOBUF_X56_Y54_N9
LEDR_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a7_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a7_a_aoutput_o);

-- Location: IOOBUF_X51_Y54_N9
LEDR_a8_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a8_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a8_a_aoutput_o);

-- Location: IOOBUF_X49_Y54_N9
LEDR_a9_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => SW_a9_a_ainput_o,
	devoe => ww_devoe,
	o => LEDR_a9_a_aoutput_o);

-- Location: IOIBUF_X34_Y0_N29
CLOCK_50_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => CLOCK_50_ainput_o);

-- Location: CLKCTRL_G19
CLOCK_50_ainputclkctrl : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => CLOCK_50_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => CLOCK_50_ainputclkctrl_outclk);

-- Location: LCCOMB_X43_Y38_N24
a_aGND : fiftyfivenm_lcell_comb
-- Equation(s):
-- a_aGND_acombout = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => a_aGND_acombout);

-- Location: LCCOMB_X32_Y37_N0
dut_apc_inst_areg_data_a2_a_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_apc_inst_areg_data_a2_a_a15_combout = !dut_apc_inst_areg_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_apc_inst_areg_data(2),
	combout => dut_apc_inst_areg_data_a2_a_a15_combout);

-- Location: IOIBUF_X46_Y54_N29
KEY_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => KEY_a0_a_ainput_o);

-- Location: FF_X32_Y37_N1
dut_apc_inst_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_apc_inst_areg_data_a2_a_a15_combout,
	clrn => KEY_a0_a_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_apc_inst_areg_data(2));

-- Location: LCCOMB_X32_Y37_N10
dut_apc_inst_areg_data_a3_a_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_apc_inst_areg_data_a3_a_a5_combout = (dut_apc_inst_areg_data(3) & (dut_apc_inst_areg_data(2) $ (VCC))) # (!dut_apc_inst_areg_data(3) & (dut_apc_inst_areg_data(2) & VCC))
-- dut_apc_inst_areg_data_a3_a_a6 = CARRY((dut_apc_inst_areg_data(3) & dut_apc_inst_areg_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_apc_inst_areg_data(3),
	datab => dut_apc_inst_areg_data(2),
	datad => VCC,
	combout => dut_apc_inst_areg_data_a3_a_a5_combout,
	cout => dut_apc_inst_areg_data_a3_a_a6);

-- Location: FF_X32_Y37_N11
dut_apc_inst_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_apc_inst_areg_data_a3_a_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_apc_inst_areg_data(3));

-- Location: LCCOMB_X32_Y37_N12
dut_apc_inst_areg_data_a4_a_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_apc_inst_areg_data_a4_a_a7_combout = (dut_apc_inst_areg_data(4) & (!dut_apc_inst_areg_data_a3_a_a6)) # (!dut_apc_inst_areg_data(4) & ((dut_apc_inst_areg_data_a3_a_a6) # (GND)))
-- dut_apc_inst_areg_data_a4_a_a8 = CARRY((!dut_apc_inst_areg_data_a3_a_a6) # (!dut_apc_inst_areg_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_apc_inst_areg_data(4),
	datad => VCC,
	cin => dut_apc_inst_areg_data_a3_a_a6,
	combout => dut_apc_inst_areg_data_a4_a_a7_combout,
	cout => dut_apc_inst_areg_data_a4_a_a8);

-- Location: FF_X32_Y37_N13
dut_apc_inst_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_apc_inst_areg_data_a4_a_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_apc_inst_areg_data(4));

-- Location: LCCOMB_X32_Y37_N14
dut_apc_inst_areg_data_a5_a_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_apc_inst_areg_data_a5_a_a9_combout = (dut_apc_inst_areg_data(5) & (dut_apc_inst_areg_data_a4_a_a8 $ (GND))) # (!dut_apc_inst_areg_data(5) & (!dut_apc_inst_areg_data_a4_a_a8 & VCC))
-- dut_apc_inst_areg_data_a5_a_a10 = CARRY((dut_apc_inst_areg_data(5) & !dut_apc_inst_areg_data_a4_a_a8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dut_apc_inst_areg_data(5),
	datad => VCC,
	cin => dut_apc_inst_areg_data_a4_a_a8,
	combout => dut_apc_inst_areg_data_a5_a_a9_combout,
	cout => dut_apc_inst_areg_data_a5_a_a10);

-- Location: FF_X32_Y37_N15
dut_apc_inst_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_apc_inst_areg_data_a5_a_a9_combout,
	clrn => KEY_a0_a_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_apc_inst_areg_data(5));

-- Location: LCCOMB_X32_Y37_N16
dut_apc_inst_areg_data_a6_a_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_apc_inst_areg_data_a6_a_a11_combout = (dut_apc_inst_areg_data(6) & (!dut_apc_inst_areg_data_a5_a_a10)) # (!dut_apc_inst_areg_data(6) & ((dut_apc_inst_areg_data_a5_a_a10) # (GND)))
-- dut_apc_inst_areg_data_a6_a_a12 = CARRY((!dut_apc_inst_areg_data_a5_a_a10) # (!dut_apc_inst_areg_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dut_apc_inst_areg_data(6),
	datad => VCC,
	cin => dut_apc_inst_areg_data_a5_a_a10,
	combout => dut_apc_inst_areg_data_a6_a_a11_combout,
	cout => dut_apc_inst_areg_data_a6_a_a12);

-- Location: FF_X32_Y37_N17
dut_apc_inst_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_apc_inst_areg_data_a6_a_a11_combout,
	clrn => KEY_a0_a_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_apc_inst_areg_data(6));

-- Location: LCCOMB_X32_Y37_N18
dut_apc_inst_areg_data_a7_a_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_apc_inst_areg_data_a7_a_a13_combout = dut_apc_inst_areg_data_a6_a_a12 $ (!dut_apc_inst_areg_data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => dut_apc_inst_areg_data(7),
	cin => dut_apc_inst_areg_data_a6_a_a12,
	combout => dut_apc_inst_areg_data_a7_a_a13_combout);

-- Location: FF_X32_Y37_N19
dut_apc_inst_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_apc_inst_areg_data_a7_a_a13_combout,
	clrn => KEY_a0_a_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_apc_inst_areg_data(7));

-- Location: M9K_X33_Y37_N0
dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Phase_2:dut|memory_1:mem_inst|altsyncram:altsyncram_component|altsyncram_eko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => CLOCK_50_ainputclkctrl_outclk,
	portadatain => dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAIN_bus,
	portaaddr => dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a21_PORTADATAOUT_bus);

-- Location: IOIBUF_X58_Y54_N29
SW_a7_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => SW_a7_a_ainput_o);

-- Location: IOIBUF_X49_Y54_N1
SW_a5_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => SW_a5_a_ainput_o);

-- Location: IOIBUF_X54_Y54_N22
SW_a4_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => SW_a4_a_ainput_o);

-- Location: IOIBUF_X54_Y54_N15
SW_a6_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => SW_a6_a_ainput_o);

-- Location: LCCOMB_X38_Y35_N14
dut_aalu_inst_aMux31_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a1_combout = (!SW_a5_a_ainput_o & (!SW_a4_a_ainput_o & (SW_a7_a_ainput_o & SW_a6_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a5_a_ainput_o,
	datab => SW_a4_a_ainput_o,
	datac => SW_a7_a_ainput_o,
	datad => SW_a6_a_ainput_o,
	combout => dut_aalu_inst_aMux31_a1_combout);

-- Location: M9K_X33_Y37_N0
dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0 : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Phase_2:dut|memory_1:mem_inst|altsyncram:altsyncram_component|altsyncram_eko3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => CLOCK_50_ainputclkctrl_outclk,
	portadatain => dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => dut_amem_inst_aaltsyncram_component_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X34_Y34_N12
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: IOIBUF_X69_Y54_N1
SW_a9_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => SW_a9_a_ainput_o);

-- Location: LCCOMB_X41_Y36_N16
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout = (SW_a9_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout);

-- Location: LCCOMB_X43_Y36_N28
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout);

-- Location: FF_X34_Y34_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N26
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout = (SW_a9_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout);

-- Location: LCCOMB_X40_Y33_N10
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout);

-- Location: FF_X38_Y34_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(3));

-- Location: LCCOMB_X34_Y34_N14
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X41_Y36_N28
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout = (SW_a9_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout);

-- Location: LCCOMB_X37_Y36_N30
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout);

-- Location: FF_X34_Y34_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N4
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout = (SW_a9_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout);

-- Location: LCCOMB_X37_Y36_N28
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout);

-- Location: FF_X38_Y34_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(3));

-- Location: LCCOMB_X34_Y34_N2
dut_aregisters_inst_aread_unit_aMux60_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(3)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(3) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux60_a17_combout);

-- Location: LCCOMB_X34_Y34_N16
dut_aregisters_inst_aread_unit_aMux60_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux60_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux60_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a18_combout);

-- Location: LCCOMB_X43_Y36_N6
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout);

-- Location: FF_X42_Y37_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(3));

-- Location: LCCOMB_X40_Y33_N26
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout);

-- Location: FF_X42_Y37_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N14
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout = (dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout);

-- Location: FF_X41_Y37_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N0
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout);

-- Location: FF_X41_Y37_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y37_N22
dut_aregisters_inst_aread_unit_aMux60_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(3)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(3) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux60_a12_combout);

-- Location: LCCOMB_X42_Y37_N8
dut_aregisters_inst_aread_unit_aMux60_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux60_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux60_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a13_combout);

-- Location: LCCOMB_X41_Y36_N22
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout = (SW_a9_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout);

-- Location: LCCOMB_X36_Y36_N26
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout);

-- Location: FF_X36_Y37_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N24
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout = (SW_a9_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout);

-- Location: LCCOMB_X41_Y36_N18
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout);

-- Location: FF_X37_Y37_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N30
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout = (SW_a9_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout);

-- Location: LCCOMB_X37_Y36_N26
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout = (dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout);

-- Location: FF_X36_Y37_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N6
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout = (SW_a9_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a9_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(13),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(12),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(11),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout);

-- Location: LCCOMB_X41_Y36_N12
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout);

-- Location: FF_X37_Y37_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y37_N2
dut_aregisters_inst_aread_unit_aMux60_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(3))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux60_a14_combout);

-- Location: LCCOMB_X37_Y37_N0
dut_aregisters_inst_aread_unit_aMux60_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux60_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux60_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a15_combout);

-- Location: LCCOMB_X39_Y37_N26
dut_aregisters_inst_aread_unit_aMux60_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_aread_unit_aMux60_a13_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux60_a15_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux60_a13_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a15_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a16_combout);

-- Location: LCCOMB_X40_Y33_N8
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout);

-- Location: FF_X37_Y35_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N8
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout);

-- Location: FF_X36_Y35_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N14
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout = (dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout);

-- Location: FF_X36_Y35_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N10
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout);

-- Location: FF_X37_Y35_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y35_N6
dut_aregisters_inst_aread_unit_aMux60_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(3))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux60_a10_combout);

-- Location: LCCOMB_X36_Y35_N18
dut_aregisters_inst_aread_unit_aMux60_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux60_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(3))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(3)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux60_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a11_combout);

-- Location: LCCOMB_X39_Y37_N4
dut_aregisters_inst_aread_unit_aMux60_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux60_a16_combout & (dut_aregisters_inst_aread_unit_aMux60_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a16_combout & ((dut_aregisters_inst_aread_unit_aMux60_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux60_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_aread_unit_aMux60_a18_combout,
	datac => dut_aregisters_inst_aread_unit_aMux60_a16_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a11_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a19_combout);

-- Location: LCCOMB_X40_Y33_N0
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout);

-- Location: FF_X38_Y33_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(3));

-- Location: LCCOMB_X40_Y33_N24
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout);

-- Location: FF_X38_Y33_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(3));

-- Location: LCCOMB_X40_Y33_N22
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a20_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout);

-- Location: FF_X37_Y33_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y33_N12
dut_aregisters_inst_aread_unit_aMux60_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(3)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(3) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux60_a7_combout);

-- Location: LCCOMB_X37_Y33_N22
dut_aregisters_inst_aread_unit_aMux60_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux60_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux60_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a8_combout);

-- Location: LCCOMB_X37_Y34_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X37_Y36_N18
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout);

-- Location: FF_X37_Y34_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N6
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a8_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout);

-- Location: FF_X38_Y37_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(3));

-- Location: LCCOMB_X39_Y37_N0
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X37_Y36_N24
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout);

-- Location: FF_X39_Y37_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N4
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout);

-- Location: FF_X37_Y36_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N16
dut_aregisters_inst_aread_unit_aMux60_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(3)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(3) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux60_a0_combout);

-- Location: LCCOMB_X38_Y37_N16
dut_aregisters_inst_aread_unit_aMux60_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux60_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(3))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(3)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux60_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a1_combout);

-- Location: LCCOMB_X37_Y38_N10
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X41_Y36_N8
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout);

-- Location: FF_X37_Y38_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(3));

-- Location: LCCOMB_X36_Y38_N28
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X37_Y36_N0
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout = (dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout);

-- Location: FF_X36_Y38_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(3));

-- Location: LCCOMB_X36_Y38_N6
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X43_Y36_N0
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a0_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout);

-- Location: FF_X36_Y38_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y38_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a3_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a3_a_afeeder_combout = dut_aalu_inst_aMux28_a7_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux28_a7_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a3_a_afeeder_combout);

-- Location: LCCOMB_X37_Y36_N2
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout = (dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a2_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout);

-- Location: FF_X37_Y38_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a3_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y38_N20
dut_aregisters_inst_aread_unit_aMux60_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(3))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux60_a2_combout);

-- Location: LCCOMB_X37_Y38_N6
dut_aregisters_inst_aread_unit_aMux60_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux60_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(3))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(3)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux60_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_aregisters_inst_aread_unit_aMux60_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a3_combout);

-- Location: LCCOMB_X37_Y36_N12
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout = (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout);

-- Location: FF_X38_Y36_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N20
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a14_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout);

-- Location: FF_X38_Y38_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(3));

-- Location: LCCOMB_X41_Y36_N20
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout);

-- Location: FF_X38_Y36_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(3));

-- Location: LCCOMB_X37_Y36_N10
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & (dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout & !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datac => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a12_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout);

-- Location: FF_X38_Y38_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(3));

-- Location: LCCOMB_X38_Y38_N6
dut_aregisters_inst_aread_unit_aMux60_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(3))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux60_a4_combout);

-- Location: LCCOMB_X38_Y38_N12
dut_aregisters_inst_aread_unit_aMux60_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux60_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux60_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a5_combout);

-- Location: LCCOMB_X38_Y38_N0
dut_aregisters_inst_aread_unit_aMux60_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_aread_unit_aMux60_a3_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux60_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux60_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a6_combout);

-- Location: LCCOMB_X39_Y37_N16
dut_aregisters_inst_aread_unit_aMux60_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux60_a6_combout & (dut_aregisters_inst_aread_unit_aMux60_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a6_combout & ((dut_aregisters_inst_aread_unit_aMux60_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux60_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux60_a8_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_aread_unit_aMux60_a1_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a9_combout);

-- Location: LCCOMB_X39_Y37_N10
dut_aregisters_inst_aread_unit_aMux60_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux60_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & ((dut_aregisters_inst_aread_unit_aMux60_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- (dut_aregisters_inst_aread_unit_aMux60_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux60_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux60_a20_combout);

-- Location: IOIBUF_X56_Y54_N1
SW_a8_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => SW_a8_a_ainput_o);

-- Location: LCCOMB_X38_Y34_N22
dut_aalu_inst_aMux28_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a2_combout = (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & ((SW_a8_a_ainput_o & ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3)))) # (!SW_a8_a_ainput_o & (!dut_aregisters_inst_aread_unit_aMux60_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datab => SW_a8_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3),
	combout => dut_aalu_inst_aMux28_a2_combout);

-- Location: LCCOMB_X41_Y37_N4
dut_aalu_inst_aMux28_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a0_combout = (SW_a4_a_ainput_o & ((SW_a5_a_ainput_o) # (!SW_a6_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a5_a_ainput_o,
	datab => SW_a6_a_ainput_o,
	datad => SW_a4_a_ainput_o,
	combout => dut_aalu_inst_aMux28_a0_combout);

-- Location: LCCOMB_X38_Y34_N4
dut_aalu_inst_aResult_var_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a3_combout = dut_aregisters_inst_aread_unit_aMux28_a20_combout $ (((SW_a8_a_ainput_o & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3)))) # (!SW_a8_a_ainput_o & (dut_aregisters_inst_aread_unit_aMux60_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datab => SW_a8_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3),
	combout => dut_aalu_inst_aResult_var_a3_combout);

-- Location: LCCOMB_X39_Y37_N20
dut_aalu_mux_inst_aOutput_a3_a_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a3_a_a3_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux60_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a3_a_a3_combout);

-- Location: LCCOMB_X38_Y34_N26
dut_aalu_inst_aMux28_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a3_combout = (!SW_a5_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux28_a20_combout) # (dut_aalu_mux_inst_aOutput_a3_a_a3_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SW_a5_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a3_a_a3_combout,
	combout => dut_aalu_inst_aMux28_a3_combout);

-- Location: LCCOMB_X37_Y34_N18
dut_aalu_inst_aMux28_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a1_combout = (SW_a4_a_ainput_o & (SW_a6_a_ainput_o)) # (!SW_a4_a_ainput_o & ((SW_a5_a_ainput_o)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a6_a_ainput_o,
	datab => SW_a4_a_ainput_o,
	datad => SW_a5_a_ainput_o,
	combout => dut_aalu_inst_aMux28_a1_combout);

-- Location: LCCOMB_X39_Y37_N14
dut_aalu_inst_aAdd0_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a11_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux60_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => SW_a6_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(3),
	datad => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	combout => dut_aalu_inst_aAdd0_a11_combout);

-- Location: FF_X41_Y37_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(2));

-- Location: FF_X42_Y37_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(2));

-- Location: LCCOMB_X42_Y37_N4
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X42_Y37_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(2));

-- Location: FF_X41_Y37_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(2));

-- Location: LCCOMB_X41_Y37_N14
dut_aregisters_inst_aread_unit_aMux61_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(2))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux61_a10_combout);

-- Location: LCCOMB_X42_Y37_N28
dut_aregisters_inst_aread_unit_aMux61_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux61_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(2)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux61_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a11_combout);

-- Location: FF_X39_Y35_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(2));

-- Location: LCCOMB_X35_Y35_N14
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X35_Y35_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(2));

-- Location: FF_X39_Y35_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(2));

-- Location: LCCOMB_X35_Y35_N16
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X35_Y35_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(2));

-- Location: LCCOMB_X35_Y35_N12
dut_aregisters_inst_aread_unit_aMux61_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(2)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(2) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(2),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(2),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux61_a17_combout);

-- Location: LCCOMB_X35_Y35_N30
dut_aregisters_inst_aread_unit_aMux61_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux61_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux61_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a18_combout);

-- Location: FF_X36_Y37_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(2));

-- Location: FF_X37_Y37_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(2));

-- Location: FF_X36_Y37_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(2));

-- Location: FF_X37_Y37_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(2));

-- Location: LCCOMB_X37_Y37_N6
dut_aregisters_inst_aread_unit_aMux61_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(2))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux61_a14_combout);

-- Location: LCCOMB_X37_Y37_N20
dut_aregisters_inst_aread_unit_aMux61_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux61_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(2)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux61_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a15_combout);

-- Location: FF_X36_Y35_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(2));

-- Location: FF_X37_Y35_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(2));

-- Location: FF_X36_Y35_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(2));

-- Location: LCCOMB_X37_Y35_N2
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X37_Y35_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(2));

-- Location: LCCOMB_X37_Y35_N10
dut_aregisters_inst_aread_unit_aMux61_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(2))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(2),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(2),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux61_a12_combout);

-- Location: LCCOMB_X37_Y35_N16
dut_aregisters_inst_aread_unit_aMux61_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux61_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(2)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux61_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a13_combout);

-- Location: LCCOMB_X40_Y37_N24
dut_aregisters_inst_aread_unit_aMux61_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux61_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_aread_unit_aMux61_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_aread_unit_aMux61_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a16_combout);

-- Location: LCCOMB_X40_Y37_N14
dut_aregisters_inst_aread_unit_aMux61_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux61_a16_combout & ((dut_aregisters_inst_aread_unit_aMux61_a18_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a16_combout & (dut_aregisters_inst_aread_unit_aMux61_a11_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux61_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux61_a11_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux61_a18_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a19_combout);

-- Location: FF_X38_Y35_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(2));

-- Location: LCCOMB_X37_Y38_N12
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X37_Y38_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(2));

-- Location: LCCOMB_X36_Y38_N4
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X36_Y38_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(2));

-- Location: LCCOMB_X37_Y38_N16
dut_aregisters_inst_aread_unit_aMux61_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(2)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(2) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(2),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(2),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux61_a0_combout);

-- Location: LCCOMB_X37_Y38_N30
dut_aregisters_inst_aread_unit_aMux61_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux61_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux61_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a1_combout);

-- Location: FF_X38_Y33_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(2));

-- Location: LCCOMB_X40_Y33_N16
dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15) & dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(14),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(15),
	datad => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a18_combout,
	combout => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout);

-- Location: FF_X37_Y33_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(2));

-- Location: FF_X38_Y33_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(2));

-- Location: FF_X37_Y33_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(2));

-- Location: LCCOMB_X37_Y33_N24
dut_aregisters_inst_aread_unit_aMux61_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(2))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux61_a7_combout);

-- Location: LCCOMB_X37_Y33_N18
dut_aregisters_inst_aread_unit_aMux61_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux61_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(2)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux61_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a8_combout);

-- Location: FF_X40_Y37_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(2));

-- Location: FF_X39_Y37_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(2));

-- Location: LCCOMB_X40_Y37_N12
dut_aregisters_inst_aread_unit_aMux61_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)) # 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(2),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(2),
	combout => dut_aregisters_inst_aread_unit_aMux61_a2_combout);

-- Location: FF_X39_Y37_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(2));

-- Location: FF_X40_Y37_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(2));

-- Location: LCCOMB_X40_Y37_N26
dut_aregisters_inst_aread_unit_aMux61_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a3_combout = (dut_aregisters_inst_aread_unit_aMux61_a2_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(2)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(2) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux61_a2_combout,
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux61_a3_combout);

-- Location: FF_X38_Y36_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(2));

-- Location: FF_X38_Y38_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(2));

-- Location: FF_X38_Y36_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(2));

-- Location: FF_X38_Y38_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux29_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(2));

-- Location: LCCOMB_X38_Y38_N18
dut_aregisters_inst_aread_unit_aMux61_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(2)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(2) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux61_a4_combout);

-- Location: LCCOMB_X38_Y38_N4
dut_aregisters_inst_aread_unit_aMux61_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux61_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(2)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux61_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a5_combout);

-- Location: LCCOMB_X40_Y37_N20
dut_aregisters_inst_aread_unit_aMux61_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)) # ((dut_aregisters_inst_aread_unit_aMux61_a3_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux61_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux61_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a6_combout);

-- Location: LCCOMB_X40_Y37_N6
dut_aregisters_inst_aread_unit_aMux61_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux61_a6_combout & ((dut_aregisters_inst_aread_unit_aMux61_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a6_combout & (dut_aregisters_inst_aread_unit_aMux61_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux61_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux61_a1_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux61_a8_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a9_combout);

-- Location: LCCOMB_X40_Y37_N16
dut_aregisters_inst_aread_unit_aMux61_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux61_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & ((dut_aregisters_inst_aread_unit_aMux61_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- (dut_aregisters_inst_aread_unit_aMux61_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux61_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux61_a20_combout);

-- Location: LCCOMB_X39_Y35_N2
dut_aalu_inst_aMux29_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux29_a0_combout = (!dut_aregisters_inst_aread_unit_aMux29_a20_combout & ((SW_a8_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2))) # (!SW_a8_a_ainput_o & ((!dut_aregisters_inst_aread_unit_aMux61_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2),
	datab => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => dut_aalu_inst_aMux29_a0_combout);

-- Location: LCCOMB_X39_Y35_N16
dut_aalu_inst_aResult_var_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a2_combout = dut_aregisters_inst_aread_unit_aMux29_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux61_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2),
	datab => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => dut_aalu_inst_aResult_var_a2_combout);

-- Location: LCCOMB_X40_Y37_N18
dut_aalu_mux_inst_aOutput_a2_a_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a2_a_a2_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux61_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a2_a_a2_combout);

-- Location: LCCOMB_X39_Y35_N22
dut_aalu_inst_aMux29_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux29_a1_combout = (!SW_a5_a_ainput_o & ((dut_aalu_mux_inst_aOutput_a2_a_a2_combout) # (dut_aregisters_inst_aread_unit_aMux29_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a5_a_ainput_o,
	datab => dut_aalu_mux_inst_aOutput_a2_a_a2_combout,
	datac => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => dut_aalu_inst_aMux29_a1_combout);

-- Location: LCCOMB_X40_Y37_N2
dut_aalu_inst_aMux29_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux29_a2_combout = (!SW_a6_a_ainput_o & (dut_aregisters_inst_aread_unit_aMux29_a20_combout & dut_aalu_mux_inst_aOutput_a2_a_a2_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a6_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a2_a_a2_combout,
	combout => dut_aalu_inst_aMux29_a2_combout);

-- Location: LCCOMB_X40_Y37_N8
dut_aalu_inst_aAdd0_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a8_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux61_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a6_a_ainput_o,
	datab => SW_a8_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(2),
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => dut_aalu_inst_aAdd0_a8_combout);

-- Location: FF_X39_Y35_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(1));

-- Location: FF_X39_Y35_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(1));

-- Location: LCCOMB_X35_Y35_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X35_Y35_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(1));

-- Location: LCCOMB_X35_Y35_N28
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X35_Y35_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(1));

-- Location: LCCOMB_X35_Y35_N2
dut_aregisters_inst_aread_unit_aMux62_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(1),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(1),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux62_a17_combout);

-- Location: LCCOMB_X39_Y35_N4
dut_aregisters_inst_aread_unit_aMux62_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux62_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- (((dut_aregisters_inst_aread_unit_aMux62_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a18_combout);

-- Location: FF_X37_Y35_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(1));

-- Location: FF_X36_Y35_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(1));

-- Location: FF_X36_Y35_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(1));

-- Location: FF_X37_Y35_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(1));

-- Location: LCCOMB_X37_Y35_N22
dut_aregisters_inst_aread_unit_aMux62_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(1))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux62_a10_combout);

-- Location: LCCOMB_X36_Y35_N2
dut_aregisters_inst_aread_unit_aMux62_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux62_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux62_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a11_combout);

-- Location: FF_X36_Y37_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(1));

-- Location: FF_X37_Y37_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(1));

-- Location: FF_X36_Y37_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(1));

-- Location: FF_X37_Y37_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(1));

-- Location: LCCOMB_X37_Y37_N18
dut_aregisters_inst_aread_unit_aMux62_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(1))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux62_a14_combout);

-- Location: LCCOMB_X37_Y37_N16
dut_aregisters_inst_aread_unit_aMux62_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux62_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(1)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(1))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux62_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a15_combout);

-- Location: LCCOMB_X40_Y34_N2
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X40_Y34_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(1));

-- Location: LCCOMB_X40_Y34_N4
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X40_Y34_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(1));

-- Location: FF_X41_Y37_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(1));

-- Location: FF_X41_Y37_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(1));

-- Location: LCCOMB_X41_Y37_N6
dut_aregisters_inst_aread_unit_aMux62_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(1)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(1) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux62_a12_combout);

-- Location: LCCOMB_X40_Y34_N18
dut_aregisters_inst_aread_unit_aMux62_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux62_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux62_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a13_combout);

-- Location: LCCOMB_X40_Y34_N0
dut_aregisters_inst_aread_unit_aMux62_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux62_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_aread_unit_aMux62_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux62_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux62_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a16_combout);

-- Location: LCCOMB_X40_Y34_N14
dut_aregisters_inst_aread_unit_aMux62_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux62_a16_combout & (dut_aregisters_inst_aread_unit_aMux62_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a16_combout & ((dut_aregisters_inst_aread_unit_aMux62_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux62_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux62_a18_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_aread_unit_aMux62_a11_combout,
	datad => dut_aregisters_inst_aread_unit_aMux62_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a19_combout);

-- Location: FF_X40_Y37_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(1));

-- Location: FF_X39_Y37_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(1));

-- Location: FF_X40_Y37_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(1));

-- Location: LCCOMB_X40_Y37_N28
dut_aregisters_inst_aread_unit_aMux62_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(1))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux62_a0_combout);

-- Location: LCCOMB_X39_Y37_N24
dut_aregisters_inst_aread_unit_aMux62_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux62_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux62_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a1_combout);

-- Location: FF_X38_Y33_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(1));

-- Location: FF_X37_Y33_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(1));

-- Location: LCCOMB_X38_Y33_N30
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X38_Y33_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(1));

-- Location: LCCOMB_X37_Y33_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X37_Y33_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(1));

-- Location: LCCOMB_X37_Y33_N6
dut_aregisters_inst_aread_unit_aMux62_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(1)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(1) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux62_a7_combout);

-- Location: LCCOMB_X37_Y33_N2
dut_aregisters_inst_aread_unit_aMux62_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux62_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(1)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(1))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux62_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a8_combout);

-- Location: LCCOMB_X39_Y36_N20
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X39_Y36_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(1));

-- Location: LCCOMB_X39_Y36_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X39_Y36_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(1));

-- Location: LCCOMB_X38_Y35_N22
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X38_Y35_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(1));

-- Location: LCCOMB_X38_Y35_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a1_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a1_a_afeeder_combout = dut_aalu_inst_aMux30_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux30_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a1_a_afeeder_combout);

-- Location: FF_X38_Y35_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a1_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(1));

-- Location: LCCOMB_X38_Y35_N0
dut_aregisters_inst_aread_unit_aMux62_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(1),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(1),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux62_a2_combout);

-- Location: LCCOMB_X39_Y36_N22
dut_aregisters_inst_aread_unit_aMux62_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux62_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(1)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(1))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux62_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a3_combout);

-- Location: FF_X38_Y36_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(1));

-- Location: FF_X38_Y38_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(1));

-- Location: FF_X38_Y36_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(1));

-- Location: FF_X38_Y38_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(1));

-- Location: LCCOMB_X38_Y38_N10
dut_aregisters_inst_aread_unit_aMux62_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(1))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux62_a4_combout);

-- Location: LCCOMB_X38_Y38_N20
dut_aregisters_inst_aread_unit_aMux62_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux62_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(1)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(1))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux62_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a5_combout);

-- Location: LCCOMB_X39_Y36_N0
dut_aregisters_inst_aread_unit_aMux62_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_aread_unit_aMux62_a3_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux62_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux62_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux62_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a6_combout);

-- Location: LCCOMB_X39_Y36_N6
dut_aregisters_inst_aread_unit_aMux62_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux62_a6_combout & ((dut_aregisters_inst_aread_unit_aMux62_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a6_combout & (dut_aregisters_inst_aread_unit_aMux62_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux62_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_aread_unit_aMux62_a1_combout,
	datac => dut_aregisters_inst_aread_unit_aMux62_a8_combout,
	datad => dut_aregisters_inst_aread_unit_aMux62_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a9_combout);

-- Location: LCCOMB_X40_Y34_N24
dut_aregisters_inst_aread_unit_aMux62_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux62_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & ((dut_aregisters_inst_aread_unit_aMux62_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- (dut_aregisters_inst_aread_unit_aMux62_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux62_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux62_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux62_a20_combout);

-- Location: LCCOMB_X39_Y35_N24
dut_aalu_inst_aMux30_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux30_a0_combout = (!dut_aregisters_inst_aread_unit_aMux30_a20_combout & ((SW_a8_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1))) # (!SW_a8_a_ainput_o & ((!dut_aregisters_inst_aread_unit_aMux62_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1),
	datad => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	combout => dut_aalu_inst_aMux30_a0_combout);

-- Location: LCCOMB_X40_Y34_N20
dut_aalu_mux_inst_aOutput_a1_a_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a1_a_a1_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux62_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1),
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a1_a_a1_combout);

-- Location: LCCOMB_X40_Y34_N10
dut_aalu_inst_aMux30_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux30_a1_combout = (!SW_a5_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux30_a20_combout) # (dut_aalu_mux_inst_aOutput_a1_a_a1_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SW_a5_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a1_a_a1_combout,
	combout => dut_aalu_inst_aMux30_a1_combout);

-- Location: LCCOMB_X40_Y34_N26
dut_aalu_inst_aResult_var_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a1_combout = dut_aregisters_inst_aread_unit_aMux30_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux62_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1),
	datac => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	combout => dut_aalu_inst_aResult_var_a1_combout);

-- Location: LCCOMB_X40_Y34_N6
dut_aalu_inst_aMux30_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux30_a2_combout = (!SW_a6_a_ainput_o & (dut_aregisters_inst_aread_unit_aMux30_a20_combout & dut_aalu_mux_inst_aOutput_a1_a_a1_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SW_a6_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a1_a_a1_combout,
	combout => dut_aalu_inst_aMux30_a2_combout);

-- Location: LCCOMB_X40_Y34_N28
dut_aalu_inst_aAdd0_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a5_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux62_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(1),
	datac => SW_a6_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	combout => dut_aalu_inst_aAdd0_a5_combout);

-- Location: LCCOMB_X35_Y35_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X35_Y35_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(0));

-- Location: LCCOMB_X35_Y35_N22
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X35_Y35_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(0));

-- Location: FF_X39_Y35_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(0));

-- Location: LCCOMB_X39_Y35_N28
dut_aregisters_inst_aread_unit_aMux31_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(0)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux31_a17_combout);

-- Location: LCCOMB_X38_Y35_N10
dut_aregisters_inst_aread_unit_aMux31_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux31_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux31_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a18_combout);

-- Location: LCCOMB_X41_Y35_N2
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X41_Y35_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(0));

-- Location: FF_X41_Y37_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(0));

-- Location: FF_X41_Y37_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(0));

-- Location: LCCOMB_X42_Y37_N20
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X42_Y37_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(0));

-- Location: LCCOMB_X42_Y37_N2
dut_aregisters_inst_aread_unit_aMux31_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(0)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux31_a10_combout);

-- Location: LCCOMB_X41_Y37_N8
dut_aregisters_inst_aread_unit_aMux31_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux31_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux31_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a11_combout);

-- Location: FF_X40_Y35_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(0));

-- Location: FF_X36_Y37_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(0));

-- Location: FF_X37_Y37_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(0));

-- Location: FF_X36_Y37_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(0));

-- Location: LCCOMB_X36_Y37_N14
dut_aregisters_inst_aread_unit_aMux31_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(0)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux31_a14_combout);

-- Location: LCCOMB_X36_Y37_N20
dut_aregisters_inst_aread_unit_aMux31_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux31_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux31_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a15_combout);

-- Location: FF_X40_Y35_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(0));

-- Location: FF_X36_Y35_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(0));

-- Location: FF_X37_Y35_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(0));

-- Location: FF_X36_Y35_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(0));

-- Location: LCCOMB_X36_Y35_N14
dut_aregisters_inst_aread_unit_aMux31_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(0)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(0) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux31_a12_combout);

-- Location: LCCOMB_X36_Y35_N20
dut_aregisters_inst_aread_unit_aMux31_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux31_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux31_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a13_combout);

-- Location: LCCOMB_X36_Y35_N16
dut_aregisters_inst_aread_unit_aMux31_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux31_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_aread_unit_aMux31_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_aread_unit_aMux31_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux31_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a16_combout);

-- Location: LCCOMB_X40_Y35_N16
dut_aregisters_inst_aread_unit_aMux31_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux31_a16_combout & (dut_aregisters_inst_aread_unit_aMux31_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a16_combout & ((dut_aregisters_inst_aread_unit_aMux31_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux31_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_aread_unit_aMux31_a18_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a11_combout,
	datad => dut_aregisters_inst_aread_unit_aMux31_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a19_combout);

-- Location: LCCOMB_X41_Y35_N12
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X41_Y35_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(0));

-- Location: FF_X38_Y35_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(0));

-- Location: FF_X41_Y38_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(0));

-- Location: LCCOMB_X39_Y38_N0
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X39_Y38_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(0));

-- Location: LCCOMB_X39_Y38_N6
dut_aregisters_inst_aread_unit_aMux31_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(0)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux31_a0_combout);

-- Location: LCCOMB_X38_Y35_N4
dut_aregisters_inst_aread_unit_aMux31_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux31_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux31_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a1_combout);

-- Location: FF_X37_Y33_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(0));

-- Location: FF_X38_Y33_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(0));

-- Location: FF_X37_Y33_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(0));

-- Location: FF_X38_Y33_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(0));

-- Location: LCCOMB_X38_Y33_N10
dut_aregisters_inst_aread_unit_aMux31_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(0)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux31_a7_combout);

-- Location: LCCOMB_X38_Y33_N8
dut_aregisters_inst_aread_unit_aMux31_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux31_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux31_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a8_combout);

-- Location: FF_X40_Y37_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(0));

-- Location: FF_X39_Y37_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(0));

-- Location: FF_X40_Y37_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(0));

-- Location: FF_X39_Y37_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(0));

-- Location: LCCOMB_X39_Y37_N2
dut_aregisters_inst_aread_unit_aMux31_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(0)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux31_a2_combout);

-- Location: LCCOMB_X39_Y37_N12
dut_aregisters_inst_aread_unit_aMux31_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux31_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux31_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a3_combout);

-- Location: LCCOMB_X39_Y38_N20
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a0_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a0_a_afeeder_combout = dut_aalu_inst_aMux31_a6_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a0_a_afeeder_combout);

-- Location: FF_X39_Y38_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a0_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(0));

-- Location: FF_X38_Y36_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(0));

-- Location: FF_X38_Y38_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(0));

-- Location: FF_X38_Y36_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(0));

-- Location: LCCOMB_X38_Y36_N6
dut_aregisters_inst_aread_unit_aMux31_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(0)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(0) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux31_a4_combout);

-- Location: LCCOMB_X38_Y36_N12
dut_aregisters_inst_aread_unit_aMux31_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux31_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux31_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux31_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a5_combout);

-- Location: LCCOMB_X38_Y35_N2
dut_aregisters_inst_aread_unit_aMux31_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_aread_unit_aMux31_a3_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux31_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_aread_unit_aMux31_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux31_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a6_combout);

-- Location: LCCOMB_X38_Y35_N16
dut_aregisters_inst_aread_unit_aMux31_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux31_a6_combout & ((dut_aregisters_inst_aread_unit_aMux31_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a6_combout & (dut_aregisters_inst_aread_unit_aMux31_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux31_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_aread_unit_aMux31_a1_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a8_combout,
	datad => dut_aregisters_inst_aread_unit_aMux31_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a9_combout);

-- Location: LCCOMB_X40_Y35_N30
dut_aregisters_inst_aread_unit_aMux31_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux31_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & ((dut_aregisters_inst_aread_unit_aMux31_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- (dut_aregisters_inst_aread_unit_aMux31_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datab => dut_aregisters_inst_aread_unit_aMux31_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux31_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux31_a20_combout);

-- Location: LCCOMB_X41_Y35_N18
dut_aalu_inst_aMux31_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a0_combout = (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & ((SW_a8_a_ainput_o & ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0)))) # (!SW_a8_a_ainput_o & (!dut_aregisters_inst_aread_unit_aMux63_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0),
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	combout => dut_aalu_inst_aMux31_a0_combout);

-- Location: LCCOMB_X40_Y35_N28
dut_aalu_inst_aResult_var_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a0_combout = dut_aregisters_inst_aread_unit_aMux31_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux63_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0),
	datab => SW_a8_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	combout => dut_aalu_inst_aResult_var_a0_combout);

-- Location: LCCOMB_X40_Y35_N6
dut_aalu_mux_inst_aOutput_a0_a_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a0_a_a0_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux63_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a0_a_a0_combout);

-- Location: LCCOMB_X40_Y35_N22
dut_aalu_inst_aMux31_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a2_combout = (!SW_a5_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout) # (dut_aalu_mux_inst_aOutput_a0_a_a0_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datab => SW_a5_a_ainput_o,
	datad => dut_aalu_mux_inst_aOutput_a0_a_a0_combout,
	combout => dut_aalu_inst_aMux31_a2_combout);

-- Location: LCCOMB_X39_Y34_N12
dut_aalu_inst_aAdd0_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a2_cout = CARRY(SW_a6_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a6_a_ainput_o,
	datad => VCC,
	cout => dut_aalu_inst_aAdd0_a2_cout);

-- Location: LCCOMB_X39_Y34_N14
dut_aalu_inst_aAdd0_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a3_combout = (dut_aalu_inst_aAdd0_a0_combout & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout & (dut_aalu_inst_aAdd0_a2_cout & VCC)) # (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & (!dut_aalu_inst_aAdd0_a2_cout)))) # 
-- (!dut_aalu_inst_aAdd0_a0_combout & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout & (!dut_aalu_inst_aAdd0_a2_cout)) # (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & ((dut_aalu_inst_aAdd0_a2_cout) # (GND)))))
-- dut_aalu_inst_aAdd0_a4 = CARRY((dut_aalu_inst_aAdd0_a0_combout & (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & !dut_aalu_inst_aAdd0_a2_cout)) # (!dut_aalu_inst_aAdd0_a0_combout & ((!dut_aalu_inst_aAdd0_a2_cout) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aAdd0_a0_combout,
	datab => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a2_cout,
	combout => dut_aalu_inst_aAdd0_a3_combout,
	cout => dut_aalu_inst_aAdd0_a4);

-- Location: LCCOMB_X40_Y35_N2
dut_aalu_inst_aMux31_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a3_combout = (!SW_a6_a_ainput_o & (dut_aregisters_inst_aread_unit_aMux31_a20_combout & dut_aalu_mux_inst_aOutput_a0_a_a0_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SW_a6_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a0_a_a0_combout,
	combout => dut_aalu_inst_aMux31_a3_combout);

-- Location: LCCOMB_X40_Y35_N12
dut_aalu_inst_aMux31_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a4_combout = (dut_aalu_inst_aMux28_a1_combout & (!SW_a4_a_ainput_o & (dut_aalu_inst_aAdd0_a3_combout))) # (!dut_aalu_inst_aMux28_a1_combout & ((SW_a4_a_ainput_o) # ((dut_aalu_inst_aMux31_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a1_combout,
	datab => SW_a4_a_ainput_o,
	datac => dut_aalu_inst_aAdd0_a3_combout,
	datad => dut_aalu_inst_aMux31_a3_combout,
	combout => dut_aalu_inst_aMux31_a4_combout);

-- Location: LCCOMB_X40_Y35_N26
dut_aalu_inst_aMux31_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a5_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux31_a4_combout & ((dut_aalu_inst_aMux31_a2_combout))) # (!dut_aalu_inst_aMux31_a4_combout & (dut_aalu_inst_aResult_var_a0_combout)))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux31_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a0_combout,
	datab => dut_aalu_inst_aResult_var_a0_combout,
	datac => dut_aalu_inst_aMux31_a2_combout,
	datad => dut_aalu_inst_aMux31_a4_combout,
	combout => dut_aalu_inst_aMux31_a5_combout);

-- Location: LCCOMB_X39_Y35_N10
dut_aalu_inst_aMux31_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux31_a6_combout = (dut_aalu_inst_aMux31_a1_combout & ((dut_aalu_inst_aMux31_a0_combout) # ((!SW_a7_a_ainput_o & dut_aalu_inst_aMux31_a5_combout)))) # (!dut_aalu_inst_aMux31_a1_combout & (!SW_a7_a_ainput_o & 
-- ((dut_aalu_inst_aMux31_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux31_a1_combout,
	datab => SW_a7_a_ainput_o,
	datac => dut_aalu_inst_aMux31_a0_combout,
	datad => dut_aalu_inst_aMux31_a5_combout,
	combout => dut_aalu_inst_aMux31_a6_combout);

-- Location: FF_X39_Y35_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux31_a6_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(0));

-- Location: LCCOMB_X35_Y35_N18
dut_aregisters_inst_aread_unit_aMux63_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(0)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(0) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux63_a17_combout);

-- Location: LCCOMB_X35_Y35_N20
dut_aregisters_inst_aread_unit_aMux63_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux63_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux63_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a18_combout);

-- Location: LCCOMB_X37_Y37_N8
dut_aregisters_inst_aread_unit_aMux63_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(0))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux63_a14_combout);

-- Location: LCCOMB_X40_Y35_N8
dut_aregisters_inst_aread_unit_aMux63_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux63_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux63_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a15_combout);

-- Location: LCCOMB_X37_Y35_N20
dut_aregisters_inst_aread_unit_aMux63_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(0)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(0) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux63_a12_combout);

-- Location: LCCOMB_X40_Y35_N20
dut_aregisters_inst_aread_unit_aMux63_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux63_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux63_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a13_combout);

-- Location: LCCOMB_X40_Y35_N14
dut_aregisters_inst_aread_unit_aMux63_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux63_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_aread_unit_aMux63_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_aread_unit_aMux63_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux63_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a16_combout);

-- Location: LCCOMB_X41_Y37_N2
dut_aregisters_inst_aread_unit_aMux63_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(0))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux63_a10_combout);

-- Location: LCCOMB_X41_Y35_N16
dut_aregisters_inst_aread_unit_aMux63_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux63_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux63_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datad => dut_aregisters_inst_aread_unit_aMux63_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a11_combout);

-- Location: LCCOMB_X40_Y35_N4
dut_aregisters_inst_aread_unit_aMux63_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux63_a16_combout & (dut_aregisters_inst_aread_unit_aMux63_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a16_combout & ((dut_aregisters_inst_aread_unit_aMux63_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux63_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux63_a18_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux63_a16_combout,
	datad => dut_aregisters_inst_aread_unit_aMux63_a11_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a19_combout);

-- Location: LCCOMB_X37_Y33_N20
dut_aregisters_inst_aread_unit_aMux63_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(0))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux63_a7_combout);

-- Location: LCCOMB_X37_Y33_N30
dut_aregisters_inst_aread_unit_aMux63_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux63_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux63_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a8_combout);

-- Location: LCCOMB_X41_Y38_N26
dut_aregisters_inst_aread_unit_aMux63_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(0))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux63_a0_combout);

-- Location: LCCOMB_X41_Y35_N10
dut_aregisters_inst_aread_unit_aMux63_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux63_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(0))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(0)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux63_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datad => dut_aregisters_inst_aread_unit_aMux63_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a1_combout);

-- Location: LCCOMB_X40_Y37_N0
dut_aregisters_inst_aread_unit_aMux63_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(0)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(0) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux63_a2_combout);

-- Location: LCCOMB_X40_Y37_N10
dut_aregisters_inst_aread_unit_aMux63_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux63_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux63_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(0),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a3_combout);

-- Location: LCCOMB_X38_Y38_N28
dut_aregisters_inst_aread_unit_aMux63_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(0)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(0) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(0),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(0),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux63_a4_combout);

-- Location: LCCOMB_X39_Y38_N28
dut_aregisters_inst_aread_unit_aMux63_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux63_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(0)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(0))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux63_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(0),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(0),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_aregisters_inst_aread_unit_aMux63_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a5_combout);

-- Location: LCCOMB_X40_Y35_N24
dut_aregisters_inst_aread_unit_aMux63_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux63_a3_combout) # ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & dut_aregisters_inst_aread_unit_aMux63_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_aread_unit_aMux63_a3_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_aregisters_inst_aread_unit_aMux63_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a6_combout);

-- Location: LCCOMB_X40_Y35_N18
dut_aregisters_inst_aread_unit_aMux63_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux63_a6_combout & (dut_aregisters_inst_aread_unit_aMux63_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a6_combout & ((dut_aregisters_inst_aread_unit_aMux63_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux63_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux63_a8_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux63_a1_combout,
	datad => dut_aregisters_inst_aread_unit_aMux63_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a9_combout);

-- Location: LCCOMB_X40_Y35_N10
dut_aregisters_inst_aread_unit_aMux63_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux63_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & ((dut_aregisters_inst_aread_unit_aMux63_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- (dut_aregisters_inst_aread_unit_aMux63_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux63_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux63_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux63_a20_combout);

-- Location: LCCOMB_X40_Y35_N0
dut_aalu_inst_aAdd0_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a0_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux63_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => SW_a6_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(0),
	datad => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	combout => dut_aalu_inst_aAdd0_a0_combout);

-- Location: LCCOMB_X39_Y34_N16
dut_aalu_inst_aAdd0_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a6_combout = ((dut_aregisters_inst_aread_unit_aMux30_a20_combout $ (dut_aalu_inst_aAdd0_a5_combout $ (!dut_aalu_inst_aAdd0_a4)))) # (GND)
-- dut_aalu_inst_aAdd0_a7 = CARRY((dut_aregisters_inst_aread_unit_aMux30_a20_combout & ((dut_aalu_inst_aAdd0_a5_combout) # (!dut_aalu_inst_aAdd0_a4))) # (!dut_aregisters_inst_aread_unit_aMux30_a20_combout & (dut_aalu_inst_aAdd0_a5_combout & 
-- !dut_aalu_inst_aAdd0_a4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datab => dut_aalu_inst_aAdd0_a5_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a4,
	combout => dut_aalu_inst_aAdd0_a6_combout,
	cout => dut_aalu_inst_aAdd0_a7);

-- Location: LCCOMB_X39_Y35_N18
dut_aalu_inst_aMux30_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux30_a3_combout = (SW_a4_a_ainput_o & (((!dut_aalu_inst_aMux28_a1_combout)))) # (!SW_a4_a_ainput_o & ((dut_aalu_inst_aMux28_a1_combout & ((dut_aalu_inst_aAdd0_a6_combout))) # (!dut_aalu_inst_aMux28_a1_combout & 
-- (dut_aalu_inst_aMux30_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a4_a_ainput_o,
	datab => dut_aalu_inst_aMux30_a2_combout,
	datac => dut_aalu_inst_aMux28_a1_combout,
	datad => dut_aalu_inst_aAdd0_a6_combout,
	combout => dut_aalu_inst_aMux30_a3_combout);

-- Location: LCCOMB_X39_Y35_N12
dut_aalu_inst_aMux30_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux30_a4_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux30_a3_combout & (dut_aalu_inst_aMux30_a1_combout)) # (!dut_aalu_inst_aMux30_a3_combout & ((dut_aalu_inst_aResult_var_a1_combout))))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux30_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a0_combout,
	datab => dut_aalu_inst_aMux30_a1_combout,
	datac => dut_aalu_inst_aResult_var_a1_combout,
	datad => dut_aalu_inst_aMux30_a3_combout,
	combout => dut_aalu_inst_aMux30_a4_combout);

-- Location: LCCOMB_X39_Y35_N30
dut_aalu_inst_aMux30_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux30_a5_combout = (dut_aalu_inst_aMux31_a1_combout & ((dut_aalu_inst_aMux30_a0_combout) # ((!SW_a7_a_ainput_o & dut_aalu_inst_aMux30_a4_combout)))) # (!dut_aalu_inst_aMux31_a1_combout & (((!SW_a7_a_ainput_o & 
-- dut_aalu_inst_aMux30_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux31_a1_combout,
	datab => dut_aalu_inst_aMux30_a0_combout,
	datac => SW_a7_a_ainput_o,
	datad => dut_aalu_inst_aMux30_a4_combout,
	combout => dut_aalu_inst_aMux30_a5_combout);

-- Location: FF_X39_Y37_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux30_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(1));

-- Location: LCCOMB_X39_Y37_N30
dut_aregisters_inst_aread_unit_aMux30_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux30_a0_combout);

-- Location: LCCOMB_X40_Y37_N22
dut_aregisters_inst_aread_unit_aMux30_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux30_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(1)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(1))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux30_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux30_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a1_combout);

-- Location: LCCOMB_X38_Y36_N10
dut_aregisters_inst_aread_unit_aMux30_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux30_a4_combout);

-- Location: LCCOMB_X38_Y36_N16
dut_aregisters_inst_aread_unit_aMux30_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux30_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux30_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux30_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a5_combout);

-- Location: LCCOMB_X38_Y35_N24
dut_aregisters_inst_aread_unit_aMux30_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(1)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(1) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(1),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(1),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux30_a2_combout);

-- Location: LCCOMB_X39_Y36_N28
dut_aregisters_inst_aread_unit_aMux30_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux30_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux30_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(1),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(1),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux30_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a3_combout);

-- Location: LCCOMB_X39_Y36_N14
dut_aregisters_inst_aread_unit_aMux30_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux30_a3_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_aread_unit_aMux30_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_aread_unit_aMux30_a5_combout,
	datad => dut_aregisters_inst_aread_unit_aMux30_a3_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a6_combout);

-- Location: LCCOMB_X38_Y33_N20
dut_aregisters_inst_aread_unit_aMux30_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux30_a7_combout);

-- Location: LCCOMB_X38_Y33_N12
dut_aregisters_inst_aread_unit_aMux30_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux30_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux30_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux30_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a8_combout);

-- Location: LCCOMB_X39_Y36_N4
dut_aregisters_inst_aread_unit_aMux30_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux30_a6_combout & ((dut_aregisters_inst_aread_unit_aMux30_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a6_combout & (dut_aregisters_inst_aread_unit_aMux30_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux30_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux30_a1_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_aread_unit_aMux30_a6_combout,
	datad => dut_aregisters_inst_aread_unit_aMux30_a8_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a9_combout);

-- Location: LCCOMB_X36_Y35_N4
dut_aregisters_inst_aread_unit_aMux30_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux30_a10_combout);

-- Location: LCCOMB_X37_Y35_N0
dut_aregisters_inst_aread_unit_aMux30_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux30_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_aread_unit_aMux30_a10_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_aread_unit_aMux30_a10_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(1),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(1),
	combout => dut_aregisters_inst_aread_unit_aMux30_a11_combout);

-- Location: LCCOMB_X35_Y35_N0
dut_aregisters_inst_aread_unit_aMux30_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(1)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(1) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(1),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(1),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux30_a17_combout);

-- Location: LCCOMB_X39_Y36_N8
dut_aregisters_inst_aread_unit_aMux30_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux30_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(1)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(1))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux30_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux30_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a18_combout);

-- Location: LCCOMB_X36_Y37_N22
dut_aregisters_inst_aread_unit_aMux30_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux30_a14_combout);

-- Location: LCCOMB_X36_Y37_N4
dut_aregisters_inst_aread_unit_aMux30_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux30_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux30_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux30_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a15_combout);

-- Location: LCCOMB_X41_Y37_N16
dut_aregisters_inst_aread_unit_aMux30_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(1)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(1),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(1),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux30_a12_combout);

-- Location: LCCOMB_X40_Y34_N16
dut_aregisters_inst_aread_unit_aMux30_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux30_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(1))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(1)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux30_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(1),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(1),
	datad => dut_aregisters_inst_aread_unit_aMux30_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a13_combout);

-- Location: LCCOMB_X39_Y36_N10
dut_aregisters_inst_aread_unit_aMux30_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)) # (dut_aregisters_inst_aread_unit_aMux30_a13_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_aread_unit_aMux30_a15_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux30_a15_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux30_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a16_combout);

-- Location: LCCOMB_X39_Y36_N2
dut_aregisters_inst_aread_unit_aMux30_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux30_a16_combout & ((dut_aregisters_inst_aread_unit_aMux30_a18_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a16_combout & (dut_aregisters_inst_aread_unit_aMux30_a11_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux30_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux30_a11_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_aread_unit_aMux30_a18_combout,
	datad => dut_aregisters_inst_aread_unit_aMux30_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a19_combout);

-- Location: LCCOMB_X39_Y36_N24
dut_aregisters_inst_aread_unit_aMux30_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux30_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & (dut_aregisters_inst_aread_unit_aMux30_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- ((dut_aregisters_inst_aread_unit_aMux30_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux30_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux30_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux30_a20_combout);

-- Location: LCCOMB_X39_Y34_N18
dut_aalu_inst_aAdd0_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a9_combout = (dut_aregisters_inst_aread_unit_aMux29_a20_combout & ((dut_aalu_inst_aAdd0_a8_combout & (dut_aalu_inst_aAdd0_a7 & VCC)) # (!dut_aalu_inst_aAdd0_a8_combout & (!dut_aalu_inst_aAdd0_a7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a20_combout & ((dut_aalu_inst_aAdd0_a8_combout & (!dut_aalu_inst_aAdd0_a7)) # (!dut_aalu_inst_aAdd0_a8_combout & ((dut_aalu_inst_aAdd0_a7) # (GND)))))
-- dut_aalu_inst_aAdd0_a10 = CARRY((dut_aregisters_inst_aread_unit_aMux29_a20_combout & (!dut_aalu_inst_aAdd0_a8_combout & !dut_aalu_inst_aAdd0_a7)) # (!dut_aregisters_inst_aread_unit_aMux29_a20_combout & ((!dut_aalu_inst_aAdd0_a7) # 
-- (!dut_aalu_inst_aAdd0_a8_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	datab => dut_aalu_inst_aAdd0_a8_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a7,
	combout => dut_aalu_inst_aAdd0_a9_combout,
	cout => dut_aalu_inst_aAdd0_a10);

-- Location: LCCOMB_X39_Y35_N20
dut_aalu_inst_aMux29_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux29_a3_combout = (SW_a4_a_ainput_o & (!dut_aalu_inst_aMux28_a1_combout)) # (!SW_a4_a_ainput_o & ((dut_aalu_inst_aMux28_a1_combout & ((dut_aalu_inst_aAdd0_a9_combout))) # (!dut_aalu_inst_aMux28_a1_combout & 
-- (dut_aalu_inst_aMux29_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a4_a_ainput_o,
	datab => dut_aalu_inst_aMux28_a1_combout,
	datac => dut_aalu_inst_aMux29_a2_combout,
	datad => dut_aalu_inst_aAdd0_a9_combout,
	combout => dut_aalu_inst_aMux29_a3_combout);

-- Location: LCCOMB_X39_Y35_N6
dut_aalu_inst_aMux29_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux29_a4_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux29_a3_combout & ((dut_aalu_inst_aMux29_a1_combout))) # (!dut_aalu_inst_aMux29_a3_combout & (dut_aalu_inst_aResult_var_a2_combout)))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux29_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a0_combout,
	datab => dut_aalu_inst_aResult_var_a2_combout,
	datac => dut_aalu_inst_aMux29_a1_combout,
	datad => dut_aalu_inst_aMux29_a3_combout,
	combout => dut_aalu_inst_aMux29_a4_combout);

-- Location: LCCOMB_X39_Y35_N14
dut_aalu_inst_aMux29_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux29_a5_combout = (dut_aalu_inst_aMux31_a1_combout & ((dut_aalu_inst_aMux29_a0_combout) # ((!SW_a7_a_ainput_o & dut_aalu_inst_aMux29_a4_combout)))) # (!dut_aalu_inst_aMux31_a1_combout & (((!SW_a7_a_ainput_o & 
-- dut_aalu_inst_aMux29_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux31_a1_combout,
	datab => dut_aalu_inst_aMux29_a0_combout,
	datac => SW_a7_a_ainput_o,
	datad => dut_aalu_inst_aMux29_a4_combout,
	combout => dut_aalu_inst_aMux29_a5_combout);

-- Location: LCCOMB_X37_Y38_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a2_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a2_a_afeeder_combout = dut_aalu_inst_aMux29_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux29_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a2_a_afeeder_combout);

-- Location: FF_X37_Y38_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a2_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(2));

-- Location: LCCOMB_X36_Y38_N10
dut_aregisters_inst_aread_unit_aMux29_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(2)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(2),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(2),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux29_a0_combout);

-- Location: LCCOMB_X38_Y35_N18
dut_aregisters_inst_aread_unit_aMux29_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux29_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux29_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a1_combout);

-- Location: LCCOMB_X38_Y33_N0
dut_aregisters_inst_aread_unit_aMux29_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(2)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux29_a7_combout);

-- Location: LCCOMB_X38_Y33_N22
dut_aregisters_inst_aread_unit_aMux29_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux29_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux29_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a8_combout);

-- Location: LCCOMB_X38_Y36_N2
dut_aregisters_inst_aread_unit_aMux29_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(2)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(2) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux29_a4_combout);

-- Location: LCCOMB_X38_Y36_N0
dut_aregisters_inst_aread_unit_aMux29_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux29_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux29_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a5_combout);

-- Location: LCCOMB_X39_Y37_N6
dut_aregisters_inst_aread_unit_aMux29_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(2)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(2) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux29_a2_combout);

-- Location: LCCOMB_X39_Y37_N28
dut_aregisters_inst_aread_unit_aMux29_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux29_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux29_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a3_combout);

-- Location: LCCOMB_X38_Y35_N20
dut_aregisters_inst_aread_unit_aMux29_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux29_a3_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_aread_unit_aMux29_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_aread_unit_aMux29_a5_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a3_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a6_combout);

-- Location: LCCOMB_X38_Y35_N26
dut_aregisters_inst_aread_unit_aMux29_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux29_a6_combout & ((dut_aregisters_inst_aread_unit_aMux29_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a6_combout & (dut_aregisters_inst_aread_unit_aMux29_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux29_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_aread_unit_aMux29_a1_combout,
	datac => dut_aregisters_inst_aread_unit_aMux29_a8_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a9_combout);

-- Location: LCCOMB_X39_Y35_N0
dut_aregisters_inst_aread_unit_aMux29_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(2)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux29_a17_combout);

-- Location: LCCOMB_X38_Y35_N30
dut_aregisters_inst_aread_unit_aMux29_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux29_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(2)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(2))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux29_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_aread_unit_aMux29_a17_combout,
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(2),
	combout => dut_aregisters_inst_aread_unit_aMux29_a18_combout);

-- Location: LCCOMB_X42_Y37_N22
dut_aregisters_inst_aread_unit_aMux29_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(2))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(2),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(2),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux29_a10_combout);

-- Location: LCCOMB_X41_Y37_N0
dut_aregisters_inst_aread_unit_aMux29_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux29_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux29_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a11_combout);

-- Location: LCCOMB_X36_Y37_N6
dut_aregisters_inst_aread_unit_aMux29_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(2)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux29_a14_combout);

-- Location: LCCOMB_X36_Y37_N16
dut_aregisters_inst_aread_unit_aMux29_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux29_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux29_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a15_combout);

-- Location: LCCOMB_X36_Y35_N0
dut_aregisters_inst_aread_unit_aMux29_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(2)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(2) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(2),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(2),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux29_a12_combout);

-- Location: LCCOMB_X36_Y35_N6
dut_aregisters_inst_aread_unit_aMux29_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux29_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(2))) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(2)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux29_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(2),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(2),
	datad => dut_aregisters_inst_aread_unit_aMux29_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a13_combout);

-- Location: LCCOMB_X38_Y35_N12
dut_aregisters_inst_aread_unit_aMux29_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23)) # (dut_aregisters_inst_aread_unit_aMux29_a13_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_aread_unit_aMux29_a15_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux29_a15_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_aregisters_inst_aread_unit_aMux29_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a16_combout);

-- Location: LCCOMB_X38_Y35_N28
dut_aregisters_inst_aread_unit_aMux29_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux29_a16_combout & (dut_aregisters_inst_aread_unit_aMux29_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux29_a16_combout & ((dut_aregisters_inst_aread_unit_aMux29_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux29_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux29_a18_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_aread_unit_aMux29_a11_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a19_combout);

-- Location: LCCOMB_X38_Y35_N6
dut_aregisters_inst_aread_unit_aMux29_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux29_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & (dut_aregisters_inst_aread_unit_aMux29_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- ((dut_aregisters_inst_aread_unit_aMux29_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux29_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux29_a20_combout);

-- Location: LCCOMB_X39_Y34_N20
dut_aalu_inst_aAdd0_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a12_combout = ((dut_aalu_inst_aAdd0_a11_combout $ (dut_aregisters_inst_aread_unit_aMux28_a20_combout $ (!dut_aalu_inst_aAdd0_a10)))) # (GND)
-- dut_aalu_inst_aAdd0_a13 = CARRY((dut_aalu_inst_aAdd0_a11_combout & ((dut_aregisters_inst_aread_unit_aMux28_a20_combout) # (!dut_aalu_inst_aAdd0_a10))) # (!dut_aalu_inst_aAdd0_a11_combout & (dut_aregisters_inst_aread_unit_aMux28_a20_combout & 
-- !dut_aalu_inst_aAdd0_a10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aAdd0_a11_combout,
	datab => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a10,
	combout => dut_aalu_inst_aAdd0_a12_combout,
	cout => dut_aalu_inst_aAdd0_a13);

-- Location: LCCOMB_X38_Y34_N0
dut_aalu_inst_aMux28_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a4_combout = (!SW_a6_a_ainput_o & (dut_aregisters_inst_aread_unit_aMux28_a20_combout & dut_aalu_mux_inst_aOutput_a3_a_a3_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a6_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a3_a_a3_combout,
	combout => dut_aalu_inst_aMux28_a4_combout);

-- Location: LCCOMB_X38_Y34_N10
dut_aalu_inst_aMux28_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a5_combout = (SW_a4_a_ainput_o & (!dut_aalu_inst_aMux28_a1_combout)) # (!SW_a4_a_ainput_o & ((dut_aalu_inst_aMux28_a1_combout & (dut_aalu_inst_aAdd0_a12_combout)) # (!dut_aalu_inst_aMux28_a1_combout & 
-- ((dut_aalu_inst_aMux28_a4_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a4_a_ainput_o,
	datab => dut_aalu_inst_aMux28_a1_combout,
	datac => dut_aalu_inst_aAdd0_a12_combout,
	datad => dut_aalu_inst_aMux28_a4_combout,
	combout => dut_aalu_inst_aMux28_a5_combout);

-- Location: LCCOMB_X38_Y34_N20
dut_aalu_inst_aMux28_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a6_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux28_a5_combout & ((dut_aalu_inst_aMux28_a3_combout))) # (!dut_aalu_inst_aMux28_a5_combout & (dut_aalu_inst_aResult_var_a3_combout)))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux28_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a0_combout,
	datab => dut_aalu_inst_aResult_var_a3_combout,
	datac => dut_aalu_inst_aMux28_a3_combout,
	datad => dut_aalu_inst_aMux28_a5_combout,
	combout => dut_aalu_inst_aMux28_a6_combout);

-- Location: LCCOMB_X38_Y34_N30
dut_aalu_inst_aMux28_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux28_a7_combout = (SW_a7_a_ainput_o & (dut_aalu_inst_aMux31_a1_combout & (dut_aalu_inst_aMux28_a2_combout))) # (!SW_a7_a_ainput_o & ((dut_aalu_inst_aMux28_a6_combout) # ((dut_aalu_inst_aMux31_a1_combout & 
-- dut_aalu_inst_aMux28_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a7_a_ainput_o,
	datab => dut_aalu_inst_aMux31_a1_combout,
	datac => dut_aalu_inst_aMux28_a2_combout,
	datad => dut_aalu_inst_aMux28_a6_combout,
	combout => dut_aalu_inst_aMux28_a7_combout);

-- Location: FF_X37_Y33_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux28_a7_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(3));

-- Location: LCCOMB_X38_Y33_N16
dut_aregisters_inst_aread_unit_aMux28_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux28_a7_combout);

-- Location: LCCOMB_X38_Y33_N26
dut_aregisters_inst_aread_unit_aMux28_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux28_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(3))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(3)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux28_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux28_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a8_combout);

-- Location: LCCOMB_X36_Y38_N12
dut_aregisters_inst_aread_unit_aMux28_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(3)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(3) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux28_a2_combout);

-- Location: LCCOMB_X36_Y38_N14
dut_aregisters_inst_aread_unit_aMux28_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux28_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux28_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux28_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a3_combout);

-- Location: LCCOMB_X38_Y36_N22
dut_aregisters_inst_aread_unit_aMux28_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux28_a4_combout);

-- Location: LCCOMB_X38_Y36_N20
dut_aregisters_inst_aread_unit_aMux28_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a5_combout = (dut_aregisters_inst_aread_unit_aMux28_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(3)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a4_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(3) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a4_combout,
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux28_a5_combout);

-- Location: LCCOMB_X38_Y36_N4
dut_aregisters_inst_aread_unit_aMux28_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_aread_unit_aMux28_a3_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux28_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_aread_unit_aMux28_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux28_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a6_combout);

-- Location: LCCOMB_X39_Y37_N22
dut_aregisters_inst_aread_unit_aMux28_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux28_a0_combout);

-- Location: LCCOMB_X37_Y34_N2
dut_aregisters_inst_aread_unit_aMux28_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux28_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux28_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_aregisters_inst_aread_unit_aMux28_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a1_combout);

-- Location: LCCOMB_X38_Y36_N14
dut_aregisters_inst_aread_unit_aMux28_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux28_a6_combout & (dut_aregisters_inst_aread_unit_aMux28_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a6_combout & ((dut_aregisters_inst_aread_unit_aMux28_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux28_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_aread_unit_aMux28_a8_combout,
	datac => dut_aregisters_inst_aread_unit_aMux28_a6_combout,
	datad => dut_aregisters_inst_aread_unit_aMux28_a1_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a9_combout);

-- Location: LCCOMB_X37_Y34_N20
dut_aregisters_inst_aread_unit_aMux28_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux28_a17_combout);

-- Location: LCCOMB_X38_Y36_N26
dut_aregisters_inst_aread_unit_aMux28_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux28_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux28_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(3),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(3),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datad => dut_aregisters_inst_aread_unit_aMux28_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a18_combout);

-- Location: LCCOMB_X36_Y37_N18
dut_aregisters_inst_aread_unit_aMux28_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux28_a14_combout);

-- Location: LCCOMB_X36_Y37_N24
dut_aregisters_inst_aread_unit_aMux28_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux28_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(3))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(3)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux28_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux28_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a15_combout);

-- Location: LCCOMB_X41_Y37_N12
dut_aregisters_inst_aread_unit_aMux28_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux28_a12_combout);

-- Location: LCCOMB_X42_Y37_N30
dut_aregisters_inst_aread_unit_aMux28_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux28_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(3))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(3)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux28_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(3),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux28_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a13_combout);

-- Location: LCCOMB_X38_Y36_N8
dut_aregisters_inst_aread_unit_aMux28_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux28_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_aread_unit_aMux28_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a15_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_aregisters_inst_aread_unit_aMux28_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a16_combout);

-- Location: LCCOMB_X36_Y35_N8
dut_aregisters_inst_aread_unit_aMux28_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(3)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(3),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux28_a10_combout);

-- Location: LCCOMB_X37_Y35_N28
dut_aregisters_inst_aread_unit_aMux28_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux28_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(3)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(3))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux28_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(3),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(3),
	datad => dut_aregisters_inst_aread_unit_aMux28_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a11_combout);

-- Location: LCCOMB_X38_Y36_N28
dut_aregisters_inst_aread_unit_aMux28_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux28_a16_combout & (dut_aregisters_inst_aread_unit_aMux28_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a16_combout & ((dut_aregisters_inst_aread_unit_aMux28_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux28_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a18_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_aread_unit_aMux28_a16_combout,
	datad => dut_aregisters_inst_aread_unit_aMux28_a11_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a19_combout);

-- Location: LCCOMB_X38_Y36_N30
dut_aregisters_inst_aread_unit_aMux28_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux28_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & (dut_aregisters_inst_aread_unit_aMux28_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- ((dut_aregisters_inst_aread_unit_aMux28_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux28_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux28_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux28_a20_combout);

-- Location: LCCOMB_X60_Y50_N4
Mux6_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux6_a0_combout = (dut_aregisters_inst_aread_unit_aMux28_a20_combout & (dut_aregisters_inst_aread_unit_aMux31_a20_combout & (dut_aregisters_inst_aread_unit_aMux30_a20_combout $ (dut_aregisters_inst_aread_unit_aMux29_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & (!dut_aregisters_inst_aread_unit_aMux30_a20_combout & (dut_aregisters_inst_aread_unit_aMux31_a20_combout $ (dut_aregisters_inst_aread_unit_aMux29_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux6_a0_combout);

-- Location: LCCOMB_X60_Y50_N6
Mux5_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux5_a0_combout = (dut_aregisters_inst_aread_unit_aMux28_a20_combout & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout & (dut_aregisters_inst_aread_unit_aMux30_a20_combout)) # (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & 
-- ((dut_aregisters_inst_aread_unit_aMux29_a20_combout))))) # (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & (dut_aregisters_inst_aread_unit_aMux29_a20_combout & (dut_aregisters_inst_aread_unit_aMux30_a20_combout $ 
-- (dut_aregisters_inst_aread_unit_aMux31_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux5_a0_combout);

-- Location: LCCOMB_X60_Y50_N12
Mux4_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux4_a0_combout = (dut_aregisters_inst_aread_unit_aMux28_a20_combout & (dut_aregisters_inst_aread_unit_aMux29_a20_combout & ((dut_aregisters_inst_aread_unit_aMux30_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux31_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & (dut_aregisters_inst_aread_unit_aMux30_a20_combout & (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & !dut_aregisters_inst_aread_unit_aMux29_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux4_a0_combout);

-- Location: LCCOMB_X60_Y50_N10
Mux3_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux3_a0_combout = (dut_aregisters_inst_aread_unit_aMux30_a20_combout & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout & ((dut_aregisters_inst_aread_unit_aMux29_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux28_a20_combout & !dut_aregisters_inst_aread_unit_aMux29_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux30_a20_combout & (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux31_a20_combout $ (dut_aregisters_inst_aread_unit_aMux29_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux3_a0_combout);

-- Location: LCCOMB_X60_Y50_N16
Mux2_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux2_a0_combout = (dut_aregisters_inst_aread_unit_aMux30_a20_combout & (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & (dut_aregisters_inst_aread_unit_aMux31_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux30_a20_combout & 
-- ((dut_aregisters_inst_aread_unit_aMux29_a20_combout & (!dut_aregisters_inst_aread_unit_aMux28_a20_combout)) # (!dut_aregisters_inst_aread_unit_aMux29_a20_combout & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux2_a0_combout);

-- Location: LCCOMB_X60_Y50_N18
Mux1_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux1_a0_combout = (dut_aregisters_inst_aread_unit_aMux30_a20_combout & (!dut_aregisters_inst_aread_unit_aMux28_a20_combout & ((dut_aregisters_inst_aread_unit_aMux31_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux29_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux30_a20_combout & (dut_aregisters_inst_aread_unit_aMux31_a20_combout & (dut_aregisters_inst_aread_unit_aMux28_a20_combout $ (!dut_aregisters_inst_aread_unit_aMux29_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux1_a0_combout);

-- Location: LCCOMB_X60_Y50_N8
Mux0_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux0_a0_combout = (dut_aregisters_inst_aread_unit_aMux31_a20_combout & ((dut_aregisters_inst_aread_unit_aMux28_a20_combout) # (dut_aregisters_inst_aread_unit_aMux30_a20_combout $ (dut_aregisters_inst_aread_unit_aMux29_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux31_a20_combout & ((dut_aregisters_inst_aread_unit_aMux30_a20_combout) # (dut_aregisters_inst_aread_unit_aMux28_a20_combout $ (dut_aregisters_inst_aread_unit_aMux29_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux28_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux30_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux31_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux29_a20_combout,
	combout => Mux0_a0_combout);

-- Location: LCCOMB_X34_Y35_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X34_Y35_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(4));

-- Location: LCCOMB_X34_Y35_N30
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X34_Y35_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(4));

-- Location: LCCOMB_X34_Y34_N0
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X34_Y34_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(4));

-- Location: LCCOMB_X34_Y35_N28
dut_aregisters_inst_aread_unit_aMux59_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(4)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(4) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux59_a17_combout);

-- Location: LCCOMB_X34_Y35_N6
dut_aregisters_inst_aread_unit_aMux59_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux59_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux59_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a18_combout);

-- Location: FF_X36_Y35_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(4));

-- Location: FF_X37_Y35_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(4));

-- Location: FF_X36_Y35_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(4));

-- Location: FF_X37_Y35_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(4));

-- Location: LCCOMB_X37_Y35_N18
dut_aregisters_inst_aread_unit_aMux59_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux59_a12_combout);

-- Location: LCCOMB_X37_Y35_N8
dut_aregisters_inst_aread_unit_aMux59_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux59_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux59_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a13_combout);

-- Location: FF_X36_Y37_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(4));

-- Location: FF_X37_Y37_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(4));

-- Location: FF_X36_Y37_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(4));

-- Location: FF_X37_Y37_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(4));

-- Location: LCCOMB_X37_Y37_N10
dut_aregisters_inst_aread_unit_aMux59_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux59_a14_combout);

-- Location: LCCOMB_X37_Y37_N12
dut_aregisters_inst_aread_unit_aMux59_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux59_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux59_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a15_combout);

-- Location: LCCOMB_X37_Y35_N4
dut_aregisters_inst_aread_unit_aMux59_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_aread_unit_aMux59_a13_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux59_a15_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_aread_unit_aMux59_a13_combout,
	datad => dut_aregisters_inst_aread_unit_aMux59_a15_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a16_combout);

-- Location: LCCOMB_X41_Y33_N4
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X41_Y33_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(4));

-- Location: LCCOMB_X41_Y35_N4
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X41_Y35_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(4));

-- Location: FF_X42_Y37_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(4));

-- Location: FF_X41_Y37_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(4));

-- Location: LCCOMB_X41_Y37_N10
dut_aregisters_inst_aread_unit_aMux59_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux59_a10_combout);

-- Location: LCCOMB_X41_Y35_N28
dut_aregisters_inst_aread_unit_aMux59_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux59_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux59_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datad => dut_aregisters_inst_aread_unit_aMux59_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a11_combout);

-- Location: LCCOMB_X37_Y35_N26
dut_aregisters_inst_aread_unit_aMux59_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux59_a16_combout & (dut_aregisters_inst_aread_unit_aMux59_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a16_combout & ((dut_aregisters_inst_aread_unit_aMux59_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux59_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_aread_unit_aMux59_a18_combout,
	datac => dut_aregisters_inst_aread_unit_aMux59_a16_combout,
	datad => dut_aregisters_inst_aread_unit_aMux59_a11_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a19_combout);

-- Location: FF_X38_Y33_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(4));

-- Location: FF_X37_Y33_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(4));

-- Location: FF_X38_Y33_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(4));

-- Location: FF_X37_Y33_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(4));

-- Location: LCCOMB_X37_Y33_N4
dut_aregisters_inst_aread_unit_aMux59_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux59_a7_combout);

-- Location: LCCOMB_X37_Y33_N14
dut_aregisters_inst_aread_unit_aMux59_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a8_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux59_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux59_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a7_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a8_combout);

-- Location: LCCOMB_X37_Y38_N14
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X37_Y38_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(4));

-- Location: LCCOMB_X36_Y38_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X36_Y38_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(4));

-- Location: LCCOMB_X36_Y38_N2
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X36_Y38_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(4));

-- Location: LCCOMB_X37_Y38_N4
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X37_Y38_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(4));

-- Location: LCCOMB_X37_Y38_N24
dut_aregisters_inst_aread_unit_aMux59_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux59_a0_combout);

-- Location: LCCOMB_X37_Y38_N22
dut_aregisters_inst_aread_unit_aMux59_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux59_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux59_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a1_combout);

-- Location: LCCOMB_X38_Y38_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X38_Y38_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(4));

-- Location: FF_X36_Y36_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(4));

-- Location: LCCOMB_X38_Y38_N30
dut_aregisters_inst_aread_unit_aMux59_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(4)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(4) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux59_a4_combout);

-- Location: FF_X38_Y38_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(4));

-- Location: LCCOMB_X36_Y36_N12
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X36_Y36_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(4));

-- Location: LCCOMB_X38_Y38_N8
dut_aregisters_inst_aread_unit_aMux59_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a5_combout = (dut_aregisters_inst_aread_unit_aMux59_a4_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a4_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a4_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(4),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(4),
	combout => dut_aregisters_inst_aread_unit_aMux59_a5_combout);

-- Location: FF_X37_Y34_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(4));

-- Location: LCCOMB_X35_Y34_N16
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X35_Y34_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(4));

-- Location: LCCOMB_X35_Y34_N10
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a4_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a4_a_afeeder_combout = dut_aalu_inst_aMux27_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux27_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a4_a_afeeder_combout);

-- Location: FF_X35_Y34_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a4_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(4));

-- Location: FF_X36_Y34_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(4));

-- Location: LCCOMB_X35_Y34_N14
dut_aregisters_inst_aread_unit_aMux59_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(4)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux59_a2_combout);

-- Location: LCCOMB_X37_Y34_N22
dut_aregisters_inst_aread_unit_aMux59_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux59_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux59_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a3_combout);

-- Location: LCCOMB_X38_Y38_N24
dut_aregisters_inst_aread_unit_aMux59_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)) # ((dut_aregisters_inst_aread_unit_aMux59_a3_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_aread_unit_aMux59_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux59_a5_combout,
	datad => dut_aregisters_inst_aread_unit_aMux59_a3_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a6_combout);

-- Location: LCCOMB_X38_Y38_N2
dut_aregisters_inst_aread_unit_aMux59_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux59_a6_combout & (dut_aregisters_inst_aread_unit_aMux59_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a6_combout & ((dut_aregisters_inst_aread_unit_aMux59_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux59_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a8_combout,
	datab => dut_aregisters_inst_aread_unit_aMux59_a1_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datad => dut_aregisters_inst_aread_unit_aMux59_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a9_combout);

-- Location: LCCOMB_X38_Y38_N16
dut_aregisters_inst_aread_unit_aMux59_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux59_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & ((dut_aregisters_inst_aread_unit_aMux59_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- (dut_aregisters_inst_aread_unit_aMux59_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux59_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux59_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux59_a20_combout);

-- Location: LCCOMB_X38_Y34_N14
dut_aalu_inst_aMux27_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux27_a0_combout = (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((SW_a8_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4))) # (!SW_a8_a_ainput_o & ((!dut_aregisters_inst_aread_unit_aMux59_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4),
	datab => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	combout => dut_aalu_inst_aMux27_a0_combout);

-- Location: LCCOMB_X38_Y34_N24
dut_aalu_mux_inst_aOutput_a4_a_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a4_a_a4_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux59_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4),
	datab => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a4_a_a4_combout);

-- Location: LCCOMB_X38_Y34_N2
dut_aalu_inst_aMux27_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux27_a1_combout = (!SW_a5_a_ainput_o & ((dut_aalu_mux_inst_aOutput_a4_a_a4_combout) # (dut_aregisters_inst_aread_unit_aMux27_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_aalu_mux_inst_aOutput_a4_a_a4_combout,
	datac => SW_a5_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	combout => dut_aalu_inst_aMux27_a1_combout);

-- Location: LCCOMB_X38_Y34_N8
dut_aalu_inst_aResult_var_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a4_combout = dut_aregisters_inst_aread_unit_aMux27_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux59_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4),
	datab => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	combout => dut_aalu_inst_aResult_var_a4_combout);

-- Location: LCCOMB_X38_Y38_N14
dut_aalu_inst_aAdd0_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a14_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux59_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a6_a_ainput_o,
	datab => SW_a8_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(4),
	datad => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	combout => dut_aalu_inst_aAdd0_a14_combout);

-- Location: LCCOMB_X39_Y34_N22
dut_aalu_inst_aAdd0_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a15_combout = (dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((dut_aalu_inst_aAdd0_a14_combout & (dut_aalu_inst_aAdd0_a13 & VCC)) # (!dut_aalu_inst_aAdd0_a14_combout & (!dut_aalu_inst_aAdd0_a13)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((dut_aalu_inst_aAdd0_a14_combout & (!dut_aalu_inst_aAdd0_a13)) # (!dut_aalu_inst_aAdd0_a14_combout & ((dut_aalu_inst_aAdd0_a13) # (GND)))))
-- dut_aalu_inst_aAdd0_a16 = CARRY((dut_aregisters_inst_aread_unit_aMux27_a20_combout & (!dut_aalu_inst_aAdd0_a14_combout & !dut_aalu_inst_aAdd0_a13)) # (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((!dut_aalu_inst_aAdd0_a13) # 
-- (!dut_aalu_inst_aAdd0_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datab => dut_aalu_inst_aAdd0_a14_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a13,
	combout => dut_aalu_inst_aAdd0_a15_combout,
	cout => dut_aalu_inst_aAdd0_a16);

-- Location: LCCOMB_X38_Y34_N28
dut_aalu_inst_aMux27_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux27_a2_combout = (dut_aregisters_inst_aread_unit_aMux27_a20_combout & (!SW_a6_a_ainput_o & dut_aalu_mux_inst_aOutput_a4_a_a4_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datac => SW_a6_a_ainput_o,
	datad => dut_aalu_mux_inst_aOutput_a4_a_a4_combout,
	combout => dut_aalu_inst_aMux27_a2_combout);

-- Location: LCCOMB_X39_Y34_N4
dut_aalu_inst_aMux27_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux27_a3_combout = (dut_aalu_inst_aMux28_a1_combout & (!SW_a4_a_ainput_o & (dut_aalu_inst_aAdd0_a15_combout))) # (!dut_aalu_inst_aMux28_a1_combout & ((SW_a4_a_ainput_o) # ((dut_aalu_inst_aMux27_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a1_combout,
	datab => SW_a4_a_ainput_o,
	datac => dut_aalu_inst_aAdd0_a15_combout,
	datad => dut_aalu_inst_aMux27_a2_combout,
	combout => dut_aalu_inst_aMux27_a3_combout);

-- Location: LCCOMB_X38_Y34_N6
dut_aalu_inst_aMux27_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux27_a4_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux27_a3_combout & (dut_aalu_inst_aMux27_a1_combout)) # (!dut_aalu_inst_aMux27_a3_combout & ((dut_aalu_inst_aResult_var_a4_combout))))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux27_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a0_combout,
	datab => dut_aalu_inst_aMux27_a1_combout,
	datac => dut_aalu_inst_aResult_var_a4_combout,
	datad => dut_aalu_inst_aMux27_a3_combout,
	combout => dut_aalu_inst_aMux27_a4_combout);

-- Location: LCCOMB_X38_Y34_N16
dut_aalu_inst_aMux27_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux27_a5_combout = (SW_a7_a_ainput_o & (dut_aalu_inst_aMux31_a1_combout & (dut_aalu_inst_aMux27_a0_combout))) # (!SW_a7_a_ainput_o & ((dut_aalu_inst_aMux27_a4_combout) # ((dut_aalu_inst_aMux31_a1_combout & 
-- dut_aalu_inst_aMux27_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a7_a_ainput_o,
	datab => dut_aalu_inst_aMux31_a1_combout,
	datac => dut_aalu_inst_aMux27_a0_combout,
	datad => dut_aalu_inst_aMux27_a4_combout,
	combout => dut_aalu_inst_aMux27_a5_combout);

-- Location: FF_X38_Y34_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux27_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(4));

-- Location: LCCOMB_X34_Y34_N6
dut_aregisters_inst_aread_unit_aMux27_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(4)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux27_a17_combout);

-- Location: LCCOMB_X34_Y34_N20
dut_aregisters_inst_aread_unit_aMux27_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux27_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (((dut_aregisters_inst_aread_unit_aMux27_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_aregisters_inst_aread_unit_aMux27_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a18_combout);

-- Location: LCCOMB_X42_Y37_N24
dut_aregisters_inst_aread_unit_aMux27_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(4))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux27_a10_combout);

-- Location: LCCOMB_X41_Y33_N14
dut_aregisters_inst_aread_unit_aMux27_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux27_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux27_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux27_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a11_combout);

-- Location: LCCOMB_X36_Y37_N2
dut_aregisters_inst_aread_unit_aMux27_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(4)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux27_a14_combout);

-- Location: LCCOMB_X36_Y37_N12
dut_aregisters_inst_aread_unit_aMux27_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux27_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux27_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux27_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a15_combout);

-- Location: LCCOMB_X36_Y35_N24
dut_aregisters_inst_aread_unit_aMux27_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(4)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(4) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux27_a12_combout);

-- Location: LCCOMB_X36_Y35_N26
dut_aregisters_inst_aread_unit_aMux27_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux27_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux27_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(4),
	datad => dut_aregisters_inst_aread_unit_aMux27_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a13_combout);

-- Location: LCCOMB_X37_Y33_N28
dut_aregisters_inst_aread_unit_aMux27_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux27_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_aread_unit_aMux27_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_aread_unit_aMux27_a15_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux27_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a16_combout);

-- Location: LCCOMB_X38_Y33_N4
dut_aregisters_inst_aread_unit_aMux27_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux27_a16_combout & (dut_aregisters_inst_aread_unit_aMux27_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a16_combout & ((dut_aregisters_inst_aread_unit_aMux27_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux27_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a18_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_aread_unit_aMux27_a11_combout,
	datad => dut_aregisters_inst_aread_unit_aMux27_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a19_combout);

-- Location: LCCOMB_X38_Y33_N28
dut_aregisters_inst_aread_unit_aMux27_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(4)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(4),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux27_a7_combout);

-- Location: LCCOMB_X38_Y33_N2
dut_aregisters_inst_aread_unit_aMux27_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a8_combout = (dut_aregisters_inst_aread_unit_aMux27_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(4)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(4) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(4),
	datab => dut_aregisters_inst_aread_unit_aMux27_a7_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux27_a8_combout);

-- Location: LCCOMB_X36_Y38_N20
dut_aregisters_inst_aread_unit_aMux27_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(4)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux27_a0_combout);

-- Location: LCCOMB_X36_Y38_N30
dut_aregisters_inst_aread_unit_aMux27_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux27_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(4))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(4)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux27_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_aregisters_inst_aread_unit_aMux27_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a1_combout);

-- Location: LCCOMB_X36_Y34_N12
dut_aregisters_inst_aread_unit_aMux27_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(4)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(4),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(4),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux27_a2_combout);

-- Location: LCCOMB_X35_Y34_N4
dut_aregisters_inst_aread_unit_aMux27_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux27_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux27_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(4),
	datac => dut_aregisters_inst_aread_unit_aMux27_a2_combout,
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(4),
	combout => dut_aregisters_inst_aread_unit_aMux27_a3_combout);

-- Location: LCCOMB_X36_Y36_N0
dut_aregisters_inst_aread_unit_aMux27_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(4)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(4) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux27_a4_combout);

-- Location: LCCOMB_X36_Y36_N18
dut_aregisters_inst_aread_unit_aMux27_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux27_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(4)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(4))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux27_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(4),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(4),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux27_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a5_combout);

-- Location: LCCOMB_X35_Y34_N30
dut_aregisters_inst_aread_unit_aMux27_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)) # ((dut_aregisters_inst_aread_unit_aMux27_a3_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux27_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_aread_unit_aMux27_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux27_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a6_combout);

-- Location: LCCOMB_X38_Y33_N6
dut_aregisters_inst_aread_unit_aMux27_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux27_a6_combout & (dut_aregisters_inst_aread_unit_aMux27_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a6_combout & ((dut_aregisters_inst_aread_unit_aMux27_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux27_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_aread_unit_aMux27_a8_combout,
	datac => dut_aregisters_inst_aread_unit_aMux27_a1_combout,
	datad => dut_aregisters_inst_aread_unit_aMux27_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a9_combout);

-- Location: LCCOMB_X38_Y33_N14
dut_aregisters_inst_aread_unit_aMux27_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux27_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & ((dut_aregisters_inst_aread_unit_aMux27_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- (dut_aregisters_inst_aread_unit_aMux27_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux27_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux27_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux27_a20_combout);

-- Location: FF_X40_Y33_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(7));

-- Location: LCCOMB_X39_Y33_N16
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X39_Y33_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(7));

-- Location: FF_X39_Y34_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(7));

-- Location: LCCOMB_X41_Y34_N20
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X41_Y34_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(7));

-- Location: LCCOMB_X39_Y33_N8
dut_aregisters_inst_aread_unit_aMux56_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(7) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux56_a7_combout);

-- Location: LCCOMB_X39_Y33_N2
dut_aregisters_inst_aread_unit_aMux56_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a8_combout = (dut_aregisters_inst_aread_unit_aMux56_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(7)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(7) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(7),
	datac => dut_aregisters_inst_aread_unit_aMux56_a7_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux56_a8_combout);

-- Location: FF_X37_Y34_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(7));

-- Location: FF_X38_Y37_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(7));

-- Location: LCCOMB_X35_Y34_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X35_Y34_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(7));

-- Location: LCCOMB_X35_Y34_N28
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X35_Y34_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(7));

-- Location: LCCOMB_X35_Y34_N24
dut_aregisters_inst_aread_unit_aMux56_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(7)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(7) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux56_a0_combout);

-- Location: LCCOMB_X38_Y37_N22
dut_aregisters_inst_aread_unit_aMux56_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux56_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(7))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(7)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux56_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a1_combout);

-- Location: LCCOMB_X36_Y36_N28
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X36_Y36_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(7));

-- Location: FF_X38_Y37_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(7));

-- Location: LCCOMB_X36_Y36_N14
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X36_Y36_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(7));

-- Location: FF_X37_Y36_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(7));

-- Location: LCCOMB_X37_Y36_N22
dut_aregisters_inst_aread_unit_aMux56_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(7) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux56_a4_combout);

-- Location: LCCOMB_X38_Y37_N28
dut_aregisters_inst_aread_unit_aMux56_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux56_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux56_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a5_combout);

-- Location: FF_X36_Y38_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(7));

-- Location: FF_X37_Y38_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(7));

-- Location: FF_X36_Y38_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(7));

-- Location: FF_X37_Y38_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(7));

-- Location: LCCOMB_X37_Y38_N28
dut_aregisters_inst_aread_unit_aMux56_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(7) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux56_a2_combout);

-- Location: LCCOMB_X37_Y38_N2
dut_aregisters_inst_aread_unit_aMux56_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux56_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux56_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a3_combout);

-- Location: LCCOMB_X38_Y37_N2
dut_aregisters_inst_aread_unit_aMux56_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)) # (dut_aregisters_inst_aread_unit_aMux56_a3_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_aread_unit_aMux56_a5_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_aread_unit_aMux56_a5_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datad => dut_aregisters_inst_aread_unit_aMux56_a3_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a6_combout);

-- Location: LCCOMB_X38_Y37_N24
dut_aregisters_inst_aread_unit_aMux56_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux56_a6_combout & (dut_aregisters_inst_aread_unit_aMux56_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a6_combout & ((dut_aregisters_inst_aread_unit_aMux56_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux56_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux56_a8_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_aread_unit_aMux56_a1_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a9_combout);

-- Location: FF_X39_Y34_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(7));

-- Location: LCCOMB_X34_Y34_N28
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X34_Y34_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(7));

-- Location: FF_X38_Y34_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(7));

-- Location: LCCOMB_X34_Y34_N18
dut_aregisters_inst_aread_unit_aMux56_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(7)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(7) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux56_a17_combout);

-- Location: LCCOMB_X34_Y34_N8
dut_aregisters_inst_aread_unit_aMux56_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux56_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux56_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a18_combout);

-- Location: FF_X42_Y37_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(7));

-- Location: FF_X42_Y37_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(7));

-- Location: LCCOMB_X41_Y37_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X41_Y37_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(7));

-- Location: LCCOMB_X41_Y37_N24
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X41_Y37_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(7));

-- Location: LCCOMB_X42_Y37_N10
dut_aregisters_inst_aread_unit_aMux56_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(7))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux56_a12_combout);

-- Location: LCCOMB_X42_Y37_N12
dut_aregisters_inst_aread_unit_aMux56_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux56_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux56_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a13_combout);

-- Location: LCCOMB_X35_Y37_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X35_Y37_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(7));

-- Location: LCCOMB_X35_Y37_N20
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X35_Y37_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(7));

-- Location: FF_X37_Y37_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(7));

-- Location: LCCOMB_X37_Y37_N24
dut_aregisters_inst_aread_unit_aMux56_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(7) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux56_a14_combout);

-- Location: FF_X37_Y37_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux24_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(7));

-- Location: LCCOMB_X37_Y37_N22
dut_aregisters_inst_aread_unit_aMux56_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a15_combout = (dut_aregisters_inst_aread_unit_aMux56_a14_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(7)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(7) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(7),
	datab => dut_aregisters_inst_aread_unit_aMux56_a14_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux56_a15_combout);

-- Location: LCCOMB_X38_Y37_N14
dut_aregisters_inst_aread_unit_aMux56_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_aread_unit_aMux56_a13_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux56_a15_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux56_a13_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a15_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a16_combout);

-- Location: LCCOMB_X40_Y38_N16
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X40_Y38_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(7));

-- Location: LCCOMB_X40_Y33_N2
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X40_Y33_N3
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(7));

-- Location: LCCOMB_X39_Y33_N22
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X39_Y33_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(7));

-- Location: LCCOMB_X40_Y38_N14
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X40_Y38_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(7));

-- Location: LCCOMB_X40_Y38_N28
dut_aregisters_inst_aread_unit_aMux56_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(7) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux56_a10_combout);

-- Location: LCCOMB_X40_Y38_N6
dut_aregisters_inst_aread_unit_aMux56_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux56_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux56_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a11_combout);

-- Location: LCCOMB_X37_Y37_N30
dut_aregisters_inst_aread_unit_aMux56_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux56_a16_combout & (dut_aregisters_inst_aread_unit_aMux56_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux56_a16_combout & ((dut_aregisters_inst_aread_unit_aMux56_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux56_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_aread_unit_aMux56_a18_combout,
	datac => dut_aregisters_inst_aread_unit_aMux56_a16_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a11_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a19_combout);

-- Location: LCCOMB_X38_Y37_N20
dut_aregisters_inst_aread_unit_aMux56_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux56_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & (dut_aregisters_inst_aread_unit_aMux56_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- ((dut_aregisters_inst_aread_unit_aMux56_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datab => dut_aregisters_inst_aread_unit_aMux56_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux56_a20_combout);

-- Location: LCCOMB_X38_Y37_N30
dut_aalu_inst_aMux24_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux24_a0_combout = (!dut_aregisters_inst_aread_unit_aMux24_a20_combout & ((SW_a8_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7))) # (!SW_a8_a_ainput_o & ((!dut_aregisters_inst_aread_unit_aMux56_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7),
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => dut_aalu_inst_aMux24_a0_combout);

-- Location: LCCOMB_X38_Y37_N8
dut_aalu_mux_inst_aOutput_a7_a_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a7_a_a7_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux56_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7),
	datab => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a7_a_a7_combout);

-- Location: LCCOMB_X38_Y37_N18
dut_aalu_inst_aMux24_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux24_a1_combout = (!SW_a5_a_ainput_o & ((dut_aalu_mux_inst_aOutput_a7_a_a7_combout) # (dut_aregisters_inst_aread_unit_aMux24_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a5_a_ainput_o,
	datac => dut_aalu_mux_inst_aOutput_a7_a_a7_combout,
	datad => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	combout => dut_aalu_inst_aMux24_a1_combout);

-- Location: LCCOMB_X39_Y38_N14
dut_aalu_inst_aResult_var_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a7_combout = dut_aregisters_inst_aread_unit_aMux24_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux56_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7),
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => dut_aalu_inst_aResult_var_a7_combout);

-- Location: LCCOMB_X38_Y37_N6
dut_aalu_inst_aMux24_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux24_a2_combout = (!SW_a6_a_ainput_o & (dut_aalu_mux_inst_aOutput_a7_a_a7_combout & dut_aregisters_inst_aread_unit_aMux24_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SW_a6_a_ainput_o,
	datac => dut_aalu_mux_inst_aOutput_a7_a_a7_combout,
	datad => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	combout => dut_aalu_inst_aMux24_a2_combout);

-- Location: LCCOMB_X38_Y37_N4
dut_aalu_inst_aAdd0_a23 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a23_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux56_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(7),
	datab => SW_a6_a_ainput_o,
	datac => SW_a8_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => dut_aalu_inst_aAdd0_a23_combout);

-- Location: FF_X41_Y36_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(6));

-- Location: FF_X39_Y36_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(6));

-- Location: LCCOMB_X39_Y36_N30
dut_aregisters_inst_aread_unit_aMux25_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(6)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(6) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux25_a0_combout);

-- Location: FF_X40_Y36_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(6));

-- Location: FF_X39_Y36_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(6));

-- Location: LCCOMB_X39_Y36_N12
dut_aregisters_inst_aread_unit_aMux25_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a1_combout = (dut_aregisters_inst_aread_unit_aMux25_a0_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(6)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(6) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux25_a0_combout,
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux25_a1_combout);

-- Location: FF_X40_Y37_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(6));

-- Location: FF_X39_Y37_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(6));

-- Location: FF_X40_Y37_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(6));

-- Location: FF_X39_Y37_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(6));

-- Location: LCCOMB_X39_Y37_N18
dut_aregisters_inst_aread_unit_aMux25_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(6)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(6) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux25_a2_combout);

-- Location: LCCOMB_X39_Y37_N8
dut_aregisters_inst_aread_unit_aMux25_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux25_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux25_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux25_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a3_combout);

-- Location: LCCOMB_X39_Y38_N22
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a6_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a6_a_afeeder_combout = dut_aalu_inst_aMux25_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux25_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a6_a_afeeder_combout);

-- Location: FF_X39_Y38_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a6_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(6));

-- Location: FF_X38_Y36_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(6));

-- Location: FF_X38_Y36_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(6));

-- Location: FF_X38_Y38_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(6));

-- Location: LCCOMB_X38_Y36_N18
dut_aregisters_inst_aread_unit_aMux25_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)) # 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(6))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(6),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(6),
	combout => dut_aregisters_inst_aread_unit_aMux25_a4_combout);

-- Location: LCCOMB_X38_Y36_N24
dut_aregisters_inst_aread_unit_aMux25_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux25_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux25_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux25_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a5_combout);

-- Location: LCCOMB_X40_Y36_N22
dut_aregisters_inst_aread_unit_aMux25_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux25_a3_combout) # ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & dut_aregisters_inst_aread_unit_aMux25_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_aread_unit_aMux25_a3_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datad => dut_aregisters_inst_aread_unit_aMux25_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a6_combout);

-- Location: FF_X37_Y33_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(6));

-- Location: FF_X37_Y33_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(6));

-- Location: FF_X38_Y33_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(6));

-- Location: LCCOMB_X38_Y33_N18
dut_aregisters_inst_aread_unit_aMux25_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(6)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux25_a7_combout);

-- Location: FF_X38_Y33_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(6));

-- Location: LCCOMB_X38_Y33_N24
dut_aregisters_inst_aread_unit_aMux25_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a8_combout = (dut_aregisters_inst_aread_unit_aMux25_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(6)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(6) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(6),
	datab => dut_aregisters_inst_aread_unit_aMux25_a7_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	combout => dut_aregisters_inst_aread_unit_aMux25_a8_combout);

-- Location: LCCOMB_X40_Y36_N8
dut_aregisters_inst_aread_unit_aMux25_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux25_a6_combout & ((dut_aregisters_inst_aread_unit_aMux25_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a6_combout & (dut_aregisters_inst_aread_unit_aMux25_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux25_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux25_a1_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_aread_unit_aMux25_a6_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a8_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a9_combout);

-- Location: FF_X37_Y37_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(6));

-- Location: FF_X36_Y37_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(6));

-- Location: LCCOMB_X36_Y37_N30
dut_aregisters_inst_aread_unit_aMux25_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(6)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(6) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux25_a14_combout);

-- Location: FF_X36_Y37_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(6));

-- Location: FF_X40_Y36_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(6));

-- Location: LCCOMB_X36_Y37_N8
dut_aregisters_inst_aread_unit_aMux25_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a15_combout = (dut_aregisters_inst_aread_unit_aMux25_a14_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(6))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a14_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux25_a14_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(6),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(6),
	combout => dut_aregisters_inst_aread_unit_aMux25_a15_combout);

-- Location: FF_X37_Y35_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(6));

-- Location: FF_X36_Y35_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(6));

-- Location: FF_X37_Y35_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(6));

-- Location: FF_X36_Y35_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(6));

-- Location: LCCOMB_X36_Y35_N28
dut_aregisters_inst_aread_unit_aMux25_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(6)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(6) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux25_a12_combout);

-- Location: LCCOMB_X36_Y35_N22
dut_aregisters_inst_aread_unit_aMux25_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux25_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux25_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux25_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a13_combout);

-- Location: LCCOMB_X40_Y36_N0
dut_aregisters_inst_aread_unit_aMux25_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux25_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_aread_unit_aMux25_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_aread_unit_aMux25_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a16_combout);

-- Location: FF_X41_Y37_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(6));

-- Location: FF_X41_Y37_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(6));

-- Location: LCCOMB_X40_Y34_N22
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a6_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a6_a_afeeder_combout = dut_aalu_inst_aMux25_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux25_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a6_a_afeeder_combout);

-- Location: FF_X40_Y34_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a6_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(6));

-- Location: LCCOMB_X40_Y34_N8
dut_aregisters_inst_aread_unit_aMux25_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(6)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(6) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux25_a10_combout);

-- Location: LCCOMB_X40_Y34_N12
dut_aregisters_inst_aread_unit_aMux25_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a11_combout = (dut_aregisters_inst_aread_unit_aMux25_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(6)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a10_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(6) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(6),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(6),
	datac => dut_aregisters_inst_aread_unit_aMux25_a10_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux25_a11_combout);

-- Location: FF_X35_Y35_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(6));

-- Location: FF_X39_Y34_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(6));

-- Location: FF_X35_Y35_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(6));

-- Location: FF_X39_Y35_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux25_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(6));

-- Location: LCCOMB_X39_Y35_N8
dut_aregisters_inst_aread_unit_aMux25_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(6)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux25_a17_combout);

-- Location: LCCOMB_X39_Y35_N26
dut_aregisters_inst_aread_unit_aMux25_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a18_combout = (dut_aregisters_inst_aread_unit_aMux25_a17_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(6)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(6) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(6),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(6),
	datac => dut_aregisters_inst_aread_unit_aMux25_a17_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux25_a18_combout);

-- Location: LCCOMB_X40_Y36_N18
dut_aregisters_inst_aread_unit_aMux25_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux25_a16_combout & ((dut_aregisters_inst_aread_unit_aMux25_a18_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a16_combout & (dut_aregisters_inst_aread_unit_aMux25_a11_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_aread_unit_aMux25_a16_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_aread_unit_aMux25_a16_combout,
	datac => dut_aregisters_inst_aread_unit_aMux25_a11_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a18_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a19_combout);

-- Location: LCCOMB_X40_Y36_N24
dut_aregisters_inst_aread_unit_aMux25_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux25_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & (dut_aregisters_inst_aread_unit_aMux25_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- ((dut_aregisters_inst_aread_unit_aMux25_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux25_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux25_a20_combout);

-- Location: LCCOMB_X39_Y36_N16
dut_aalu_inst_aMux25_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux25_a0_combout = (!dut_aregisters_inst_aread_unit_aMux25_a20_combout & ((SW_a8_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6))) # (!SW_a8_a_ainput_o & ((!dut_aregisters_inst_aread_unit_aMux57_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6),
	datab => SW_a8_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => dut_aalu_inst_aMux25_a0_combout);

-- Location: LCCOMB_X39_Y36_N18
dut_aalu_inst_aResult_var_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a6_combout = dut_aregisters_inst_aread_unit_aMux25_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux57_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6),
	datab => SW_a8_a_ainput_o,
	datac => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => dut_aalu_inst_aResult_var_a6_combout);

-- Location: LCCOMB_X40_Y36_N28
dut_aalu_mux_inst_aOutput_a6_a_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a6_a_a6_combout = (SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux57_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6),
	datad => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	combout => dut_aalu_mux_inst_aOutput_a6_a_a6_combout);

-- Location: LCCOMB_X40_Y36_N30
dut_aalu_inst_aMux25_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux25_a1_combout = (!SW_a5_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux25_a20_combout) # (dut_aalu_mux_inst_aOutput_a6_a_a6_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	datac => SW_a5_a_ainput_o,
	datad => dut_aalu_mux_inst_aOutput_a6_a_a6_combout,
	combout => dut_aalu_inst_aMux25_a1_combout);

-- Location: FF_X37_Y38_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a5_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(5));

-- Location: FF_X36_Y38_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a3_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(5));

-- Location: FF_X37_Y38_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a4_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y38_N18
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X36_Y38_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a1_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y38_N0
dut_aregisters_inst_aread_unit_aMux26_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(5)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(5),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux26_a2_combout);

-- Location: LCCOMB_X36_Y38_N24
dut_aregisters_inst_aread_unit_aMux26_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux26_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(5))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(5)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux26_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux26_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a3_combout);

-- Location: LCCOMB_X36_Y36_N20
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X36_Y36_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a15_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(5));

-- Location: LCCOMB_X35_Y36_N6
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X35_Y36_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a17_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y36_N6
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X36_Y36_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a13_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(5));

-- Location: LCCOMB_X35_Y36_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X35_Y36_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a16_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y36_N24
dut_aregisters_inst_aread_unit_aMux26_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(5))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(5),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(5),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux26_a4_combout);

-- Location: LCCOMB_X36_Y36_N30
dut_aregisters_inst_aread_unit_aMux26_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux26_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(5)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(5))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux26_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux26_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a5_combout);

-- Location: LCCOMB_X37_Y34_N0
dut_aregisters_inst_aread_unit_aMux26_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_aread_unit_aMux26_a3_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux26_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_aread_unit_aMux26_a3_combout,
	datad => dut_aregisters_inst_aread_unit_aMux26_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a6_combout);

-- Location: FF_X37_Y33_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a22_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(5));

-- Location: LCCOMB_X41_Y34_N10
dut_aregisters_inst_aread_unit_aMux26_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(5)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(5),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux26_a7_combout);

-- Location: FF_X37_Y34_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a21_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(5));

-- Location: FF_X37_Y33_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a23_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(5));

-- Location: LCCOMB_X37_Y34_N30
dut_aregisters_inst_aread_unit_aMux26_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a8_combout = (dut_aregisters_inst_aread_unit_aMux26_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(5))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a7_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux26_a7_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(5),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux26_a8_combout);

-- Location: FF_X36_Y34_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a9_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(5));

-- Location: FF_X37_Y34_N11
dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a11_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(5));

-- Location: LCCOMB_X35_Y34_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X35_Y34_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a7_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(5));

-- Location: LCCOMB_X35_Y34_N6
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X35_Y34_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a10_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(5));

-- Location: LCCOMB_X37_Y34_N12
dut_aregisters_inst_aread_unit_aMux26_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(5)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(5),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux26_a0_combout);

-- Location: LCCOMB_X37_Y34_N10
dut_aregisters_inst_aread_unit_aMux26_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux26_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(5)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(5))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux26_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux26_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a1_combout);

-- Location: LCCOMB_X37_Y34_N4
dut_aregisters_inst_aread_unit_aMux26_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux26_a6_combout & (dut_aregisters_inst_aread_unit_aMux26_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a6_combout & ((dut_aregisters_inst_aread_unit_aMux26_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_aread_unit_aMux26_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_aread_unit_aMux26_a6_combout,
	datac => dut_aregisters_inst_aread_unit_aMux26_a8_combout,
	datad => dut_aregisters_inst_aread_unit_aMux26_a1_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a9_combout);

-- Location: LCCOMB_X34_Y34_N24
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X34_Y34_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a38_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(5));

-- Location: FF_X35_Y35_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a36_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(5));

-- Location: LCCOMB_X35_Y35_N6
dut_aregisters_inst_aread_unit_aMux26_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(5)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(5) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(5),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux26_a17_combout);

-- Location: LCCOMB_X34_Y34_N22
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X34_Y34_N23
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(5));

-- Location: FF_X36_Y34_N17
dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a39_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(5));

-- Location: LCCOMB_X35_Y35_N4
dut_aregisters_inst_aread_unit_aMux26_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a18_combout = (dut_aregisters_inst_aread_unit_aMux26_a17_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(5))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a17_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux26_a17_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(5),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux26_a18_combout);

-- Location: FF_X37_Y37_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a34_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(5));

-- Location: FF_X36_Y37_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a32_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y37_N26
dut_aregisters_inst_aread_unit_aMux26_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(5)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux26_a14_combout);

-- Location: FF_X37_Y37_N5
dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a35_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(5));

-- Location: FF_X36_Y37_N29
dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a33_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y37_N28
dut_aregisters_inst_aread_unit_aMux26_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a15_combout = (dut_aregisters_inst_aread_unit_aMux26_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(5)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a14_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(5) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux26_a14_combout,
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	combout => dut_aregisters_inst_aread_unit_aMux26_a15_combout);

-- Location: LCCOMB_X42_Y37_N6
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X42_Y37_N7
dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a25_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(5));

-- Location: FF_X42_Y37_N1
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(5));

-- Location: FF_X41_Y37_N21
dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a26_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(5));

-- Location: FF_X41_Y37_N19
dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a24_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(5));

-- Location: LCCOMB_X41_Y37_N18
dut_aregisters_inst_aread_unit_aMux26_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(5)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(5) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux26_a12_combout);

-- Location: LCCOMB_X42_Y37_N26
dut_aregisters_inst_aread_unit_aMux26_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux26_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(5)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(5))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux26_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(5),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(5),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datad => dut_aregisters_inst_aread_unit_aMux26_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a13_combout);

-- Location: LCCOMB_X36_Y37_N0
dut_aregisters_inst_aread_unit_aMux26_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)) # (dut_aregisters_inst_aread_unit_aMux26_a13_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_aread_unit_aMux26_a15_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_aread_unit_aMux26_a15_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux26_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a16_combout);

-- Location: FF_X36_Y35_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a29_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(5));

-- Location: FF_X37_Y35_N25
dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a31_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(5));

-- Location: LCCOMB_X37_Y35_N14
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X37_Y35_N15
dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a30_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(5));

-- Location: FF_X36_Y35_N13
dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	asdata => dut_aalu_inst_aMux26_a5_combout,
	clrn => KEY_a0_a_ainput_o,
	sload => VCC,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a28_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(5));

-- Location: LCCOMB_X36_Y35_N12
dut_aregisters_inst_aread_unit_aMux26_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(5)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux26_a10_combout);

-- Location: LCCOMB_X37_Y35_N24
dut_aregisters_inst_aread_unit_aMux26_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux26_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(5)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(5))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux26_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux26_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a11_combout);

-- Location: LCCOMB_X36_Y37_N10
dut_aregisters_inst_aread_unit_aMux26_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a19_combout = (dut_aregisters_inst_aread_unit_aMux26_a16_combout & ((dut_aregisters_inst_aread_unit_aMux26_a18_combout) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux26_a16_combout & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & dut_aregisters_inst_aread_unit_aMux26_a11_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux26_a18_combout,
	datab => dut_aregisters_inst_aread_unit_aMux26_a16_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux26_a11_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a19_combout);

-- Location: LCCOMB_X37_Y34_N26
dut_aregisters_inst_aread_unit_aMux26_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux26_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & (dut_aregisters_inst_aread_unit_aMux26_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- ((dut_aregisters_inst_aread_unit_aMux26_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux26_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux26_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux26_a20_combout);

-- Location: LCCOMB_X36_Y34_N8
dut_aalu_inst_aMux26_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux26_a0_combout = (!dut_aregisters_inst_aread_unit_aMux26_a20_combout & ((SW_a8_a_ainput_o & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5))) # (!SW_a8_a_ainput_o & ((!dut_aregisters_inst_aread_unit_aMux58_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5),
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	combout => dut_aalu_inst_aMux26_a0_combout);

-- Location: LCCOMB_X36_Y34_N24
dut_aalu_mux_inst_aOutput_a5_a_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_mux_inst_aOutput_a5_a_a5_combout = (SW_a8_a_ainput_o & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5)))) # (!SW_a8_a_ainput_o & (dut_aregisters_inst_aread_unit_aMux58_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5),
	datad => SW_a8_a_ainput_o,
	combout => dut_aalu_mux_inst_aOutput_a5_a_a5_combout);

-- Location: LCCOMB_X36_Y34_N26
dut_aalu_inst_aMux26_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux26_a1_combout = (!SW_a5_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux26_a20_combout) # (dut_aalu_mux_inst_aOutput_a5_a_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a5_a_ainput_o,
	datab => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datad => dut_aalu_mux_inst_aOutput_a5_a_a5_combout,
	combout => dut_aalu_inst_aMux26_a1_combout);

-- Location: LCCOMB_X36_Y34_N22
dut_aalu_inst_aResult_var_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aResult_var_a5_combout = dut_aregisters_inst_aread_unit_aMux26_a20_combout $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux58_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5),
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	combout => dut_aalu_inst_aResult_var_a5_combout);

-- Location: LCCOMB_X36_Y34_N2
dut_aalu_inst_aMux26_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux26_a2_combout = (dut_aregisters_inst_aread_unit_aMux26_a20_combout & (!SW_a6_a_ainput_o & dut_aalu_mux_inst_aOutput_a5_a_a5_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datac => SW_a6_a_ainput_o,
	datad => dut_aalu_mux_inst_aOutput_a5_a_a5_combout,
	combout => dut_aalu_inst_aMux26_a2_combout);

-- Location: LCCOMB_X39_Y34_N24
dut_aalu_inst_aAdd0_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a18_combout = ((dut_aalu_inst_aAdd0_a17_combout $ (dut_aregisters_inst_aread_unit_aMux26_a20_combout $ (!dut_aalu_inst_aAdd0_a16)))) # (GND)
-- dut_aalu_inst_aAdd0_a19 = CARRY((dut_aalu_inst_aAdd0_a17_combout & ((dut_aregisters_inst_aread_unit_aMux26_a20_combout) # (!dut_aalu_inst_aAdd0_a16))) # (!dut_aalu_inst_aAdd0_a17_combout & (dut_aregisters_inst_aread_unit_aMux26_a20_combout & 
-- !dut_aalu_inst_aAdd0_a16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aAdd0_a17_combout,
	datab => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a16,
	combout => dut_aalu_inst_aAdd0_a18_combout,
	cout => dut_aalu_inst_aAdd0_a19);

-- Location: LCCOMB_X36_Y34_N28
dut_aalu_inst_aMux26_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux26_a3_combout = (SW_a4_a_ainput_o & (((!dut_aalu_inst_aMux28_a1_combout)))) # (!SW_a4_a_ainput_o & ((dut_aalu_inst_aMux28_a1_combout & ((dut_aalu_inst_aAdd0_a18_combout))) # (!dut_aalu_inst_aMux28_a1_combout & 
-- (dut_aalu_inst_aMux26_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a4_a_ainput_o,
	datab => dut_aalu_inst_aMux26_a2_combout,
	datac => dut_aalu_inst_aMux28_a1_combout,
	datad => dut_aalu_inst_aAdd0_a18_combout,
	combout => dut_aalu_inst_aMux26_a3_combout);

-- Location: LCCOMB_X36_Y34_N6
dut_aalu_inst_aMux26_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux26_a4_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux26_a3_combout & (dut_aalu_inst_aMux26_a1_combout)) # (!dut_aalu_inst_aMux26_a3_combout & ((dut_aalu_inst_aResult_var_a5_combout))))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux26_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux26_a1_combout,
	datab => dut_aalu_inst_aMux28_a0_combout,
	datac => dut_aalu_inst_aResult_var_a5_combout,
	datad => dut_aalu_inst_aMux26_a3_combout,
	combout => dut_aalu_inst_aMux26_a4_combout);

-- Location: LCCOMB_X36_Y34_N16
dut_aalu_inst_aMux26_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux26_a5_combout = (dut_aalu_inst_aMux31_a1_combout & ((dut_aalu_inst_aMux26_a0_combout) # ((!SW_a7_a_ainput_o & dut_aalu_inst_aMux26_a4_combout)))) # (!dut_aalu_inst_aMux31_a1_combout & (((!SW_a7_a_ainput_o & 
-- dut_aalu_inst_aMux26_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux31_a1_combout,
	datab => dut_aalu_inst_aMux26_a0_combout,
	datac => SW_a7_a_ainput_o,
	datad => dut_aalu_inst_aMux26_a4_combout,
	combout => dut_aalu_inst_aMux26_a5_combout);

-- Location: LCCOMB_X41_Y34_N8
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a5_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a5_a_afeeder_combout = dut_aalu_inst_aMux26_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a5_a_afeeder_combout);

-- Location: FF_X41_Y34_N9
dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data_a5_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a19_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(5));

-- Location: LCCOMB_X37_Y33_N26
dut_aregisters_inst_aread_unit_aMux58_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(5))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux58_a7_combout);

-- Location: LCCOMB_X37_Y33_N0
dut_aregisters_inst_aread_unit_aMux58_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a8_combout = (dut_aregisters_inst_aread_unit_aMux58_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(5))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a7_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux58_a7_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(5),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux58_a8_combout);

-- Location: LCCOMB_X35_Y34_N12
dut_aregisters_inst_aread_unit_aMux58_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(5)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(5) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(5),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(5),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux58_a0_combout);

-- Location: LCCOMB_X36_Y34_N14
dut_aregisters_inst_aread_unit_aMux58_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux58_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(5))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(5)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux58_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux58_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a1_combout);

-- Location: LCCOMB_X35_Y36_N28
dut_aregisters_inst_aread_unit_aMux58_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(5))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(5),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(5),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux58_a4_combout);

-- Location: LCCOMB_X35_Y36_N26
dut_aregisters_inst_aread_unit_aMux58_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux58_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(5))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(5)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux58_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(5),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux58_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a5_combout);

-- Location: LCCOMB_X37_Y38_N0
dut_aregisters_inst_aread_unit_aMux58_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(5)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(5) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux58_a2_combout);

-- Location: LCCOMB_X37_Y38_N18
dut_aregisters_inst_aread_unit_aMux58_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a3_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux58_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(5)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(5))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux58_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux58_a2_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a3_combout);

-- Location: LCCOMB_X36_Y34_N18
dut_aregisters_inst_aread_unit_aMux58_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)) # ((dut_aregisters_inst_aread_unit_aMux58_a3_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_aread_unit_aMux58_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_aread_unit_aMux58_a5_combout,
	datad => dut_aregisters_inst_aread_unit_aMux58_a3_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a6_combout);

-- Location: LCCOMB_X36_Y34_N4
dut_aregisters_inst_aread_unit_aMux58_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux58_a6_combout & (dut_aregisters_inst_aread_unit_aMux58_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a6_combout & ((dut_aregisters_inst_aread_unit_aMux58_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux58_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux58_a8_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_aread_unit_aMux58_a1_combout,
	datad => dut_aregisters_inst_aread_unit_aMux58_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a9_combout);

-- Location: LCCOMB_X36_Y35_N10
dut_aregisters_inst_aread_unit_aMux58_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(5)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(5),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux58_a10_combout);

-- Location: LCCOMB_X36_Y35_N30
dut_aregisters_inst_aread_unit_aMux58_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux58_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(5))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(5)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux58_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux58_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a11_combout);

-- Location: LCCOMB_X35_Y34_N18
dut_aregisters_inst_aread_unit_aMux58_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(5)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(5),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux58_a17_combout);

-- Location: LCCOMB_X36_Y34_N30
dut_aregisters_inst_aread_unit_aMux58_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux58_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(5))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(5)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- (((dut_aregisters_inst_aread_unit_aMux58_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux58_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a18_combout);

-- Location: LCCOMB_X37_Y37_N14
dut_aregisters_inst_aread_unit_aMux58_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(5)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(5) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(5),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux58_a14_combout);

-- Location: LCCOMB_X37_Y37_N4
dut_aregisters_inst_aread_unit_aMux58_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux58_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(5))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(5)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_aread_unit_aMux58_a14_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_aread_unit_aMux58_a14_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(5),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(5),
	combout => dut_aregisters_inst_aread_unit_aMux58_a15_combout);

-- Location: LCCOMB_X41_Y37_N20
dut_aregisters_inst_aread_unit_aMux58_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(5)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(5) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(5),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(5),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux58_a12_combout);

-- Location: LCCOMB_X42_Y37_N0
dut_aregisters_inst_aread_unit_aMux58_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a13_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux58_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(5)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(5))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux58_a12_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(5),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(5),
	datad => dut_aregisters_inst_aread_unit_aMux58_a12_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a13_combout);

-- Location: LCCOMB_X37_Y37_N28
dut_aregisters_inst_aread_unit_aMux58_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux58_a13_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_aread_unit_aMux58_a15_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux58_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux58_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a16_combout);

-- Location: LCCOMB_X36_Y34_N0
dut_aregisters_inst_aread_unit_aMux58_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux58_a16_combout & ((dut_aregisters_inst_aread_unit_aMux58_a18_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux58_a16_combout & (dut_aregisters_inst_aread_unit_aMux58_a11_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux58_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux58_a11_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_aread_unit_aMux58_a18_combout,
	datad => dut_aregisters_inst_aread_unit_aMux58_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a19_combout);

-- Location: LCCOMB_X36_Y34_N10
dut_aregisters_inst_aread_unit_aMux58_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux58_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & (dut_aregisters_inst_aread_unit_aMux58_a9_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- ((dut_aregisters_inst_aread_unit_aMux58_a19_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux58_a9_combout,
	datad => dut_aregisters_inst_aread_unit_aMux58_a19_combout,
	combout => dut_aregisters_inst_aread_unit_aMux58_a20_combout);

-- Location: LCCOMB_X36_Y34_N20
dut_aalu_inst_aAdd0_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a17_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux58_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(5),
	datac => SW_a6_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	combout => dut_aalu_inst_aAdd0_a17_combout);

-- Location: LCCOMB_X39_Y34_N26
dut_aalu_inst_aAdd0_a21 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a21_combout = (dut_aalu_inst_aAdd0_a20_combout & ((dut_aregisters_inst_aread_unit_aMux25_a20_combout & (dut_aalu_inst_aAdd0_a19 & VCC)) # (!dut_aregisters_inst_aread_unit_aMux25_a20_combout & (!dut_aalu_inst_aAdd0_a19)))) # 
-- (!dut_aalu_inst_aAdd0_a20_combout & ((dut_aregisters_inst_aread_unit_aMux25_a20_combout & (!dut_aalu_inst_aAdd0_a19)) # (!dut_aregisters_inst_aread_unit_aMux25_a20_combout & ((dut_aalu_inst_aAdd0_a19) # (GND)))))
-- dut_aalu_inst_aAdd0_a22 = CARRY((dut_aalu_inst_aAdd0_a20_combout & (!dut_aregisters_inst_aread_unit_aMux25_a20_combout & !dut_aalu_inst_aAdd0_a19)) # (!dut_aalu_inst_aAdd0_a20_combout & ((!dut_aalu_inst_aAdd0_a19) # 
-- (!dut_aregisters_inst_aread_unit_aMux25_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aAdd0_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	datad => VCC,
	cin => dut_aalu_inst_aAdd0_a19,
	combout => dut_aalu_inst_aAdd0_a21_combout,
	cout => dut_aalu_inst_aAdd0_a22);

-- Location: LCCOMB_X40_Y36_N26
dut_aalu_inst_aMux25_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux25_a2_combout = (dut_aregisters_inst_aread_unit_aMux25_a20_combout & (!SW_a6_a_ainput_o & dut_aalu_mux_inst_aOutput_a6_a_a6_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	datac => SW_a6_a_ainput_o,
	datad => dut_aalu_mux_inst_aOutput_a6_a_a6_combout,
	combout => dut_aalu_inst_aMux25_a2_combout);

-- Location: LCCOMB_X39_Y34_N10
dut_aalu_inst_aMux25_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux25_a3_combout = (dut_aalu_inst_aMux28_a1_combout & (!SW_a4_a_ainput_o & (dut_aalu_inst_aAdd0_a21_combout))) # (!dut_aalu_inst_aMux28_a1_combout & ((SW_a4_a_ainput_o) # ((dut_aalu_inst_aMux25_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a1_combout,
	datab => SW_a4_a_ainput_o,
	datac => dut_aalu_inst_aAdd0_a21_combout,
	datad => dut_aalu_inst_aMux25_a2_combout,
	combout => dut_aalu_inst_aMux25_a3_combout);

-- Location: LCCOMB_X39_Y34_N0
dut_aalu_inst_aMux25_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux25_a4_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux25_a3_combout & ((dut_aalu_inst_aMux25_a1_combout))) # (!dut_aalu_inst_aMux25_a3_combout & (dut_aalu_inst_aResult_var_a6_combout)))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux25_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aResult_var_a6_combout,
	datab => dut_aalu_inst_aMux25_a1_combout,
	datac => dut_aalu_inst_aMux28_a0_combout,
	datad => dut_aalu_inst_aMux25_a3_combout,
	combout => dut_aalu_inst_aMux25_a4_combout);

-- Location: LCCOMB_X39_Y34_N8
dut_aalu_inst_aMux25_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux25_a5_combout = (dut_aalu_inst_aMux31_a1_combout & ((dut_aalu_inst_aMux25_a0_combout) # ((!SW_a7_a_ainput_o & dut_aalu_inst_aMux25_a4_combout)))) # (!dut_aalu_inst_aMux31_a1_combout & (((!SW_a7_a_ainput_o & 
-- dut_aalu_inst_aMux25_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux31_a1_combout,
	datab => dut_aalu_inst_aMux25_a0_combout,
	datac => SW_a7_a_ainput_o,
	datad => dut_aalu_inst_aMux25_a4_combout,
	combout => dut_aalu_inst_aMux25_a5_combout);

-- Location: LCCOMB_X40_Y34_N30
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a6_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a6_a_afeeder_combout = dut_aalu_inst_aMux25_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dut_aalu_inst_aMux25_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a6_a_afeeder_combout);

-- Location: FF_X40_Y34_N31
dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data_a6_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a27_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(6));

-- Location: LCCOMB_X41_Y37_N28
dut_aregisters_inst_aread_unit_aMux57_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(6))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux57_a10_combout);

-- Location: LCCOMB_X41_Y37_N30
dut_aregisters_inst_aread_unit_aMux57_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux57_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_aread_unit_aMux57_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux57_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a11_combout);

-- Location: LCCOMB_X35_Y35_N24
dut_aregisters_inst_aread_unit_aMux57_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(6)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(6) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux57_a17_combout);

-- Location: LCCOMB_X35_Y35_N10
dut_aregisters_inst_aread_unit_aMux57_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux57_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- (((dut_aregisters_inst_aread_unit_aMux57_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux57_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a18_combout);

-- Location: LCCOMB_X37_Y37_N26
dut_aregisters_inst_aread_unit_aMux57_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(6)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(6) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux57_a14_combout);

-- Location: LCCOMB_X40_Y36_N14
dut_aregisters_inst_aread_unit_aMux57_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a15_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux57_a14_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(6)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a14_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(6))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux57_a14_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux57_a14_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a15_combout);

-- Location: LCCOMB_X37_Y35_N30
dut_aregisters_inst_aread_unit_aMux57_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(6))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & 
-- ((dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	combout => dut_aregisters_inst_aread_unit_aMux57_a12_combout);

-- Location: LCCOMB_X37_Y35_N12
dut_aregisters_inst_aread_unit_aMux57_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a13_combout = (dut_aregisters_inst_aread_unit_aMux57_a12_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(6)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a12_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(6) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux57_a12_combout,
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	combout => dut_aregisters_inst_aread_unit_aMux57_a13_combout);

-- Location: LCCOMB_X40_Y36_N10
dut_aregisters_inst_aread_unit_aMux57_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)) # ((dut_aregisters_inst_aread_unit_aMux57_a13_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (dut_aregisters_inst_aread_unit_aMux57_a15_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datac => dut_aregisters_inst_aread_unit_aMux57_a15_combout,
	datad => dut_aregisters_inst_aread_unit_aMux57_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a16_combout);

-- Location: LCCOMB_X40_Y36_N4
dut_aregisters_inst_aread_unit_aMux57_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux57_a16_combout & ((dut_aregisters_inst_aread_unit_aMux57_a18_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a16_combout & (dut_aregisters_inst_aread_unit_aMux57_a11_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux57_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_aread_unit_aMux57_a11_combout,
	datac => dut_aregisters_inst_aread_unit_aMux57_a18_combout,
	datad => dut_aregisters_inst_aread_unit_aMux57_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a19_combout);

-- Location: LCCOMB_X41_Y36_N2
dut_aregisters_inst_aread_unit_aMux57_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(6)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(6) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(6),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(6),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux57_a0_combout);

-- Location: LCCOMB_X40_Y36_N12
dut_aregisters_inst_aread_unit_aMux57_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_aread_unit_aMux57_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_aread_unit_aMux57_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux57_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a1_combout);

-- Location: LCCOMB_X37_Y33_N10
dut_aregisters_inst_aread_unit_aMux57_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(6)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(6) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux57_a7_combout);

-- Location: LCCOMB_X37_Y33_N16
dut_aregisters_inst_aread_unit_aMux57_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a8_combout = (dut_aregisters_inst_aread_unit_aMux57_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(6)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a7_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(6) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux57_a7_combout,
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	combout => dut_aregisters_inst_aread_unit_aMux57_a8_combout);

-- Location: LCCOMB_X40_Y37_N4
dut_aregisters_inst_aread_unit_aMux57_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(6)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(6) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux57_a2_combout);

-- Location: LCCOMB_X40_Y37_N30
dut_aregisters_inst_aread_unit_aMux57_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a3_combout = (dut_aregisters_inst_aread_unit_aMux57_a2_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(6)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a2_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(6) & ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(6),
	datab => dut_aregisters_inst_aread_unit_aMux57_a2_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux57_a3_combout);

-- Location: LCCOMB_X38_Y38_N22
dut_aregisters_inst_aread_unit_aMux57_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(6)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(6) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(18),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(6),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(6),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	combout => dut_aregisters_inst_aread_unit_aMux57_a4_combout);

-- Location: LCCOMB_X39_Y38_N26
dut_aregisters_inst_aread_unit_aMux57_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & ((dut_aregisters_inst_aread_unit_aMux57_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(6))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(6)))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19) & (((dut_aregisters_inst_aread_unit_aMux57_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(6),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(19),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(6),
	datad => dut_aregisters_inst_aread_unit_aMux57_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a5_combout);

-- Location: LCCOMB_X40_Y36_N2
dut_aregisters_inst_aread_unit_aMux57_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & (dut_aregisters_inst_aread_unit_aMux57_a3_combout)) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17) & ((dut_aregisters_inst_aread_unit_aMux57_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datab => dut_aregisters_inst_aread_unit_aMux57_a3_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(17),
	datad => dut_aregisters_inst_aread_unit_aMux57_a5_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a6_combout);

-- Location: LCCOMB_X40_Y36_N16
dut_aregisters_inst_aread_unit_aMux57_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & ((dut_aregisters_inst_aread_unit_aMux57_a6_combout & ((dut_aregisters_inst_aread_unit_aMux57_a8_combout))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a6_combout & (dut_aregisters_inst_aread_unit_aMux57_a1_combout)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16) & (((dut_aregisters_inst_aread_unit_aMux57_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux57_a1_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(16),
	datac => dut_aregisters_inst_aread_unit_aMux57_a8_combout,
	datad => dut_aregisters_inst_aread_unit_aMux57_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a9_combout);

-- Location: LCCOMB_X40_Y36_N6
dut_aregisters_inst_aread_unit_aMux57_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux57_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & ((dut_aregisters_inst_aread_unit_aMux57_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20) & 
-- (dut_aregisters_inst_aread_unit_aMux57_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(20),
	datac => dut_aregisters_inst_aread_unit_aMux57_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux57_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux57_a20_combout);

-- Location: LCCOMB_X40_Y36_N20
dut_aalu_inst_aAdd0_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a20_combout = SW_a6_a_ainput_o $ (((SW_a8_a_ainput_o & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6))) # (!SW_a8_a_ainput_o & ((dut_aregisters_inst_aread_unit_aMux57_a20_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a8_a_ainput_o,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(6),
	datac => SW_a6_a_ainput_o,
	datad => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	combout => dut_aalu_inst_aAdd0_a20_combout);

-- Location: LCCOMB_X39_Y34_N28
dut_aalu_inst_aAdd0_a24 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aAdd0_a24_combout = dut_aalu_inst_aAdd0_a23_combout $ (dut_aalu_inst_aAdd0_a22 $ (!dut_aregisters_inst_aread_unit_aMux24_a20_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dut_aalu_inst_aAdd0_a23_combout,
	datad => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	cin => dut_aalu_inst_aAdd0_a22,
	combout => dut_aalu_inst_aAdd0_a24_combout);

-- Location: LCCOMB_X39_Y34_N6
dut_aalu_inst_aMux24_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux24_a3_combout = (dut_aalu_inst_aMux28_a1_combout & (!SW_a4_a_ainput_o & ((dut_aalu_inst_aAdd0_a24_combout)))) # (!dut_aalu_inst_aMux28_a1_combout & ((SW_a4_a_ainput_o) # ((dut_aalu_inst_aMux24_a2_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a1_combout,
	datab => SW_a4_a_ainput_o,
	datac => dut_aalu_inst_aMux24_a2_combout,
	datad => dut_aalu_inst_aAdd0_a24_combout,
	combout => dut_aalu_inst_aMux24_a3_combout);

-- Location: LCCOMB_X39_Y34_N2
dut_aalu_inst_aMux24_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux24_a4_combout = (dut_aalu_inst_aMux28_a0_combout & ((dut_aalu_inst_aMux24_a3_combout & (dut_aalu_inst_aMux24_a1_combout)) # (!dut_aalu_inst_aMux24_a3_combout & ((dut_aalu_inst_aResult_var_a7_combout))))) # 
-- (!dut_aalu_inst_aMux28_a0_combout & (((dut_aalu_inst_aMux24_a3_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux28_a0_combout,
	datab => dut_aalu_inst_aMux24_a1_combout,
	datac => dut_aalu_inst_aResult_var_a7_combout,
	datad => dut_aalu_inst_aMux24_a3_combout,
	combout => dut_aalu_inst_aMux24_a4_combout);

-- Location: LCCOMB_X39_Y34_N30
dut_aalu_inst_aMux24_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aalu_inst_aMux24_a5_combout = (SW_a7_a_ainput_o & (dut_aalu_inst_aMux24_a0_combout & (dut_aalu_inst_aMux31_a1_combout))) # (!SW_a7_a_ainput_o & ((dut_aalu_inst_aMux24_a4_combout) # ((dut_aalu_inst_aMux24_a0_combout & 
-- dut_aalu_inst_aMux31_a1_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SW_a7_a_ainput_o,
	datab => dut_aalu_inst_aMux24_a0_combout,
	datac => dut_aalu_inst_aMux31_a1_combout,
	datad => dut_aalu_inst_aMux24_a4_combout,
	combout => dut_aalu_inst_aMux24_a5_combout);

-- Location: LCCOMB_X34_Y34_N26
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a7_a_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a7_a_afeeder_combout = dut_aalu_inst_aMux24_a5_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dut_aalu_inst_aMux24_a5_combout,
	combout => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a7_a_afeeder_combout);

-- Location: FF_X34_Y34_N27
dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => CLOCK_50_ainputclkctrl_outclk,
	d => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data_a7_a_afeeder_combout,
	clrn => KEY_a0_a_ainput_o,
	ena => dut_aregisters_inst_awrite_unit_adec_aDecoder0_a37_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(7));

-- Location: LCCOMB_X38_Y34_N18
dut_aregisters_inst_aread_unit_aMux24_a17 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a17_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(7)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(7) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a12_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a14_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux24_a17_combout);

-- Location: LCCOMB_X38_Y34_N12
dut_aregisters_inst_aread_unit_aMux24_a18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a18_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_aread_unit_aMux24_a17_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a17_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_aregisters_inst_aread_unit_aMux24_a17_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a13_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a15_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux24_a17_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a18_combout);

-- Location: LCCOMB_X39_Y33_N28
dut_aregisters_inst_aread_unit_aMux24_a10 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a10_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a9_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a8_aregisters_areg_data(7),
	combout => dut_aregisters_inst_aread_unit_aMux24_a10_combout);

-- Location: LCCOMB_X39_Y33_N18
dut_aregisters_inst_aread_unit_aMux24_a11 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a11_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux24_a10_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a10_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux24_a10_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a10_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a11_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux24_a10_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a11_combout);

-- Location: LCCOMB_X35_Y37_N10
dut_aregisters_inst_aread_unit_aMux24_a14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a14_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(7)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a0_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a1_aregisters_areg_data(7),
	combout => dut_aregisters_inst_aread_unit_aMux24_a14_combout);

-- Location: LCCOMB_X35_Y37_N4
dut_aregisters_inst_aread_unit_aMux24_a15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a15_combout = (dut_aregisters_inst_aread_unit_aMux24_a14_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(7))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a14_combout & (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux24_a14_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a2_aregisters_areg_data(7),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a3_aregisters_areg_data(7),
	combout => dut_aregisters_inst_aread_unit_aMux24_a15_combout);

-- Location: LCCOMB_X42_Y37_N18
dut_aregisters_inst_aread_unit_aMux24_a12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a12_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(7)) # 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(7) & 
-- !dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a6_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a4_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux24_a12_combout);

-- Location: LCCOMB_X42_Y37_N16
dut_aregisters_inst_aread_unit_aMux24_a13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a13_combout = (dut_aregisters_inst_aread_unit_aMux24_a12_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(7)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a12_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(7) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a7_aregisters_areg_data(7),
	datab => dut_aregisters_inst_aread_unit_aMux24_a12_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a5_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	combout => dut_aregisters_inst_aread_unit_aMux24_a13_combout);

-- Location: LCCOMB_X38_Y37_N12
dut_aregisters_inst_aread_unit_aMux24_a16 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a16_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)) # (dut_aregisters_inst_aread_unit_aMux24_a13_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_aread_unit_aMux24_a15_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux24_a15_combout,
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datad => dut_aregisters_inst_aread_unit_aMux24_a13_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a16_combout);

-- Location: LCCOMB_X38_Y37_N26
dut_aregisters_inst_aread_unit_aMux24_a19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a19_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_aread_unit_aMux24_a16_combout & (dut_aregisters_inst_aread_unit_aMux24_a18_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a16_combout & ((dut_aregisters_inst_aread_unit_aMux24_a11_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_aregisters_inst_aread_unit_aMux24_a16_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_aread_unit_aMux24_a18_combout,
	datac => dut_aregisters_inst_aread_unit_aMux24_a11_combout,
	datad => dut_aregisters_inst_aread_unit_aMux24_a16_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a19_combout);

-- Location: LCCOMB_X40_Y33_N14
dut_aregisters_inst_aread_unit_aMux24_a7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a7_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(7)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a19_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_aregisters_inst_awrite_unit_a_areg_list_a23_aregisters_areg_data(7),
	combout => dut_aregisters_inst_aread_unit_aMux24_a7_combout);

-- Location: LCCOMB_X40_Y33_N28
dut_aregisters_inst_aread_unit_aMux24_a8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a8_combout = (dut_aregisters_inst_aread_unit_aMux24_a7_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(7)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a7_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(7) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a31_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a27_aregisters_areg_data(7),
	datac => dut_aregisters_inst_aread_unit_aMux24_a7_combout,
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux24_a8_combout);

-- Location: LCCOMB_X35_Y34_N20
dut_aregisters_inst_aread_unit_aMux24_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a0_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(7)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a18_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a26_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux24_a0_combout);

-- Location: LCCOMB_X37_Y34_N16
dut_aregisters_inst_aread_unit_aMux24_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a1_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux24_a0_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a0_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux24_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a22_aregisters_areg_data(7),
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a30_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux24_a0_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a1_combout);

-- Location: LCCOMB_X36_Y36_N16
dut_aregisters_inst_aread_unit_aMux24_a4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a4_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & 
-- ((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & ((dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(7)))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24) & 
-- (dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a16_aregisters_areg_data(7),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a24_aregisters_areg_data(7),
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux24_a4_combout);

-- Location: LCCOMB_X36_Y36_N22
dut_aregisters_inst_aread_unit_aMux24_a5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a5_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & ((dut_aregisters_inst_aread_unit_aMux24_a4_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(7)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a4_combout & (dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(7))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_aread_unit_aMux24_a4_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a20_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a28_aregisters_areg_data(7),
	datad => dut_aregisters_inst_aread_unit_aMux24_a4_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a5_combout);

-- Location: LCCOMB_X36_Y38_N16
dut_aregisters_inst_aread_unit_aMux24_a2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a2_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (((dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(7)) # 
-- (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23) & (dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(7) & 
-- ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(23),
	datab => dut_aregisters_inst_awrite_unit_a_areg_list_a17_aregisters_areg_data(7),
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a21_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux24_a2_combout);

-- Location: LCCOMB_X36_Y38_N22
dut_aregisters_inst_aread_unit_aMux24_a3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a3_combout = (dut_aregisters_inst_aread_unit_aMux24_a2_combout & ((dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(7)) # ((!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a2_combout & (((dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(7) & dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_awrite_unit_a_areg_list_a29_aregisters_areg_data(7),
	datab => dut_aregisters_inst_aread_unit_aMux24_a2_combout,
	datac => dut_aregisters_inst_awrite_unit_a_areg_list_a25_aregisters_areg_data(7),
	datad => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(24),
	combout => dut_aregisters_inst_aread_unit_aMux24_a3_combout);

-- Location: LCCOMB_X35_Y37_N28
dut_aregisters_inst_aread_unit_aMux24_a6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a6_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (((dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22)) # (dut_aregisters_inst_aread_unit_aMux24_a3_combout)))) # 
-- (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21) & (dut_aregisters_inst_aread_unit_aMux24_a5_combout & (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(21),
	datab => dut_aregisters_inst_aread_unit_aMux24_a5_combout,
	datac => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datad => dut_aregisters_inst_aread_unit_aMux24_a3_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a6_combout);

-- Location: LCCOMB_X38_Y37_N10
dut_aregisters_inst_aread_unit_aMux24_a9 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a9_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & ((dut_aregisters_inst_aread_unit_aMux24_a6_combout & (dut_aregisters_inst_aread_unit_aMux24_a8_combout)) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a6_combout & ((dut_aregisters_inst_aread_unit_aMux24_a1_combout))))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22) & (((dut_aregisters_inst_aread_unit_aMux24_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(22),
	datab => dut_aregisters_inst_aread_unit_aMux24_a8_combout,
	datac => dut_aregisters_inst_aread_unit_aMux24_a1_combout,
	datad => dut_aregisters_inst_aread_unit_aMux24_a6_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a9_combout);

-- Location: LCCOMB_X38_Y37_N0
dut_aregisters_inst_aread_unit_aMux24_a20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- dut_aregisters_inst_aread_unit_aMux24_a20_combout = (dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & ((dut_aregisters_inst_aread_unit_aMux24_a9_combout))) # (!dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25) & 
-- (dut_aregisters_inst_aread_unit_aMux24_a19_combout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dut_amem_inst_aaltsyncram_component_aauto_generated_aq_a(25),
	datac => dut_aregisters_inst_aread_unit_aMux24_a19_combout,
	datad => dut_aregisters_inst_aread_unit_aMux24_a9_combout,
	combout => dut_aregisters_inst_aread_unit_aMux24_a20_combout);

-- Location: LCCOMB_X37_Y34_N6
Mux13_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux13_a0_combout = (dut_aregisters_inst_aread_unit_aMux24_a20_combout & (dut_aregisters_inst_aread_unit_aMux27_a20_combout & (dut_aregisters_inst_aread_unit_aMux26_a20_combout $ (dut_aregisters_inst_aread_unit_aMux25_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a20_combout & (!dut_aregisters_inst_aread_unit_aMux26_a20_combout & (dut_aregisters_inst_aread_unit_aMux27_a20_combout $ (dut_aregisters_inst_aread_unit_aMux25_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => Mux13_a0_combout);

-- Location: LCCOMB_X42_Y34_N28
Mux12_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux12_a0_combout = (dut_aregisters_inst_aread_unit_aMux26_a20_combout & ((dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((dut_aregisters_inst_aread_unit_aMux24_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux25_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux26_a20_combout & (dut_aregisters_inst_aread_unit_aMux25_a20_combout & (dut_aregisters_inst_aread_unit_aMux24_a20_combout $ 
-- (dut_aregisters_inst_aread_unit_aMux27_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	combout => Mux12_a0_combout);

-- Location: LCCOMB_X37_Y34_N24
Mux11_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux11_a0_combout = (dut_aregisters_inst_aread_unit_aMux24_a20_combout & (dut_aregisters_inst_aread_unit_aMux25_a20_combout & ((dut_aregisters_inst_aread_unit_aMux26_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux27_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux24_a20_combout & (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & (dut_aregisters_inst_aread_unit_aMux26_a20_combout & !dut_aregisters_inst_aread_unit_aMux25_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => Mux11_a0_combout);

-- Location: LCCOMB_X41_Y34_N26
Mux10_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux10_a0_combout = (dut_aregisters_inst_aread_unit_aMux26_a20_combout & ((dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((dut_aregisters_inst_aread_unit_aMux25_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux24_a20_combout & !dut_aregisters_inst_aread_unit_aMux25_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux26_a20_combout & (!dut_aregisters_inst_aread_unit_aMux24_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux27_a20_combout $ (dut_aregisters_inst_aread_unit_aMux25_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => Mux10_a0_combout);

-- Location: LCCOMB_X37_Y34_N14
Mux9_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux9_a0_combout = (dut_aregisters_inst_aread_unit_aMux26_a20_combout & (dut_aregisters_inst_aread_unit_aMux27_a20_combout & (!dut_aregisters_inst_aread_unit_aMux24_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux26_a20_combout & 
-- ((dut_aregisters_inst_aread_unit_aMux25_a20_combout & ((!dut_aregisters_inst_aread_unit_aMux24_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux25_a20_combout & (dut_aregisters_inst_aread_unit_aMux27_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => Mux9_a0_combout);

-- Location: LCCOMB_X37_Y34_N28
Mux8_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux8_a0_combout = (dut_aregisters_inst_aread_unit_aMux27_a20_combout & (dut_aregisters_inst_aread_unit_aMux24_a20_combout $ (((dut_aregisters_inst_aread_unit_aMux26_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux25_a20_combout))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & (!dut_aregisters_inst_aread_unit_aMux24_a20_combout & (dut_aregisters_inst_aread_unit_aMux26_a20_combout & !dut_aregisters_inst_aread_unit_aMux25_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	combout => Mux8_a0_combout);

-- Location: LCCOMB_X42_Y34_N26
Mux7_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux7_a0_combout = (dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((dut_aregisters_inst_aread_unit_aMux24_a20_combout) # (dut_aregisters_inst_aread_unit_aMux25_a20_combout $ (dut_aregisters_inst_aread_unit_aMux26_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux27_a20_combout & ((dut_aregisters_inst_aread_unit_aMux26_a20_combout) # (dut_aregisters_inst_aread_unit_aMux25_a20_combout $ (dut_aregisters_inst_aread_unit_aMux24_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux25_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux26_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux24_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux27_a20_combout,
	combout => Mux7_a0_combout);

-- Location: LCCOMB_X43_Y35_N24
Mux20_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux20_a0_combout = (dut_aregisters_inst_aread_unit_aMux60_a20_combout & (dut_aregisters_inst_aread_unit_aMux63_a20_combout & (dut_aregisters_inst_aread_unit_aMux62_a20_combout $ (dut_aregisters_inst_aread_unit_aMux61_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux60_a20_combout & (!dut_aregisters_inst_aread_unit_aMux62_a20_combout & (dut_aregisters_inst_aread_unit_aMux63_a20_combout $ (dut_aregisters_inst_aread_unit_aMux61_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => Mux20_a0_combout);

-- Location: LCCOMB_X43_Y35_N6
Mux19_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux19_a0_combout = (dut_aregisters_inst_aread_unit_aMux62_a20_combout & ((dut_aregisters_inst_aread_unit_aMux63_a20_combout & (dut_aregisters_inst_aread_unit_aMux60_a20_combout)) # (!dut_aregisters_inst_aread_unit_aMux63_a20_combout & 
-- ((dut_aregisters_inst_aread_unit_aMux61_a20_combout))))) # (!dut_aregisters_inst_aread_unit_aMux62_a20_combout & (dut_aregisters_inst_aread_unit_aMux61_a20_combout & (dut_aregisters_inst_aread_unit_aMux63_a20_combout $ 
-- (dut_aregisters_inst_aread_unit_aMux60_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => Mux19_a0_combout);

-- Location: LCCOMB_X42_Y35_N20
Mux18_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux18_a0_combout = (dut_aregisters_inst_aread_unit_aMux61_a20_combout & (dut_aregisters_inst_aread_unit_aMux60_a20_combout & ((dut_aregisters_inst_aread_unit_aMux62_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux63_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux61_a20_combout & (!dut_aregisters_inst_aread_unit_aMux63_a20_combout & (dut_aregisters_inst_aread_unit_aMux62_a20_combout & !dut_aregisters_inst_aread_unit_aMux60_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	combout => Mux18_a0_combout);

-- Location: LCCOMB_X41_Y35_N26
Mux17_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux17_a0_combout = (dut_aregisters_inst_aread_unit_aMux62_a20_combout & ((dut_aregisters_inst_aread_unit_aMux63_a20_combout & (dut_aregisters_inst_aread_unit_aMux61_a20_combout)) # (!dut_aregisters_inst_aread_unit_aMux63_a20_combout & 
-- (!dut_aregisters_inst_aread_unit_aMux61_a20_combout & dut_aregisters_inst_aread_unit_aMux60_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux62_a20_combout & (!dut_aregisters_inst_aread_unit_aMux60_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux63_a20_combout $ (dut_aregisters_inst_aread_unit_aMux61_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	combout => Mux17_a0_combout);

-- Location: LCCOMB_X43_Y35_N0
Mux16_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux16_a0_combout = (dut_aregisters_inst_aread_unit_aMux62_a20_combout & (dut_aregisters_inst_aread_unit_aMux63_a20_combout & (!dut_aregisters_inst_aread_unit_aMux60_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux62_a20_combout & 
-- ((dut_aregisters_inst_aread_unit_aMux61_a20_combout & ((!dut_aregisters_inst_aread_unit_aMux60_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux61_a20_combout & (dut_aregisters_inst_aread_unit_aMux63_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => Mux16_a0_combout);

-- Location: LCCOMB_X43_Y35_N22
Mux15_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux15_a0_combout = (dut_aregisters_inst_aread_unit_aMux62_a20_combout & (!dut_aregisters_inst_aread_unit_aMux60_a20_combout & ((dut_aregisters_inst_aread_unit_aMux63_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux61_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux62_a20_combout & (dut_aregisters_inst_aread_unit_aMux63_a20_combout & (dut_aregisters_inst_aread_unit_aMux60_a20_combout $ (!dut_aregisters_inst_aread_unit_aMux61_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => Mux15_a0_combout);

-- Location: LCCOMB_X43_Y35_N12
Mux14_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux14_a0_combout = (dut_aregisters_inst_aread_unit_aMux63_a20_combout & ((dut_aregisters_inst_aread_unit_aMux60_a20_combout) # (dut_aregisters_inst_aread_unit_aMux62_a20_combout $ (dut_aregisters_inst_aread_unit_aMux61_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux63_a20_combout & ((dut_aregisters_inst_aread_unit_aMux62_a20_combout) # (dut_aregisters_inst_aread_unit_aMux60_a20_combout $ (dut_aregisters_inst_aread_unit_aMux61_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux62_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux63_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux60_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux61_a20_combout,
	combout => Mux14_a0_combout);

-- Location: LCCOMB_X39_Y38_N12
Mux27_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux27_a0_combout = (dut_aregisters_inst_aread_unit_aMux57_a20_combout & (!dut_aregisters_inst_aread_unit_aMux58_a20_combout & (dut_aregisters_inst_aread_unit_aMux59_a20_combout $ (!dut_aregisters_inst_aread_unit_aMux56_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a20_combout & (dut_aregisters_inst_aread_unit_aMux59_a20_combout & (dut_aregisters_inst_aread_unit_aMux58_a20_combout $ (!dut_aregisters_inst_aread_unit_aMux56_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux27_a0_combout);

-- Location: LCCOMB_X39_Y38_N30
Mux26_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux26_a0_combout = (dut_aregisters_inst_aread_unit_aMux58_a20_combout & ((dut_aregisters_inst_aread_unit_aMux59_a20_combout & ((dut_aregisters_inst_aread_unit_aMux56_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux59_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux57_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux58_a20_combout & (dut_aregisters_inst_aread_unit_aMux57_a20_combout & (dut_aregisters_inst_aread_unit_aMux59_a20_combout $ 
-- (dut_aregisters_inst_aread_unit_aMux56_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux26_a0_combout);

-- Location: LCCOMB_X39_Y38_N16
Mux25_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux25_a0_combout = (dut_aregisters_inst_aread_unit_aMux57_a20_combout & (dut_aregisters_inst_aread_unit_aMux56_a20_combout & ((dut_aregisters_inst_aread_unit_aMux58_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux59_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux57_a20_combout & (!dut_aregisters_inst_aread_unit_aMux59_a20_combout & (dut_aregisters_inst_aread_unit_aMux58_a20_combout & !dut_aregisters_inst_aread_unit_aMux56_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux25_a0_combout);

-- Location: LCCOMB_X39_Y38_N2
Mux24_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux24_a0_combout = (dut_aregisters_inst_aread_unit_aMux58_a20_combout & ((dut_aregisters_inst_aread_unit_aMux59_a20_combout & (dut_aregisters_inst_aread_unit_aMux57_a20_combout)) # (!dut_aregisters_inst_aread_unit_aMux59_a20_combout & 
-- (!dut_aregisters_inst_aread_unit_aMux57_a20_combout & dut_aregisters_inst_aread_unit_aMux56_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux58_a20_combout & (!dut_aregisters_inst_aread_unit_aMux56_a20_combout & 
-- (dut_aregisters_inst_aread_unit_aMux59_a20_combout $ (dut_aregisters_inst_aread_unit_aMux57_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux24_a0_combout);

-- Location: LCCOMB_X39_Y38_N4
Mux23_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux23_a0_combout = (dut_aregisters_inst_aread_unit_aMux58_a20_combout & (dut_aregisters_inst_aread_unit_aMux59_a20_combout & ((!dut_aregisters_inst_aread_unit_aMux56_a20_combout)))) # (!dut_aregisters_inst_aread_unit_aMux58_a20_combout & 
-- ((dut_aregisters_inst_aread_unit_aMux57_a20_combout & ((!dut_aregisters_inst_aread_unit_aMux56_a20_combout))) # (!dut_aregisters_inst_aread_unit_aMux57_a20_combout & (dut_aregisters_inst_aread_unit_aMux59_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux23_a0_combout);

-- Location: LCCOMB_X39_Y38_N10
Mux22_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux22_a0_combout = (dut_aregisters_inst_aread_unit_aMux59_a20_combout & (dut_aregisters_inst_aread_unit_aMux56_a20_combout $ (((dut_aregisters_inst_aread_unit_aMux58_a20_combout) # (!dut_aregisters_inst_aread_unit_aMux57_a20_combout))))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a20_combout & (!dut_aregisters_inst_aread_unit_aMux57_a20_combout & (dut_aregisters_inst_aread_unit_aMux58_a20_combout & !dut_aregisters_inst_aread_unit_aMux56_a20_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux22_a0_combout);

-- Location: LCCOMB_X39_Y38_N24
Mux21_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux21_a0_combout = (dut_aregisters_inst_aread_unit_aMux59_a20_combout & ((dut_aregisters_inst_aread_unit_aMux56_a20_combout) # (dut_aregisters_inst_aread_unit_aMux57_a20_combout $ (dut_aregisters_inst_aread_unit_aMux58_a20_combout)))) # 
-- (!dut_aregisters_inst_aread_unit_aMux59_a20_combout & ((dut_aregisters_inst_aread_unit_aMux58_a20_combout) # (dut_aregisters_inst_aread_unit_aMux57_a20_combout $ (dut_aregisters_inst_aread_unit_aMux56_a20_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aregisters_inst_aread_unit_aMux59_a20_combout,
	datab => dut_aregisters_inst_aread_unit_aMux57_a20_combout,
	datac => dut_aregisters_inst_aread_unit_aMux58_a20_combout,
	datad => dut_aregisters_inst_aread_unit_aMux56_a20_combout,
	combout => Mux21_a0_combout);

-- Location: LCCOMB_X42_Y38_N20
Mux34_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux34_a0_combout = (dut_aalu_inst_aMux29_a5_combout & (!dut_aalu_inst_aMux30_a5_combout & (dut_aalu_inst_aMux28_a7_combout $ (!dut_aalu_inst_aMux31_a6_combout)))) # (!dut_aalu_inst_aMux29_a5_combout & (dut_aalu_inst_aMux31_a6_combout & 
-- (dut_aalu_inst_aMux30_a5_combout $ (!dut_aalu_inst_aMux28_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux30_a5_combout,
	datab => dut_aalu_inst_aMux29_a5_combout,
	datac => dut_aalu_inst_aMux28_a7_combout,
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => Mux34_a0_combout);

-- Location: LCCOMB_X42_Y38_N6
Mux33_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux33_a0_combout = (dut_aalu_inst_aMux30_a5_combout & ((dut_aalu_inst_aMux31_a6_combout & ((dut_aalu_inst_aMux28_a7_combout))) # (!dut_aalu_inst_aMux31_a6_combout & (dut_aalu_inst_aMux29_a5_combout)))) # (!dut_aalu_inst_aMux30_a5_combout & 
-- (dut_aalu_inst_aMux29_a5_combout & (dut_aalu_inst_aMux28_a7_combout $ (dut_aalu_inst_aMux31_a6_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux30_a5_combout,
	datab => dut_aalu_inst_aMux29_a5_combout,
	datac => dut_aalu_inst_aMux28_a7_combout,
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => Mux33_a0_combout);

-- Location: LCCOMB_X42_Y38_N4
Mux32_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux32_a0_combout = (dut_aalu_inst_aMux29_a5_combout & (dut_aalu_inst_aMux28_a7_combout & ((dut_aalu_inst_aMux30_a5_combout) # (!dut_aalu_inst_aMux31_a6_combout)))) # (!dut_aalu_inst_aMux29_a5_combout & (dut_aalu_inst_aMux30_a5_combout & 
-- (!dut_aalu_inst_aMux28_a7_combout & !dut_aalu_inst_aMux31_a6_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux30_a5_combout,
	datab => dut_aalu_inst_aMux29_a5_combout,
	datac => dut_aalu_inst_aMux28_a7_combout,
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => Mux32_a0_combout);

-- Location: LCCOMB_X36_Y38_N26
Mux31_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux31_a0_combout = (dut_aalu_inst_aMux30_a5_combout & ((dut_aalu_inst_aMux31_a6_combout & (dut_aalu_inst_aMux29_a5_combout)) # (!dut_aalu_inst_aMux31_a6_combout & (!dut_aalu_inst_aMux29_a5_combout & dut_aalu_inst_aMux28_a7_combout)))) # 
-- (!dut_aalu_inst_aMux30_a5_combout & (!dut_aalu_inst_aMux28_a7_combout & (dut_aalu_inst_aMux31_a6_combout $ (dut_aalu_inst_aMux29_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux31_a6_combout,
	datab => dut_aalu_inst_aMux30_a5_combout,
	datac => dut_aalu_inst_aMux29_a5_combout,
	datad => dut_aalu_inst_aMux28_a7_combout,
	combout => Mux31_a0_combout);

-- Location: LCCOMB_X41_Y38_N20
Mux30_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux30_a0_combout = (dut_aalu_inst_aMux30_a5_combout & (((!dut_aalu_inst_aMux28_a7_combout & dut_aalu_inst_aMux31_a6_combout)))) # (!dut_aalu_inst_aMux30_a5_combout & ((dut_aalu_inst_aMux29_a5_combout & (!dut_aalu_inst_aMux28_a7_combout)) # 
-- (!dut_aalu_inst_aMux29_a5_combout & ((dut_aalu_inst_aMux31_a6_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux29_a5_combout,
	datab => dut_aalu_inst_aMux28_a7_combout,
	datac => dut_aalu_inst_aMux31_a6_combout,
	datad => dut_aalu_inst_aMux30_a5_combout,
	combout => Mux30_a0_combout);

-- Location: LCCOMB_X42_Y38_N10
Mux29_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux29_a0_combout = (dut_aalu_inst_aMux30_a5_combout & (!dut_aalu_inst_aMux28_a7_combout & ((dut_aalu_inst_aMux31_a6_combout) # (!dut_aalu_inst_aMux29_a5_combout)))) # (!dut_aalu_inst_aMux30_a5_combout & (dut_aalu_inst_aMux31_a6_combout & 
-- (dut_aalu_inst_aMux29_a5_combout $ (!dut_aalu_inst_aMux28_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux30_a5_combout,
	datab => dut_aalu_inst_aMux29_a5_combout,
	datac => dut_aalu_inst_aMux28_a7_combout,
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => Mux29_a0_combout);

-- Location: LCCOMB_X41_Y35_N24
Mux28_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux28_a0_combout = (dut_aalu_inst_aMux31_a6_combout & ((dut_aalu_inst_aMux28_a7_combout) # (dut_aalu_inst_aMux29_a5_combout $ (dut_aalu_inst_aMux30_a5_combout)))) # (!dut_aalu_inst_aMux31_a6_combout & ((dut_aalu_inst_aMux30_a5_combout) # 
-- (dut_aalu_inst_aMux29_a5_combout $ (dut_aalu_inst_aMux28_a7_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux29_a5_combout,
	datab => dut_aalu_inst_aMux28_a7_combout,
	datac => dut_aalu_inst_aMux30_a5_combout,
	datad => dut_aalu_inst_aMux31_a6_combout,
	combout => Mux28_a0_combout);

-- Location: LCCOMB_X42_Y37_N14
Mux41_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux41_a0_combout = (dut_aalu_inst_aMux24_a5_combout & (dut_aalu_inst_aMux27_a5_combout & (dut_aalu_inst_aMux26_a5_combout $ (dut_aalu_inst_aMux25_a5_combout)))) # (!dut_aalu_inst_aMux24_a5_combout & (!dut_aalu_inst_aMux26_a5_combout & 
-- (dut_aalu_inst_aMux27_a5_combout $ (dut_aalu_inst_aMux25_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux24_a5_combout,
	datab => dut_aalu_inst_aMux26_a5_combout,
	datac => dut_aalu_inst_aMux27_a5_combout,
	datad => dut_aalu_inst_aMux25_a5_combout,
	combout => Mux41_a0_combout);

-- Location: LCCOMB_X42_Y34_N24
Mux40_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux40_a0_combout = (dut_aalu_inst_aMux24_a5_combout & ((dut_aalu_inst_aMux27_a5_combout & ((dut_aalu_inst_aMux26_a5_combout))) # (!dut_aalu_inst_aMux27_a5_combout & (dut_aalu_inst_aMux25_a5_combout)))) # (!dut_aalu_inst_aMux24_a5_combout & 
-- (dut_aalu_inst_aMux25_a5_combout & (dut_aalu_inst_aMux27_a5_combout $ (dut_aalu_inst_aMux26_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux25_a5_combout,
	datab => dut_aalu_inst_aMux24_a5_combout,
	datac => dut_aalu_inst_aMux27_a5_combout,
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => Mux40_a0_combout);

-- Location: LCCOMB_X41_Y38_N12
Mux39_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux39_a0_combout = (dut_aalu_inst_aMux24_a5_combout & (dut_aalu_inst_aMux25_a5_combout & ((dut_aalu_inst_aMux26_a5_combout) # (!dut_aalu_inst_aMux27_a5_combout)))) # (!dut_aalu_inst_aMux24_a5_combout & (!dut_aalu_inst_aMux27_a5_combout & 
-- (!dut_aalu_inst_aMux25_a5_combout & dut_aalu_inst_aMux26_a5_combout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux27_a5_combout,
	datab => dut_aalu_inst_aMux24_a5_combout,
	datac => dut_aalu_inst_aMux25_a5_combout,
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => Mux39_a0_combout);

-- Location: LCCOMB_X41_Y34_N24
Mux38_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux38_a0_combout = (dut_aalu_inst_aMux26_a5_combout & ((dut_aalu_inst_aMux25_a5_combout & ((dut_aalu_inst_aMux27_a5_combout))) # (!dut_aalu_inst_aMux25_a5_combout & (dut_aalu_inst_aMux24_a5_combout & !dut_aalu_inst_aMux27_a5_combout)))) # 
-- (!dut_aalu_inst_aMux26_a5_combout & (!dut_aalu_inst_aMux24_a5_combout & (dut_aalu_inst_aMux25_a5_combout $ (dut_aalu_inst_aMux27_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux26_a5_combout,
	datab => dut_aalu_inst_aMux25_a5_combout,
	datac => dut_aalu_inst_aMux24_a5_combout,
	datad => dut_aalu_inst_aMux27_a5_combout,
	combout => Mux38_a0_combout);

-- Location: LCCOMB_X42_Y34_N6
Mux37_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux37_a0_combout = (dut_aalu_inst_aMux26_a5_combout & (((!dut_aalu_inst_aMux24_a5_combout & dut_aalu_inst_aMux27_a5_combout)))) # (!dut_aalu_inst_aMux26_a5_combout & ((dut_aalu_inst_aMux25_a5_combout & (!dut_aalu_inst_aMux24_a5_combout)) # 
-- (!dut_aalu_inst_aMux25_a5_combout & ((dut_aalu_inst_aMux27_a5_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux25_a5_combout,
	datab => dut_aalu_inst_aMux24_a5_combout,
	datac => dut_aalu_inst_aMux27_a5_combout,
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => Mux37_a0_combout);

-- Location: LCCOMB_X35_Y34_N22
Mux36_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux36_a0_combout = (dut_aalu_inst_aMux25_a5_combout & (dut_aalu_inst_aMux27_a5_combout & (dut_aalu_inst_aMux24_a5_combout $ (dut_aalu_inst_aMux26_a5_combout)))) # (!dut_aalu_inst_aMux25_a5_combout & (!dut_aalu_inst_aMux24_a5_combout & 
-- ((dut_aalu_inst_aMux27_a5_combout) # (dut_aalu_inst_aMux26_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux25_a5_combout,
	datab => dut_aalu_inst_aMux24_a5_combout,
	datac => dut_aalu_inst_aMux27_a5_combout,
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => Mux36_a0_combout);

-- Location: LCCOMB_X42_Y34_N16
Mux35_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- Mux35_a0_combout = (dut_aalu_inst_aMux27_a5_combout & ((dut_aalu_inst_aMux24_a5_combout) # (dut_aalu_inst_aMux25_a5_combout $ (dut_aalu_inst_aMux26_a5_combout)))) # (!dut_aalu_inst_aMux27_a5_combout & ((dut_aalu_inst_aMux26_a5_combout) # 
-- (dut_aalu_inst_aMux25_a5_combout $ (dut_aalu_inst_aMux24_a5_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dut_aalu_inst_aMux25_a5_combout,
	datab => dut_aalu_inst_aMux24_a5_combout,
	datac => dut_aalu_inst_aMux27_a5_combout,
	datad => dut_aalu_inst_aMux26_a5_combout,
	combout => Mux35_a0_combout);

-- Location: IOIBUF_X51_Y54_N29
SW_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => SW_a0_a_ainput_o);

-- Location: IOIBUF_X51_Y54_N22
SW_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => SW_a1_a_ainput_o);

-- Location: IOIBUF_X51_Y54_N1
SW_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => SW_a2_a_ainput_o);

-- Location: IOIBUF_X54_Y54_N29
SW_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => SW_a3_a_ainput_o);

-- Location: IOIBUF_X49_Y54_N29
KEY_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => KEY_a1_a_ainput_o);

-- Location: UNVM_X0_Y40_N40
a_aQUARTUS_CREATED_UNVM_a : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => a_aGND_acombout,
	xe_ye => a_aGND_acombout,
	se => a_aGND_acombout,
	busy => a_aQUARTUS_CREATED_UNVM_a_abusy);

-- Location: ADCBLOCK_X43_Y52_N0
a_aQUARTUS_CREATED_ADC1_a : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => a_aGND_acombout,
	usr_pwd => VCC,
	tsen => a_aGND_acombout,
	chsel => a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC1_a_aeoc);

-- Location: ADCBLOCK_X43_Y51_N0
a_aQUARTUS_CREATED_ADC2_a : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => a_aGND_acombout,
	usr_pwd => VCC,
	tsen => a_aGND_acombout,
	chsel => a_aQUARTUS_CREATED_ADC2_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC2_a_aeoc);

ww_HEX0(0) <= HEX0_a0_a_aoutput_o;

ww_HEX0(1) <= HEX0_a1_a_aoutput_o;

ww_HEX0(2) <= HEX0_a2_a_aoutput_o;

ww_HEX0(3) <= HEX0_a3_a_aoutput_o;

ww_HEX0(4) <= HEX0_a4_a_aoutput_o;

ww_HEX0(5) <= HEX0_a5_a_aoutput_o;

ww_HEX0(6) <= HEX0_a6_a_aoutput_o;

ww_HEX1(0) <= HEX1_a0_a_aoutput_o;

ww_HEX1(1) <= HEX1_a1_a_aoutput_o;

ww_HEX1(2) <= HEX1_a2_a_aoutput_o;

ww_HEX1(3) <= HEX1_a3_a_aoutput_o;

ww_HEX1(4) <= HEX1_a4_a_aoutput_o;

ww_HEX1(5) <= HEX1_a5_a_aoutput_o;

ww_HEX1(6) <= HEX1_a6_a_aoutput_o;

ww_HEX2(0) <= HEX2_a0_a_aoutput_o;

ww_HEX2(1) <= HEX2_a1_a_aoutput_o;

ww_HEX2(2) <= HEX2_a2_a_aoutput_o;

ww_HEX2(3) <= HEX2_a3_a_aoutput_o;

ww_HEX2(4) <= HEX2_a4_a_aoutput_o;

ww_HEX2(5) <= HEX2_a5_a_aoutput_o;

ww_HEX2(6) <= HEX2_a6_a_aoutput_o;

ww_HEX3(0) <= HEX3_a0_a_aoutput_o;

ww_HEX3(1) <= HEX3_a1_a_aoutput_o;

ww_HEX3(2) <= HEX3_a2_a_aoutput_o;

ww_HEX3(3) <= HEX3_a3_a_aoutput_o;

ww_HEX3(4) <= HEX3_a4_a_aoutput_o;

ww_HEX3(5) <= HEX3_a5_a_aoutput_o;

ww_HEX3(6) <= HEX3_a6_a_aoutput_o;

ww_HEX4(0) <= HEX4_a0_a_aoutput_o;

ww_HEX4(1) <= HEX4_a1_a_aoutput_o;

ww_HEX4(2) <= HEX4_a2_a_aoutput_o;

ww_HEX4(3) <= HEX4_a3_a_aoutput_o;

ww_HEX4(4) <= HEX4_a4_a_aoutput_o;

ww_HEX4(5) <= HEX4_a5_a_aoutput_o;

ww_HEX4(6) <= HEX4_a6_a_aoutput_o;

ww_HEX5(0) <= HEX5_a0_a_aoutput_o;

ww_HEX5(1) <= HEX5_a1_a_aoutput_o;

ww_HEX5(2) <= HEX5_a2_a_aoutput_o;

ww_HEX5(3) <= HEX5_a3_a_aoutput_o;

ww_HEX5(4) <= HEX5_a4_a_aoutput_o;

ww_HEX5(5) <= HEX5_a5_a_aoutput_o;

ww_HEX5(6) <= HEX5_a6_a_aoutput_o;

ww_LEDR(0) <= LEDR_a0_a_aoutput_o;

ww_LEDR(1) <= LEDR_a1_a_aoutput_o;

ww_LEDR(2) <= LEDR_a2_a_aoutput_o;

ww_LEDR(3) <= LEDR_a3_a_aoutput_o;

ww_LEDR(4) <= LEDR_a4_a_aoutput_o;

ww_LEDR(5) <= LEDR_a5_a_aoutput_o;

ww_LEDR(6) <= LEDR_a6_a_aoutput_o;

ww_LEDR(7) <= LEDR_a7_a_aoutput_o;

ww_LEDR(8) <= LEDR_a8_a_aoutput_o;

ww_LEDR(9) <= LEDR_a9_a_aoutput_o;
END structure;


