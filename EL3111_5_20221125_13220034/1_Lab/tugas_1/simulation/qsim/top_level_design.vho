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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "11/29/2022 04:21:19"

-- 
-- Device: Altera 10CL120YF780I7G Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level_design IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	ALU_result_out : BUFFER std_logic_vector(31 DOWNTO 0);
	PCin_out : BUFFER std_logic_vector(31 DOWNTO 0);
	PCout_out : BUFFER std_logic_vector(31 DOWNTO 0);
	instr_out : BUFFER std_logic_vector(31 DOWNTO 0);
	pcplus4_out : BUFFER std_logic_vector(31 DOWNTO 0);
	rd1_out : BUFFER std_logic_vector(31 DOWNTO 0);
	rd2_out : BUFFER std_logic_vector(31 DOWNTO 0);
	instr_15_11_out : BUFFER std_logic_vector(4 DOWNTO 0);
	instr_20_16_out : BUFFER std_logic_vector(4 DOWNTO 0);
	instr_25_21_out : BUFFER std_logic_vector(4 DOWNTO 0);
	signJump_out : BUFFER std_logic;
	signBNE_out : BUFFER std_logic;
	signBranch_out : BUFFER std_logic;
	signMemToReg_out : BUFFER std_logic;
	signMemRead_out : BUFFER std_logic;
	signMemWrite_out : BUFFER std_logic;
	signRegdest_out : BUFFER std_logic_vector(1 DOWNTO 0);
	signRegwrite_out : BUFFER std_logic;
	signALUsrc_out : BUFFER std_logic;
	signALUctrl_out : BUFFER std_logic;
	signextend_out : BUFFER std_logic_vector(31 DOWNTO 0);
	leftshift28_out : BUFFER std_logic_vector(27 DOWNTO 0);
	leftshift32_out : BUFFER std_logic_vector(31 DOWNTO 0);
	BranchResult : BUFFER std_logic;
	RDData_out : BUFFER std_logic_vector(7 DOWNTO 0);
	WRData3_out : BUFFER std_logic_vector(31 DOWNTO 0);
	OP_In_out : BUFFER std_logic_vector(5 DOWNTO 0);
	FUNCT_In_out : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END top_level_design;

-- Design Ports Information
-- ALU_result_out[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[4]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[6]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[9]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[11]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[12]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[14]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[15]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[17]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[18]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[19]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[20]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[21]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[22]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[23]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[24]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[26]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[27]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[28]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[29]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[30]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_result_out[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[0]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[8]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[12]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[14]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[16]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[18]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[20]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[21]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[22]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[23]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[24]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[25]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[27]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[28]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[29]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin_out[31]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[11]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[16]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[17]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[18]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[20]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[21]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[22]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[24]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[25]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[26]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[28]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[29]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[30]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout_out[31]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[1]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[4]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[6]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[7]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[9]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[10]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[11]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[12]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[13]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[14]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[15]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[16]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[17]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[18]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[19]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[20]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[21]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[22]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[23]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[24]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[25]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[26]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[27]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[28]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[29]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[30]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_out[31]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[11]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[12]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[14]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[15]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[16]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[17]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[19]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[20]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[21]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[23]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[24]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[25]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[26]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[27]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[28]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[29]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[30]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcplus4_out[31]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[2]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[5]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[6]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[9]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[10]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[11]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[13]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[15]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[16]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[18]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[19]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[20]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[21]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[22]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[23]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[24]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[25]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[26]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[27]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[28]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[29]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[30]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1_out[31]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[1]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[4]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[5]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[8]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[10]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[15]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[16]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[17]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[18]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[19]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[20]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[21]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[22]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[23]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[24]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[25]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[26]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[27]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[28]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[29]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[30]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd2_out[31]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_15_11_out[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_15_11_out[1]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_15_11_out[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_15_11_out[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_15_11_out[4]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_20_16_out[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_20_16_out[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_20_16_out[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_20_16_out[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_20_16_out[4]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_25_21_out[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_25_21_out[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_25_21_out[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_25_21_out[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_25_21_out[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signJump_out	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signBNE_out	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signBranch_out	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signMemToReg_out	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signMemRead_out	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signMemWrite_out	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signRegdest_out[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signRegdest_out[1]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signRegwrite_out	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signALUsrc_out	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signALUctrl_out	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[3]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[4]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[5]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[6]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[9]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[10]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[12]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[13]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[14]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[16]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[18]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[19]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[20]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[21]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[22]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[23]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[24]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[25]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[26]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[27]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[28]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[29]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[30]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signextend_out[31]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[0]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[6]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[7]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[8]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[9]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[10]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[11]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[12]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[13]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[14]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[15]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[16]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[17]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[19]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[20]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[21]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[22]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[24]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[25]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[26]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift28_out[27]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[3]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[6]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[8]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[9]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[10]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[11]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[12]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[13]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[14]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[15]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[16]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[17]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[18]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[19]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[20]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[21]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[22]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[23]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[24]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[26]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[27]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[28]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[29]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[30]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leftshift32_out[31]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchResult	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[1]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[2]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[3]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[4]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[5]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDData_out[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[1]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[4]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[5]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[10]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[12]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[14]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[15]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[16]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[18]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[19]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[20]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[22]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[23]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[24]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[25]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[26]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[27]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[28]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[29]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[30]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRData3_out[31]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_In_out[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_In_out[1]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_In_out[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_In_out[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_In_out[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP_In_out[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT_In_out[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT_In_out[1]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT_In_out[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT_In_out[3]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT_In_out[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT_In_out[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level_design IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ALU_result_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PCin_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PCout_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instr_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pcplus4_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rd1_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rd2_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instr_15_11_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instr_20_16_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instr_25_21_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_signJump_out : std_logic;
SIGNAL ww_signBNE_out : std_logic;
SIGNAL ww_signBranch_out : std_logic;
SIGNAL ww_signMemToReg_out : std_logic;
SIGNAL ww_signMemRead_out : std_logic;
SIGNAL ww_signMemWrite_out : std_logic;
SIGNAL ww_signRegdest_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_signRegwrite_out : std_logic;
SIGNAL ww_signALUsrc_out : std_logic;
SIGNAL ww_signALUctrl_out : std_logic;
SIGNAL ww_signextend_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_leftshift28_out : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_leftshift32_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BranchResult : std_logic;
SIGNAL ww_RDData_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WRData3_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OP_In_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_FUNCT_In_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_result_out[0]~output_o\ : std_logic;
SIGNAL \ALU_result_out[1]~output_o\ : std_logic;
SIGNAL \ALU_result_out[2]~output_o\ : std_logic;
SIGNAL \ALU_result_out[3]~output_o\ : std_logic;
SIGNAL \ALU_result_out[4]~output_o\ : std_logic;
SIGNAL \ALU_result_out[5]~output_o\ : std_logic;
SIGNAL \ALU_result_out[6]~output_o\ : std_logic;
SIGNAL \ALU_result_out[7]~output_o\ : std_logic;
SIGNAL \ALU_result_out[8]~output_o\ : std_logic;
SIGNAL \ALU_result_out[9]~output_o\ : std_logic;
SIGNAL \ALU_result_out[10]~output_o\ : std_logic;
SIGNAL \ALU_result_out[11]~output_o\ : std_logic;
SIGNAL \ALU_result_out[12]~output_o\ : std_logic;
SIGNAL \ALU_result_out[13]~output_o\ : std_logic;
SIGNAL \ALU_result_out[14]~output_o\ : std_logic;
SIGNAL \ALU_result_out[15]~output_o\ : std_logic;
SIGNAL \ALU_result_out[16]~output_o\ : std_logic;
SIGNAL \ALU_result_out[17]~output_o\ : std_logic;
SIGNAL \ALU_result_out[18]~output_o\ : std_logic;
SIGNAL \ALU_result_out[19]~output_o\ : std_logic;
SIGNAL \ALU_result_out[20]~output_o\ : std_logic;
SIGNAL \ALU_result_out[21]~output_o\ : std_logic;
SIGNAL \ALU_result_out[22]~output_o\ : std_logic;
SIGNAL \ALU_result_out[23]~output_o\ : std_logic;
SIGNAL \ALU_result_out[24]~output_o\ : std_logic;
SIGNAL \ALU_result_out[25]~output_o\ : std_logic;
SIGNAL \ALU_result_out[26]~output_o\ : std_logic;
SIGNAL \ALU_result_out[27]~output_o\ : std_logic;
SIGNAL \ALU_result_out[28]~output_o\ : std_logic;
SIGNAL \ALU_result_out[29]~output_o\ : std_logic;
SIGNAL \ALU_result_out[30]~output_o\ : std_logic;
SIGNAL \ALU_result_out[31]~output_o\ : std_logic;
SIGNAL \PCin_out[0]~output_o\ : std_logic;
SIGNAL \PCin_out[1]~output_o\ : std_logic;
SIGNAL \PCin_out[2]~output_o\ : std_logic;
SIGNAL \PCin_out[3]~output_o\ : std_logic;
SIGNAL \PCin_out[4]~output_o\ : std_logic;
SIGNAL \PCin_out[5]~output_o\ : std_logic;
SIGNAL \PCin_out[6]~output_o\ : std_logic;
SIGNAL \PCin_out[7]~output_o\ : std_logic;
SIGNAL \PCin_out[8]~output_o\ : std_logic;
SIGNAL \PCin_out[9]~output_o\ : std_logic;
SIGNAL \PCin_out[10]~output_o\ : std_logic;
SIGNAL \PCin_out[11]~output_o\ : std_logic;
SIGNAL \PCin_out[12]~output_o\ : std_logic;
SIGNAL \PCin_out[13]~output_o\ : std_logic;
SIGNAL \PCin_out[14]~output_o\ : std_logic;
SIGNAL \PCin_out[15]~output_o\ : std_logic;
SIGNAL \PCin_out[16]~output_o\ : std_logic;
SIGNAL \PCin_out[17]~output_o\ : std_logic;
SIGNAL \PCin_out[18]~output_o\ : std_logic;
SIGNAL \PCin_out[19]~output_o\ : std_logic;
SIGNAL \PCin_out[20]~output_o\ : std_logic;
SIGNAL \PCin_out[21]~output_o\ : std_logic;
SIGNAL \PCin_out[22]~output_o\ : std_logic;
SIGNAL \PCin_out[23]~output_o\ : std_logic;
SIGNAL \PCin_out[24]~output_o\ : std_logic;
SIGNAL \PCin_out[25]~output_o\ : std_logic;
SIGNAL \PCin_out[26]~output_o\ : std_logic;
SIGNAL \PCin_out[27]~output_o\ : std_logic;
SIGNAL \PCin_out[28]~output_o\ : std_logic;
SIGNAL \PCin_out[29]~output_o\ : std_logic;
SIGNAL \PCin_out[30]~output_o\ : std_logic;
SIGNAL \PCin_out[31]~output_o\ : std_logic;
SIGNAL \PCout_out[0]~output_o\ : std_logic;
SIGNAL \PCout_out[1]~output_o\ : std_logic;
SIGNAL \PCout_out[2]~output_o\ : std_logic;
SIGNAL \PCout_out[3]~output_o\ : std_logic;
SIGNAL \PCout_out[4]~output_o\ : std_logic;
SIGNAL \PCout_out[5]~output_o\ : std_logic;
SIGNAL \PCout_out[6]~output_o\ : std_logic;
SIGNAL \PCout_out[7]~output_o\ : std_logic;
SIGNAL \PCout_out[8]~output_o\ : std_logic;
SIGNAL \PCout_out[9]~output_o\ : std_logic;
SIGNAL \PCout_out[10]~output_o\ : std_logic;
SIGNAL \PCout_out[11]~output_o\ : std_logic;
SIGNAL \PCout_out[12]~output_o\ : std_logic;
SIGNAL \PCout_out[13]~output_o\ : std_logic;
SIGNAL \PCout_out[14]~output_o\ : std_logic;
SIGNAL \PCout_out[15]~output_o\ : std_logic;
SIGNAL \PCout_out[16]~output_o\ : std_logic;
SIGNAL \PCout_out[17]~output_o\ : std_logic;
SIGNAL \PCout_out[18]~output_o\ : std_logic;
SIGNAL \PCout_out[19]~output_o\ : std_logic;
SIGNAL \PCout_out[20]~output_o\ : std_logic;
SIGNAL \PCout_out[21]~output_o\ : std_logic;
SIGNAL \PCout_out[22]~output_o\ : std_logic;
SIGNAL \PCout_out[23]~output_o\ : std_logic;
SIGNAL \PCout_out[24]~output_o\ : std_logic;
SIGNAL \PCout_out[25]~output_o\ : std_logic;
SIGNAL \PCout_out[26]~output_o\ : std_logic;
SIGNAL \PCout_out[27]~output_o\ : std_logic;
SIGNAL \PCout_out[28]~output_o\ : std_logic;
SIGNAL \PCout_out[29]~output_o\ : std_logic;
SIGNAL \PCout_out[30]~output_o\ : std_logic;
SIGNAL \PCout_out[31]~output_o\ : std_logic;
SIGNAL \instr_out[0]~output_o\ : std_logic;
SIGNAL \instr_out[1]~output_o\ : std_logic;
SIGNAL \instr_out[2]~output_o\ : std_logic;
SIGNAL \instr_out[3]~output_o\ : std_logic;
SIGNAL \instr_out[4]~output_o\ : std_logic;
SIGNAL \instr_out[5]~output_o\ : std_logic;
SIGNAL \instr_out[6]~output_o\ : std_logic;
SIGNAL \instr_out[7]~output_o\ : std_logic;
SIGNAL \instr_out[8]~output_o\ : std_logic;
SIGNAL \instr_out[9]~output_o\ : std_logic;
SIGNAL \instr_out[10]~output_o\ : std_logic;
SIGNAL \instr_out[11]~output_o\ : std_logic;
SIGNAL \instr_out[12]~output_o\ : std_logic;
SIGNAL \instr_out[13]~output_o\ : std_logic;
SIGNAL \instr_out[14]~output_o\ : std_logic;
SIGNAL \instr_out[15]~output_o\ : std_logic;
SIGNAL \instr_out[16]~output_o\ : std_logic;
SIGNAL \instr_out[17]~output_o\ : std_logic;
SIGNAL \instr_out[18]~output_o\ : std_logic;
SIGNAL \instr_out[19]~output_o\ : std_logic;
SIGNAL \instr_out[20]~output_o\ : std_logic;
SIGNAL \instr_out[21]~output_o\ : std_logic;
SIGNAL \instr_out[22]~output_o\ : std_logic;
SIGNAL \instr_out[23]~output_o\ : std_logic;
SIGNAL \instr_out[24]~output_o\ : std_logic;
SIGNAL \instr_out[25]~output_o\ : std_logic;
SIGNAL \instr_out[26]~output_o\ : std_logic;
SIGNAL \instr_out[27]~output_o\ : std_logic;
SIGNAL \instr_out[28]~output_o\ : std_logic;
SIGNAL \instr_out[29]~output_o\ : std_logic;
SIGNAL \instr_out[30]~output_o\ : std_logic;
SIGNAL \instr_out[31]~output_o\ : std_logic;
SIGNAL \pcplus4_out[0]~output_o\ : std_logic;
SIGNAL \pcplus4_out[1]~output_o\ : std_logic;
SIGNAL \pcplus4_out[2]~output_o\ : std_logic;
SIGNAL \pcplus4_out[3]~output_o\ : std_logic;
SIGNAL \pcplus4_out[4]~output_o\ : std_logic;
SIGNAL \pcplus4_out[5]~output_o\ : std_logic;
SIGNAL \pcplus4_out[6]~output_o\ : std_logic;
SIGNAL \pcplus4_out[7]~output_o\ : std_logic;
SIGNAL \pcplus4_out[8]~output_o\ : std_logic;
SIGNAL \pcplus4_out[9]~output_o\ : std_logic;
SIGNAL \pcplus4_out[10]~output_o\ : std_logic;
SIGNAL \pcplus4_out[11]~output_o\ : std_logic;
SIGNAL \pcplus4_out[12]~output_o\ : std_logic;
SIGNAL \pcplus4_out[13]~output_o\ : std_logic;
SIGNAL \pcplus4_out[14]~output_o\ : std_logic;
SIGNAL \pcplus4_out[15]~output_o\ : std_logic;
SIGNAL \pcplus4_out[16]~output_o\ : std_logic;
SIGNAL \pcplus4_out[17]~output_o\ : std_logic;
SIGNAL \pcplus4_out[18]~output_o\ : std_logic;
SIGNAL \pcplus4_out[19]~output_o\ : std_logic;
SIGNAL \pcplus4_out[20]~output_o\ : std_logic;
SIGNAL \pcplus4_out[21]~output_o\ : std_logic;
SIGNAL \pcplus4_out[22]~output_o\ : std_logic;
SIGNAL \pcplus4_out[23]~output_o\ : std_logic;
SIGNAL \pcplus4_out[24]~output_o\ : std_logic;
SIGNAL \pcplus4_out[25]~output_o\ : std_logic;
SIGNAL \pcplus4_out[26]~output_o\ : std_logic;
SIGNAL \pcplus4_out[27]~output_o\ : std_logic;
SIGNAL \pcplus4_out[28]~output_o\ : std_logic;
SIGNAL \pcplus4_out[29]~output_o\ : std_logic;
SIGNAL \pcplus4_out[30]~output_o\ : std_logic;
SIGNAL \pcplus4_out[31]~output_o\ : std_logic;
SIGNAL \rd1_out[0]~output_o\ : std_logic;
SIGNAL \rd1_out[1]~output_o\ : std_logic;
SIGNAL \rd1_out[2]~output_o\ : std_logic;
SIGNAL \rd1_out[3]~output_o\ : std_logic;
SIGNAL \rd1_out[4]~output_o\ : std_logic;
SIGNAL \rd1_out[5]~output_o\ : std_logic;
SIGNAL \rd1_out[6]~output_o\ : std_logic;
SIGNAL \rd1_out[7]~output_o\ : std_logic;
SIGNAL \rd1_out[8]~output_o\ : std_logic;
SIGNAL \rd1_out[9]~output_o\ : std_logic;
SIGNAL \rd1_out[10]~output_o\ : std_logic;
SIGNAL \rd1_out[11]~output_o\ : std_logic;
SIGNAL \rd1_out[12]~output_o\ : std_logic;
SIGNAL \rd1_out[13]~output_o\ : std_logic;
SIGNAL \rd1_out[14]~output_o\ : std_logic;
SIGNAL \rd1_out[15]~output_o\ : std_logic;
SIGNAL \rd1_out[16]~output_o\ : std_logic;
SIGNAL \rd1_out[17]~output_o\ : std_logic;
SIGNAL \rd1_out[18]~output_o\ : std_logic;
SIGNAL \rd1_out[19]~output_o\ : std_logic;
SIGNAL \rd1_out[20]~output_o\ : std_logic;
SIGNAL \rd1_out[21]~output_o\ : std_logic;
SIGNAL \rd1_out[22]~output_o\ : std_logic;
SIGNAL \rd1_out[23]~output_o\ : std_logic;
SIGNAL \rd1_out[24]~output_o\ : std_logic;
SIGNAL \rd1_out[25]~output_o\ : std_logic;
SIGNAL \rd1_out[26]~output_o\ : std_logic;
SIGNAL \rd1_out[27]~output_o\ : std_logic;
SIGNAL \rd1_out[28]~output_o\ : std_logic;
SIGNAL \rd1_out[29]~output_o\ : std_logic;
SIGNAL \rd1_out[30]~output_o\ : std_logic;
SIGNAL \rd1_out[31]~output_o\ : std_logic;
SIGNAL \rd2_out[0]~output_o\ : std_logic;
SIGNAL \rd2_out[1]~output_o\ : std_logic;
SIGNAL \rd2_out[2]~output_o\ : std_logic;
SIGNAL \rd2_out[3]~output_o\ : std_logic;
SIGNAL \rd2_out[4]~output_o\ : std_logic;
SIGNAL \rd2_out[5]~output_o\ : std_logic;
SIGNAL \rd2_out[6]~output_o\ : std_logic;
SIGNAL \rd2_out[7]~output_o\ : std_logic;
SIGNAL \rd2_out[8]~output_o\ : std_logic;
SIGNAL \rd2_out[9]~output_o\ : std_logic;
SIGNAL \rd2_out[10]~output_o\ : std_logic;
SIGNAL \rd2_out[11]~output_o\ : std_logic;
SIGNAL \rd2_out[12]~output_o\ : std_logic;
SIGNAL \rd2_out[13]~output_o\ : std_logic;
SIGNAL \rd2_out[14]~output_o\ : std_logic;
SIGNAL \rd2_out[15]~output_o\ : std_logic;
SIGNAL \rd2_out[16]~output_o\ : std_logic;
SIGNAL \rd2_out[17]~output_o\ : std_logic;
SIGNAL \rd2_out[18]~output_o\ : std_logic;
SIGNAL \rd2_out[19]~output_o\ : std_logic;
SIGNAL \rd2_out[20]~output_o\ : std_logic;
SIGNAL \rd2_out[21]~output_o\ : std_logic;
SIGNAL \rd2_out[22]~output_o\ : std_logic;
SIGNAL \rd2_out[23]~output_o\ : std_logic;
SIGNAL \rd2_out[24]~output_o\ : std_logic;
SIGNAL \rd2_out[25]~output_o\ : std_logic;
SIGNAL \rd2_out[26]~output_o\ : std_logic;
SIGNAL \rd2_out[27]~output_o\ : std_logic;
SIGNAL \rd2_out[28]~output_o\ : std_logic;
SIGNAL \rd2_out[29]~output_o\ : std_logic;
SIGNAL \rd2_out[30]~output_o\ : std_logic;
SIGNAL \rd2_out[31]~output_o\ : std_logic;
SIGNAL \instr_15_11_out[0]~output_o\ : std_logic;
SIGNAL \instr_15_11_out[1]~output_o\ : std_logic;
SIGNAL \instr_15_11_out[2]~output_o\ : std_logic;
SIGNAL \instr_15_11_out[3]~output_o\ : std_logic;
SIGNAL \instr_15_11_out[4]~output_o\ : std_logic;
SIGNAL \instr_20_16_out[0]~output_o\ : std_logic;
SIGNAL \instr_20_16_out[1]~output_o\ : std_logic;
SIGNAL \instr_20_16_out[2]~output_o\ : std_logic;
SIGNAL \instr_20_16_out[3]~output_o\ : std_logic;
SIGNAL \instr_20_16_out[4]~output_o\ : std_logic;
SIGNAL \instr_25_21_out[0]~output_o\ : std_logic;
SIGNAL \instr_25_21_out[1]~output_o\ : std_logic;
SIGNAL \instr_25_21_out[2]~output_o\ : std_logic;
SIGNAL \instr_25_21_out[3]~output_o\ : std_logic;
SIGNAL \instr_25_21_out[4]~output_o\ : std_logic;
SIGNAL \signJump_out~output_o\ : std_logic;
SIGNAL \signBNE_out~output_o\ : std_logic;
SIGNAL \signBranch_out~output_o\ : std_logic;
SIGNAL \signMemToReg_out~output_o\ : std_logic;
SIGNAL \signMemRead_out~output_o\ : std_logic;
SIGNAL \signMemWrite_out~output_o\ : std_logic;
SIGNAL \signRegdest_out[0]~output_o\ : std_logic;
SIGNAL \signRegdest_out[1]~output_o\ : std_logic;
SIGNAL \signRegwrite_out~output_o\ : std_logic;
SIGNAL \signALUsrc_out~output_o\ : std_logic;
SIGNAL \signALUctrl_out~output_o\ : std_logic;
SIGNAL \signextend_out[0]~output_o\ : std_logic;
SIGNAL \signextend_out[1]~output_o\ : std_logic;
SIGNAL \signextend_out[2]~output_o\ : std_logic;
SIGNAL \signextend_out[3]~output_o\ : std_logic;
SIGNAL \signextend_out[4]~output_o\ : std_logic;
SIGNAL \signextend_out[5]~output_o\ : std_logic;
SIGNAL \signextend_out[6]~output_o\ : std_logic;
SIGNAL \signextend_out[7]~output_o\ : std_logic;
SIGNAL \signextend_out[8]~output_o\ : std_logic;
SIGNAL \signextend_out[9]~output_o\ : std_logic;
SIGNAL \signextend_out[10]~output_o\ : std_logic;
SIGNAL \signextend_out[11]~output_o\ : std_logic;
SIGNAL \signextend_out[12]~output_o\ : std_logic;
SIGNAL \signextend_out[13]~output_o\ : std_logic;
SIGNAL \signextend_out[14]~output_o\ : std_logic;
SIGNAL \signextend_out[15]~output_o\ : std_logic;
SIGNAL \signextend_out[16]~output_o\ : std_logic;
SIGNAL \signextend_out[17]~output_o\ : std_logic;
SIGNAL \signextend_out[18]~output_o\ : std_logic;
SIGNAL \signextend_out[19]~output_o\ : std_logic;
SIGNAL \signextend_out[20]~output_o\ : std_logic;
SIGNAL \signextend_out[21]~output_o\ : std_logic;
SIGNAL \signextend_out[22]~output_o\ : std_logic;
SIGNAL \signextend_out[23]~output_o\ : std_logic;
SIGNAL \signextend_out[24]~output_o\ : std_logic;
SIGNAL \signextend_out[25]~output_o\ : std_logic;
SIGNAL \signextend_out[26]~output_o\ : std_logic;
SIGNAL \signextend_out[27]~output_o\ : std_logic;
SIGNAL \signextend_out[28]~output_o\ : std_logic;
SIGNAL \signextend_out[29]~output_o\ : std_logic;
SIGNAL \signextend_out[30]~output_o\ : std_logic;
SIGNAL \signextend_out[31]~output_o\ : std_logic;
SIGNAL \leftshift28_out[0]~output_o\ : std_logic;
SIGNAL \leftshift28_out[1]~output_o\ : std_logic;
SIGNAL \leftshift28_out[2]~output_o\ : std_logic;
SIGNAL \leftshift28_out[3]~output_o\ : std_logic;
SIGNAL \leftshift28_out[4]~output_o\ : std_logic;
SIGNAL \leftshift28_out[5]~output_o\ : std_logic;
SIGNAL \leftshift28_out[6]~output_o\ : std_logic;
SIGNAL \leftshift28_out[7]~output_o\ : std_logic;
SIGNAL \leftshift28_out[8]~output_o\ : std_logic;
SIGNAL \leftshift28_out[9]~output_o\ : std_logic;
SIGNAL \leftshift28_out[10]~output_o\ : std_logic;
SIGNAL \leftshift28_out[11]~output_o\ : std_logic;
SIGNAL \leftshift28_out[12]~output_o\ : std_logic;
SIGNAL \leftshift28_out[13]~output_o\ : std_logic;
SIGNAL \leftshift28_out[14]~output_o\ : std_logic;
SIGNAL \leftshift28_out[15]~output_o\ : std_logic;
SIGNAL \leftshift28_out[16]~output_o\ : std_logic;
SIGNAL \leftshift28_out[17]~output_o\ : std_logic;
SIGNAL \leftshift28_out[18]~output_o\ : std_logic;
SIGNAL \leftshift28_out[19]~output_o\ : std_logic;
SIGNAL \leftshift28_out[20]~output_o\ : std_logic;
SIGNAL \leftshift28_out[21]~output_o\ : std_logic;
SIGNAL \leftshift28_out[22]~output_o\ : std_logic;
SIGNAL \leftshift28_out[23]~output_o\ : std_logic;
SIGNAL \leftshift28_out[24]~output_o\ : std_logic;
SIGNAL \leftshift28_out[25]~output_o\ : std_logic;
SIGNAL \leftshift28_out[26]~output_o\ : std_logic;
SIGNAL \leftshift28_out[27]~output_o\ : std_logic;
SIGNAL \leftshift32_out[0]~output_o\ : std_logic;
SIGNAL \leftshift32_out[1]~output_o\ : std_logic;
SIGNAL \leftshift32_out[2]~output_o\ : std_logic;
SIGNAL \leftshift32_out[3]~output_o\ : std_logic;
SIGNAL \leftshift32_out[4]~output_o\ : std_logic;
SIGNAL \leftshift32_out[5]~output_o\ : std_logic;
SIGNAL \leftshift32_out[6]~output_o\ : std_logic;
SIGNAL \leftshift32_out[7]~output_o\ : std_logic;
SIGNAL \leftshift32_out[8]~output_o\ : std_logic;
SIGNAL \leftshift32_out[9]~output_o\ : std_logic;
SIGNAL \leftshift32_out[10]~output_o\ : std_logic;
SIGNAL \leftshift32_out[11]~output_o\ : std_logic;
SIGNAL \leftshift32_out[12]~output_o\ : std_logic;
SIGNAL \leftshift32_out[13]~output_o\ : std_logic;
SIGNAL \leftshift32_out[14]~output_o\ : std_logic;
SIGNAL \leftshift32_out[15]~output_o\ : std_logic;
SIGNAL \leftshift32_out[16]~output_o\ : std_logic;
SIGNAL \leftshift32_out[17]~output_o\ : std_logic;
SIGNAL \leftshift32_out[18]~output_o\ : std_logic;
SIGNAL \leftshift32_out[19]~output_o\ : std_logic;
SIGNAL \leftshift32_out[20]~output_o\ : std_logic;
SIGNAL \leftshift32_out[21]~output_o\ : std_logic;
SIGNAL \leftshift32_out[22]~output_o\ : std_logic;
SIGNAL \leftshift32_out[23]~output_o\ : std_logic;
SIGNAL \leftshift32_out[24]~output_o\ : std_logic;
SIGNAL \leftshift32_out[25]~output_o\ : std_logic;
SIGNAL \leftshift32_out[26]~output_o\ : std_logic;
SIGNAL \leftshift32_out[27]~output_o\ : std_logic;
SIGNAL \leftshift32_out[28]~output_o\ : std_logic;
SIGNAL \leftshift32_out[29]~output_o\ : std_logic;
SIGNAL \leftshift32_out[30]~output_o\ : std_logic;
SIGNAL \leftshift32_out[31]~output_o\ : std_logic;
SIGNAL \BranchResult~output_o\ : std_logic;
SIGNAL \RDData_out[0]~output_o\ : std_logic;
SIGNAL \RDData_out[1]~output_o\ : std_logic;
SIGNAL \RDData_out[2]~output_o\ : std_logic;
SIGNAL \RDData_out[3]~output_o\ : std_logic;
SIGNAL \RDData_out[4]~output_o\ : std_logic;
SIGNAL \RDData_out[5]~output_o\ : std_logic;
SIGNAL \RDData_out[6]~output_o\ : std_logic;
SIGNAL \RDData_out[7]~output_o\ : std_logic;
SIGNAL \WRData3_out[0]~output_o\ : std_logic;
SIGNAL \WRData3_out[1]~output_o\ : std_logic;
SIGNAL \WRData3_out[2]~output_o\ : std_logic;
SIGNAL \WRData3_out[3]~output_o\ : std_logic;
SIGNAL \WRData3_out[4]~output_o\ : std_logic;
SIGNAL \WRData3_out[5]~output_o\ : std_logic;
SIGNAL \WRData3_out[6]~output_o\ : std_logic;
SIGNAL \WRData3_out[7]~output_o\ : std_logic;
SIGNAL \WRData3_out[8]~output_o\ : std_logic;
SIGNAL \WRData3_out[9]~output_o\ : std_logic;
SIGNAL \WRData3_out[10]~output_o\ : std_logic;
SIGNAL \WRData3_out[11]~output_o\ : std_logic;
SIGNAL \WRData3_out[12]~output_o\ : std_logic;
SIGNAL \WRData3_out[13]~output_o\ : std_logic;
SIGNAL \WRData3_out[14]~output_o\ : std_logic;
SIGNAL \WRData3_out[15]~output_o\ : std_logic;
SIGNAL \WRData3_out[16]~output_o\ : std_logic;
SIGNAL \WRData3_out[17]~output_o\ : std_logic;
SIGNAL \WRData3_out[18]~output_o\ : std_logic;
SIGNAL \WRData3_out[19]~output_o\ : std_logic;
SIGNAL \WRData3_out[20]~output_o\ : std_logic;
SIGNAL \WRData3_out[21]~output_o\ : std_logic;
SIGNAL \WRData3_out[22]~output_o\ : std_logic;
SIGNAL \WRData3_out[23]~output_o\ : std_logic;
SIGNAL \WRData3_out[24]~output_o\ : std_logic;
SIGNAL \WRData3_out[25]~output_o\ : std_logic;
SIGNAL \WRData3_out[26]~output_o\ : std_logic;
SIGNAL \WRData3_out[27]~output_o\ : std_logic;
SIGNAL \WRData3_out[28]~output_o\ : std_logic;
SIGNAL \WRData3_out[29]~output_o\ : std_logic;
SIGNAL \WRData3_out[30]~output_o\ : std_logic;
SIGNAL \WRData3_out[31]~output_o\ : std_logic;
SIGNAL \OP_In_out[0]~output_o\ : std_logic;
SIGNAL \OP_In_out[1]~output_o\ : std_logic;
SIGNAL \OP_In_out[2]~output_o\ : std_logic;
SIGNAL \OP_In_out[3]~output_o\ : std_logic;
SIGNAL \OP_In_out[4]~output_o\ : std_logic;
SIGNAL \OP_In_out[5]~output_o\ : std_logic;
SIGNAL \FUNCT_In_out[0]~output_o\ : std_logic;
SIGNAL \FUNCT_In_out[1]~output_o\ : std_logic;
SIGNAL \FUNCT_In_out[2]~output_o\ : std_logic;
SIGNAL \FUNCT_In_out[3]~output_o\ : std_logic;
SIGNAL \FUNCT_In_out[4]~output_o\ : std_logic;
SIGNAL \FUNCT_In_out[5]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cla_32_1|C~1_combout\ : std_logic;
SIGNAL \cla_32_1|C~0_combout\ : std_logic;
SIGNAL \cla_32_2|C[4]~0_combout\ : std_logic;
SIGNAL \cla_32_2|C[5]~1_combout\ : std_logic;
SIGNAL \cla_32_1|C~2_combout\ : std_logic;
SIGNAL \cla_32_2|C[6]~2_combout\ : std_logic;
SIGNAL \cla_32_2|C[7]~3_combout\ : std_logic;
SIGNAL \cu_1|Equal0~0_combout\ : std_logic;
SIGNAL \cu_1|Mux4~0_combout\ : std_logic;
SIGNAL \cu_1|Mux2~1_combout\ : std_logic;
SIGNAL \cu_1|Mux5~0_combout\ : std_logic;
SIGNAL \cu_1|Mux5~1_combout\ : std_logic;
SIGNAL \cu_1|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[1]~0_combout\ : std_logic;
SIGNAL \cu_1|Equal0~1_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[1]~2_combout\ : std_logic;
SIGNAL \mux_4to1_5bit_1|Y[0]~0_combout\ : std_logic;
SIGNAL \mux_4to1_5bit_1|Y[1]~1_combout\ : std_logic;
SIGNAL \mux_4to1_5bit_1|Y[2]~2_combout\ : std_logic;
SIGNAL \mux_4to1_5bit_1|Y[3]~3_combout\ : std_logic;
SIGNAL \mux_4to1_5bit_1|Y[4]~4_combout\ : std_logic;
SIGNAL \cu_1|Sig_RegWrite~0_combout\ : std_logic;
SIGNAL \cu_1|Mux8~0_combout\ : std_logic;
SIGNAL \cu_1|Mux3~0_combout\ : std_logic;
SIGNAL \cu_1|Mux8~1_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[0]~0_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[1]~3_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[1]~1_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[17]~17_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[16]~16_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[14]~14_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[13]~13_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[14]~16_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[15]~17_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[15]~15_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[16]~18_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[17]~19_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[17]~79_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[16]~78_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[15]~77_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[14]~76_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[12]~12_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[13]~15_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[13]~75_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[6]~6_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[5]~5_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[6]~8_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[7]~9_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[8]~10_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[9]~11_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[10]~12_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[11]~13_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[12]~14_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[12]~74_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[11]~11_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[11]~73_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[10]~10_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[10]~72_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[9]~9_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[9]~71_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[8]~8_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[8]~70_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[7]~7_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[7]~69_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[6]~68_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[3]~3_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[4]~6_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[5]~7_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[5]~67_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[4]~4_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[4]~66_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ALU_1|ADDER|C[2]~4_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[3]~5_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[3]~65_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[2]~2_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[2]~64_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[1]~1_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[1]~63_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[0]~60_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \comparator_1|Equal0~2_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~3_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~1_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~0_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~4_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[31]~31_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[31]~61_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[30]~30_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[29]~29_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[28]~28_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[22]~22_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[21]~21_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[20]~20_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[18]~18_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[18]~20_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[19]~21_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \ALU_1|ADDER|C[20]~22_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[21]~23_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[22]~24_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[23]~25_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[24]~26_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[25]~27_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[26]~28_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[27]~29_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[28]~30_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[29]~31_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[30]~32_combout\ : std_logic;
SIGNAL \ALU_1|ADDER|C[31]~33_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[31]~62_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[30]~92_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[29]~91_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[28]~90_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[27]~27_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[27]~89_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[26]~26_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[26]~88_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[25]~25_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[25]~87_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[24]~24_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[24]~86_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[23]~23_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[23]~85_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[22]~84_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[21]~83_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[20]~82_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\ : std_logic;
SIGNAL \mux_2to1_32bit_2|Y[19]~19_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[19]~81_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \mux_2to1_32bit_5|Y[18]~80_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\ : std_logic;
SIGNAL \comparator_1|Equal0~17_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~16_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~18_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~15_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~19_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~5_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~8_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~6_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~7_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~9_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~12_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~13_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~10_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~11_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~14_combout\ : std_logic;
SIGNAL \comparator_1|Equal0~20_combout\ : std_logic;
SIGNAL \cu_1|Mux3~1_combout\ : std_logic;
SIGNAL \signBranchResult~0_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[7]~10_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[7]~11_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[6]~8_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[6]~9_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[5]~6_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[5]~7_combout\ : std_logic;
SIGNAL \cu_1|Mux2~0_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[4]~4_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[4]~5_combout\ : std_logic;
SIGNAL \cla_32_2|RESULT[3]~0_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[3]~2_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[3]~3_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[2]~0_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[2]~1_combout\ : std_logic;
SIGNAL \cu_1|Mux7~0_combout\ : std_logic;
SIGNAL \cu_1|Sig_RegWrite~1_combout\ : std_logic;
SIGNAL \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \ALU_1|ADDER|RESULT[0]~0_combout\ : std_logic;
SIGNAL \cla_32_1|C~3_combout\ : std_logic;
SIGNAL \cla_32_2|C[8]~4_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[8]~12_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[8]~13_combout\ : std_logic;
SIGNAL \cla_32_1|C~4_combout\ : std_logic;
SIGNAL \cla_32_1|C~5_combout\ : std_logic;
SIGNAL \cla_32_2|C[9]~5_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[9]~14_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[9]~15_combout\ : std_logic;
SIGNAL \cla_32_2|C[10]~6_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[10]~16_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[10]~17_combout\ : std_logic;
SIGNAL \cla_32_1|C~6_combout\ : std_logic;
SIGNAL \cla_32_2|C[11]~7_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[11]~18_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[11]~19_combout\ : std_logic;
SIGNAL \cla_32_1|C~7_combout\ : std_logic;
SIGNAL \cla_32_1|C~8_combout\ : std_logic;
SIGNAL \cla_32_2|C[12]~8_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[12]~20_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[12]~21_combout\ : std_logic;
SIGNAL \cla_32_2|C[13]~9_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[13]~22_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[13]~23_combout\ : std_logic;
SIGNAL \cla_32_1|C~9_combout\ : std_logic;
SIGNAL \cla_32_2|C[14]~10_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[14]~24_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[14]~25_combout\ : std_logic;
SIGNAL \cla_32_1|C~11_combout\ : std_logic;
SIGNAL \cla_32_2|C[15]~11_combout\ : std_logic;
SIGNAL \cla_32_1|C~10_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[15]~26_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[15]~27_combout\ : std_logic;
SIGNAL \cla_32_2|C[16]~12_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[16]~28_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[16]~29_combout\ : std_logic;
SIGNAL \cla_32_1|C~12_combout\ : std_logic;
SIGNAL \cla_32_2|C[17]~13_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[17]~30_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[17]~31_combout\ : std_logic;
SIGNAL \cla_32_1|C~13_combout\ : std_logic;
SIGNAL \cla_32_2|C[18]~14_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[18]~32_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[18]~33_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[19]~34_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[19]~35_combout\ : std_logic;
SIGNAL \cla_32_1|C~14_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[20]~36_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[20]~37_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[21]~38_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[21]~39_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[22]~40_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[22]~41_combout\ : std_logic;
SIGNAL \cla_32_1|C~15_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[23]~42_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[23]~43_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[24]~44_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[24]~45_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[25]~46_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[25]~47_combout\ : std_logic;
SIGNAL \cla_32_1|C~16_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[26]~48_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[26]~49_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[27]~50_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[27]~51_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_3|Y[31]~0_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[28]~52_combout\ : std_logic;
SIGNAL \cla_32_1|C~17_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[29]~53_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[30]~54_combout\ : std_logic;
SIGNAL \mux_2to1_32bit_4|Y[31]~55_combout\ : std_logic;
SIGNAL \cu_1|Mux8~2_combout\ : std_logic;
SIGNAL \cla_32_1|RESULT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instruction_memory_1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cla_32_2|RESULT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_memory_1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_1|ADDER|RESULT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cla_32_2|C\ : std_logic_vector(31 DOWNTO 1);
SIGNAL \program_counter_1|PC_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \program_counter_1|ALT_INV_PC_out\ : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ALU_result_out <= ww_ALU_result_out;
PCin_out <= ww_PCin_out;
PCout_out <= ww_PCout_out;
instr_out <= ww_instr_out;
pcplus4_out <= ww_pcplus4_out;
rd1_out <= ww_rd1_out;
rd2_out <= ww_rd2_out;
instr_15_11_out <= ww_instr_15_11_out;
instr_20_16_out <= ww_instr_20_16_out;
instr_25_21_out <= ww_instr_25_21_out;
signJump_out <= ww_signJump_out;
signBNE_out <= ww_signBNE_out;
signBranch_out <= ww_signBranch_out;
signMemToReg_out <= ww_signMemToReg_out;
signMemRead_out <= ww_signMemRead_out;
signMemWrite_out <= ww_signMemWrite_out;
signRegdest_out <= ww_signRegdest_out;
signRegwrite_out <= ww_signRegwrite_out;
signALUsrc_out <= ww_signALUsrc_out;
signALUctrl_out <= ww_signALUctrl_out;
signextend_out <= ww_signextend_out;
leftshift28_out <= ww_leftshift28_out;
leftshift32_out <= ww_leftshift32_out;
BranchResult <= ww_BranchResult;
RDData_out <= ww_RDData_out;
WRData3_out <= ww_WRData3_out;
OP_In_out <= ww_OP_In_out;
FUNCT_In_out <= ww_FUNCT_In_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\mux_2to1_32bit_5|Y[17]~79_combout\ & \mux_2to1_32bit_5|Y[16]~78_combout\ & \mux_2to1_32bit_5|Y[15]~77_combout\ & \mux_2to1_32bit_5|Y[14]~76_combout\ & 
\mux_2to1_32bit_5|Y[13]~75_combout\ & \mux_2to1_32bit_5|Y[12]~74_combout\ & \mux_2to1_32bit_5|Y[11]~73_combout\ & \mux_2to1_32bit_5|Y[10]~72_combout\ & \mux_2to1_32bit_5|Y[9]~71_combout\ & \mux_2to1_32bit_5|Y[8]~70_combout\ & 
\mux_2to1_32bit_5|Y[7]~69_combout\ & \mux_2to1_32bit_5|Y[6]~68_combout\ & \mux_2to1_32bit_5|Y[5]~67_combout\ & \mux_2to1_32bit_5|Y[4]~66_combout\ & \mux_2to1_32bit_5|Y[3]~65_combout\ & \mux_2to1_32bit_5|Y[2]~64_combout\ & 
\mux_2to1_32bit_5|Y[1]~63_combout\ & \mux_2to1_32bit_5|Y[0]~60_combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_4to1_5bit_1|Y[4]~4_combout\ & \mux_4to1_5bit_1|Y[3]~3_combout\ & \mux_4to1_5bit_1|Y[2]~2_combout\ & \mux_4to1_5bit_1|Y[1]~1_combout\ & \mux_4to1_5bit_1|Y[0]~0_combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);

\instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\program_counter_1|PC_out\(7) & \program_counter_1|PC_out\(6) & \program_counter_1|PC_out\(5) & \program_counter_1|PC_out\(4) & 
\program_counter_1|PC_out\(3) & \program_counter_1|PC_out\(2) & \~GND~combout\ & \~GND~combout\);

\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(6) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(7) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(8) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(9) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(10) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(16) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(17) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(18) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(19) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(20) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(21) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(22) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(23) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(24) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(25) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(30) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) <= \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mux_2to1_32bit_5|Y[31]~62_combout\ & \mux_2to1_32bit_5|Y[30]~92_combout\ & \mux_2to1_32bit_5|Y[29]~91_combout\ & \mux_2to1_32bit_5|Y[28]~90_combout\ & 
\mux_2to1_32bit_5|Y[27]~89_combout\ & \mux_2to1_32bit_5|Y[26]~88_combout\ & \mux_2to1_32bit_5|Y[25]~87_combout\ & \mux_2to1_32bit_5|Y[24]~86_combout\ & \mux_2to1_32bit_5|Y[23]~85_combout\ & \mux_2to1_32bit_5|Y[22]~84_combout\ & 
\mux_2to1_32bit_5|Y[21]~83_combout\ & \mux_2to1_32bit_5|Y[20]~82_combout\ & \mux_2to1_32bit_5|Y[19]~81_combout\ & \mux_2to1_32bit_5|Y[18]~80_combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\mux_4to1_5bit_1|Y[4]~4_combout\ & \mux_4to1_5bit_1|Y[3]~3_combout\ & \mux_4to1_5bit_1|Y[2]~2_combout\ & \mux_4to1_5bit_1|Y[1]~1_combout\ & \mux_4to1_5bit_1|Y[0]~0_combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);

\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(1);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(2);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(3);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(4);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(5);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(6);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(7);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(8);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(9);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(10);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(11);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(12);
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\ <= \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(13);

\data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\ & 
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ & \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\ & \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ & 
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\ & \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ & \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\ & 
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\);

\data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ALU_1|ADDER|RESULT\(7) & \ALU_1|ADDER|RESULT\(6) & \ALU_1|ADDER|RESULT\(5) & \ALU_1|ADDER|RESULT\(4) & \ALU_1|ADDER|RESULT\(3) & \ALU_1|ADDER|RESULT\(2) & 
\ALU_1|ADDER|RESULT\(1) & \ALU_1|ADDER|RESULT[0]~0_combout\);

\data_memory_1|altsyncram_component|auto_generated|q_a\(0) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\data_memory_1|altsyncram_component|auto_generated|q_a\(1) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\data_memory_1|altsyncram_component|auto_generated|q_a\(2) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\data_memory_1|altsyncram_component|auto_generated|q_a\(3) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\data_memory_1|altsyncram_component|auto_generated|q_a\(4) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\data_memory_1|altsyncram_component|auto_generated|q_a\(5) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\data_memory_1|altsyncram_component|auto_generated|q_a\(6) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\data_memory_1|altsyncram_component|auto_generated|q_a\(7) <= \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\program_counter_1|ALT_INV_PC_out\(2) <= NOT \program_counter_1|PC_out\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N16
\ALU_result_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT[0]~0_combout\,
	devoe => ww_devoe,
	o => \ALU_result_out[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\ALU_result_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(1),
	devoe => ww_devoe,
	o => \ALU_result_out[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\ALU_result_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(2),
	devoe => ww_devoe,
	o => \ALU_result_out[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\ALU_result_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(3),
	devoe => ww_devoe,
	o => \ALU_result_out[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\ALU_result_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(4),
	devoe => ww_devoe,
	o => \ALU_result_out[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ALU_result_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(5),
	devoe => ww_devoe,
	o => \ALU_result_out[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ALU_result_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(6),
	devoe => ww_devoe,
	o => \ALU_result_out[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ALU_result_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(7),
	devoe => ww_devoe,
	o => \ALU_result_out[7]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\ALU_result_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(8),
	devoe => ww_devoe,
	o => \ALU_result_out[8]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\ALU_result_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(9),
	devoe => ww_devoe,
	o => \ALU_result_out[9]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\ALU_result_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(10),
	devoe => ww_devoe,
	o => \ALU_result_out[10]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\ALU_result_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(11),
	devoe => ww_devoe,
	o => \ALU_result_out[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ALU_result_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(12),
	devoe => ww_devoe,
	o => \ALU_result_out[12]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\ALU_result_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(13),
	devoe => ww_devoe,
	o => \ALU_result_out[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\ALU_result_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(14),
	devoe => ww_devoe,
	o => \ALU_result_out[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ALU_result_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(15),
	devoe => ww_devoe,
	o => \ALU_result_out[15]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\ALU_result_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(16),
	devoe => ww_devoe,
	o => \ALU_result_out[16]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ALU_result_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(17),
	devoe => ww_devoe,
	o => \ALU_result_out[17]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\ALU_result_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(18),
	devoe => ww_devoe,
	o => \ALU_result_out[18]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ALU_result_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(19),
	devoe => ww_devoe,
	o => \ALU_result_out[19]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ALU_result_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(20),
	devoe => ww_devoe,
	o => \ALU_result_out[20]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\ALU_result_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(21),
	devoe => ww_devoe,
	o => \ALU_result_out[21]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\ALU_result_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(22),
	devoe => ww_devoe,
	o => \ALU_result_out[22]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\ALU_result_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(23),
	devoe => ww_devoe,
	o => \ALU_result_out[23]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\ALU_result_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(24),
	devoe => ww_devoe,
	o => \ALU_result_out[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\ALU_result_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(25),
	devoe => ww_devoe,
	o => \ALU_result_out[25]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\ALU_result_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(26),
	devoe => ww_devoe,
	o => \ALU_result_out[26]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\ALU_result_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(27),
	devoe => ww_devoe,
	o => \ALU_result_out[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\ALU_result_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(28),
	devoe => ww_devoe,
	o => \ALU_result_out[28]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\ALU_result_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(29),
	devoe => ww_devoe,
	o => \ALU_result_out[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\ALU_result_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(30),
	devoe => ww_devoe,
	o => \ALU_result_out[30]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\ALU_result_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|RESULT\(31),
	devoe => ww_devoe,
	o => \ALU_result_out[31]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\PCin_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCin_out[0]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\PCin_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCin_out[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\PCin_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[2]~1_combout\,
	devoe => ww_devoe,
	o => \PCin_out[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\PCin_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \PCin_out[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\PCin_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[4]~5_combout\,
	devoe => ww_devoe,
	o => \PCin_out[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\PCin_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[5]~7_combout\,
	devoe => ww_devoe,
	o => \PCin_out[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\PCin_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[6]~9_combout\,
	devoe => ww_devoe,
	o => \PCin_out[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\PCin_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[7]~11_combout\,
	devoe => ww_devoe,
	o => \PCin_out[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\PCin_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[8]~13_combout\,
	devoe => ww_devoe,
	o => \PCin_out[8]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\PCin_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[9]~15_combout\,
	devoe => ww_devoe,
	o => \PCin_out[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\PCin_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[10]~17_combout\,
	devoe => ww_devoe,
	o => \PCin_out[10]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\PCin_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[11]~19_combout\,
	devoe => ww_devoe,
	o => \PCin_out[11]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\PCin_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[12]~21_combout\,
	devoe => ww_devoe,
	o => \PCin_out[12]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\PCin_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[13]~23_combout\,
	devoe => ww_devoe,
	o => \PCin_out[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\PCin_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[14]~25_combout\,
	devoe => ww_devoe,
	o => \PCin_out[14]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\PCin_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[15]~27_combout\,
	devoe => ww_devoe,
	o => \PCin_out[15]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\PCin_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[16]~29_combout\,
	devoe => ww_devoe,
	o => \PCin_out[16]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\PCin_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[17]~31_combout\,
	devoe => ww_devoe,
	o => \PCin_out[17]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\PCin_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[18]~33_combout\,
	devoe => ww_devoe,
	o => \PCin_out[18]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\PCin_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[19]~35_combout\,
	devoe => ww_devoe,
	o => \PCin_out[19]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\PCin_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[20]~37_combout\,
	devoe => ww_devoe,
	o => \PCin_out[20]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\PCin_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[21]~39_combout\,
	devoe => ww_devoe,
	o => \PCin_out[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\PCin_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[22]~41_combout\,
	devoe => ww_devoe,
	o => \PCin_out[22]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\PCin_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[23]~43_combout\,
	devoe => ww_devoe,
	o => \PCin_out[23]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\PCin_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[24]~45_combout\,
	devoe => ww_devoe,
	o => \PCin_out[24]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\PCin_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[25]~47_combout\,
	devoe => ww_devoe,
	o => \PCin_out[25]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\PCin_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[26]~49_combout\,
	devoe => ww_devoe,
	o => \PCin_out[26]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\PCin_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[27]~51_combout\,
	devoe => ww_devoe,
	o => \PCin_out[27]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\PCin_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[28]~52_combout\,
	devoe => ww_devoe,
	o => \PCin_out[28]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\PCin_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[29]~53_combout\,
	devoe => ww_devoe,
	o => \PCin_out[29]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\PCin_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[30]~54_combout\,
	devoe => ww_devoe,
	o => \PCin_out[30]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\PCin_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_4|Y[31]~55_combout\,
	devoe => ww_devoe,
	o => \PCin_out[31]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\PCout_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCout_out[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\PCout_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCout_out[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\PCout_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(2),
	devoe => ww_devoe,
	o => \PCout_out[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\PCout_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(3),
	devoe => ww_devoe,
	o => \PCout_out[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\PCout_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(4),
	devoe => ww_devoe,
	o => \PCout_out[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\PCout_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(5),
	devoe => ww_devoe,
	o => \PCout_out[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\PCout_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(6),
	devoe => ww_devoe,
	o => \PCout_out[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\PCout_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(7),
	devoe => ww_devoe,
	o => \PCout_out[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\PCout_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(8),
	devoe => ww_devoe,
	o => \PCout_out[8]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\PCout_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(9),
	devoe => ww_devoe,
	o => \PCout_out[9]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\PCout_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(10),
	devoe => ww_devoe,
	o => \PCout_out[10]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\PCout_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(11),
	devoe => ww_devoe,
	o => \PCout_out[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\PCout_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(12),
	devoe => ww_devoe,
	o => \PCout_out[12]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\PCout_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(13),
	devoe => ww_devoe,
	o => \PCout_out[13]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\PCout_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(14),
	devoe => ww_devoe,
	o => \PCout_out[14]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\PCout_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(15),
	devoe => ww_devoe,
	o => \PCout_out[15]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\PCout_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(16),
	devoe => ww_devoe,
	o => \PCout_out[16]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\PCout_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(17),
	devoe => ww_devoe,
	o => \PCout_out[17]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\PCout_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(18),
	devoe => ww_devoe,
	o => \PCout_out[18]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\PCout_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(19),
	devoe => ww_devoe,
	o => \PCout_out[19]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\PCout_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(20),
	devoe => ww_devoe,
	o => \PCout_out[20]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\PCout_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(21),
	devoe => ww_devoe,
	o => \PCout_out[21]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\PCout_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(22),
	devoe => ww_devoe,
	o => \PCout_out[22]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\PCout_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(23),
	devoe => ww_devoe,
	o => \PCout_out[23]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\PCout_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(24),
	devoe => ww_devoe,
	o => \PCout_out[24]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\PCout_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(25),
	devoe => ww_devoe,
	o => \PCout_out[25]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\PCout_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(26),
	devoe => ww_devoe,
	o => \PCout_out[26]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\PCout_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(27),
	devoe => ww_devoe,
	o => \PCout_out[27]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\PCout_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(28),
	devoe => ww_devoe,
	o => \PCout_out[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\PCout_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(29),
	devoe => ww_devoe,
	o => \PCout_out[29]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\PCout_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(30),
	devoe => ww_devoe,
	o => \PCout_out[30]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\PCout_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|PC_out\(31),
	devoe => ww_devoe,
	o => \PCout_out[31]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\instr_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \instr_out[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\instr_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \instr_out[1]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\instr_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \instr_out[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\instr_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \instr_out[3]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\instr_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \instr_out[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\instr_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \instr_out[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\instr_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \instr_out[6]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\instr_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \instr_out[7]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\instr_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \instr_out[8]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\instr_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \instr_out[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\instr_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \instr_out[10]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\instr_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \instr_out[11]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\instr_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \instr_out[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\instr_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \instr_out[13]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\instr_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \instr_out[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\instr_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \instr_out[15]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\instr_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \instr_out[16]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\instr_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \instr_out[17]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\instr_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \instr_out[18]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\instr_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \instr_out[19]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\instr_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \instr_out[20]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\instr_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \instr_out[21]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\instr_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \instr_out[22]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\instr_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \instr_out[23]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\instr_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \instr_out[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\instr_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \instr_out[25]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\instr_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \instr_out[26]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\instr_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \instr_out[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\instr_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \instr_out[28]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\instr_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \instr_out[29]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\instr_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \instr_out[30]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\instr_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \instr_out[31]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\pcplus4_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcplus4_out[0]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\pcplus4_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcplus4_out[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\pcplus4_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \program_counter_1|ALT_INV_PC_out\(2),
	devoe => ww_devoe,
	o => \pcplus4_out[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\pcplus4_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(3),
	devoe => ww_devoe,
	o => \pcplus4_out[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N9
\pcplus4_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(4),
	devoe => ww_devoe,
	o => \pcplus4_out[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\pcplus4_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(5),
	devoe => ww_devoe,
	o => \pcplus4_out[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\pcplus4_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(6),
	devoe => ww_devoe,
	o => \pcplus4_out[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\pcplus4_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(7),
	devoe => ww_devoe,
	o => \pcplus4_out[7]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\pcplus4_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(8),
	devoe => ww_devoe,
	o => \pcplus4_out[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\pcplus4_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(9),
	devoe => ww_devoe,
	o => \pcplus4_out[9]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\pcplus4_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(10),
	devoe => ww_devoe,
	o => \pcplus4_out[10]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\pcplus4_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(11),
	devoe => ww_devoe,
	o => \pcplus4_out[11]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\pcplus4_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(12),
	devoe => ww_devoe,
	o => \pcplus4_out[12]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\pcplus4_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(13),
	devoe => ww_devoe,
	o => \pcplus4_out[13]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\pcplus4_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(14),
	devoe => ww_devoe,
	o => \pcplus4_out[14]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\pcplus4_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(15),
	devoe => ww_devoe,
	o => \pcplus4_out[15]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\pcplus4_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(16),
	devoe => ww_devoe,
	o => \pcplus4_out[16]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\pcplus4_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(17),
	devoe => ww_devoe,
	o => \pcplus4_out[17]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\pcplus4_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(18),
	devoe => ww_devoe,
	o => \pcplus4_out[18]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\pcplus4_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(19),
	devoe => ww_devoe,
	o => \pcplus4_out[19]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\pcplus4_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(20),
	devoe => ww_devoe,
	o => \pcplus4_out[20]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\pcplus4_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(21),
	devoe => ww_devoe,
	o => \pcplus4_out[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\pcplus4_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(22),
	devoe => ww_devoe,
	o => \pcplus4_out[22]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\pcplus4_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(23),
	devoe => ww_devoe,
	o => \pcplus4_out[23]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\pcplus4_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(24),
	devoe => ww_devoe,
	o => \pcplus4_out[24]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\pcplus4_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(25),
	devoe => ww_devoe,
	o => \pcplus4_out[25]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\pcplus4_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(26),
	devoe => ww_devoe,
	o => \pcplus4_out[26]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\pcplus4_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(27),
	devoe => ww_devoe,
	o => \pcplus4_out[27]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\pcplus4_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(28),
	devoe => ww_devoe,
	o => \pcplus4_out[28]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\pcplus4_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(29),
	devoe => ww_devoe,
	o => \pcplus4_out[29]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\pcplus4_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(30),
	devoe => ww_devoe,
	o => \pcplus4_out[30]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\pcplus4_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cla_32_1|RESULT\(31),
	devoe => ww_devoe,
	o => \pcplus4_out[31]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\rd1_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \rd1_out[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\rd1_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \rd1_out[1]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\rd1_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \rd1_out[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\rd1_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \rd1_out[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\rd1_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \rd1_out[4]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\rd1_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \rd1_out[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\rd1_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \rd1_out[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\rd1_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \rd1_out[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\rd1_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \rd1_out[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\rd1_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \rd1_out[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\rd1_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \rd1_out[10]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\rd1_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \rd1_out[11]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\rd1_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \rd1_out[12]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\rd1_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \rd1_out[13]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\rd1_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \rd1_out[14]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\rd1_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \rd1_out[15]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\rd1_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \rd1_out[16]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\rd1_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \rd1_out[17]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\rd1_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	devoe => ww_devoe,
	o => \rd1_out[18]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\rd1_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \rd1_out[19]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\rd1_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \rd1_out[20]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\rd1_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \rd1_out[21]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\rd1_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \rd1_out[22]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\rd1_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \rd1_out[23]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\rd1_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \rd1_out[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\rd1_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \rd1_out[25]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\rd1_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \rd1_out[26]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\rd1_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \rd1_out[27]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\rd1_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \rd1_out[28]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\rd1_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \rd1_out[29]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\rd1_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \rd1_out[30]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\rd1_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \rd1_out[31]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\rd2_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\rd2_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\rd2_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\rd2_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\rd2_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\rd2_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\rd2_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\rd2_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\rd2_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[8]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\rd2_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[9]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\rd2_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\rd2_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\rd2_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[12]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\rd2_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[13]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\rd2_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[14]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\rd2_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[15]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\rd2_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[16]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\rd2_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\rd2_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[18]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\rd2_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[19]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\rd2_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\rd2_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\rd2_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[22]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\rd2_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[23]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\rd2_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[24]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\rd2_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\rd2_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[26]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\rd2_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[27]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\rd2_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[28]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\rd2_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[29]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\rd2_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\rd2_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\,
	devoe => ww_devoe,
	o => \rd2_out[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\instr_15_11_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \instr_15_11_out[0]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\instr_15_11_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \instr_15_11_out[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\instr_15_11_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \instr_15_11_out[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\instr_15_11_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \instr_15_11_out[3]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\instr_15_11_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \instr_15_11_out[4]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\instr_20_16_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \instr_20_16_out[0]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\instr_20_16_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \instr_20_16_out[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\instr_20_16_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \instr_20_16_out[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\instr_20_16_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \instr_20_16_out[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\instr_20_16_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \instr_20_16_out[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\instr_25_21_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \instr_25_21_out[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\instr_25_21_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \instr_25_21_out[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\instr_25_21_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \instr_25_21_out[2]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\instr_25_21_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \instr_25_21_out[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\instr_25_21_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \instr_25_21_out[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\signJump_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \signJump_out~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\signBNE_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \signBNE_out~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\signBranch_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \signBranch_out~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\signMemToReg_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \signMemToReg_out~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\signMemRead_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \signMemRead_out~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\signMemWrite_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \signMemWrite_out~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\signRegdest_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|C[1]~2_combout\,
	devoe => ww_devoe,
	o => \signRegdest_out[0]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\signRegdest_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signRegdest_out[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\signRegwrite_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Sig_RegWrite~1_combout\,
	devoe => ww_devoe,
	o => \signRegwrite_out~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\signALUsrc_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cu_1|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \signALUsrc_out~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\signALUctrl_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_1|ADDER|C[1]~1_combout\,
	devoe => ww_devoe,
	o => \signALUctrl_out~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\signextend_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \signextend_out[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\signextend_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \signextend_out[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\signextend_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \signextend_out[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\signextend_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \signextend_out[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\signextend_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \signextend_out[4]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\signextend_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \signextend_out[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\signextend_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \signextend_out[6]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\signextend_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \signextend_out[7]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\signextend_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \signextend_out[8]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\signextend_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \signextend_out[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\signextend_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \signextend_out[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\signextend_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \signextend_out[11]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\signextend_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \signextend_out[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\signextend_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \signextend_out[13]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\signextend_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \signextend_out[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\signextend_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \signextend_out[15]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\signextend_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\signextend_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[17]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\signextend_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[18]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\signextend_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[19]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\signextend_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[20]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\signextend_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[21]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\signextend_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[22]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\signextend_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\signextend_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[24]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\signextend_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[25]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\signextend_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[26]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\signextend_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[27]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\signextend_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[28]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\signextend_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[29]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\signextend_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[30]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\signextend_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \signextend_out[31]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\leftshift28_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leftshift28_out[0]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\leftshift28_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leftshift28_out[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\leftshift28_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \leftshift28_out[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\leftshift28_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \leftshift28_out[3]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\leftshift28_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \leftshift28_out[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\leftshift28_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \leftshift28_out[5]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\leftshift28_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \leftshift28_out[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\leftshift28_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \leftshift28_out[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\leftshift28_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \leftshift28_out[8]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\leftshift28_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \leftshift28_out[9]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\leftshift28_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \leftshift28_out[10]~output_o\);

-- Location: IOOBUF_X0_Y69_N2
\leftshift28_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \leftshift28_out[11]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\leftshift28_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \leftshift28_out[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\leftshift28_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \leftshift28_out[13]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\leftshift28_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \leftshift28_out[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\leftshift28_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \leftshift28_out[15]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\leftshift28_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \leftshift28_out[16]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\leftshift28_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \leftshift28_out[17]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\leftshift28_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \leftshift28_out[18]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\leftshift28_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \leftshift28_out[19]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\leftshift28_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \leftshift28_out[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\leftshift28_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \leftshift28_out[21]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\leftshift28_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \leftshift28_out[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\leftshift28_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \leftshift28_out[23]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\leftshift28_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \leftshift28_out[24]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\leftshift28_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \leftshift28_out[25]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\leftshift28_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \leftshift28_out[26]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\leftshift28_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \leftshift28_out[27]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\leftshift32_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leftshift32_out[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\leftshift32_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leftshift32_out[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\leftshift32_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \leftshift32_out[2]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\leftshift32_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \leftshift32_out[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\leftshift32_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \leftshift32_out[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\leftshift32_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \leftshift32_out[5]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\leftshift32_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \leftshift32_out[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\leftshift32_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \leftshift32_out[7]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\leftshift32_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \leftshift32_out[8]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\leftshift32_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \leftshift32_out[9]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\leftshift32_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \leftshift32_out[10]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\leftshift32_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \leftshift32_out[11]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\leftshift32_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \leftshift32_out[12]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\leftshift32_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \leftshift32_out[13]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\leftshift32_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \leftshift32_out[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\leftshift32_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \leftshift32_out[15]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\leftshift32_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \leftshift32_out[16]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\leftshift32_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \leftshift32_out[17]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\leftshift32_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[18]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\leftshift32_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[19]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\leftshift32_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[20]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\leftshift32_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[21]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\leftshift32_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[22]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\leftshift32_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[23]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\leftshift32_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[24]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\leftshift32_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[25]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\leftshift32_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[26]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\leftshift32_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[27]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\leftshift32_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[28]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\leftshift32_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[29]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\leftshift32_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[30]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\leftshift32_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leftshift32_out[31]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\BranchResult~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signBranchResult~0_combout\,
	devoe => ww_devoe,
	o => \BranchResult~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\RDData_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \RDData_out[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\RDData_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \RDData_out[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\RDData_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \RDData_out[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\RDData_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \RDData_out[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\RDData_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \RDData_out[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\RDData_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \RDData_out[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\RDData_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \RDData_out[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RDData_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory_1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \RDData_out[7]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\WRData3_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[0]~60_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\WRData3_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[1]~63_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\WRData3_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[2]~64_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\WRData3_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[3]~65_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\WRData3_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[4]~66_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\WRData3_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[5]~67_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[5]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\WRData3_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[6]~68_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\WRData3_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[7]~69_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\WRData3_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[8]~70_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[8]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\WRData3_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[9]~71_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\WRData3_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[10]~72_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[10]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\WRData3_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[11]~73_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[11]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\WRData3_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[12]~74_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[12]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\WRData3_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[13]~75_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[13]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\WRData3_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[14]~76_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[14]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\WRData3_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[15]~77_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\WRData3_out[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[16]~78_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\WRData3_out[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[17]~79_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[17]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\WRData3_out[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[18]~80_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[18]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\WRData3_out[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[19]~81_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[19]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\WRData3_out[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[20]~82_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[20]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\WRData3_out[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[21]~83_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[21]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\WRData3_out[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[22]~84_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[22]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\WRData3_out[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[23]~85_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[23]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\WRData3_out[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[24]~86_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[24]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\WRData3_out[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[25]~87_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[25]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\WRData3_out[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[26]~88_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[26]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\WRData3_out[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[27]~89_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[27]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\WRData3_out[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[28]~90_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[28]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\WRData3_out[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[29]~91_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[29]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\WRData3_out[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[30]~92_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[30]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\WRData3_out[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_32bit_5|Y[31]~62_combout\,
	devoe => ww_devoe,
	o => \WRData3_out[31]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\OP_In_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \OP_In_out[0]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\OP_In_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \OP_In_out[1]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\OP_In_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \OP_In_out[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\OP_In_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \OP_In_out[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\OP_In_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \OP_In_out[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\OP_In_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \OP_In_out[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\FUNCT_In_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \FUNCT_In_out[0]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\FUNCT_In_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \FUNCT_In_out[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\FUNCT_In_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \FUNCT_In_out[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\FUNCT_In_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \FUNCT_In_out[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\FUNCT_In_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \FUNCT_In_out[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\FUNCT_In_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \FUNCT_In_out[5]~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y27_N30
\~GND\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X58_Y73_N1
\reset~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X48_Y69_N14
\cla_32_1|C~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~1_combout\ = (\program_counter_1|PC_out\(2) & (\program_counter_1|PC_out\(3) & (\program_counter_1|PC_out\(4) & \program_counter_1|PC_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datab => \program_counter_1|PC_out\(3),
	datac => \program_counter_1|PC_out\(4),
	datad => \program_counter_1|PC_out\(5),
	combout => \cla_32_1|C~1_combout\);

-- Location: LCCOMB_X49_Y69_N6
\cla_32_1|RESULT[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(6) = \program_counter_1|PC_out\(6) $ (\cla_32_1|C~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \program_counter_1|PC_out\(6),
	datad => \cla_32_1|C~1_combout\,
	combout => \cla_32_1|RESULT\(6));

-- Location: M9K_X37_Y50_N0
\instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000810000C00000000000000000000000000002231000100000000000000000000000000002210000100000000000000000000000000000000000000000000000000000000000000001232000600000000000000000000000000002012000A000000000000000000000000000020110000000000000000000000000000000020100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "imemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "instruction_memory:instruction_memory_1|altsyncram:altsyncram_component|altsyncram_2co:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portaaddr => \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \instruction_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X48_Y69_N8
\cla_32_1|C~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~0_combout\ = (\program_counter_1|PC_out\(2) & \program_counter_1|PC_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datad => \program_counter_1|PC_out\(3),
	combout => \cla_32_1|C~0_combout\);

-- Location: LCCOMB_X48_Y69_N0
\cla_32_2|C[4]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[4]~0_combout\ = (\program_counter_1|PC_out\(3) & (!\program_counter_1|PC_out\(2) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1)) # (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\program_counter_1|PC_out\(3) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1) & ((\program_counter_1|PC_out\(2)) # (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datab => \program_counter_1|PC_out\(3),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	combout => \cla_32_2|C[4]~0_combout\);

-- Location: LCCOMB_X48_Y69_N26
\cla_32_2|C[5]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[5]~1_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2) & ((\cla_32_2|C[4]~0_combout\) # (\cla_32_1|C~0_combout\ $ (\program_counter_1|PC_out\(4))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2) & (\cla_32_2|C[4]~0_combout\ & (\cla_32_1|C~0_combout\ $ (\program_counter_1|PC_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	datab => \cla_32_1|C~0_combout\,
	datac => \program_counter_1|PC_out\(4),
	datad => \cla_32_2|C[4]~0_combout\,
	combout => \cla_32_2|C[5]~1_combout\);

-- Location: LCCOMB_X48_Y69_N20
\cla_32_1|C~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~2_combout\ = (\program_counter_1|PC_out\(2) & (\program_counter_1|PC_out\(4) & \program_counter_1|PC_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datac => \program_counter_1|PC_out\(4),
	datad => \program_counter_1|PC_out\(3),
	combout => \cla_32_1|C~2_combout\);

-- Location: LCCOMB_X48_Y69_N30
\cla_32_2|C[6]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[6]~2_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3) & ((\cla_32_2|C[5]~1_combout\) # (\program_counter_1|PC_out\(5) $ (\cla_32_1|C~2_combout\)))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3) & (\cla_32_2|C[5]~1_combout\ & (\program_counter_1|PC_out\(5) $ (\cla_32_1|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	datab => \program_counter_1|PC_out\(5),
	datac => \cla_32_2|C[5]~1_combout\,
	datad => \cla_32_1|C~2_combout\,
	combout => \cla_32_2|C[6]~2_combout\);

-- Location: LCCOMB_X49_Y69_N30
\cla_32_2|C[7]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[7]~3_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4) & ((\cla_32_2|C[6]~2_combout\) # (\cla_32_1|C~1_combout\ $ (\program_counter_1|PC_out\(6))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4) & (\cla_32_2|C[6]~2_combout\ & (\cla_32_1|C~1_combout\ $ (\program_counter_1|PC_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~1_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	datac => \program_counter_1|PC_out\(6),
	datad => \cla_32_2|C[6]~2_combout\,
	combout => \cla_32_2|C[7]~3_combout\);

-- Location: LCCOMB_X49_Y69_N24
\cla_32_1|RESULT[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(7) = \program_counter_1|PC_out\(7) $ (((\cla_32_1|C~1_combout\ & \program_counter_1|PC_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~1_combout\,
	datab => \program_counter_1|PC_out\(6),
	datac => \program_counter_1|PC_out\(7),
	combout => \cla_32_1|RESULT\(7));

-- Location: LCCOMB_X17_Y29_N14
\cu_1|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Equal0~0_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) & 
-- !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(30),
	combout => \cu_1|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y29_N30
\cu_1|Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux4~0_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (\cu_1|Equal0~0_combout\ & \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \cu_1|Equal0~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	combout => \cu_1|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y29_N18
\cu_1|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux2~1_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	combout => \cu_1|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y29_N28
\cu_1|Mux5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux5~0_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(30) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) & 
-- \cu_1|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(30),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	datad => \cu_1|Mux2~1_combout\,
	combout => \cu_1|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y24_N4
\cu_1|Mux5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux5~1_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & \cu_1|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \cu_1|Mux5~0_combout\,
	combout => \cu_1|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y24_N18
\cu_1|Mux6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux6~0_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & \cu_1|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \cu_1|Mux5~0_combout\,
	combout => \cu_1|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y27_N22
\ALU_1|ADDER|C[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[1]~0_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3) & 
-- !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	combout => \ALU_1|ADDER|C[1]~0_combout\);

-- Location: LCCOMB_X17_Y29_N2
\cu_1|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Equal0~1_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (\cu_1|Equal0~0_combout\ & !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \cu_1|Equal0~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	combout => \cu_1|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y29_N6
\ALU_1|ADDER|C[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[1]~2_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5) & (\ALU_1|ADDER|C[1]~0_combout\ & \cu_1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	datac => \ALU_1|ADDER|C[1]~0_combout\,
	datad => \cu_1|Equal0~1_combout\,
	combout => \ALU_1|ADDER|C[1]~2_combout\);

-- Location: LCCOMB_X16_Y27_N28
\mux_4to1_5bit_1|Y[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_4to1_5bit_1|Y[0]~0_combout\ = (\ALU_1|ADDER|C[1]~2_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11))) # (!\ALU_1|ADDER|C[1]~2_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	datac => \ALU_1|ADDER|C[1]~2_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(16),
	combout => \mux_4to1_5bit_1|Y[0]~0_combout\);

-- Location: LCCOMB_X16_Y27_N18
\mux_4to1_5bit_1|Y[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_4to1_5bit_1|Y[1]~1_combout\ = (\ALU_1|ADDER|C[1]~2_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12)))) # (!\ALU_1|ADDER|C[1]~2_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~2_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(17),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	combout => \mux_4to1_5bit_1|Y[1]~1_combout\);

-- Location: LCCOMB_X23_Y30_N4
\mux_4to1_5bit_1|Y[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_4to1_5bit_1|Y[2]~2_combout\ = (\ALU_1|ADDER|C[1]~2_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13))) # (!\ALU_1|ADDER|C[1]~2_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(18),
	datad => \ALU_1|ADDER|C[1]~2_combout\,
	combout => \mux_4to1_5bit_1|Y[2]~2_combout\);

-- Location: LCCOMB_X16_Y27_N12
\mux_4to1_5bit_1|Y[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_4to1_5bit_1|Y[3]~3_combout\ = (\ALU_1|ADDER|C[1]~2_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14))) # (!\ALU_1|ADDER|C[1]~2_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(19),
	datac => \ALU_1|ADDER|C[1]~2_combout\,
	combout => \mux_4to1_5bit_1|Y[3]~3_combout\);

-- Location: LCCOMB_X23_Y30_N6
\mux_4to1_5bit_1|Y[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_4to1_5bit_1|Y[4]~4_combout\ = (\ALU_1|ADDER|C[1]~2_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15))) # (!\ALU_1|ADDER|C[1]~2_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(20),
	datad => \ALU_1|ADDER|C[1]~2_combout\,
	combout => \mux_4to1_5bit_1|Y[4]~4_combout\);

-- Location: LCCOMB_X17_Y29_N0
\cu_1|Sig_RegWrite~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Sig_RegWrite~0_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(30) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28)) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27)) # 
-- (!\cu_1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \cu_1|Equal0~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(30),
	combout => \cu_1|Sig_RegWrite~0_combout\);

-- Location: LCCOMB_X17_Y29_N26
\cu_1|Mux8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux8~0_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31)))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) & 
-- \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	combout => \cu_1|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y29_N12
\cu_1|Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux3~0_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) & 
-- !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	combout => \cu_1|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y29_N4
\cu_1|Mux8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux8~1_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & ((\cu_1|Mux3~0_combout\)))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28) & ((\cu_1|Mux8~0_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & \cu_1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	datac => \cu_1|Mux8~0_combout\,
	datad => \cu_1|Mux3~0_combout\,
	combout => \cu_1|Mux8~1_combout\);

-- Location: LCCOMB_X14_Y27_N24
\mux_2to1_32bit_2|Y[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[0]~0_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[0]~0_combout\);

-- Location: LCCOMB_X14_Y27_N14
\ALU_1|ADDER|C[1]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[1]~3_combout\ = (\mux_2to1_32bit_2|Y[0]~0_combout\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\mux_2to1_32bit_2|Y[0]~0_combout\ & (((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1) & 
-- \ALU_1|ADDER|C[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datac => \ALU_1|ADDER|C[1]~2_combout\,
	datad => \mux_2to1_32bit_2|Y[0]~0_combout\,
	combout => \ALU_1|ADDER|C[1]~3_combout\);

-- Location: LCCOMB_X17_Y29_N20
\ALU_1|ADDER|C[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[1]~1_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1) & (\cu_1|Equal0~1_combout\ & (\ALU_1|ADDER|C[1]~0_combout\ & \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datab => \cu_1|Equal0~1_combout\,
	datac => \ALU_1|ADDER|C[1]~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	combout => \ALU_1|ADDER|C[1]~1_combout\);

-- Location: M9K_X15_Y27_N0
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "reg_file:reg_file_1|altsyncram:mem_rtl_0|altsyncram_jfq1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \cu_1|Sig_RegWrite~1_combout\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y26_N6
\mux_2to1_32bit_2|Y[17]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[17]~17_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\) # ((\cu_1|Mux8~1_combout\ & \cu_1|Sig_RegWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu_1|Mux8~1_combout\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[17]~17_combout\);

-- Location: LCCOMB_X17_Y26_N26
\mux_2to1_32bit_2|Y[16]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[16]~16_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[16]~16_combout\);

-- Location: LCCOMB_X16_Y27_N22
\mux_2to1_32bit_2|Y[14]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[14]~14_combout\ = (\cu_1|Mux8~1_combout\ & ((\cu_1|Sig_RegWrite~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14))) # (!\cu_1|Sig_RegWrite~0_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\))))) # (!\cu_1|Mux8~1_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	datab => \cu_1|Mux8~1_combout\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[14]~14_combout\);

-- Location: LCCOMB_X12_Y27_N18
\mux_2to1_32bit_2|Y[13]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[13]~13_combout\ = (\cu_1|Mux8~1_combout\ & ((\cu_1|Sig_RegWrite~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13))) # (!\cu_1|Sig_RegWrite~0_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\))))) # (!\cu_1|Mux8~1_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	datab => \cu_1|Mux8~1_combout\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[13]~13_combout\);

-- Location: LCCOMB_X13_Y27_N18
\ALU_1|ADDER|C[14]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[14]~16_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ & ((\ALU_1|ADDER|C[13]~15_combout\) # (\mux_2to1_32bit_2|Y[13]~13_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ & 
-- (\ALU_1|ADDER|C[13]~15_combout\ & (\mux_2to1_32bit_2|Y[13]~13_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\,
	datab => \mux_2to1_32bit_2|Y[13]~13_combout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[13]~15_combout\,
	combout => \ALU_1|ADDER|C[14]~16_combout\);

-- Location: LCCOMB_X13_Y27_N30
\ALU_1|ADDER|C[15]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[15]~17_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ & ((\ALU_1|ADDER|C[14]~16_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[14]~14_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ & 
-- (\ALU_1|ADDER|C[14]~16_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\,
	datac => \mux_2to1_32bit_2|Y[14]~14_combout\,
	datad => \ALU_1|ADDER|C[14]~16_combout\,
	combout => \ALU_1|ADDER|C[15]~17_combout\);

-- Location: LCCOMB_X17_Y26_N28
\mux_2to1_32bit_2|Y[15]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[15]~15_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[15]~15_combout\);

-- Location: LCCOMB_X13_Y26_N12
\ALU_1|ADDER|C[16]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[16]~18_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ & ((\ALU_1|ADDER|C[15]~17_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[15]~15_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ & 
-- (\ALU_1|ADDER|C[15]~17_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[15]~17_combout\,
	datad => \mux_2to1_32bit_2|Y[15]~15_combout\,
	combout => \ALU_1|ADDER|C[16]~18_combout\);

-- Location: LCCOMB_X13_Y26_N10
\ALU_1|ADDER|C[17]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[17]~19_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ & ((\ALU_1|ADDER|C[16]~18_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[16]~16_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ & 
-- (\ALU_1|ADDER|C[16]~18_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[16]~16_combout\,
	datad => \ALU_1|ADDER|C[16]~18_combout\,
	combout => \ALU_1|ADDER|C[17]~19_combout\);

-- Location: LCCOMB_X12_Y26_N12
\ALU_1|ADDER|RESULT[17]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(17) = \mux_2to1_32bit_2|Y[17]~17_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[17]~19_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[17]~17_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[17]~19_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\,
	combout => \ALU_1|ADDER|RESULT\(17));

-- Location: LCCOMB_X12_Y26_N28
\mux_2to1_32bit_5|Y[17]~79\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[17]~79_combout\ = (\ALU_1|ADDER|RESULT\(17) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(17),
	combout => \mux_2to1_32bit_5|Y[17]~79_combout\);

-- Location: LCCOMB_X16_Y26_N12
\ALU_1|ADDER|RESULT[16]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(16) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ $ (\mux_2to1_32bit_2|Y[16]~16_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[16]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\,
	datab => \mux_2to1_32bit_2|Y[16]~16_combout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[16]~18_combout\,
	combout => \ALU_1|ADDER|RESULT\(16));

-- Location: LCCOMB_X16_Y26_N18
\mux_2to1_32bit_5|Y[16]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[16]~78_combout\ = (\ALU_1|ADDER|RESULT\(16) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(16),
	combout => \mux_2to1_32bit_5|Y[16]~78_combout\);

-- Location: LCCOMB_X12_Y26_N24
\ALU_1|ADDER|RESULT[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(15) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[15]~17_combout\ $ (\mux_2to1_32bit_2|Y[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[15]~17_combout\,
	datad => \mux_2to1_32bit_2|Y[15]~15_combout\,
	combout => \ALU_1|ADDER|RESULT\(15));

-- Location: LCCOMB_X12_Y26_N22
\mux_2to1_32bit_5|Y[15]~77\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[15]~77_combout\ = (\ALU_1|ADDER|RESULT\(15) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(15),
	combout => \mux_2to1_32bit_5|Y[15]~77_combout\);

-- Location: LCCOMB_X13_Y27_N4
\ALU_1|ADDER|RESULT[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(14) = \ALU_1|ADDER|C[1]~1_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ $ (\mux_2to1_32bit_2|Y[14]~14_combout\ $ (\ALU_1|ADDER|C[14]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\,
	datac => \mux_2to1_32bit_2|Y[14]~14_combout\,
	datad => \ALU_1|ADDER|C[14]~16_combout\,
	combout => \ALU_1|ADDER|RESULT\(14));

-- Location: LCCOMB_X14_Y26_N0
\mux_2to1_32bit_5|Y[14]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[14]~76_combout\ = (\ALU_1|ADDER|RESULT\(14) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(14),
	combout => \mux_2to1_32bit_5|Y[14]~76_combout\);

-- Location: LCCOMB_X16_Y27_N20
\mux_2to1_32bit_2|Y[12]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[12]~12_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	datab => \cu_1|Sig_RegWrite~0_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[12]~12_combout\);

-- Location: LCCOMB_X13_Y27_N16
\ALU_1|ADDER|C[13]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[13]~15_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ & ((\ALU_1|ADDER|C[12]~14_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[12]~12_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ & 
-- (\ALU_1|ADDER|C[12]~14_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\,
	datac => \mux_2to1_32bit_2|Y[12]~12_combout\,
	datad => \ALU_1|ADDER|C[12]~14_combout\,
	combout => \ALU_1|ADDER|C[13]~15_combout\);

-- Location: LCCOMB_X12_Y27_N4
\ALU_1|ADDER|RESULT[13]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(13) = \ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[13]~15_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ $ (\mux_2to1_32bit_2|Y[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \ALU_1|ADDER|C[13]~15_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\,
	datad => \mux_2to1_32bit_2|Y[13]~13_combout\,
	combout => \ALU_1|ADDER|RESULT\(13));

-- Location: LCCOMB_X12_Y27_N26
\mux_2to1_32bit_5|Y[13]~75\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[13]~75_combout\ = (\ALU_1|ADDER|RESULT\(13) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \ALU_1|ADDER|RESULT\(13),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[13]~75_combout\);

-- Location: LCCOMB_X14_Y27_N20
\mux_2to1_32bit_2|Y[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[6]~6_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(6))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[6]~6_combout\);

-- Location: LCCOMB_X14_Y27_N12
\mux_2to1_32bit_2|Y[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[5]~5_combout\ = (\cu_1|Mux8~1_combout\ & ((\cu_1|Sig_RegWrite~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5))) # (!\cu_1|Sig_RegWrite~0_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\))))) # (!\cu_1|Mux8~1_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	datab => \cu_1|Mux8~1_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	datad => \cu_1|Sig_RegWrite~0_combout\,
	combout => \mux_2to1_32bit_2|Y[5]~5_combout\);

-- Location: LCCOMB_X14_Y27_N6
\ALU_1|ADDER|C[6]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[6]~8_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ & ((\ALU_1|ADDER|C[5]~7_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[5]~5_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ & 
-- (\ALU_1|ADDER|C[5]~7_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\,
	datac => \mux_2to1_32bit_2|Y[5]~5_combout\,
	datad => \ALU_1|ADDER|C[5]~7_combout\,
	combout => \ALU_1|ADDER|C[6]~8_combout\);

-- Location: LCCOMB_X14_Y27_N16
\ALU_1|ADDER|C[7]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[7]~9_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ & ((\ALU_1|ADDER|C[6]~8_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[6]~6_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ & 
-- (\ALU_1|ADDER|C[6]~8_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\,
	datac => \mux_2to1_32bit_2|Y[6]~6_combout\,
	datad => \ALU_1|ADDER|C[6]~8_combout\,
	combout => \ALU_1|ADDER|C[7]~9_combout\);

-- Location: LCCOMB_X13_Y27_N20
\ALU_1|ADDER|C[8]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[8]~10_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ & ((\ALU_1|ADDER|C[7]~9_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[7]~7_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ & 
-- (\ALU_1|ADDER|C[7]~9_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\,
	datac => \mux_2to1_32bit_2|Y[7]~7_combout\,
	datad => \ALU_1|ADDER|C[7]~9_combout\,
	combout => \ALU_1|ADDER|C[8]~10_combout\);

-- Location: LCCOMB_X13_Y27_N28
\ALU_1|ADDER|C[9]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[9]~11_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\ & ((\ALU_1|ADDER|C[8]~10_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[8]~8_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\ & 
-- (\ALU_1|ADDER|C[8]~10_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\,
	datac => \mux_2to1_32bit_2|Y[8]~8_combout\,
	datad => \ALU_1|ADDER|C[8]~10_combout\,
	combout => \ALU_1|ADDER|C[9]~11_combout\);

-- Location: LCCOMB_X13_Y27_N0
\ALU_1|ADDER|C[10]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[10]~12_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\ & ((\ALU_1|ADDER|C[9]~11_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[9]~9_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\ & 
-- (\ALU_1|ADDER|C[9]~11_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\,
	datac => \mux_2to1_32bit_2|Y[9]~9_combout\,
	datad => \ALU_1|ADDER|C[9]~11_combout\,
	combout => \ALU_1|ADDER|C[10]~12_combout\);

-- Location: LCCOMB_X13_Y27_N24
\ALU_1|ADDER|C[11]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[11]~13_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ & ((\ALU_1|ADDER|C[10]~12_combout\) # (\mux_2to1_32bit_2|Y[10]~10_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ & 
-- (\ALU_1|ADDER|C[10]~12_combout\ & (\mux_2to1_32bit_2|Y[10]~10_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[10]~10_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[10]~12_combout\,
	combout => \ALU_1|ADDER|C[11]~13_combout\);

-- Location: LCCOMB_X13_Y27_N2
\ALU_1|ADDER|C[12]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[12]~14_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ & ((\ALU_1|ADDER|C[11]~13_combout\) # (\mux_2to1_32bit_2|Y[11]~11_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ & 
-- (\ALU_1|ADDER|C[11]~13_combout\ & (\mux_2to1_32bit_2|Y[11]~11_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\,
	datab => \mux_2to1_32bit_2|Y[11]~11_combout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[11]~13_combout\,
	combout => \ALU_1|ADDER|C[12]~14_combout\);

-- Location: LCCOMB_X12_Y27_N24
\ALU_1|ADDER|RESULT[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(12) = \ALU_1|ADDER|C[12]~14_combout\ $ (\mux_2to1_32bit_2|Y[12]~12_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[12]~14_combout\,
	datab => \mux_2to1_32bit_2|Y[12]~12_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(12));

-- Location: LCCOMB_X12_Y27_N16
\mux_2to1_32bit_5|Y[12]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[12]~74_combout\ = (\ALU_1|ADDER|RESULT\(12) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(12),
	combout => \mux_2to1_32bit_5|Y[12]~74_combout\);

-- Location: LCCOMB_X16_Y27_N6
\mux_2to1_32bit_2|Y[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[11]~11_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	datab => \cu_1|Sig_RegWrite~0_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[11]~11_combout\);

-- Location: LCCOMB_X12_Y27_N22
\ALU_1|ADDER|RESULT[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(11) = \ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[11]~11_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ $ (\ALU_1|ADDER|C[11]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \mux_2to1_32bit_2|Y[11]~11_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\,
	datad => \ALU_1|ADDER|C[11]~13_combout\,
	combout => \ALU_1|ADDER|RESULT\(11));

-- Location: LCCOMB_X12_Y27_N2
\mux_2to1_32bit_5|Y[11]~73\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[11]~73_combout\ = (\ALU_1|ADDER|RESULT\(11) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \ALU_1|ADDER|RESULT\(11),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[11]~73_combout\);

-- Location: LCCOMB_X13_Y27_N6
\mux_2to1_32bit_2|Y[10]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[10]~10_combout\ = (\cu_1|Mux8~1_combout\ & ((\cu_1|Sig_RegWrite~0_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(10)))) # (!\cu_1|Sig_RegWrite~0_combout\ & 
-- (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\)))) # (!\cu_1|Mux8~1_combout\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	datab => \cu_1|Mux8~1_combout\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	combout => \mux_2to1_32bit_2|Y[10]~10_combout\);

-- Location: LCCOMB_X13_Y27_N14
\ALU_1|ADDER|RESULT[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(10) = \mux_2to1_32bit_2|Y[10]~10_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[10]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[10]~10_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[10]~12_combout\,
	combout => \ALU_1|ADDER|RESULT\(10));

-- Location: LCCOMB_X12_Y26_N0
\mux_2to1_32bit_5|Y[10]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[10]~72_combout\ = (\ALU_1|ADDER|RESULT\(10) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(10),
	combout => \mux_2to1_32bit_5|Y[10]~72_combout\);

-- Location: LCCOMB_X13_Y27_N22
\mux_2to1_32bit_2|Y[9]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[9]~9_combout\ = (\cu_1|Mux8~1_combout\ & ((\cu_1|Sig_RegWrite~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(9))) # (!\cu_1|Sig_RegWrite~0_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\))))) # (!\cu_1|Mux8~1_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	datab => \cu_1|Mux8~1_combout\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[9]~9_combout\);

-- Location: LCCOMB_X12_Y27_N28
\ALU_1|ADDER|RESULT[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(9) = \ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[9]~9_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\ $ (\ALU_1|ADDER|C[9]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \mux_2to1_32bit_2|Y[9]~9_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\,
	datad => \ALU_1|ADDER|C[9]~11_combout\,
	combout => \ALU_1|ADDER|RESULT\(9));

-- Location: LCCOMB_X12_Y27_N20
\mux_2to1_32bit_5|Y[9]~71\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[9]~71_combout\ = (\ALU_1|ADDER|RESULT\(9) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(9),
	combout => \mux_2to1_32bit_5|Y[9]~71_combout\);

-- Location: LCCOMB_X13_Y27_N26
\mux_2to1_32bit_2|Y[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[8]~8_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(8))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	datab => \cu_1|Sig_RegWrite~0_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[8]~8_combout\);

-- Location: LCCOMB_X12_Y27_N10
\ALU_1|ADDER|RESULT[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(8) = \ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[8]~8_combout\ $ (\ALU_1|ADDER|C[8]~10_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \mux_2to1_32bit_2|Y[8]~8_combout\,
	datac => \ALU_1|ADDER|C[8]~10_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\,
	combout => \ALU_1|ADDER|RESULT\(8));

-- Location: LCCOMB_X12_Y27_N14
\mux_2to1_32bit_5|Y[8]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[8]~70_combout\ = (\ALU_1|ADDER|RESULT\(8) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|RESULT\(8),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[8]~70_combout\);

-- Location: LCCOMB_X13_Y27_N8
\mux_2to1_32bit_2|Y[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[7]~7_combout\ = (\cu_1|Mux8~1_combout\ & ((\cu_1|Sig_RegWrite~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(7))) # (!\cu_1|Sig_RegWrite~0_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\))))) # (!\cu_1|Mux8~1_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	datab => \cu_1|Mux8~1_combout\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[7]~7_combout\);

-- Location: LCCOMB_X14_Y24_N26
\ALU_1|ADDER|RESULT[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(7) = \mux_2to1_32bit_2|Y[7]~7_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ $ (\ALU_1|ADDER|C[7]~9_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[7]~7_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\,
	datac => \ALU_1|ADDER|C[7]~9_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(7));

-- Location: M9K_X15_Y23_N0
\data_memory_1|altsyncram_component|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dmemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "data_memory:data_memory_1|altsyncram:altsyncram_component|altsyncram_72r:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \cu_1|Mux6~0_combout\,
	portare => \cu_1|Mux5~1_combout\,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory_1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y24_N22
\mux_2to1_32bit_5|Y[7]~69\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[7]~69_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (\ALU_1|ADDER|RESULT\(7))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\cu_1|Mux5~0_combout\ & 
-- ((\data_memory_1|altsyncram_component|auto_generated|q_a\(7)))) # (!\cu_1|Mux5~0_combout\ & (\ALU_1|ADDER|RESULT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|RESULT\(7),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \data_memory_1|altsyncram_component|auto_generated|q_a\(7),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[7]~69_combout\);

-- Location: LCCOMB_X14_Y24_N16
\ALU_1|ADDER|RESULT[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(6) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ $ (\ALU_1|ADDER|C[6]~8_combout\ $ (\mux_2to1_32bit_2|Y[6]~6_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\,
	datab => \ALU_1|ADDER|C[6]~8_combout\,
	datac => \mux_2to1_32bit_2|Y[6]~6_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(6));

-- Location: LCCOMB_X14_Y24_N24
\mux_2to1_32bit_5|Y[6]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[6]~68_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (((\ALU_1|ADDER|RESULT\(6))))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\cu_1|Mux5~0_combout\ & 
-- (\data_memory_1|altsyncram_component|auto_generated|q_a\(6))) # (!\cu_1|Mux5~0_combout\ & ((\ALU_1|ADDER|RESULT\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory_1|altsyncram_component|auto_generated|q_a\(6),
	datab => \ALU_1|ADDER|RESULT\(6),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[6]~68_combout\);

-- Location: LCCOMB_X14_Y27_N8
\mux_2to1_32bit_2|Y[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[3]~3_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[3]~3_combout\);

-- Location: LCCOMB_X14_Y27_N10
\ALU_1|ADDER|C[4]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[4]~6_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ & ((\ALU_1|ADDER|C[3]~5_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[3]~3_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ & 
-- (\ALU_1|ADDER|C[3]~5_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[3]~3_combout\,
	datad => \ALU_1|ADDER|C[3]~5_combout\,
	combout => \ALU_1|ADDER|C[4]~6_combout\);

-- Location: LCCOMB_X14_Y27_N2
\ALU_1|ADDER|C[5]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[5]~7_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ & ((\ALU_1|ADDER|C[4]~6_combout\) # (\mux_2to1_32bit_2|Y[4]~4_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ & 
-- (\ALU_1|ADDER|C[4]~6_combout\ & (\mux_2to1_32bit_2|Y[4]~4_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\,
	datab => \mux_2to1_32bit_2|Y[4]~4_combout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[4]~6_combout\,
	combout => \ALU_1|ADDER|C[5]~7_combout\);

-- Location: LCCOMB_X14_Y24_N30
\ALU_1|ADDER|RESULT[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(5) = \ALU_1|ADDER|C[5]~7_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ $ (\mux_2to1_32bit_2|Y[5]~5_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[5]~7_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\,
	datac => \mux_2to1_32bit_2|Y[5]~5_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(5));

-- Location: LCCOMB_X14_Y24_N10
\mux_2to1_32bit_5|Y[5]~67\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[5]~67_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (\ALU_1|ADDER|RESULT\(5))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\cu_1|Mux5~0_combout\ & 
-- ((\data_memory_1|altsyncram_component|auto_generated|q_a\(5)))) # (!\cu_1|Mux5~0_combout\ & (\ALU_1|ADDER|RESULT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|RESULT\(5),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \data_memory_1|altsyncram_component|auto_generated|q_a\(5),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[5]~67_combout\);

-- Location: LCCOMB_X14_Y27_N0
\mux_2to1_32bit_2|Y[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[4]~4_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[4]~4_combout\);

-- Location: LCCOMB_X14_Y24_N0
\ALU_1|ADDER|RESULT[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(4) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[4]~4_combout\ $ (\ALU_1|ADDER|C[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[4]~4_combout\,
	datad => \ALU_1|ADDER|C[4]~6_combout\,
	combout => \ALU_1|ADDER|RESULT\(4));

-- Location: LCCOMB_X14_Y24_N28
\mux_2to1_32bit_5|Y[4]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[4]~66_combout\ = (\cu_1|Mux5~0_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\ALU_1|ADDER|RESULT\(4)))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & 
-- (\data_memory_1|altsyncram_component|auto_generated|q_a\(4))))) # (!\cu_1|Mux5~0_combout\ & (((\ALU_1|ADDER|RESULT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory_1|altsyncram_component|auto_generated|q_a\(4),
	datab => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(4),
	combout => \mux_2to1_32bit_5|Y[4]~66_combout\);

-- Location: LCCOMB_X14_Y27_N30
\ALU_1|ADDER|C[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[2]~4_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\ & ((\ALU_1|ADDER|C[1]~3_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\ & 
-- (\ALU_1|ADDER|C[1]~3_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\,
	datac => \ALU_1|ADDER|C[1]~3_combout\,
	datad => \mux_2to1_32bit_2|Y[1]~1_combout\,
	combout => \ALU_1|ADDER|C[2]~4_combout\);

-- Location: LCCOMB_X14_Y27_N18
\ALU_1|ADDER|C[3]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[3]~5_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ & ((\ALU_1|ADDER|C[2]~4_combout\) # (\mux_2to1_32bit_2|Y[2]~2_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ & 
-- (\ALU_1|ADDER|C[2]~4_combout\ & (\mux_2to1_32bit_2|Y[2]~2_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\,
	datab => \mux_2to1_32bit_2|Y[2]~2_combout\,
	datac => \ALU_1|ADDER|C[2]~4_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|C[3]~5_combout\);

-- Location: LCCOMB_X12_Y27_N0
\ALU_1|ADDER|RESULT[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(3) = \ALU_1|ADDER|C[3]~5_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ $ (\mux_2to1_32bit_2|Y[3]~3_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[3]~5_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\,
	datac => \mux_2to1_32bit_2|Y[3]~3_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(3));

-- Location: LCCOMB_X12_Y27_N8
\mux_2to1_32bit_5|Y[3]~65\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[3]~65_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (((\ALU_1|ADDER|RESULT\(3))))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\cu_1|Mux5~0_combout\ & 
-- (\data_memory_1|altsyncram_component|auto_generated|q_a\(3))) # (!\cu_1|Mux5~0_combout\ & ((\ALU_1|ADDER|RESULT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory_1|altsyncram_component|auto_generated|q_a\(3),
	datab => \ALU_1|ADDER|RESULT\(3),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[3]~65_combout\);

-- Location: LCCOMB_X14_Y27_N4
\mux_2to1_32bit_2|Y[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[2]~2_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[2]~2_combout\);

-- Location: LCCOMB_X16_Y27_N24
\ALU_1|ADDER|RESULT[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(2) = \mux_2to1_32bit_2|Y[2]~2_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ $ (\ALU_1|ADDER|C[2]~4_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[2]~2_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\,
	datac => \ALU_1|ADDER|C[2]~4_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(2));

-- Location: LCCOMB_X11_Y26_N8
\mux_2to1_32bit_5|Y[2]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[2]~64_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (((\ALU_1|ADDER|RESULT\(2))))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\cu_1|Mux5~0_combout\ & 
-- (\data_memory_1|altsyncram_component|auto_generated|q_a\(2))) # (!\cu_1|Mux5~0_combout\ & ((\ALU_1|ADDER|RESULT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datab => \data_memory_1|altsyncram_component|auto_generated|q_a\(2),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(2),
	combout => \mux_2to1_32bit_5|Y[2]~64_combout\);

-- Location: LCCOMB_X14_Y27_N28
\mux_2to1_32bit_2|Y[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[1]~1_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & ((\cu_1|Mux8~1_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1))) # (!\cu_1|Mux8~1_combout\ & 
-- ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\))))) # (!\cu_1|Sig_RegWrite~0_combout\ & (((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[1]~1_combout\);

-- Location: LCCOMB_X14_Y24_N6
\ALU_1|ADDER|RESULT[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(1) = \ALU_1|ADDER|C[1]~3_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[1]~1_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~3_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[1]~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \ALU_1|ADDER|RESULT\(1));

-- Location: LCCOMB_X14_Y24_N14
\mux_2to1_32bit_5|Y[1]~63\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[1]~63_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & (\ALU_1|ADDER|RESULT\(1))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29) & ((\cu_1|Mux5~0_combout\ & 
-- ((\data_memory_1|altsyncram_component|auto_generated|q_a\(1)))) # (!\cu_1|Mux5~0_combout\ & (\ALU_1|ADDER|RESULT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|RESULT\(1),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \data_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datad => \cu_1|Mux5~0_combout\,
	combout => \mux_2to1_32bit_5|Y[1]~63_combout\);

-- Location: LCCOMB_X14_Y24_N8
\mux_2to1_32bit_5|Y[0]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[0]~60_combout\ = (\cu_1|Mux5~1_combout\ & (((\data_memory_1|altsyncram_component|auto_generated|q_a\(0))))) # (!\cu_1|Mux5~1_combout\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ $ 
-- (((\mux_2to1_32bit_2|Y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \cu_1|Mux5~1_combout\,
	datac => \data_memory_1|altsyncram_component|auto_generated|q_a\(0),
	datad => \mux_2to1_32bit_2|Y[0]~0_combout\,
	combout => \mux_2to1_32bit_5|Y[0]~60_combout\);

-- Location: LCCOMB_X14_Y24_N2
\comparator_1|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~2_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y28_N28
\comparator_1|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~3_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y27_N26
\comparator_1|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~1_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y24_N20
\comparator_1|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~0_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\ & 
-- (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\ $ (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y28_N6
\comparator_1|Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~4_combout\ = (\comparator_1|Equal0~2_combout\ & (\comparator_1|Equal0~3_combout\ & (\comparator_1|Equal0~1_combout\ & \comparator_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_1|Equal0~2_combout\,
	datab => \comparator_1|Equal0~3_combout\,
	datac => \comparator_1|Equal0~1_combout\,
	datad => \comparator_1|Equal0~0_combout\,
	combout => \comparator_1|Equal0~4_combout\);

-- Location: M9K_X15_Y26_N0
\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "reg_file:reg_file_1|altsyncram:mem_rtl_0|altsyncram_jfq1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \cu_1|Sig_RegWrite~1_combout\,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \ALT_INV_clock~inputclkctrl_outclk\,
	portadatain => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portbdatain => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAIN_bus\,
	portaaddr => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\,
	portbdataout => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y26_N26
\mux_2to1_32bit_2|Y[31]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[31]~31_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[31]~31_combout\);

-- Location: LCCOMB_X11_Y26_N6
\mux_2to1_32bit_5|Y[31]~61\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[31]~61_combout\ = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\ $ (\ALU_1|ADDER|C[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \mux_2to1_32bit_5|Y[31]~61_combout\);

-- Location: LCCOMB_X16_Y26_N8
\mux_2to1_32bit_2|Y[30]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[30]~30_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\) # ((\cu_1|Mux8~1_combout\ & \cu_1|Sig_RegWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux8~1_combout\,
	datab => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[30]~30_combout\);

-- Location: LCCOMB_X12_Y26_N26
\mux_2to1_32bit_2|Y[29]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[29]~29_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[29]~29_combout\);

-- Location: LCCOMB_X12_Y26_N4
\mux_2to1_32bit_2|Y[28]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[28]~28_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[28]~28_combout\);

-- Location: LCCOMB_X17_Y26_N20
\mux_2to1_32bit_2|Y[22]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[22]~22_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[22]~22_combout\);

-- Location: LCCOMB_X16_Y26_N10
\mux_2to1_32bit_2|Y[21]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[21]~21_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[21]~21_combout\);

-- Location: LCCOMB_X12_Y26_N16
\mux_2to1_32bit_2|Y[20]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[20]~20_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datab => \cu_1|Mux8~1_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[20]~20_combout\);

-- Location: LCCOMB_X11_Y26_N16
\mux_2to1_32bit_2|Y[18]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[18]~18_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[18]~18_combout\);

-- Location: LCCOMB_X13_Y26_N24
\ALU_1|ADDER|C[18]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[18]~20_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\ & ((\ALU_1|ADDER|C[17]~19_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[17]~17_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\ & 
-- (\ALU_1|ADDER|C[17]~19_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[17]~17_combout\,
	datad => \ALU_1|ADDER|C[17]~19_combout\,
	combout => \ALU_1|ADDER|C[18]~20_combout\);

-- Location: LCCOMB_X13_Y26_N30
\ALU_1|ADDER|C[19]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[19]~21_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ & ((\ALU_1|ADDER|C[18]~20_combout\) # (\mux_2to1_32bit_2|Y[18]~18_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ & (\ALU_1|ADDER|C[18]~20_combout\ & (\mux_2to1_32bit_2|Y[18]~18_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[18]~18_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[18]~20_combout\,
	combout => \ALU_1|ADDER|C[19]~21_combout\);

-- Location: LCCOMB_X13_Y26_N28
\ALU_1|ADDER|C[20]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[20]~22_combout\ = (\ALU_1|ADDER|C[19]~21_combout\ & ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\) # (\mux_2to1_32bit_2|Y[19]~19_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\ALU_1|ADDER|C[19]~21_combout\ & 
-- (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\ & (\mux_2to1_32bit_2|Y[19]~19_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[19]~19_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[19]~21_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\,
	combout => \ALU_1|ADDER|C[20]~22_combout\);

-- Location: LCCOMB_X13_Y26_N26
\ALU_1|ADDER|C[21]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[21]~23_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ & ((\ALU_1|ADDER|C[20]~22_combout\) # (\mux_2to1_32bit_2|Y[20]~20_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ & 
-- (\ALU_1|ADDER|C[20]~22_combout\ & (\mux_2to1_32bit_2|Y[20]~20_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[20]~20_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[20]~22_combout\,
	combout => \ALU_1|ADDER|C[21]~23_combout\);

-- Location: LCCOMB_X13_Y26_N4
\ALU_1|ADDER|C[22]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[22]~24_combout\ = (\ALU_1|ADDER|C[21]~23_combout\ & ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\) # (\mux_2to1_32bit_2|Y[21]~21_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\ALU_1|ADDER|C[21]~23_combout\ & 
-- (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\ & (\mux_2to1_32bit_2|Y[21]~21_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[21]~21_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[21]~23_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\,
	combout => \ALU_1|ADDER|C[22]~24_combout\);

-- Location: LCCOMB_X13_Y26_N6
\ALU_1|ADDER|C[23]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[23]~25_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ & ((\ALU_1|ADDER|C[22]~24_combout\) # (\mux_2to1_32bit_2|Y[22]~22_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ & 
-- (\ALU_1|ADDER|C[22]~24_combout\ & (\mux_2to1_32bit_2|Y[22]~22_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[22]~22_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\,
	datac => \ALU_1|ADDER|C[22]~24_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|C[23]~25_combout\);

-- Location: LCCOMB_X13_Y26_N20
\ALU_1|ADDER|C[24]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[24]~26_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ & ((\ALU_1|ADDER|C[23]~25_combout\) # (\mux_2to1_32bit_2|Y[23]~23_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ & 
-- (\ALU_1|ADDER|C[23]~25_combout\ & (\mux_2to1_32bit_2|Y[23]~23_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\,
	datab => \mux_2to1_32bit_2|Y[23]~23_combout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[23]~25_combout\,
	combout => \ALU_1|ADDER|C[24]~26_combout\);

-- Location: LCCOMB_X13_Y26_N18
\ALU_1|ADDER|C[25]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[25]~27_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\ & ((\ALU_1|ADDER|C[24]~26_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[24]~24_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\ & 
-- (\ALU_1|ADDER|C[24]~26_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[24]~24_combout\,
	datad => \ALU_1|ADDER|C[24]~26_combout\,
	combout => \ALU_1|ADDER|C[25]~27_combout\);

-- Location: LCCOMB_X13_Y26_N16
\ALU_1|ADDER|C[26]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[26]~28_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ & ((\ALU_1|ADDER|C[25]~27_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[25]~25_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ & 
-- (\ALU_1|ADDER|C[25]~27_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[25]~25_combout\,
	datad => \ALU_1|ADDER|C[25]~27_combout\,
	combout => \ALU_1|ADDER|C[26]~28_combout\);

-- Location: LCCOMB_X13_Y26_N2
\ALU_1|ADDER|C[27]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[27]~29_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ & ((\ALU_1|ADDER|C[26]~28_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[26]~26_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ & 
-- (\ALU_1|ADDER|C[26]~28_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[26]~26_combout\,
	datad => \ALU_1|ADDER|C[26]~28_combout\,
	combout => \ALU_1|ADDER|C[27]~29_combout\);

-- Location: LCCOMB_X13_Y26_N0
\ALU_1|ADDER|C[28]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[28]~30_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ & ((\ALU_1|ADDER|C[27]~29_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[27]~27_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ & 
-- (\ALU_1|ADDER|C[27]~29_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[27]~27_combout\,
	datad => \ALU_1|ADDER|C[27]~29_combout\,
	combout => \ALU_1|ADDER|C[28]~30_combout\);

-- Location: LCCOMB_X13_Y26_N22
\ALU_1|ADDER|C[29]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[29]~31_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ & ((\ALU_1|ADDER|C[28]~30_combout\) # (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[28]~28_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ & 
-- (\ALU_1|ADDER|C[28]~30_combout\ & (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[28]~28_combout\,
	datad => \ALU_1|ADDER|C[28]~30_combout\,
	combout => \ALU_1|ADDER|C[29]~31_combout\);

-- Location: LCCOMB_X13_Y26_N8
\ALU_1|ADDER|C[30]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[30]~32_combout\ = (\ALU_1|ADDER|C[29]~31_combout\ & ((\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\) # (\mux_2to1_32bit_2|Y[29]~29_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\ALU_1|ADDER|C[29]~31_combout\ & 
-- (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\ & (\mux_2to1_32bit_2|Y[29]~29_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[29]~29_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[29]~31_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\,
	combout => \ALU_1|ADDER|C[30]~32_combout\);

-- Location: LCCOMB_X14_Y26_N24
\ALU_1|ADDER|C[31]~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|C[31]~33_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ & ((\ALU_1|ADDER|C[30]~32_combout\) # (\mux_2to1_32bit_2|Y[30]~30_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ & 
-- (\ALU_1|ADDER|C[30]~32_combout\ & (\mux_2to1_32bit_2|Y[30]~30_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[30]~30_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[30]~32_combout\,
	combout => \ALU_1|ADDER|C[31]~33_combout\);

-- Location: LCCOMB_X14_Y26_N26
\mux_2to1_32bit_5|Y[31]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[31]~62_combout\ = (!\cu_1|Mux5~1_combout\ & (\mux_2to1_32bit_2|Y[31]~31_combout\ $ (\mux_2to1_32bit_5|Y[31]~61_combout\ $ (\ALU_1|ADDER|C[31]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[31]~31_combout\,
	datab => \cu_1|Mux5~1_combout\,
	datac => \mux_2to1_32bit_5|Y[31]~61_combout\,
	datad => \ALU_1|ADDER|C[31]~33_combout\,
	combout => \mux_2to1_32bit_5|Y[31]~62_combout\);

-- Location: LCCOMB_X13_Y26_N14
\ALU_1|ADDER|RESULT[30]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(30) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ $ (\mux_2to1_32bit_2|Y[30]~30_combout\ $ (\ALU_1|ADDER|C[30]~32_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\,
	datab => \mux_2to1_32bit_2|Y[30]~30_combout\,
	datac => \ALU_1|ADDER|C[30]~32_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(30));

-- Location: LCCOMB_X14_Y26_N10
\mux_2to1_32bit_5|Y[30]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[30]~92_combout\ = (\ALU_1|ADDER|RESULT\(30) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(30),
	combout => \mux_2to1_32bit_5|Y[30]~92_combout\);

-- Location: LCCOMB_X12_Y26_N20
\ALU_1|ADDER|RESULT[29]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(29) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[29]~29_combout\ $ (\ALU_1|ADDER|C[29]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[29]~29_combout\,
	datad => \ALU_1|ADDER|C[29]~31_combout\,
	combout => \ALU_1|ADDER|RESULT\(29));

-- Location: LCCOMB_X12_Y26_N10
\mux_2to1_32bit_5|Y[29]~91\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[29]~91_combout\ = (\ALU_1|ADDER|RESULT\(29) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(29),
	combout => \mux_2to1_32bit_5|Y[29]~91_combout\);

-- Location: LCCOMB_X14_Y26_N2
\ALU_1|ADDER|RESULT[28]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(28) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[28]~30_combout\ $ (\mux_2to1_32bit_2|Y[28]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[28]~30_combout\,
	datad => \mux_2to1_32bit_2|Y[28]~28_combout\,
	combout => \ALU_1|ADDER|RESULT\(28));

-- Location: LCCOMB_X14_Y26_N28
\mux_2to1_32bit_5|Y[28]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[28]~90_combout\ = (\ALU_1|ADDER|RESULT\(28) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(28),
	combout => \mux_2to1_32bit_5|Y[28]~90_combout\);

-- Location: LCCOMB_X16_Y26_N30
\mux_2to1_32bit_2|Y[27]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[27]~27_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\) # ((\cu_1|Mux8~1_combout\ & \cu_1|Sig_RegWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux8~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	combout => \mux_2to1_32bit_2|Y[27]~27_combout\);

-- Location: LCCOMB_X14_Y26_N16
\ALU_1|ADDER|RESULT[27]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(27) = \mux_2to1_32bit_2|Y[27]~27_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[27]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[27]~27_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[27]~29_combout\,
	combout => \ALU_1|ADDER|RESULT\(27));

-- Location: LCCOMB_X14_Y26_N30
\mux_2to1_32bit_5|Y[27]~89\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[27]~89_combout\ = (\ALU_1|ADDER|RESULT\(27) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(27),
	combout => \mux_2to1_32bit_5|Y[27]~89_combout\);

-- Location: LCCOMB_X16_Y26_N16
\mux_2to1_32bit_2|Y[26]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[26]~26_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\) # ((\cu_1|Mux8~1_combout\ & \cu_1|Sig_RegWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux8~1_combout\,
	datab => \cu_1|Sig_RegWrite~0_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[26]~26_combout\);

-- Location: LCCOMB_X14_Y26_N18
\ALU_1|ADDER|RESULT[26]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(26) = \mux_2to1_32bit_2|Y[26]~26_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ $ (\ALU_1|ADDER|C[26]~28_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[26]~26_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\,
	datac => \ALU_1|ADDER|C[26]~28_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(26));

-- Location: LCCOMB_X14_Y26_N8
\mux_2to1_32bit_5|Y[26]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[26]~88_combout\ = (\ALU_1|ADDER|RESULT\(26) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(26),
	combout => \mux_2to1_32bit_5|Y[26]~88_combout\);

-- Location: LCCOMB_X17_Y26_N22
\mux_2to1_32bit_2|Y[25]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[25]~25_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\) # ((\cu_1|Mux8~1_combout\ & \cu_1|Sig_RegWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\,
	datac => \cu_1|Mux8~1_combout\,
	datad => \cu_1|Sig_RegWrite~0_combout\,
	combout => \mux_2to1_32bit_2|Y[25]~25_combout\);

-- Location: LCCOMB_X14_Y26_N20
\ALU_1|ADDER|RESULT[25]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(25) = \mux_2to1_32bit_2|Y[25]~25_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ $ (\ALU_1|ADDER|C[25]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[25]~25_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\,
	datad => \ALU_1|ADDER|C[25]~27_combout\,
	combout => \ALU_1|ADDER|RESULT\(25));

-- Location: LCCOMB_X14_Y26_N14
\mux_2to1_32bit_5|Y[25]~87\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[25]~87_combout\ = (\ALU_1|ADDER|RESULT\(25) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(25),
	combout => \mux_2to1_32bit_5|Y[25]~87_combout\);

-- Location: LCCOMB_X17_Y26_N12
\mux_2to1_32bit_2|Y[24]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[24]~24_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Sig_RegWrite~0_combout\,
	datac => \cu_1|Mux8~1_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\,
	combout => \mux_2to1_32bit_2|Y[24]~24_combout\);

-- Location: LCCOMB_X14_Y26_N6
\ALU_1|ADDER|RESULT[24]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(24) = \mux_2to1_32bit_2|Y[24]~24_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\ $ (\ALU_1|ADDER|C[24]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[24]~24_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\,
	datad => \ALU_1|ADDER|C[24]~26_combout\,
	combout => \ALU_1|ADDER|RESULT\(24));

-- Location: LCCOMB_X14_Y26_N4
\mux_2to1_32bit_5|Y[24]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[24]~86_combout\ = (\ALU_1|ADDER|RESULT\(24) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(24),
	combout => \mux_2to1_32bit_5|Y[24]~86_combout\);

-- Location: LCCOMB_X17_Y26_N10
\mux_2to1_32bit_2|Y[23]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[23]~23_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\) # ((\cu_1|Mux8~1_combout\ & \cu_1|Sig_RegWrite~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cu_1|Mux8~1_combout\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\,
	datad => \cu_1|Sig_RegWrite~0_combout\,
	combout => \mux_2to1_32bit_2|Y[23]~23_combout\);

-- Location: LCCOMB_X14_Y26_N12
\ALU_1|ADDER|RESULT[23]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(23) = \mux_2to1_32bit_2|Y[23]~23_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ $ (\ALU_1|ADDER|C[23]~25_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[23]~23_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\,
	datac => \ALU_1|ADDER|C[23]~25_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(23));

-- Location: LCCOMB_X14_Y26_N22
\mux_2to1_32bit_5|Y[23]~85\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[23]~85_combout\ = (\ALU_1|ADDER|RESULT\(23) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(23),
	combout => \mux_2to1_32bit_5|Y[23]~85_combout\);

-- Location: LCCOMB_X16_Y26_N2
\ALU_1|ADDER|RESULT[22]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(22) = \ALU_1|ADDER|C[1]~1_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ $ (\ALU_1|ADDER|C[22]~24_combout\ $ (\mux_2to1_32bit_2|Y[22]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\,
	datac => \ALU_1|ADDER|C[22]~24_combout\,
	datad => \mux_2to1_32bit_2|Y[22]~22_combout\,
	combout => \ALU_1|ADDER|RESULT\(22));

-- Location: LCCOMB_X16_Y26_N6
\mux_2to1_32bit_5|Y[22]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[22]~84_combout\ = (\ALU_1|ADDER|RESULT\(22) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(22),
	combout => \mux_2to1_32bit_5|Y[22]~84_combout\);

-- Location: LCCOMB_X16_Y26_N0
\ALU_1|ADDER|RESULT[21]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(21) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\ $ (\mux_2to1_32bit_2|Y[21]~21_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[21]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\,
	datab => \mux_2to1_32bit_2|Y[21]~21_combout\,
	datac => \ALU_1|ADDER|C[1]~1_combout\,
	datad => \ALU_1|ADDER|C[21]~23_combout\,
	combout => \ALU_1|ADDER|RESULT\(21));

-- Location: LCCOMB_X16_Y26_N4
\mux_2to1_32bit_5|Y[21]~83\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[21]~83_combout\ = (\ALU_1|ADDER|RESULT\(21) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(21),
	combout => \mux_2to1_32bit_5|Y[21]~83_combout\);

-- Location: LCCOMB_X12_Y26_N18
\ALU_1|ADDER|RESULT[20]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(20) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\mux_2to1_32bit_2|Y[20]~20_combout\ $ (\ALU_1|ADDER|C[20]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \mux_2to1_32bit_2|Y[20]~20_combout\,
	datad => \ALU_1|ADDER|C[20]~22_combout\,
	combout => \ALU_1|ADDER|RESULT\(20));

-- Location: LCCOMB_X12_Y26_N8
\mux_2to1_32bit_5|Y[20]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[20]~82_combout\ = (\ALU_1|ADDER|RESULT\(20) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(20),
	combout => \mux_2to1_32bit_5|Y[20]~82_combout\);

-- Location: LCCOMB_X11_Y26_N12
\mux_2to1_32bit_2|Y[19]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_2|Y[19]~19_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\) # ((\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\,
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \mux_2to1_32bit_2|Y[19]~19_combout\);

-- Location: LCCOMB_X12_Y26_N2
\ALU_1|ADDER|RESULT[19]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(19) = \mux_2to1_32bit_2|Y[19]~19_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\ $ (\ALU_1|ADDER|C[19]~21_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_32bit_2|Y[19]~19_combout\,
	datab => \ALU_1|ADDER|C[1]~1_combout\,
	datac => \ALU_1|ADDER|C[19]~21_combout\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\,
	combout => \ALU_1|ADDER|RESULT\(19));

-- Location: LCCOMB_X12_Y26_N30
\mux_2to1_32bit_5|Y[19]~81\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[19]~81_combout\ = (\ALU_1|ADDER|RESULT\(19) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux5~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datad => \ALU_1|ADDER|RESULT\(19),
	combout => \mux_2to1_32bit_5|Y[19]~81_combout\);

-- Location: LCCOMB_X11_Y26_N18
\ALU_1|ADDER|RESULT[18]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(18) = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ $ (\mux_2to1_32bit_2|Y[18]~18_combout\ $ (\ALU_1|ADDER|C[18]~20_combout\ $ (\ALU_1|ADDER|C[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datab => \mux_2to1_32bit_2|Y[18]~18_combout\,
	datac => \ALU_1|ADDER|C[18]~20_combout\,
	datad => \ALU_1|ADDER|C[1]~1_combout\,
	combout => \ALU_1|ADDER|RESULT\(18));

-- Location: LCCOMB_X11_Y26_N26
\mux_2to1_32bit_5|Y[18]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_5|Y[18]~80_combout\ = (\ALU_1|ADDER|RESULT\(18) & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)) # (!\cu_1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	datac => \cu_1|Mux5~0_combout\,
	datad => \ALU_1|ADDER|RESULT\(18),
	combout => \mux_2to1_32bit_5|Y[18]~80_combout\);

-- Location: LCCOMB_X12_Y26_N14
\comparator_1|Equal0~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~17_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29~PORTBDATAOUT0\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a29\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a28~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~17_combout\);

-- Location: LCCOMB_X16_Y26_N24
\comparator_1|Equal0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~16_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a27~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a26~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~16_combout\);

-- Location: LCCOMB_X16_Y26_N22
\comparator_1|Equal0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~18_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a30~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~18_combout\);

-- Location: LCCOMB_X17_Y26_N6
\comparator_1|Equal0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~15_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24~PORTBDATAOUT0\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a24\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a25~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~15_combout\);

-- Location: LCCOMB_X16_Y26_N20
\comparator_1|Equal0~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~19_combout\ = (\comparator_1|Equal0~17_combout\ & (\comparator_1|Equal0~16_combout\ & (\comparator_1|Equal0~18_combout\ & \comparator_1|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_1|Equal0~17_combout\,
	datab => \comparator_1|Equal0~16_combout\,
	datac => \comparator_1|Equal0~18_combout\,
	datad => \comparator_1|Equal0~15_combout\,
	combout => \comparator_1|Equal0~19_combout\);

-- Location: LCCOMB_X12_Y27_N6
\comparator_1|Equal0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~5_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a9\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y27_N10
\comparator_1|Equal0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~8_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a15\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y27_N12
\comparator_1|Equal0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~6_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y27_N12
\comparator_1|Equal0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~7_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y27_N30
\comparator_1|Equal0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~9_combout\ = (\comparator_1|Equal0~5_combout\ & (\comparator_1|Equal0~8_combout\ & (\comparator_1|Equal0~6_combout\ & \comparator_1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_1|Equal0~5_combout\,
	datab => \comparator_1|Equal0~8_combout\,
	datac => \comparator_1|Equal0~6_combout\,
	datad => \comparator_1|Equal0~7_combout\,
	combout => \comparator_1|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y26_N14
\comparator_1|Equal0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~12_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a20~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a21~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~12_combout\);

-- Location: LCCOMB_X17_Y26_N18
\comparator_1|Equal0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~13_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a23~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a22~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~13_combout\);

-- Location: LCCOMB_X17_Y26_N8
\comparator_1|Equal0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~10_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17~PORTBDATAOUT0\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a17\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a16~PORTBDATAOUT0\,
	combout => \comparator_1|Equal0~10_combout\);

-- Location: LCCOMB_X11_Y26_N14
\comparator_1|Equal0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~11_combout\ = (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\ & (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\ $ 
-- (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\)))) # (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\ & (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\ & 
-- (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\ $ (!\reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19~PORTBDATAOUT0\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a19\,
	datac => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~PORTBDATAOUT0\,
	datad => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	combout => \comparator_1|Equal0~11_combout\);

-- Location: LCCOMB_X17_Y26_N24
\comparator_1|Equal0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~14_combout\ = (\comparator_1|Equal0~12_combout\ & (\comparator_1|Equal0~13_combout\ & (\comparator_1|Equal0~10_combout\ & \comparator_1|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_1|Equal0~12_combout\,
	datab => \comparator_1|Equal0~13_combout\,
	datac => \comparator_1|Equal0~10_combout\,
	datad => \comparator_1|Equal0~11_combout\,
	combout => \comparator_1|Equal0~14_combout\);

-- Location: LCCOMB_X17_Y26_N16
\comparator_1|Equal0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \comparator_1|Equal0~20_combout\ = (\comparator_1|Equal0~4_combout\ & (\comparator_1|Equal0~19_combout\ & (\comparator_1|Equal0~9_combout\ & \comparator_1|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_1|Equal0~4_combout\,
	datab => \comparator_1|Equal0~19_combout\,
	datac => \comparator_1|Equal0~9_combout\,
	datad => \comparator_1|Equal0~14_combout\,
	combout => \comparator_1|Equal0~20_combout\);

-- Location: LCCOMB_X17_Y29_N8
\cu_1|Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux3~1_combout\ = (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(30) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & \cu_1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(30),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	datad => \cu_1|Mux3~0_combout\,
	combout => \cu_1|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y65_N8
\signBranchResult~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \signBranchResult~0_combout\ = (\comparator_1|Equal0~20_combout\ & (\cu_1|Mux4~0_combout\)) # (!\comparator_1|Equal0~20_combout\ & ((\cu_1|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux4~0_combout\,
	datac => \comparator_1|Equal0~20_combout\,
	datad => \cu_1|Mux3~1_combout\,
	combout => \signBranchResult~0_combout\);

-- Location: LCCOMB_X49_Y69_N20
\mux_2to1_32bit_4|Y[7]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[7]~10_combout\ = \cla_32_1|RESULT\(7) $ (((\signBranchResult~0_combout\ & (\cla_32_2|C[7]~3_combout\ $ (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|C[7]~3_combout\,
	datab => \cla_32_1|RESULT\(7),
	datac => \signBranchResult~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	combout => \mux_2to1_32bit_4|Y[7]~10_combout\);

-- Location: LCCOMB_X49_Y69_N26
\mux_2to1_32bit_4|Y[7]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[7]~11_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[7]~10_combout\,
	combout => \mux_2to1_32bit_4|Y[7]~11_combout\);

-- Location: FF_X49_Y69_N27
\program_counter_1|PC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(7));

-- Location: LCCOMB_X49_Y69_N8
\mux_2to1_32bit_4|Y[6]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[6]~8_combout\ = \cla_32_1|RESULT\(6) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4) $ (\cla_32_2|C[6]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(6),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_2|C[6]~2_combout\,
	combout => \mux_2to1_32bit_4|Y[6]~8_combout\);

-- Location: LCCOMB_X49_Y69_N4
\mux_2to1_32bit_4|Y[6]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[6]~9_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(4)))) # (!\cu_1|Mux2~0_combout\ & (\mux_2to1_32bit_4|Y[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cu_1|Mux2~0_combout\,
	datac => \mux_2to1_32bit_4|Y[6]~8_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(4),
	combout => \mux_2to1_32bit_4|Y[6]~9_combout\);

-- Location: FF_X49_Y69_N5
\program_counter_1|PC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(6));

-- Location: LCCOMB_X48_Y69_N6
\cla_32_1|RESULT[5]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(5) = \program_counter_1|PC_out\(5) $ (((\program_counter_1|PC_out\(2) & (\program_counter_1|PC_out\(3) & \program_counter_1|PC_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datab => \program_counter_1|PC_out\(3),
	datac => \program_counter_1|PC_out\(4),
	datad => \program_counter_1|PC_out\(5),
	combout => \cla_32_1|RESULT\(5));

-- Location: LCCOMB_X48_Y69_N12
\mux_2to1_32bit_4|Y[5]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[5]~6_combout\ = \cla_32_1|RESULT\(5) $ (((\signBranchResult~0_combout\ & (\cla_32_2|C[5]~1_combout\ $ (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|C[5]~1_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_1|RESULT\(5),
	combout => \mux_2to1_32bit_4|Y[5]~6_combout\);

-- Location: LCCOMB_X48_Y69_N24
\mux_2to1_32bit_4|Y[5]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[5]~7_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(3))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux2~0_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(3),
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[5]~6_combout\,
	combout => \mux_2to1_32bit_4|Y[5]~7_combout\);

-- Location: FF_X48_Y69_N25
\program_counter_1|PC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(5));

-- Location: LCCOMB_X17_Y29_N24
\cu_1|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux2~0_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (\cu_1|Equal0~0_combout\ & !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \cu_1|Equal0~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	combout => \cu_1|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y69_N2
\cla_32_1|RESULT[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(4) = \program_counter_1|PC_out\(4) $ (((\program_counter_1|PC_out\(3) & \program_counter_1|PC_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_counter_1|PC_out\(3),
	datac => \program_counter_1|PC_out\(4),
	datad => \program_counter_1|PC_out\(2),
	combout => \cla_32_1|RESULT\(4));

-- Location: LCCOMB_X48_Y69_N10
\mux_2to1_32bit_4|Y[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[4]~4_combout\ = \cla_32_1|RESULT\(4) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2) $ (\cla_32_2|C[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	datab => \cla_32_1|RESULT\(4),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_2|C[4]~0_combout\,
	combout => \mux_2to1_32bit_4|Y[4]~4_combout\);

-- Location: LCCOMB_X48_Y69_N4
\mux_2to1_32bit_4|Y[4]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[4]~5_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(2))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cu_1|Mux2~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(2),
	datad => \mux_2to1_32bit_4|Y[4]~4_combout\,
	combout => \mux_2to1_32bit_4|Y[4]~5_combout\);

-- Location: FF_X48_Y69_N5
\program_counter_1|PC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(4));

-- Location: LCCOMB_X48_Y69_N22
\cla_32_2|RESULT[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|RESULT[3]~0_combout\ = \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1) $ (\program_counter_1|PC_out\(3) $ (((\program_counter_1|PC_out\(2)) # (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datad => \program_counter_1|PC_out\(3),
	combout => \cla_32_2|RESULT[3]~0_combout\);

-- Location: LCCOMB_X48_Y69_N16
\cla_32_1|RESULT[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(3) = \program_counter_1|PC_out\(2) $ (\program_counter_1|PC_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(2),
	datad => \program_counter_1|PC_out\(3),
	combout => \cla_32_1|RESULT\(3));

-- Location: LCCOMB_X48_Y69_N18
\mux_2to1_32bit_4|Y[3]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[3]~2_combout\ = (!\cu_1|Mux2~0_combout\ & ((\signBranchResult~0_combout\ & (\cla_32_2|RESULT[3]~0_combout\)) # (!\signBranchResult~0_combout\ & ((\cla_32_1|RESULT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|RESULT[3]~0_combout\,
	datab => \cla_32_1|RESULT\(3),
	datac => \signBranchResult~0_combout\,
	datad => \cu_1|Mux2~0_combout\,
	combout => \mux_2to1_32bit_4|Y[3]~2_combout\);

-- Location: LCCOMB_X48_Y69_N28
\mux_2to1_32bit_4|Y[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[3]~3_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[3]~2_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(1) & \cu_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(1),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[3]~2_combout\,
	combout => \mux_2to1_32bit_4|Y[3]~3_combout\);

-- Location: FF_X48_Y69_N29
\program_counter_1|PC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(3));

-- Location: LCCOMB_X35_Y69_N2
\mux_2to1_32bit_4|Y[2]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[2]~0_combout\ = (\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0))) # (!\cu_1|Mux2~0_combout\ & (\program_counter_1|PC_out\(2) $ (((!\signBranchResult~0_combout\) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(0),
	datab => \program_counter_1|PC_out\(2),
	datac => \cu_1|Mux2~0_combout\,
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[2]~0_combout\);

-- Location: LCCOMB_X35_Y69_N16
\mux_2to1_32bit_4|Y[2]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[2]~1_combout\ = (!\reset~input_o\ & \mux_2to1_32bit_4|Y[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[2]~0_combout\,
	combout => \mux_2to1_32bit_4|Y[2]~1_combout\);

-- Location: FF_X35_Y69_N17
\program_counter_1|PC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(2));

-- Location: LCCOMB_X17_Y29_N22
\cu_1|Mux7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux7~0_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) & 
-- !\instruction_memory_1|altsyncram_component|auto_generated|q_a\(29)))) # (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(26) & (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(27) & 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(31) & \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(26),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(27),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(31),
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(29),
	combout => \cu_1|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y29_N16
\cu_1|Sig_RegWrite~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Sig_RegWrite~1_combout\ = (\ALU_1|ADDER|C[1]~2_combout\) # ((!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(28) & (\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(28),
	datab => \cu_1|Sig_RegWrite~0_combout\,
	datac => \cu_1|Mux7~0_combout\,
	datad => \ALU_1|ADDER|C[1]~2_combout\,
	combout => \cu_1|Sig_RegWrite~1_combout\);

-- Location: LCCOMB_X14_Y24_N12
\ALU_1|ADDER|RESULT[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT[0]~0_combout\ = \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\mux_2to1_32bit_2|Y[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \mux_2to1_32bit_2|Y[0]~0_combout\,
	combout => \ALU_1|ADDER|RESULT[0]~0_combout\);

-- Location: LCCOMB_X16_Y26_N28
\ALU_1|ADDER|RESULT[31]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ALU_1|ADDER|RESULT\(31) = \ALU_1|ADDER|C[1]~1_combout\ $ (\reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\ $ (\ALU_1|ADDER|C[31]~33_combout\ $ (\mux_2to1_32bit_2|Y[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_1|ADDER|C[1]~1_combout\,
	datab => \reg_file_1|mem_rtl_0|auto_generated|ram_block1a31\,
	datac => \ALU_1|ADDER|C[31]~33_combout\,
	datad => \mux_2to1_32bit_2|Y[31]~31_combout\,
	combout => \ALU_1|ADDER|RESULT\(31));

-- Location: FF_X49_Y69_N15
\program_counter_1|PC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[8]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(8));

-- Location: LCCOMB_X49_Y69_N12
\cla_32_1|RESULT[8]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(8) = \program_counter_1|PC_out\(8) $ (((\program_counter_1|PC_out\(7) & (\program_counter_1|PC_out\(6) & \cla_32_1|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(7),
	datab => \program_counter_1|PC_out\(8),
	datac => \program_counter_1|PC_out\(6),
	datad => \cla_32_1|C~1_combout\,
	combout => \cla_32_1|RESULT\(8));

-- Location: LCCOMB_X49_Y69_N18
\cla_32_1|C~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~3_combout\ = (\program_counter_1|PC_out\(6) & \cla_32_1|C~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \program_counter_1|PC_out\(6),
	datad => \cla_32_1|C~1_combout\,
	combout => \cla_32_1|C~3_combout\);

-- Location: LCCOMB_X49_Y69_N16
\cla_32_2|C[8]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[8]~4_combout\ = (\cla_32_2|C[7]~3_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5)) # (\program_counter_1|PC_out\(7) $ (\cla_32_1|C~3_combout\)))) # (!\cla_32_2|C[7]~3_combout\ & 
-- (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(5) & (\program_counter_1|PC_out\(7) $ (\cla_32_1|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(7),
	datab => \cla_32_1|C~3_combout\,
	datac => \cla_32_2|C[7]~3_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(5),
	combout => \cla_32_2|C[8]~4_combout\);

-- Location: LCCOMB_X49_Y69_N10
\mux_2to1_32bit_4|Y[8]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[8]~12_combout\ = \cla_32_1|RESULT\(8) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(6) $ (\cla_32_2|C[8]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(8),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_2|C[8]~4_combout\,
	combout => \mux_2to1_32bit_4|Y[8]~12_combout\);

-- Location: LCCOMB_X49_Y69_N14
\mux_2to1_32bit_4|Y[8]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[8]~13_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(6))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cu_1|Mux2~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	datad => \mux_2to1_32bit_4|Y[8]~12_combout\,
	combout => \mux_2to1_32bit_4|Y[8]~13_combout\);

-- Location: LCCOMB_X49_Y69_N0
\cla_32_1|C~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~4_combout\ = (\program_counter_1|PC_out\(7) & (\program_counter_1|PC_out\(8) & (\program_counter_1|PC_out\(6) & \cla_32_1|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(7),
	datab => \program_counter_1|PC_out\(8),
	datac => \program_counter_1|PC_out\(6),
	datad => \cla_32_1|C~1_combout\,
	combout => \cla_32_1|C~4_combout\);

-- Location: FF_X42_Y69_N9
\program_counter_1|PC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(9));

-- Location: LCCOMB_X42_Y69_N22
\cla_32_1|RESULT[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(9) = \cla_32_1|C~4_combout\ $ (\program_counter_1|PC_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cla_32_1|C~4_combout\,
	datac => \program_counter_1|PC_out\(9),
	combout => \cla_32_1|RESULT\(9));

-- Location: LCCOMB_X49_Y69_N22
\cla_32_1|C~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~5_combout\ = (\program_counter_1|PC_out\(7) & (\program_counter_1|PC_out\(6) & \cla_32_1|C~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(7),
	datac => \program_counter_1|PC_out\(6),
	datad => \cla_32_1|C~1_combout\,
	combout => \cla_32_1|C~5_combout\);

-- Location: LCCOMB_X49_Y69_N28
\cla_32_2|C[9]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[9]~5_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(6) & ((\cla_32_2|C[8]~4_combout\) # (\cla_32_1|C~5_combout\ $ (\program_counter_1|PC_out\(8))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(6) & (\cla_32_2|C[8]~4_combout\ & (\cla_32_1|C~5_combout\ $ (\program_counter_1|PC_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~5_combout\,
	datab => \program_counter_1|PC_out\(8),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(6),
	datad => \cla_32_2|C[8]~4_combout\,
	combout => \cla_32_2|C[9]~5_combout\);

-- Location: LCCOMB_X42_Y69_N28
\mux_2to1_32bit_4|Y[9]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[9]~14_combout\ = \cla_32_1|RESULT\(9) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(7) $ (\cla_32_2|C[9]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	datab => \cla_32_1|RESULT\(9),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_2|C[9]~5_combout\,
	combout => \mux_2to1_32bit_4|Y[9]~14_combout\);

-- Location: LCCOMB_X42_Y69_N8
\mux_2to1_32bit_4|Y[9]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[9]~15_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(7))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[9]~14_combout\,
	combout => \mux_2to1_32bit_4|Y[9]~15_combout\);

-- Location: LCCOMB_X42_Y69_N6
\cla_32_2|C[10]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[10]~6_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(7) & ((\cla_32_2|C[9]~5_combout\) # (\cla_32_1|C~4_combout\ $ (\program_counter_1|PC_out\(9))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(7) & (\cla_32_2|C[9]~5_combout\ & (\cla_32_1|C~4_combout\ $ (\program_counter_1|PC_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(7),
	datab => \cla_32_1|C~4_combout\,
	datac => \program_counter_1|PC_out\(9),
	datad => \cla_32_2|C[9]~5_combout\,
	combout => \cla_32_2|C[10]~6_combout\);

-- Location: FF_X42_Y69_N27
\program_counter_1|PC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(10));

-- Location: LCCOMB_X42_Y69_N0
\cla_32_1|RESULT[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(10) = \program_counter_1|PC_out\(10) $ (((\program_counter_1|PC_out\(9) & \cla_32_1|C~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(10),
	datab => \program_counter_1|PC_out\(9),
	datac => \cla_32_1|C~4_combout\,
	combout => \cla_32_1|RESULT\(10));

-- Location: LCCOMB_X42_Y69_N16
\mux_2to1_32bit_4|Y[10]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[10]~16_combout\ = \cla_32_1|RESULT\(10) $ (((\signBranchResult~0_combout\ & (\cla_32_2|C[10]~6_combout\ $ (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|C[10]~6_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_1|RESULT\(10),
	combout => \mux_2to1_32bit_4|Y[10]~16_combout\);

-- Location: LCCOMB_X42_Y69_N26
\mux_2to1_32bit_4|Y[10]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[10]~17_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(8))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[10]~16_combout\,
	combout => \mux_2to1_32bit_4|Y[10]~17_combout\);

-- Location: LCCOMB_X42_Y69_N30
\cla_32_1|C~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~6_combout\ = (\cla_32_1|C~4_combout\ & \program_counter_1|PC_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cla_32_1|C~4_combout\,
	datac => \program_counter_1|PC_out\(9),
	combout => \cla_32_1|C~6_combout\);

-- Location: LCCOMB_X42_Y69_N24
\cla_32_2|C[11]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[11]~7_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(8) & ((\cla_32_2|C[10]~6_combout\) # (\cla_32_1|C~6_combout\ $ (\program_counter_1|PC_out\(10))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(8) & (\cla_32_2|C[10]~6_combout\ & (\cla_32_1|C~6_combout\ $ (\program_counter_1|PC_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~6_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(8),
	datac => \program_counter_1|PC_out\(10),
	datad => \cla_32_2|C[10]~6_combout\,
	combout => \cla_32_2|C[11]~7_combout\);

-- Location: FF_X42_Y69_N19
\program_counter_1|PC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(11));

-- Location: LCCOMB_X42_Y69_N12
\cla_32_1|RESULT[11]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(11) = \program_counter_1|PC_out\(11) $ (((\program_counter_1|PC_out\(10) & (\cla_32_1|C~4_combout\ & \program_counter_1|PC_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(10),
	datab => \cla_32_1|C~4_combout\,
	datac => \program_counter_1|PC_out\(9),
	datad => \program_counter_1|PC_out\(11),
	combout => \cla_32_1|RESULT\(11));

-- Location: LCCOMB_X42_Y69_N10
\mux_2to1_32bit_4|Y[11]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[11]~18_combout\ = \cla_32_1|RESULT\(11) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(9) $ (\cla_32_2|C[11]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	datab => \cla_32_2|C[11]~7_combout\,
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_1|RESULT\(11),
	combout => \mux_2to1_32bit_4|Y[11]~18_combout\);

-- Location: LCCOMB_X42_Y69_N18
\mux_2to1_32bit_4|Y[11]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[11]~19_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(9))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[11]~18_combout\,
	combout => \mux_2to1_32bit_4|Y[11]~19_combout\);

-- Location: FF_X18_Y69_N13
\program_counter_1|PC_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[12]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(12));

-- Location: LCCOMB_X42_Y69_N4
\cla_32_1|C~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~7_combout\ = (\program_counter_1|PC_out\(10) & (\cla_32_1|C~4_combout\ & (\program_counter_1|PC_out\(9) & \program_counter_1|PC_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(10),
	datab => \cla_32_1|C~4_combout\,
	datac => \program_counter_1|PC_out\(9),
	datad => \program_counter_1|PC_out\(11),
	combout => \cla_32_1|C~7_combout\);

-- Location: LCCOMB_X18_Y69_N22
\cla_32_1|RESULT[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(12) = \program_counter_1|PC_out\(12) $ (\cla_32_1|C~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datac => \cla_32_1|C~7_combout\,
	combout => \cla_32_1|RESULT\(12));

-- Location: LCCOMB_X42_Y69_N14
\cla_32_1|C~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~8_combout\ = (\program_counter_1|PC_out\(10) & (\program_counter_1|PC_out\(9) & \cla_32_1|C~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(10),
	datab => \program_counter_1|PC_out\(9),
	datac => \cla_32_1|C~4_combout\,
	combout => \cla_32_1|C~8_combout\);

-- Location: LCCOMB_X42_Y69_N20
\cla_32_2|C[12]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[12]~8_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(9) & ((\cla_32_2|C[11]~7_combout\) # (\program_counter_1|PC_out\(11) $ (\cla_32_1|C~8_combout\)))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(9) & (\cla_32_2|C[11]~7_combout\ & (\program_counter_1|PC_out\(11) $ (\cla_32_1|C~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(9),
	datab => \program_counter_1|PC_out\(11),
	datac => \cla_32_1|C~8_combout\,
	datad => \cla_32_2|C[11]~7_combout\,
	combout => \cla_32_2|C[12]~8_combout\);

-- Location: LCCOMB_X18_Y69_N0
\mux_2to1_32bit_4|Y[12]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[12]~20_combout\ = \cla_32_1|RESULT\(12) $ (((\signBranchResult~0_combout\ & (\cla_32_2|C[12]~8_combout\ $ (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(12),
	datab => \cla_32_2|C[12]~8_combout\,
	datac => \signBranchResult~0_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	combout => \mux_2to1_32bit_4|Y[12]~20_combout\);

-- Location: LCCOMB_X18_Y69_N12
\mux_2to1_32bit_4|Y[12]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[12]~21_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(10))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[12]~20_combout\,
	combout => \mux_2to1_32bit_4|Y[12]~21_combout\);

-- Location: FF_X18_Y69_N15
\program_counter_1|PC_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[13]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(13));

-- Location: LCCOMB_X18_Y69_N20
\cla_32_1|RESULT[13]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(13) = \program_counter_1|PC_out\(13) $ (((\program_counter_1|PC_out\(12) & \cla_32_1|C~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datab => \program_counter_1|PC_out\(13),
	datac => \cla_32_1|C~7_combout\,
	combout => \cla_32_1|RESULT\(13));

-- Location: LCCOMB_X18_Y69_N18
\cla_32_2|C[13]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[13]~9_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(10) & ((\cla_32_2|C[12]~8_combout\) # (\program_counter_1|PC_out\(12) $ (\cla_32_1|C~7_combout\)))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(10) & (\cla_32_2|C[12]~8_combout\ & (\program_counter_1|PC_out\(12) $ (\cla_32_1|C~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(10),
	datac => \cla_32_1|C~7_combout\,
	datad => \cla_32_2|C[12]~8_combout\,
	combout => \cla_32_2|C[13]~9_combout\);

-- Location: LCCOMB_X18_Y69_N28
\mux_2to1_32bit_4|Y[13]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[13]~22_combout\ = \cla_32_1|RESULT\(13) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11) $ (\cla_32_2|C[13]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	datab => \cla_32_1|RESULT\(13),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_2|C[13]~9_combout\,
	combout => \mux_2to1_32bit_4|Y[13]~22_combout\);

-- Location: LCCOMB_X18_Y69_N14
\mux_2to1_32bit_4|Y[13]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[13]~23_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[13]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[13]~22_combout\,
	combout => \mux_2to1_32bit_4|Y[13]~23_combout\);

-- Location: LCCOMB_X18_Y69_N10
\cla_32_1|C~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~9_combout\ = (\program_counter_1|PC_out\(12) & \cla_32_1|C~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datac => \cla_32_1|C~7_combout\,
	combout => \cla_32_1|C~9_combout\);

-- Location: LCCOMB_X18_Y69_N8
\cla_32_2|C[14]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[14]~10_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11) & ((\cla_32_2|C[13]~9_combout\) # (\cla_32_1|C~9_combout\ $ (\program_counter_1|PC_out\(13))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(11) & (\cla_32_2|C[13]~9_combout\ & (\cla_32_1|C~9_combout\ $ (\program_counter_1|PC_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~9_combout\,
	datab => \program_counter_1|PC_out\(13),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(11),
	datad => \cla_32_2|C[13]~9_combout\,
	combout => \cla_32_2|C[14]~10_combout\);

-- Location: FF_X18_Y69_N3
\program_counter_1|PC_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[14]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(14));

-- Location: LCCOMB_X18_Y69_N24
\cla_32_1|RESULT[14]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(14) = \program_counter_1|PC_out\(14) $ (((\program_counter_1|PC_out\(12) & (\program_counter_1|PC_out\(13) & \cla_32_1|C~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datab => \program_counter_1|PC_out\(13),
	datac => \cla_32_1|C~7_combout\,
	datad => \program_counter_1|PC_out\(14),
	combout => \cla_32_1|RESULT\(14));

-- Location: LCCOMB_X18_Y69_N6
\mux_2to1_32bit_4|Y[14]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[14]~24_combout\ = \cla_32_1|RESULT\(14) $ (((\signBranchResult~0_combout\ & (\cla_32_2|C[14]~10_combout\ $ (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|C[14]~10_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_1|RESULT\(14),
	combout => \mux_2to1_32bit_4|Y[14]~24_combout\);

-- Location: LCCOMB_X18_Y69_N2
\mux_2to1_32bit_4|Y[14]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[14]~25_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[14]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[14]~24_combout\,
	combout => \mux_2to1_32bit_4|Y[14]~25_combout\);

-- Location: LCCOMB_X18_Y69_N26
\cla_32_1|C~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~11_combout\ = (\program_counter_1|PC_out\(12) & (\program_counter_1|PC_out\(13) & \cla_32_1|C~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datab => \program_counter_1|PC_out\(13),
	datac => \cla_32_1|C~7_combout\,
	combout => \cla_32_1|C~11_combout\);

-- Location: LCCOMB_X18_Y69_N16
\cla_32_2|C[15]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[15]~11_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12) & ((\cla_32_2|C[14]~10_combout\) # (\cla_32_1|C~11_combout\ $ (\program_counter_1|PC_out\(14))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(12) & (\cla_32_2|C[14]~10_combout\ & (\cla_32_1|C~11_combout\ $ (\program_counter_1|PC_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~11_combout\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(12),
	datac => \cla_32_2|C[14]~10_combout\,
	datad => \program_counter_1|PC_out\(14),
	combout => \cla_32_2|C[15]~11_combout\);

-- Location: LCCOMB_X18_Y69_N4
\cla_32_1|C~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~10_combout\ = (\program_counter_1|PC_out\(12) & (\program_counter_1|PC_out\(13) & (\cla_32_1|C~7_combout\ & \program_counter_1|PC_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(12),
	datab => \program_counter_1|PC_out\(13),
	datac => \cla_32_1|C~7_combout\,
	datad => \program_counter_1|PC_out\(14),
	combout => \cla_32_1|C~10_combout\);

-- Location: FF_X19_Y69_N1
\program_counter_1|PC_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(15));

-- Location: LCCOMB_X19_Y69_N2
\cla_32_1|RESULT[15]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(15) = \cla_32_1|C~10_combout\ $ (\program_counter_1|PC_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cla_32_1|C~10_combout\,
	datad => \program_counter_1|PC_out\(15),
	combout => \cla_32_1|RESULT\(15));

-- Location: LCCOMB_X19_Y69_N16
\mux_2to1_32bit_4|Y[15]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[15]~26_combout\ = \cla_32_1|RESULT\(15) $ (((\signBranchResult~0_combout\ & (\cla_32_2|C[15]~11_combout\ $ (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|C[15]~11_combout\,
	datab => \cla_32_1|RESULT\(15),
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[15]~26_combout\);

-- Location: LCCOMB_X19_Y69_N0
\mux_2to1_32bit_4|Y[15]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[15]~27_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux2~0_combout\,
	datab => \reset~input_o\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	datad => \mux_2to1_32bit_4|Y[15]~26_combout\,
	combout => \mux_2to1_32bit_4|Y[15]~27_combout\);

-- Location: FF_X19_Y69_N23
\program_counter_1|PC_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(16));

-- Location: LCCOMB_X19_Y69_N28
\cla_32_1|RESULT[16]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(16) = \program_counter_1|PC_out\(16) $ (((\cla_32_1|C~10_combout\ & \program_counter_1|PC_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(16),
	datac => \cla_32_1|C~10_combout\,
	datad => \program_counter_1|PC_out\(15),
	combout => \cla_32_1|RESULT\(16));

-- Location: LCCOMB_X19_Y69_N10
\cla_32_2|C[16]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[16]~12_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13) & ((\cla_32_2|C[15]~11_combout\) # (\cla_32_1|C~10_combout\ $ (\program_counter_1|PC_out\(15))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(13) & (\cla_32_2|C[15]~11_combout\ & (\cla_32_1|C~10_combout\ $ (\program_counter_1|PC_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(13),
	datab => \cla_32_1|C~10_combout\,
	datac => \cla_32_2|C[15]~11_combout\,
	datad => \program_counter_1|PC_out\(15),
	combout => \cla_32_2|C[16]~12_combout\);

-- Location: LCCOMB_X19_Y69_N4
\mux_2to1_32bit_4|Y[16]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[16]~28_combout\ = \cla_32_1|RESULT\(16) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14) $ (\cla_32_2|C[16]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	datab => \cla_32_1|RESULT\(16),
	datac => \signBranchResult~0_combout\,
	datad => \cla_32_2|C[16]~12_combout\,
	combout => \mux_2to1_32bit_4|Y[16]~28_combout\);

-- Location: LCCOMB_X19_Y69_N22
\mux_2to1_32bit_4|Y[16]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[16]~29_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14)))) # (!\cu_1|Mux2~0_combout\ & (\mux_2to1_32bit_4|Y[16]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux2~0_combout\,
	datab => \reset~input_o\,
	datac => \mux_2to1_32bit_4|Y[16]~28_combout\,
	datad => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	combout => \mux_2to1_32bit_4|Y[16]~29_combout\);

-- Location: LCCOMB_X18_Y69_N30
\cla_32_1|C~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~12_combout\ = (\program_counter_1|PC_out\(15) & \cla_32_1|C~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_counter_1|PC_out\(15),
	datac => \cla_32_1|C~10_combout\,
	combout => \cla_32_1|C~12_combout\);

-- Location: LCCOMB_X19_Y69_N18
\cla_32_2|C[17]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[17]~13_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14) & ((\cla_32_2|C[16]~12_combout\) # (\cla_32_1|C~12_combout\ $ (\program_counter_1|PC_out\(16))))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(14) & (\cla_32_2|C[16]~12_combout\ & (\cla_32_1|C~12_combout\ $ (\program_counter_1|PC_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(14),
	datab => \cla_32_1|C~12_combout\,
	datac => \program_counter_1|PC_out\(16),
	datad => \cla_32_2|C[16]~12_combout\,
	combout => \cla_32_2|C[17]~13_combout\);

-- Location: FF_X19_Y69_N31
\program_counter_1|PC_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(17));

-- Location: LCCOMB_X19_Y69_N8
\cla_32_1|RESULT[17]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(17) = \program_counter_1|PC_out\(17) $ (((\cla_32_1|C~10_combout\ & (\program_counter_1|PC_out\(16) & \program_counter_1|PC_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(17),
	datab => \cla_32_1|C~10_combout\,
	datac => \program_counter_1|PC_out\(16),
	datad => \program_counter_1|PC_out\(15),
	combout => \cla_32_1|RESULT\(17));

-- Location: LCCOMB_X19_Y69_N12
\mux_2to1_32bit_4|Y[17]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[17]~30_combout\ = \cla_32_1|RESULT\(17) $ (((\signBranchResult~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15) $ (\cla_32_2|C[17]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	datab => \cla_32_2|C[17]~13_combout\,
	datac => \cla_32_1|RESULT\(17),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[17]~30_combout\);

-- Location: LCCOMB_X19_Y69_N30
\mux_2to1_32bit_4|Y[17]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[17]~31_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[17]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux2~0_combout\,
	datab => \reset~input_o\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	datad => \mux_2to1_32bit_4|Y[17]~30_combout\,
	combout => \mux_2to1_32bit_4|Y[17]~31_combout\);

-- Location: LCCOMB_X19_Y69_N26
\cla_32_1|C~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~13_combout\ = (\program_counter_1|PC_out\(16) & (\cla_32_1|C~10_combout\ & \program_counter_1|PC_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(16),
	datac => \cla_32_1|C~10_combout\,
	datad => \program_counter_1|PC_out\(15),
	combout => \cla_32_1|C~13_combout\);

-- Location: FF_X24_Y69_N13
\program_counter_1|PC_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(18));

-- Location: LCCOMB_X19_Y69_N20
\cla_32_1|RESULT[18]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(18) = \program_counter_1|PC_out\(18) $ (((\program_counter_1|PC_out\(17) & \cla_32_1|C~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(17),
	datac => \cla_32_1|C~13_combout\,
	datad => \program_counter_1|PC_out\(18),
	combout => \cla_32_1|RESULT\(18));

-- Location: LCCOMB_X19_Y69_N6
\cla_32_2|C[18]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C[18]~14_combout\ = (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15) & ((\cla_32_2|C[17]~13_combout\) # (\program_counter_1|PC_out\(17) $ (\cla_32_1|C~13_combout\)))) # 
-- (!\instruction_memory_1|altsyncram_component|auto_generated|q_a\(15) & (\cla_32_2|C[17]~13_combout\ & (\program_counter_1|PC_out\(17) $ (\cla_32_1|C~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(17),
	datab => \cla_32_1|C~13_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(15),
	datad => \cla_32_2|C[17]~13_combout\,
	combout => \cla_32_2|C[18]~14_combout\);

-- Location: LCCOMB_X19_Y65_N14
\mux_2to1_32bit_4|Y[18]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[18]~32_combout\ = (!\cu_1|Mux2~0_combout\ & (\cla_32_1|RESULT\(18) $ (((!\cla_32_2|C[18]~14_combout\ & \signBranchResult~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(18),
	datab => \cla_32_2|C[18]~14_combout\,
	datac => \signBranchResult~0_combout\,
	datad => \cu_1|Mux2~0_combout\,
	combout => \mux_2to1_32bit_4|Y[18]~32_combout\);

-- Location: LCCOMB_X24_Y69_N12
\mux_2to1_32bit_4|Y[18]~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[18]~33_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[18]~32_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(16) & \cu_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(16),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[18]~32_combout\,
	combout => \mux_2to1_32bit_4|Y[18]~33_combout\);

-- Location: FF_X24_Y69_N23
\program_counter_1|PC_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[19]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(19));

-- Location: LCCOMB_X19_Y69_N24
\cla_32_1|RESULT[19]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(19) = \program_counter_1|PC_out\(19) $ (((\program_counter_1|PC_out\(17) & (\program_counter_1|PC_out\(18) & \cla_32_1|C~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(17),
	datab => \program_counter_1|PC_out\(18),
	datac => \cla_32_1|C~13_combout\,
	datad => \program_counter_1|PC_out\(19),
	combout => \cla_32_1|RESULT\(19));

-- Location: LCCOMB_X19_Y65_N0
\mux_2to1_32bit_4|Y[19]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[19]~34_combout\ = \cla_32_1|RESULT\(19) $ (((!\cla_32_1|RESULT\(18) & (\signBranchResult~0_combout\ & !\cla_32_2|C[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(18),
	datab => \signBranchResult~0_combout\,
	datac => \cla_32_2|C[18]~14_combout\,
	datad => \cla_32_1|RESULT\(19),
	combout => \mux_2to1_32bit_4|Y[19]~34_combout\);

-- Location: LCCOMB_X24_Y69_N22
\mux_2to1_32bit_4|Y[19]~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[19]~35_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(17))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[19]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(17),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[19]~34_combout\,
	combout => \mux_2to1_32bit_4|Y[19]~35_combout\);

-- Location: LCCOMB_X19_Y65_N10
\cla_32_2|C[20]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(20) = (\cla_32_1|RESULT\(18)) # ((\cla_32_2|C[18]~14_combout\) # (\cla_32_1|RESULT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(18),
	datac => \cla_32_2|C[18]~14_combout\,
	datad => \cla_32_1|RESULT\(19),
	combout => \cla_32_2|C\(20));

-- Location: FF_X24_Y69_N5
\program_counter_1|PC_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[20]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(20));

-- Location: LCCOMB_X19_Y69_N14
\cla_32_1|C~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~14_combout\ = (\program_counter_1|PC_out\(17) & (\program_counter_1|PC_out\(18) & (\cla_32_1|C~13_combout\ & \program_counter_1|PC_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(17),
	datab => \program_counter_1|PC_out\(18),
	datac => \cla_32_1|C~13_combout\,
	datad => \program_counter_1|PC_out\(19),
	combout => \cla_32_1|C~14_combout\);

-- Location: LCCOMB_X24_Y69_N26
\cla_32_1|RESULT[20]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(20) = \program_counter_1|PC_out\(20) $ (\cla_32_1|C~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \program_counter_1|PC_out\(20),
	datad => \cla_32_1|C~14_combout\,
	combout => \cla_32_1|RESULT\(20));

-- Location: LCCOMB_X19_Y65_N4
\mux_2to1_32bit_4|Y[20]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[20]~36_combout\ = (!\cu_1|Mux2~0_combout\ & (\cla_32_1|RESULT\(20) $ (((!\cla_32_2|C\(20) & \signBranchResult~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|C\(20),
	datab => \cla_32_1|RESULT\(20),
	datac => \signBranchResult~0_combout\,
	datad => \cu_1|Mux2~0_combout\,
	combout => \mux_2to1_32bit_4|Y[20]~36_combout\);

-- Location: LCCOMB_X24_Y69_N4
\mux_2to1_32bit_4|Y[20]~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[20]~37_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[20]~36_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(18) & \cu_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(18),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[20]~36_combout\,
	combout => \mux_2to1_32bit_4|Y[20]~37_combout\);

-- Location: FF_X24_Y69_N25
\program_counter_1|PC_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[21]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(21));

-- Location: LCCOMB_X24_Y69_N6
\cla_32_1|RESULT[21]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(21) = \program_counter_1|PC_out\(21) $ (((\cla_32_1|C~14_combout\ & \program_counter_1|PC_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~14_combout\,
	datac => \program_counter_1|PC_out\(20),
	datad => \program_counter_1|PC_out\(21),
	combout => \cla_32_1|RESULT\(21));

-- Location: LCCOMB_X19_Y65_N18
\cla_32_2|C[21]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(21) = (\cla_32_1|RESULT\(18)) # ((\cla_32_1|RESULT\(19)) # ((\cla_32_2|C[18]~14_combout\) # (\cla_32_1|RESULT\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(18),
	datab => \cla_32_1|RESULT\(19),
	datac => \cla_32_2|C[18]~14_combout\,
	datad => \cla_32_1|RESULT\(20),
	combout => \cla_32_2|C\(21));

-- Location: LCCOMB_X24_Y69_N28
\mux_2to1_32bit_4|Y[21]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[21]~38_combout\ = (!\cu_1|Mux2~0_combout\ & (\cla_32_1|RESULT\(21) $ (((!\cla_32_2|C\(21) & \signBranchResult~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(21),
	datab => \cu_1|Mux2~0_combout\,
	datac => \cla_32_2|C\(21),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[21]~38_combout\);

-- Location: LCCOMB_X24_Y69_N24
\mux_2to1_32bit_4|Y[21]~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[21]~39_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[21]~38_combout\) # ((\cu_1|Mux2~0_combout\ & \instruction_memory_1|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cu_1|Mux2~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(19),
	datad => \mux_2to1_32bit_4|Y[21]~38_combout\,
	combout => \mux_2to1_32bit_4|Y[21]~39_combout\);

-- Location: FF_X24_Y69_N15
\program_counter_1|PC_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[22]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(22));

-- Location: LCCOMB_X24_Y69_N20
\cla_32_1|RESULT[22]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(22) = \program_counter_1|PC_out\(22) $ (((\cla_32_1|C~14_combout\ & (\program_counter_1|PC_out\(20) & \program_counter_1|PC_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~14_combout\,
	datab => \program_counter_1|PC_out\(22),
	datac => \program_counter_1|PC_out\(20),
	datad => \program_counter_1|PC_out\(21),
	combout => \cla_32_1|RESULT\(22));

-- Location: LCCOMB_X24_Y69_N18
\mux_2to1_32bit_4|Y[22]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[22]~40_combout\ = \cla_32_1|RESULT\(22) $ (((!\cla_32_1|RESULT\(21) & (!\cla_32_2|C\(21) & \signBranchResult~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(21),
	datab => \cla_32_1|RESULT\(22),
	datac => \cla_32_2|C\(21),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[22]~40_combout\);

-- Location: LCCOMB_X24_Y69_N14
\mux_2to1_32bit_4|Y[22]~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[22]~41_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(20))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[22]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(20),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[22]~40_combout\,
	combout => \mux_2to1_32bit_4|Y[22]~41_combout\);

-- Location: FF_X24_Y69_N3
\program_counter_1|PC_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[23]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(23));

-- Location: LCCOMB_X24_Y69_N0
\cla_32_1|C~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~15_combout\ = (\cla_32_1|C~14_combout\ & (\program_counter_1|PC_out\(22) & (\program_counter_1|PC_out\(20) & \program_counter_1|PC_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~14_combout\,
	datab => \program_counter_1|PC_out\(22),
	datac => \program_counter_1|PC_out\(20),
	datad => \program_counter_1|PC_out\(21),
	combout => \cla_32_1|C~15_combout\);

-- Location: LCCOMB_X24_Y69_N8
\cla_32_1|RESULT[23]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(23) = \program_counter_1|PC_out\(23) $ (\cla_32_1|C~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_counter_1|PC_out\(23),
	datad => \cla_32_1|C~15_combout\,
	combout => \cla_32_1|RESULT\(23));

-- Location: LCCOMB_X24_Y69_N10
\cla_32_2|RESULT[23]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|RESULT\(23) = \cla_32_1|RESULT\(23) $ (((\cla_32_1|RESULT\(21)) # ((\cla_32_2|C\(21)) # (\cla_32_1|RESULT\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(21),
	datab => \cla_32_1|RESULT\(23),
	datac => \cla_32_2|C\(21),
	datad => \cla_32_1|RESULT\(22),
	combout => \cla_32_2|RESULT\(23));

-- Location: LCCOMB_X24_Y69_N16
\mux_2to1_32bit_4|Y[23]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[23]~42_combout\ = (!\cu_1|Mux2~0_combout\ & ((\signBranchResult~0_combout\ & (!\cla_32_2|RESULT\(23))) # (!\signBranchResult~0_combout\ & ((\cla_32_1|RESULT\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_2|RESULT\(23),
	datab => \cu_1|Mux2~0_combout\,
	datac => \cla_32_1|RESULT\(23),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[23]~42_combout\);

-- Location: LCCOMB_X24_Y69_N2
\mux_2to1_32bit_4|Y[23]~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[23]~43_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[23]~42_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(21) & \cu_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(21),
	datab => \cu_1|Mux2~0_combout\,
	datac => \reset~input_o\,
	datad => \mux_2to1_32bit_4|Y[23]~42_combout\,
	combout => \mux_2to1_32bit_4|Y[23]~43_combout\);

-- Location: FF_X35_Y69_N25
\program_counter_1|PC_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[24]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(24));

-- Location: LCCOMB_X35_Y69_N6
\cla_32_1|RESULT[24]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(24) = \program_counter_1|PC_out\(24) $ (((\cla_32_1|C~15_combout\ & \program_counter_1|PC_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cla_32_1|C~15_combout\,
	datac => \program_counter_1|PC_out\(23),
	datad => \program_counter_1|PC_out\(24),
	combout => \cla_32_1|RESULT\(24));

-- Location: LCCOMB_X24_Y69_N30
\cla_32_2|C[24]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(24) = (\cla_32_1|RESULT\(21)) # ((\cla_32_1|RESULT\(23)) # ((\cla_32_2|C\(21)) # (\cla_32_1|RESULT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(21),
	datab => \cla_32_1|RESULT\(23),
	datac => \cla_32_2|C\(21),
	datad => \cla_32_1|RESULT\(22),
	combout => \cla_32_2|C\(24));

-- Location: LCCOMB_X35_Y69_N0
\mux_2to1_32bit_4|Y[24]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[24]~44_combout\ = (!\cu_1|Mux2~0_combout\ & (\cla_32_1|RESULT\(24) $ (((!\cla_32_2|C\(24) & \signBranchResult~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(24),
	datab => \cu_1|Mux2~0_combout\,
	datac => \cla_32_2|C\(24),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[24]~44_combout\);

-- Location: LCCOMB_X35_Y69_N24
\mux_2to1_32bit_4|Y[24]~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[24]~45_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[24]~44_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(22) & \cu_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(22),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[24]~44_combout\,
	combout => \mux_2to1_32bit_4|Y[24]~45_combout\);

-- Location: FF_X35_Y69_N27
\program_counter_1|PC_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[25]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(25));

-- Location: LCCOMB_X35_Y69_N8
\cla_32_1|RESULT[25]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(25) = \program_counter_1|PC_out\(25) $ (((\cla_32_1|C~15_combout\ & (\program_counter_1|PC_out\(23) & \program_counter_1|PC_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(25),
	datab => \cla_32_1|C~15_combout\,
	datac => \program_counter_1|PC_out\(23),
	datad => \program_counter_1|PC_out\(24),
	combout => \cla_32_1|RESULT\(25));

-- Location: LCCOMB_X35_Y69_N10
\mux_2to1_32bit_4|Y[25]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[25]~46_combout\ = \cla_32_1|RESULT\(25) $ (((!\cla_32_1|RESULT\(24) & (!\cla_32_2|C\(24) & \signBranchResult~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(24),
	datab => \cla_32_1|RESULT\(25),
	datac => \cla_32_2|C\(24),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[25]~46_combout\);

-- Location: LCCOMB_X35_Y69_N26
\mux_2to1_32bit_4|Y[25]~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[25]~47_combout\ = (!\reset~input_o\ & ((\cu_1|Mux2~0_combout\ & (\instruction_memory_1|altsyncram_component|auto_generated|q_a\(23))) # (!\cu_1|Mux2~0_combout\ & ((\mux_2to1_32bit_4|Y[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(23),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[25]~46_combout\,
	combout => \mux_2to1_32bit_4|Y[25]~47_combout\);

-- Location: FF_X35_Y69_N31
\program_counter_1|PC_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[26]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(26));

-- Location: LCCOMB_X35_Y69_N28
\cla_32_1|C~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~16_combout\ = (\program_counter_1|PC_out\(25) & (\cla_32_1|C~15_combout\ & (\program_counter_1|PC_out\(23) & \program_counter_1|PC_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(25),
	datab => \cla_32_1|C~15_combout\,
	datac => \program_counter_1|PC_out\(23),
	datad => \program_counter_1|PC_out\(24),
	combout => \cla_32_1|C~16_combout\);

-- Location: LCCOMB_X35_Y69_N12
\cla_32_1|RESULT[26]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(26) = \program_counter_1|PC_out\(26) $ (\cla_32_1|C~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \program_counter_1|PC_out\(26),
	datad => \cla_32_1|C~16_combout\,
	combout => \cla_32_1|RESULT\(26));

-- Location: LCCOMB_X35_Y69_N22
\cla_32_2|RESULT[26]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|RESULT\(26) = \cla_32_1|RESULT\(26) $ (((\cla_32_1|RESULT\(25)) # ((\cla_32_2|C\(24)) # (\cla_32_1|RESULT\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(26),
	datab => \cla_32_1|RESULT\(25),
	datac => \cla_32_2|C\(24),
	datad => \cla_32_1|RESULT\(24),
	combout => \cla_32_2|RESULT\(26));

-- Location: LCCOMB_X35_Y69_N20
\mux_2to1_32bit_4|Y[26]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[26]~48_combout\ = (!\cu_1|Mux2~0_combout\ & ((\signBranchResult~0_combout\ & ((!\cla_32_2|RESULT\(26)))) # (!\signBranchResult~0_combout\ & (\cla_32_1|RESULT\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(26),
	datab => \cu_1|Mux2~0_combout\,
	datac => \cla_32_2|RESULT\(26),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[26]~48_combout\);

-- Location: LCCOMB_X35_Y69_N30
\mux_2to1_32bit_4|Y[26]~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[26]~49_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[26]~48_combout\) # ((\instruction_memory_1|altsyncram_component|auto_generated|q_a\(24) & \cu_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(24),
	datac => \cu_1|Mux2~0_combout\,
	datad => \mux_2to1_32bit_4|Y[26]~48_combout\,
	combout => \mux_2to1_32bit_4|Y[26]~49_combout\);

-- Location: FF_X57_Y69_N5
\program_counter_1|PC_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[27]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(27));

-- Location: LCCOMB_X57_Y69_N22
\cla_32_1|RESULT[27]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(27) = \program_counter_1|PC_out\(27) $ (((\cla_32_1|C~16_combout\ & \program_counter_1|PC_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~16_combout\,
	datab => \program_counter_1|PC_out\(27),
	datac => \program_counter_1|PC_out\(26),
	combout => \cla_32_1|RESULT\(27));

-- Location: LCCOMB_X35_Y69_N18
\cla_32_2|C[27]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(27) = (\cla_32_1|RESULT\(26)) # ((\cla_32_1|RESULT\(25)) # ((\cla_32_2|C\(24)) # (\cla_32_1|RESULT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(26),
	datab => \cla_32_1|RESULT\(25),
	datac => \cla_32_2|C\(24),
	datad => \cla_32_1|RESULT\(24),
	combout => \cla_32_2|C\(27));

-- Location: LCCOMB_X57_Y69_N0
\mux_2to1_32bit_4|Y[27]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[27]~50_combout\ = (!\cu_1|Mux2~0_combout\ & (\cla_32_1|RESULT\(27) $ (((!\cla_32_2|C\(27) & \signBranchResult~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(27),
	datab => \cu_1|Mux2~0_combout\,
	datac => \cla_32_2|C\(27),
	datad => \signBranchResult~0_combout\,
	combout => \mux_2to1_32bit_4|Y[27]~50_combout\);

-- Location: LCCOMB_X57_Y69_N4
\mux_2to1_32bit_4|Y[27]~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[27]~51_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_4|Y[27]~50_combout\) # ((\cu_1|Mux2~0_combout\ & \instruction_memory_1|altsyncram_component|auto_generated|q_a\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cu_1|Mux2~0_combout\,
	datac => \instruction_memory_1|altsyncram_component|auto_generated|q_a\(25),
	datad => \mux_2to1_32bit_4|Y[27]~50_combout\,
	combout => \mux_2to1_32bit_4|Y[27]~51_combout\);

-- Location: LCCOMB_X19_Y65_N24
\mux_2to1_32bit_3|Y[31]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_3|Y[31]~0_combout\ = (!\cu_1|Mux2~0_combout\ & ((\comparator_1|Equal0~20_combout\ & (\cu_1|Mux4~0_combout\)) # (!\comparator_1|Equal0~20_combout\ & ((\cu_1|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cu_1|Mux4~0_combout\,
	datab => \cu_1|Mux2~0_combout\,
	datac => \comparator_1|Equal0~20_combout\,
	datad => \cu_1|Mux3~1_combout\,
	combout => \mux_2to1_32bit_3|Y[31]~0_combout\);

-- Location: LCCOMB_X57_Y69_N26
\cla_32_2|C[28]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(28) = (\cla_32_2|C\(27)) # (\program_counter_1|PC_out\(27) $ (((\cla_32_1|C~16_combout\ & \program_counter_1|PC_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~16_combout\,
	datab => \program_counter_1|PC_out\(27),
	datac => \program_counter_1|PC_out\(26),
	datad => \cla_32_2|C\(27),
	combout => \cla_32_2|C\(28));

-- Location: FF_X57_Y69_N7
\program_counter_1|PC_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(28));

-- Location: LCCOMB_X57_Y69_N24
\cla_32_1|RESULT[28]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(28) = \program_counter_1|PC_out\(28) $ (((\cla_32_1|C~16_combout\ & (\program_counter_1|PC_out\(27) & \program_counter_1|PC_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~16_combout\,
	datab => \program_counter_1|PC_out\(27),
	datac => \program_counter_1|PC_out\(26),
	datad => \program_counter_1|PC_out\(28),
	combout => \cla_32_1|RESULT\(28));

-- Location: LCCOMB_X57_Y69_N6
\mux_2to1_32bit_4|Y[28]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[28]~52_combout\ = (!\reset~input_o\ & (\cla_32_1|RESULT\(28) $ (((\mux_2to1_32bit_3|Y[31]~0_combout\ & !\cla_32_2|C\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mux_2to1_32bit_3|Y[31]~0_combout\,
	datac => \cla_32_2|C\(28),
	datad => \cla_32_1|RESULT\(28),
	combout => \mux_2to1_32bit_4|Y[28]~52_combout\);

-- Location: FF_X57_Y69_N15
\program_counter_1|PC_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[29]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(29));

-- Location: LCCOMB_X57_Y69_N16
\cla_32_1|C~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|C~17_combout\ = (\cla_32_1|C~16_combout\ & (\program_counter_1|PC_out\(27) & (\program_counter_1|PC_out\(26) & \program_counter_1|PC_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|C~16_combout\,
	datab => \program_counter_1|PC_out\(27),
	datac => \program_counter_1|PC_out\(26),
	datad => \program_counter_1|PC_out\(28),
	combout => \cla_32_1|C~17_combout\);

-- Location: LCCOMB_X57_Y69_N28
\cla_32_1|RESULT[29]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(29) = \program_counter_1|PC_out\(29) $ (\cla_32_1|C~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_counter_1|PC_out\(29),
	datad => \cla_32_1|C~17_combout\,
	combout => \cla_32_1|RESULT\(29));

-- Location: LCCOMB_X57_Y69_N2
\cla_32_2|RESULT[29]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|RESULT\(29) = \cla_32_1|RESULT\(29) $ (((\cla_32_1|RESULT\(27)) # ((\cla_32_2|C\(27)) # (\cla_32_1|RESULT\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(27),
	datab => \cla_32_1|RESULT\(29),
	datac => \cla_32_2|C\(27),
	datad => \cla_32_1|RESULT\(28),
	combout => \cla_32_2|RESULT\(29));

-- Location: LCCOMB_X57_Y69_N14
\mux_2to1_32bit_4|Y[29]~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[29]~53_combout\ = (!\reset~input_o\ & ((\mux_2to1_32bit_3|Y[31]~0_combout\ & ((!\cla_32_2|RESULT\(29)))) # (!\mux_2to1_32bit_3|Y[31]~0_combout\ & (\cla_32_1|RESULT\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cla_32_1|RESULT\(29),
	datac => \mux_2to1_32bit_3|Y[31]~0_combout\,
	datad => \cla_32_2|RESULT\(29),
	combout => \mux_2to1_32bit_4|Y[29]~53_combout\);

-- Location: FF_X57_Y69_N9
\program_counter_1|PC_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[30]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(30));

-- Location: LCCOMB_X57_Y69_N30
\cla_32_1|RESULT[30]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(30) = \program_counter_1|PC_out\(30) $ (((\program_counter_1|PC_out\(29) & \cla_32_1|C~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_counter_1|PC_out\(29),
	datac => \program_counter_1|PC_out\(30),
	datad => \cla_32_1|C~17_combout\,
	combout => \cla_32_1|RESULT\(30));

-- Location: LCCOMB_X57_Y69_N12
\cla_32_2|C[30]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(30) = (\cla_32_1|RESULT\(27)) # ((\cla_32_1|RESULT\(29)) # ((\cla_32_2|C\(27)) # (\cla_32_1|RESULT\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(27),
	datab => \cla_32_1|RESULT\(29),
	datac => \cla_32_2|C\(27),
	datad => \cla_32_1|RESULT\(28),
	combout => \cla_32_2|C\(30));

-- Location: LCCOMB_X57_Y69_N8
\mux_2to1_32bit_4|Y[30]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[30]~54_combout\ = (!\reset~input_o\ & (\cla_32_1|RESULT\(30) $ (((\mux_2to1_32bit_3|Y[31]~0_combout\ & !\cla_32_2|C\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(30),
	datab => \mux_2to1_32bit_3|Y[31]~0_combout\,
	datac => \reset~input_o\,
	datad => \cla_32_2|C\(30),
	combout => \mux_2to1_32bit_4|Y[30]~54_combout\);

-- Location: FF_X57_Y69_N11
\program_counter_1|PC_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mux_2to1_32bit_4|Y[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter_1|PC_out\(31));

-- Location: LCCOMB_X57_Y69_N20
\cla_32_1|RESULT[31]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_1|RESULT\(31) = \program_counter_1|PC_out\(31) $ (((\program_counter_1|PC_out\(29) & (\program_counter_1|PC_out\(30) & \cla_32_1|C~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter_1|PC_out\(31),
	datab => \program_counter_1|PC_out\(29),
	datac => \program_counter_1|PC_out\(30),
	datad => \cla_32_1|C~17_combout\,
	combout => \cla_32_1|RESULT\(31));

-- Location: LCCOMB_X57_Y69_N18
\cla_32_2|C[31]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cla_32_2|C\(31) = (\cla_32_1|RESULT\(30)) # ((\cla_32_1|RESULT\(29)) # ((\cla_32_2|C\(28)) # (\cla_32_1|RESULT\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cla_32_1|RESULT\(30),
	datab => \cla_32_1|RESULT\(29),
	datac => \cla_32_2|C\(28),
	datad => \cla_32_1|RESULT\(28),
	combout => \cla_32_2|C\(31));

-- Location: LCCOMB_X57_Y69_N10
\mux_2to1_32bit_4|Y[31]~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \mux_2to1_32bit_4|Y[31]~55_combout\ = (!\reset~input_o\ & (\cla_32_1|RESULT\(31) $ (((\mux_2to1_32bit_3|Y[31]~0_combout\ & !\cla_32_2|C\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cla_32_1|RESULT\(31),
	datac => \mux_2to1_32bit_3|Y[31]~0_combout\,
	datad => \cla_32_2|C\(31),
	combout => \mux_2to1_32bit_4|Y[31]~55_combout\);

-- Location: LCCOMB_X11_Y26_N20
\cu_1|Mux8~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \cu_1|Mux8~2_combout\ = (\cu_1|Sig_RegWrite~0_combout\ & \cu_1|Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cu_1|Sig_RegWrite~0_combout\,
	datad => \cu_1|Mux8~1_combout\,
	combout => \cu_1|Mux8~2_combout\);

ww_ALU_result_out(0) <= \ALU_result_out[0]~output_o\;

ww_ALU_result_out(1) <= \ALU_result_out[1]~output_o\;

ww_ALU_result_out(2) <= \ALU_result_out[2]~output_o\;

ww_ALU_result_out(3) <= \ALU_result_out[3]~output_o\;

ww_ALU_result_out(4) <= \ALU_result_out[4]~output_o\;

ww_ALU_result_out(5) <= \ALU_result_out[5]~output_o\;

ww_ALU_result_out(6) <= \ALU_result_out[6]~output_o\;

ww_ALU_result_out(7) <= \ALU_result_out[7]~output_o\;

ww_ALU_result_out(8) <= \ALU_result_out[8]~output_o\;

ww_ALU_result_out(9) <= \ALU_result_out[9]~output_o\;

ww_ALU_result_out(10) <= \ALU_result_out[10]~output_o\;

ww_ALU_result_out(11) <= \ALU_result_out[11]~output_o\;

ww_ALU_result_out(12) <= \ALU_result_out[12]~output_o\;

ww_ALU_result_out(13) <= \ALU_result_out[13]~output_o\;

ww_ALU_result_out(14) <= \ALU_result_out[14]~output_o\;

ww_ALU_result_out(15) <= \ALU_result_out[15]~output_o\;

ww_ALU_result_out(16) <= \ALU_result_out[16]~output_o\;

ww_ALU_result_out(17) <= \ALU_result_out[17]~output_o\;

ww_ALU_result_out(18) <= \ALU_result_out[18]~output_o\;

ww_ALU_result_out(19) <= \ALU_result_out[19]~output_o\;

ww_ALU_result_out(20) <= \ALU_result_out[20]~output_o\;

ww_ALU_result_out(21) <= \ALU_result_out[21]~output_o\;

ww_ALU_result_out(22) <= \ALU_result_out[22]~output_o\;

ww_ALU_result_out(23) <= \ALU_result_out[23]~output_o\;

ww_ALU_result_out(24) <= \ALU_result_out[24]~output_o\;

ww_ALU_result_out(25) <= \ALU_result_out[25]~output_o\;

ww_ALU_result_out(26) <= \ALU_result_out[26]~output_o\;

ww_ALU_result_out(27) <= \ALU_result_out[27]~output_o\;

ww_ALU_result_out(28) <= \ALU_result_out[28]~output_o\;

ww_ALU_result_out(29) <= \ALU_result_out[29]~output_o\;

ww_ALU_result_out(30) <= \ALU_result_out[30]~output_o\;

ww_ALU_result_out(31) <= \ALU_result_out[31]~output_o\;

ww_PCin_out(0) <= \PCin_out[0]~output_o\;

ww_PCin_out(1) <= \PCin_out[1]~output_o\;

ww_PCin_out(2) <= \PCin_out[2]~output_o\;

ww_PCin_out(3) <= \PCin_out[3]~output_o\;

ww_PCin_out(4) <= \PCin_out[4]~output_o\;

ww_PCin_out(5) <= \PCin_out[5]~output_o\;

ww_PCin_out(6) <= \PCin_out[6]~output_o\;

ww_PCin_out(7) <= \PCin_out[7]~output_o\;

ww_PCin_out(8) <= \PCin_out[8]~output_o\;

ww_PCin_out(9) <= \PCin_out[9]~output_o\;

ww_PCin_out(10) <= \PCin_out[10]~output_o\;

ww_PCin_out(11) <= \PCin_out[11]~output_o\;

ww_PCin_out(12) <= \PCin_out[12]~output_o\;

ww_PCin_out(13) <= \PCin_out[13]~output_o\;

ww_PCin_out(14) <= \PCin_out[14]~output_o\;

ww_PCin_out(15) <= \PCin_out[15]~output_o\;

ww_PCin_out(16) <= \PCin_out[16]~output_o\;

ww_PCin_out(17) <= \PCin_out[17]~output_o\;

ww_PCin_out(18) <= \PCin_out[18]~output_o\;

ww_PCin_out(19) <= \PCin_out[19]~output_o\;

ww_PCin_out(20) <= \PCin_out[20]~output_o\;

ww_PCin_out(21) <= \PCin_out[21]~output_o\;

ww_PCin_out(22) <= \PCin_out[22]~output_o\;

ww_PCin_out(23) <= \PCin_out[23]~output_o\;

ww_PCin_out(24) <= \PCin_out[24]~output_o\;

ww_PCin_out(25) <= \PCin_out[25]~output_o\;

ww_PCin_out(26) <= \PCin_out[26]~output_o\;

ww_PCin_out(27) <= \PCin_out[27]~output_o\;

ww_PCin_out(28) <= \PCin_out[28]~output_o\;

ww_PCin_out(29) <= \PCin_out[29]~output_o\;

ww_PCin_out(30) <= \PCin_out[30]~output_o\;

ww_PCin_out(31) <= \PCin_out[31]~output_o\;

ww_PCout_out(0) <= \PCout_out[0]~output_o\;

ww_PCout_out(1) <= \PCout_out[1]~output_o\;

ww_PCout_out(2) <= \PCout_out[2]~output_o\;

ww_PCout_out(3) <= \PCout_out[3]~output_o\;

ww_PCout_out(4) <= \PCout_out[4]~output_o\;

ww_PCout_out(5) <= \PCout_out[5]~output_o\;

ww_PCout_out(6) <= \PCout_out[6]~output_o\;

ww_PCout_out(7) <= \PCout_out[7]~output_o\;

ww_PCout_out(8) <= \PCout_out[8]~output_o\;

ww_PCout_out(9) <= \PCout_out[9]~output_o\;

ww_PCout_out(10) <= \PCout_out[10]~output_o\;

ww_PCout_out(11) <= \PCout_out[11]~output_o\;

ww_PCout_out(12) <= \PCout_out[12]~output_o\;

ww_PCout_out(13) <= \PCout_out[13]~output_o\;

ww_PCout_out(14) <= \PCout_out[14]~output_o\;

ww_PCout_out(15) <= \PCout_out[15]~output_o\;

ww_PCout_out(16) <= \PCout_out[16]~output_o\;

ww_PCout_out(17) <= \PCout_out[17]~output_o\;

ww_PCout_out(18) <= \PCout_out[18]~output_o\;

ww_PCout_out(19) <= \PCout_out[19]~output_o\;

ww_PCout_out(20) <= \PCout_out[20]~output_o\;

ww_PCout_out(21) <= \PCout_out[21]~output_o\;

ww_PCout_out(22) <= \PCout_out[22]~output_o\;

ww_PCout_out(23) <= \PCout_out[23]~output_o\;

ww_PCout_out(24) <= \PCout_out[24]~output_o\;

ww_PCout_out(25) <= \PCout_out[25]~output_o\;

ww_PCout_out(26) <= \PCout_out[26]~output_o\;

ww_PCout_out(27) <= \PCout_out[27]~output_o\;

ww_PCout_out(28) <= \PCout_out[28]~output_o\;

ww_PCout_out(29) <= \PCout_out[29]~output_o\;

ww_PCout_out(30) <= \PCout_out[30]~output_o\;

ww_PCout_out(31) <= \PCout_out[31]~output_o\;

ww_instr_out(0) <= \instr_out[0]~output_o\;

ww_instr_out(1) <= \instr_out[1]~output_o\;

ww_instr_out(2) <= \instr_out[2]~output_o\;

ww_instr_out(3) <= \instr_out[3]~output_o\;

ww_instr_out(4) <= \instr_out[4]~output_o\;

ww_instr_out(5) <= \instr_out[5]~output_o\;

ww_instr_out(6) <= \instr_out[6]~output_o\;

ww_instr_out(7) <= \instr_out[7]~output_o\;

ww_instr_out(8) <= \instr_out[8]~output_o\;

ww_instr_out(9) <= \instr_out[9]~output_o\;

ww_instr_out(10) <= \instr_out[10]~output_o\;

ww_instr_out(11) <= \instr_out[11]~output_o\;

ww_instr_out(12) <= \instr_out[12]~output_o\;

ww_instr_out(13) <= \instr_out[13]~output_o\;

ww_instr_out(14) <= \instr_out[14]~output_o\;

ww_instr_out(15) <= \instr_out[15]~output_o\;

ww_instr_out(16) <= \instr_out[16]~output_o\;

ww_instr_out(17) <= \instr_out[17]~output_o\;

ww_instr_out(18) <= \instr_out[18]~output_o\;

ww_instr_out(19) <= \instr_out[19]~output_o\;

ww_instr_out(20) <= \instr_out[20]~output_o\;

ww_instr_out(21) <= \instr_out[21]~output_o\;

ww_instr_out(22) <= \instr_out[22]~output_o\;

ww_instr_out(23) <= \instr_out[23]~output_o\;

ww_instr_out(24) <= \instr_out[24]~output_o\;

ww_instr_out(25) <= \instr_out[25]~output_o\;

ww_instr_out(26) <= \instr_out[26]~output_o\;

ww_instr_out(27) <= \instr_out[27]~output_o\;

ww_instr_out(28) <= \instr_out[28]~output_o\;

ww_instr_out(29) <= \instr_out[29]~output_o\;

ww_instr_out(30) <= \instr_out[30]~output_o\;

ww_instr_out(31) <= \instr_out[31]~output_o\;

ww_pcplus4_out(0) <= \pcplus4_out[0]~output_o\;

ww_pcplus4_out(1) <= \pcplus4_out[1]~output_o\;

ww_pcplus4_out(2) <= \pcplus4_out[2]~output_o\;

ww_pcplus4_out(3) <= \pcplus4_out[3]~output_o\;

ww_pcplus4_out(4) <= \pcplus4_out[4]~output_o\;

ww_pcplus4_out(5) <= \pcplus4_out[5]~output_o\;

ww_pcplus4_out(6) <= \pcplus4_out[6]~output_o\;

ww_pcplus4_out(7) <= \pcplus4_out[7]~output_o\;

ww_pcplus4_out(8) <= \pcplus4_out[8]~output_o\;

ww_pcplus4_out(9) <= \pcplus4_out[9]~output_o\;

ww_pcplus4_out(10) <= \pcplus4_out[10]~output_o\;

ww_pcplus4_out(11) <= \pcplus4_out[11]~output_o\;

ww_pcplus4_out(12) <= \pcplus4_out[12]~output_o\;

ww_pcplus4_out(13) <= \pcplus4_out[13]~output_o\;

ww_pcplus4_out(14) <= \pcplus4_out[14]~output_o\;

ww_pcplus4_out(15) <= \pcplus4_out[15]~output_o\;

ww_pcplus4_out(16) <= \pcplus4_out[16]~output_o\;

ww_pcplus4_out(17) <= \pcplus4_out[17]~output_o\;

ww_pcplus4_out(18) <= \pcplus4_out[18]~output_o\;

ww_pcplus4_out(19) <= \pcplus4_out[19]~output_o\;

ww_pcplus4_out(20) <= \pcplus4_out[20]~output_o\;

ww_pcplus4_out(21) <= \pcplus4_out[21]~output_o\;

ww_pcplus4_out(22) <= \pcplus4_out[22]~output_o\;

ww_pcplus4_out(23) <= \pcplus4_out[23]~output_o\;

ww_pcplus4_out(24) <= \pcplus4_out[24]~output_o\;

ww_pcplus4_out(25) <= \pcplus4_out[25]~output_o\;

ww_pcplus4_out(26) <= \pcplus4_out[26]~output_o\;

ww_pcplus4_out(27) <= \pcplus4_out[27]~output_o\;

ww_pcplus4_out(28) <= \pcplus4_out[28]~output_o\;

ww_pcplus4_out(29) <= \pcplus4_out[29]~output_o\;

ww_pcplus4_out(30) <= \pcplus4_out[30]~output_o\;

ww_pcplus4_out(31) <= \pcplus4_out[31]~output_o\;

ww_rd1_out(0) <= \rd1_out[0]~output_o\;

ww_rd1_out(1) <= \rd1_out[1]~output_o\;

ww_rd1_out(2) <= \rd1_out[2]~output_o\;

ww_rd1_out(3) <= \rd1_out[3]~output_o\;

ww_rd1_out(4) <= \rd1_out[4]~output_o\;

ww_rd1_out(5) <= \rd1_out[5]~output_o\;

ww_rd1_out(6) <= \rd1_out[6]~output_o\;

ww_rd1_out(7) <= \rd1_out[7]~output_o\;

ww_rd1_out(8) <= \rd1_out[8]~output_o\;

ww_rd1_out(9) <= \rd1_out[9]~output_o\;

ww_rd1_out(10) <= \rd1_out[10]~output_o\;

ww_rd1_out(11) <= \rd1_out[11]~output_o\;

ww_rd1_out(12) <= \rd1_out[12]~output_o\;

ww_rd1_out(13) <= \rd1_out[13]~output_o\;

ww_rd1_out(14) <= \rd1_out[14]~output_o\;

ww_rd1_out(15) <= \rd1_out[15]~output_o\;

ww_rd1_out(16) <= \rd1_out[16]~output_o\;

ww_rd1_out(17) <= \rd1_out[17]~output_o\;

ww_rd1_out(18) <= \rd1_out[18]~output_o\;

ww_rd1_out(19) <= \rd1_out[19]~output_o\;

ww_rd1_out(20) <= \rd1_out[20]~output_o\;

ww_rd1_out(21) <= \rd1_out[21]~output_o\;

ww_rd1_out(22) <= \rd1_out[22]~output_o\;

ww_rd1_out(23) <= \rd1_out[23]~output_o\;

ww_rd1_out(24) <= \rd1_out[24]~output_o\;

ww_rd1_out(25) <= \rd1_out[25]~output_o\;

ww_rd1_out(26) <= \rd1_out[26]~output_o\;

ww_rd1_out(27) <= \rd1_out[27]~output_o\;

ww_rd1_out(28) <= \rd1_out[28]~output_o\;

ww_rd1_out(29) <= \rd1_out[29]~output_o\;

ww_rd1_out(30) <= \rd1_out[30]~output_o\;

ww_rd1_out(31) <= \rd1_out[31]~output_o\;

ww_rd2_out(0) <= \rd2_out[0]~output_o\;

ww_rd2_out(1) <= \rd2_out[1]~output_o\;

ww_rd2_out(2) <= \rd2_out[2]~output_o\;

ww_rd2_out(3) <= \rd2_out[3]~output_o\;

ww_rd2_out(4) <= \rd2_out[4]~output_o\;

ww_rd2_out(5) <= \rd2_out[5]~output_o\;

ww_rd2_out(6) <= \rd2_out[6]~output_o\;

ww_rd2_out(7) <= \rd2_out[7]~output_o\;

ww_rd2_out(8) <= \rd2_out[8]~output_o\;

ww_rd2_out(9) <= \rd2_out[9]~output_o\;

ww_rd2_out(10) <= \rd2_out[10]~output_o\;

ww_rd2_out(11) <= \rd2_out[11]~output_o\;

ww_rd2_out(12) <= \rd2_out[12]~output_o\;

ww_rd2_out(13) <= \rd2_out[13]~output_o\;

ww_rd2_out(14) <= \rd2_out[14]~output_o\;

ww_rd2_out(15) <= \rd2_out[15]~output_o\;

ww_rd2_out(16) <= \rd2_out[16]~output_o\;

ww_rd2_out(17) <= \rd2_out[17]~output_o\;

ww_rd2_out(18) <= \rd2_out[18]~output_o\;

ww_rd2_out(19) <= \rd2_out[19]~output_o\;

ww_rd2_out(20) <= \rd2_out[20]~output_o\;

ww_rd2_out(21) <= \rd2_out[21]~output_o\;

ww_rd2_out(22) <= \rd2_out[22]~output_o\;

ww_rd2_out(23) <= \rd2_out[23]~output_o\;

ww_rd2_out(24) <= \rd2_out[24]~output_o\;

ww_rd2_out(25) <= \rd2_out[25]~output_o\;

ww_rd2_out(26) <= \rd2_out[26]~output_o\;

ww_rd2_out(27) <= \rd2_out[27]~output_o\;

ww_rd2_out(28) <= \rd2_out[28]~output_o\;

ww_rd2_out(29) <= \rd2_out[29]~output_o\;

ww_rd2_out(30) <= \rd2_out[30]~output_o\;

ww_rd2_out(31) <= \rd2_out[31]~output_o\;

ww_instr_15_11_out(0) <= \instr_15_11_out[0]~output_o\;

ww_instr_15_11_out(1) <= \instr_15_11_out[1]~output_o\;

ww_instr_15_11_out(2) <= \instr_15_11_out[2]~output_o\;

ww_instr_15_11_out(3) <= \instr_15_11_out[3]~output_o\;

ww_instr_15_11_out(4) <= \instr_15_11_out[4]~output_o\;

ww_instr_20_16_out(0) <= \instr_20_16_out[0]~output_o\;

ww_instr_20_16_out(1) <= \instr_20_16_out[1]~output_o\;

ww_instr_20_16_out(2) <= \instr_20_16_out[2]~output_o\;

ww_instr_20_16_out(3) <= \instr_20_16_out[3]~output_o\;

ww_instr_20_16_out(4) <= \instr_20_16_out[4]~output_o\;

ww_instr_25_21_out(0) <= \instr_25_21_out[0]~output_o\;

ww_instr_25_21_out(1) <= \instr_25_21_out[1]~output_o\;

ww_instr_25_21_out(2) <= \instr_25_21_out[2]~output_o\;

ww_instr_25_21_out(3) <= \instr_25_21_out[3]~output_o\;

ww_instr_25_21_out(4) <= \instr_25_21_out[4]~output_o\;

ww_signJump_out <= \signJump_out~output_o\;

ww_signBNE_out <= \signBNE_out~output_o\;

ww_signBranch_out <= \signBranch_out~output_o\;

ww_signMemToReg_out <= \signMemToReg_out~output_o\;

ww_signMemRead_out <= \signMemRead_out~output_o\;

ww_signMemWrite_out <= \signMemWrite_out~output_o\;

ww_signRegdest_out(0) <= \signRegdest_out[0]~output_o\;

ww_signRegdest_out(1) <= \signRegdest_out[1]~output_o\;

ww_signRegwrite_out <= \signRegwrite_out~output_o\;

ww_signALUsrc_out <= \signALUsrc_out~output_o\;

ww_signALUctrl_out <= \signALUctrl_out~output_o\;

ww_signextend_out(0) <= \signextend_out[0]~output_o\;

ww_signextend_out(1) <= \signextend_out[1]~output_o\;

ww_signextend_out(2) <= \signextend_out[2]~output_o\;

ww_signextend_out(3) <= \signextend_out[3]~output_o\;

ww_signextend_out(4) <= \signextend_out[4]~output_o\;

ww_signextend_out(5) <= \signextend_out[5]~output_o\;

ww_signextend_out(6) <= \signextend_out[6]~output_o\;

ww_signextend_out(7) <= \signextend_out[7]~output_o\;

ww_signextend_out(8) <= \signextend_out[8]~output_o\;

ww_signextend_out(9) <= \signextend_out[9]~output_o\;

ww_signextend_out(10) <= \signextend_out[10]~output_o\;

ww_signextend_out(11) <= \signextend_out[11]~output_o\;

ww_signextend_out(12) <= \signextend_out[12]~output_o\;

ww_signextend_out(13) <= \signextend_out[13]~output_o\;

ww_signextend_out(14) <= \signextend_out[14]~output_o\;

ww_signextend_out(15) <= \signextend_out[15]~output_o\;

ww_signextend_out(16) <= \signextend_out[16]~output_o\;

ww_signextend_out(17) <= \signextend_out[17]~output_o\;

ww_signextend_out(18) <= \signextend_out[18]~output_o\;

ww_signextend_out(19) <= \signextend_out[19]~output_o\;

ww_signextend_out(20) <= \signextend_out[20]~output_o\;

ww_signextend_out(21) <= \signextend_out[21]~output_o\;

ww_signextend_out(22) <= \signextend_out[22]~output_o\;

ww_signextend_out(23) <= \signextend_out[23]~output_o\;

ww_signextend_out(24) <= \signextend_out[24]~output_o\;

ww_signextend_out(25) <= \signextend_out[25]~output_o\;

ww_signextend_out(26) <= \signextend_out[26]~output_o\;

ww_signextend_out(27) <= \signextend_out[27]~output_o\;

ww_signextend_out(28) <= \signextend_out[28]~output_o\;

ww_signextend_out(29) <= \signextend_out[29]~output_o\;

ww_signextend_out(30) <= \signextend_out[30]~output_o\;

ww_signextend_out(31) <= \signextend_out[31]~output_o\;

ww_leftshift28_out(0) <= \leftshift28_out[0]~output_o\;

ww_leftshift28_out(1) <= \leftshift28_out[1]~output_o\;

ww_leftshift28_out(2) <= \leftshift28_out[2]~output_o\;

ww_leftshift28_out(3) <= \leftshift28_out[3]~output_o\;

ww_leftshift28_out(4) <= \leftshift28_out[4]~output_o\;

ww_leftshift28_out(5) <= \leftshift28_out[5]~output_o\;

ww_leftshift28_out(6) <= \leftshift28_out[6]~output_o\;

ww_leftshift28_out(7) <= \leftshift28_out[7]~output_o\;

ww_leftshift28_out(8) <= \leftshift28_out[8]~output_o\;

ww_leftshift28_out(9) <= \leftshift28_out[9]~output_o\;

ww_leftshift28_out(10) <= \leftshift28_out[10]~output_o\;

ww_leftshift28_out(11) <= \leftshift28_out[11]~output_o\;

ww_leftshift28_out(12) <= \leftshift28_out[12]~output_o\;

ww_leftshift28_out(13) <= \leftshift28_out[13]~output_o\;

ww_leftshift28_out(14) <= \leftshift28_out[14]~output_o\;

ww_leftshift28_out(15) <= \leftshift28_out[15]~output_o\;

ww_leftshift28_out(16) <= \leftshift28_out[16]~output_o\;

ww_leftshift28_out(17) <= \leftshift28_out[17]~output_o\;

ww_leftshift28_out(18) <= \leftshift28_out[18]~output_o\;

ww_leftshift28_out(19) <= \leftshift28_out[19]~output_o\;

ww_leftshift28_out(20) <= \leftshift28_out[20]~output_o\;

ww_leftshift28_out(21) <= \leftshift28_out[21]~output_o\;

ww_leftshift28_out(22) <= \leftshift28_out[22]~output_o\;

ww_leftshift28_out(23) <= \leftshift28_out[23]~output_o\;

ww_leftshift28_out(24) <= \leftshift28_out[24]~output_o\;

ww_leftshift28_out(25) <= \leftshift28_out[25]~output_o\;

ww_leftshift28_out(26) <= \leftshift28_out[26]~output_o\;

ww_leftshift28_out(27) <= \leftshift28_out[27]~output_o\;

ww_leftshift32_out(0) <= \leftshift32_out[0]~output_o\;

ww_leftshift32_out(1) <= \leftshift32_out[1]~output_o\;

ww_leftshift32_out(2) <= \leftshift32_out[2]~output_o\;

ww_leftshift32_out(3) <= \leftshift32_out[3]~output_o\;

ww_leftshift32_out(4) <= \leftshift32_out[4]~output_o\;

ww_leftshift32_out(5) <= \leftshift32_out[5]~output_o\;

ww_leftshift32_out(6) <= \leftshift32_out[6]~output_o\;

ww_leftshift32_out(7) <= \leftshift32_out[7]~output_o\;

ww_leftshift32_out(8) <= \leftshift32_out[8]~output_o\;

ww_leftshift32_out(9) <= \leftshift32_out[9]~output_o\;

ww_leftshift32_out(10) <= \leftshift32_out[10]~output_o\;

ww_leftshift32_out(11) <= \leftshift32_out[11]~output_o\;

ww_leftshift32_out(12) <= \leftshift32_out[12]~output_o\;

ww_leftshift32_out(13) <= \leftshift32_out[13]~output_o\;

ww_leftshift32_out(14) <= \leftshift32_out[14]~output_o\;

ww_leftshift32_out(15) <= \leftshift32_out[15]~output_o\;

ww_leftshift32_out(16) <= \leftshift32_out[16]~output_o\;

ww_leftshift32_out(17) <= \leftshift32_out[17]~output_o\;

ww_leftshift32_out(18) <= \leftshift32_out[18]~output_o\;

ww_leftshift32_out(19) <= \leftshift32_out[19]~output_o\;

ww_leftshift32_out(20) <= \leftshift32_out[20]~output_o\;

ww_leftshift32_out(21) <= \leftshift32_out[21]~output_o\;

ww_leftshift32_out(22) <= \leftshift32_out[22]~output_o\;

ww_leftshift32_out(23) <= \leftshift32_out[23]~output_o\;

ww_leftshift32_out(24) <= \leftshift32_out[24]~output_o\;

ww_leftshift32_out(25) <= \leftshift32_out[25]~output_o\;

ww_leftshift32_out(26) <= \leftshift32_out[26]~output_o\;

ww_leftshift32_out(27) <= \leftshift32_out[27]~output_o\;

ww_leftshift32_out(28) <= \leftshift32_out[28]~output_o\;

ww_leftshift32_out(29) <= \leftshift32_out[29]~output_o\;

ww_leftshift32_out(30) <= \leftshift32_out[30]~output_o\;

ww_leftshift32_out(31) <= \leftshift32_out[31]~output_o\;

ww_BranchResult <= \BranchResult~output_o\;

ww_RDData_out(0) <= \RDData_out[0]~output_o\;

ww_RDData_out(1) <= \RDData_out[1]~output_o\;

ww_RDData_out(2) <= \RDData_out[2]~output_o\;

ww_RDData_out(3) <= \RDData_out[3]~output_o\;

ww_RDData_out(4) <= \RDData_out[4]~output_o\;

ww_RDData_out(5) <= \RDData_out[5]~output_o\;

ww_RDData_out(6) <= \RDData_out[6]~output_o\;

ww_RDData_out(7) <= \RDData_out[7]~output_o\;

ww_WRData3_out(0) <= \WRData3_out[0]~output_o\;

ww_WRData3_out(1) <= \WRData3_out[1]~output_o\;

ww_WRData3_out(2) <= \WRData3_out[2]~output_o\;

ww_WRData3_out(3) <= \WRData3_out[3]~output_o\;

ww_WRData3_out(4) <= \WRData3_out[4]~output_o\;

ww_WRData3_out(5) <= \WRData3_out[5]~output_o\;

ww_WRData3_out(6) <= \WRData3_out[6]~output_o\;

ww_WRData3_out(7) <= \WRData3_out[7]~output_o\;

ww_WRData3_out(8) <= \WRData3_out[8]~output_o\;

ww_WRData3_out(9) <= \WRData3_out[9]~output_o\;

ww_WRData3_out(10) <= \WRData3_out[10]~output_o\;

ww_WRData3_out(11) <= \WRData3_out[11]~output_o\;

ww_WRData3_out(12) <= \WRData3_out[12]~output_o\;

ww_WRData3_out(13) <= \WRData3_out[13]~output_o\;

ww_WRData3_out(14) <= \WRData3_out[14]~output_o\;

ww_WRData3_out(15) <= \WRData3_out[15]~output_o\;

ww_WRData3_out(16) <= \WRData3_out[16]~output_o\;

ww_WRData3_out(17) <= \WRData3_out[17]~output_o\;

ww_WRData3_out(18) <= \WRData3_out[18]~output_o\;

ww_WRData3_out(19) <= \WRData3_out[19]~output_o\;

ww_WRData3_out(20) <= \WRData3_out[20]~output_o\;

ww_WRData3_out(21) <= \WRData3_out[21]~output_o\;

ww_WRData3_out(22) <= \WRData3_out[22]~output_o\;

ww_WRData3_out(23) <= \WRData3_out[23]~output_o\;

ww_WRData3_out(24) <= \WRData3_out[24]~output_o\;

ww_WRData3_out(25) <= \WRData3_out[25]~output_o\;

ww_WRData3_out(26) <= \WRData3_out[26]~output_o\;

ww_WRData3_out(27) <= \WRData3_out[27]~output_o\;

ww_WRData3_out(28) <= \WRData3_out[28]~output_o\;

ww_WRData3_out(29) <= \WRData3_out[29]~output_o\;

ww_WRData3_out(30) <= \WRData3_out[30]~output_o\;

ww_WRData3_out(31) <= \WRData3_out[31]~output_o\;

ww_OP_In_out(0) <= \OP_In_out[0]~output_o\;

ww_OP_In_out(1) <= \OP_In_out[1]~output_o\;

ww_OP_In_out(2) <= \OP_In_out[2]~output_o\;

ww_OP_In_out(3) <= \OP_In_out[3]~output_o\;

ww_OP_In_out(4) <= \OP_In_out[4]~output_o\;

ww_OP_In_out(5) <= \OP_In_out[5]~output_o\;

ww_FUNCT_In_out(0) <= \FUNCT_In_out[0]~output_o\;

ww_FUNCT_In_out(1) <= \FUNCT_In_out[1]~output_o\;

ww_FUNCT_In_out(2) <= \FUNCT_In_out[2]~output_o\;

ww_FUNCT_In_out(3) <= \FUNCT_In_out[3]~output_o\;

ww_FUNCT_In_out(4) <= \FUNCT_In_out[4]~output_o\;

ww_FUNCT_In_out(5) <= \FUNCT_In_out[5]~output_o\;
END structure;


