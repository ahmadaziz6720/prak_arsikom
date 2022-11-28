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

-- DATE "11/16/2022 22:02:06"

-- 
-- Device: Altera EP4CE75F29C8L Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cla_32 IS
    PORT (
	OPRND_1 : IN std_logic_vector(31 DOWNTO 0);
	OPRND_2 : IN std_logic_vector(31 DOWNTO 0);
	C_IN : IN std_logic;
	RESULT : BUFFER std_logic_vector(31 DOWNTO 0);
	C_OUT : BUFFER std_logic
	);
END cla_32;

-- Design Ports Information
-- RESULT[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[14]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[15]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[16]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[17]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[18]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[19]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[20]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[21]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[22]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[23]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[25]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[26]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[27]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[28]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[29]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[30]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_OUT	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_IN	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[11]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[16]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[16]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[17]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[18]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[19]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[19]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[20]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[20]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[21]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[21]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[22]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[23]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[23]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[24]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[24]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[25]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[26]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[26]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[27]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[27]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[28]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[28]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[29]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[29]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[30]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[30]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_2[31]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPRND_1[31]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cla_32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OPRND_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OPRND_2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_C_IN : std_logic;
SIGNAL ww_RESULT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_C_OUT : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \RESULT[4]~output_o\ : std_logic;
SIGNAL \RESULT[5]~output_o\ : std_logic;
SIGNAL \RESULT[6]~output_o\ : std_logic;
SIGNAL \RESULT[7]~output_o\ : std_logic;
SIGNAL \RESULT[8]~output_o\ : std_logic;
SIGNAL \RESULT[9]~output_o\ : std_logic;
SIGNAL \RESULT[10]~output_o\ : std_logic;
SIGNAL \RESULT[11]~output_o\ : std_logic;
SIGNAL \RESULT[12]~output_o\ : std_logic;
SIGNAL \RESULT[13]~output_o\ : std_logic;
SIGNAL \RESULT[14]~output_o\ : std_logic;
SIGNAL \RESULT[15]~output_o\ : std_logic;
SIGNAL \RESULT[16]~output_o\ : std_logic;
SIGNAL \RESULT[17]~output_o\ : std_logic;
SIGNAL \RESULT[18]~output_o\ : std_logic;
SIGNAL \RESULT[19]~output_o\ : std_logic;
SIGNAL \RESULT[20]~output_o\ : std_logic;
SIGNAL \RESULT[21]~output_o\ : std_logic;
SIGNAL \RESULT[22]~output_o\ : std_logic;
SIGNAL \RESULT[23]~output_o\ : std_logic;
SIGNAL \RESULT[24]~output_o\ : std_logic;
SIGNAL \RESULT[25]~output_o\ : std_logic;
SIGNAL \RESULT[26]~output_o\ : std_logic;
SIGNAL \RESULT[27]~output_o\ : std_logic;
SIGNAL \RESULT[28]~output_o\ : std_logic;
SIGNAL \RESULT[29]~output_o\ : std_logic;
SIGNAL \RESULT[30]~output_o\ : std_logic;
SIGNAL \RESULT[31]~output_o\ : std_logic;
SIGNAL \C_OUT~output_o\ : std_logic;
SIGNAL \OPRND_2[0]~input_o\ : std_logic;
SIGNAL \OPRND_1[0]~input_o\ : std_logic;
SIGNAL \C_IN~input_o\ : std_logic;
SIGNAL \RESULT~0_combout\ : std_logic;
SIGNAL \C[1]~0_combout\ : std_logic;
SIGNAL \C[1]~1_combout\ : std_logic;
SIGNAL \OPRND_2[1]~input_o\ : std_logic;
SIGNAL \OPRND_1[1]~input_o\ : std_logic;
SIGNAL \RESULT~1_combout\ : std_logic;
SIGNAL \OPRND_2[2]~input_o\ : std_logic;
SIGNAL \C[2]~2_combout\ : std_logic;
SIGNAL \OPRND_1[2]~input_o\ : std_logic;
SIGNAL \RESULT~2_combout\ : std_logic;
SIGNAL \C[3]~4_combout\ : std_logic;
SIGNAL \OPRND_1[3]~input_o\ : std_logic;
SIGNAL \OPRND_2[3]~input_o\ : std_logic;
SIGNAL \C[3]~3_combout\ : std_logic;
SIGNAL \RESULT~3_combout\ : std_logic;
SIGNAL \OPRND_1[4]~input_o\ : std_logic;
SIGNAL \OPRND_2[4]~input_o\ : std_logic;
SIGNAL \C[4]~5_combout\ : std_logic;
SIGNAL \RESULT~4_combout\ : std_logic;
SIGNAL \C[5]~6_combout\ : std_logic;
SIGNAL \C[5]~7_combout\ : std_logic;
SIGNAL \OPRND_2[5]~input_o\ : std_logic;
SIGNAL \OPRND_1[5]~input_o\ : std_logic;
SIGNAL \RESULT~5_combout\ : std_logic;
SIGNAL \OPRND_2[6]~input_o\ : std_logic;
SIGNAL \C[6]~8_combout\ : std_logic;
SIGNAL \OPRND_1[6]~input_o\ : std_logic;
SIGNAL \RESULT~6_combout\ : std_logic;
SIGNAL \C[7]~10_combout\ : std_logic;
SIGNAL \C[7]~9_combout\ : std_logic;
SIGNAL \OPRND_2[7]~input_o\ : std_logic;
SIGNAL \OPRND_1[7]~input_o\ : std_logic;
SIGNAL \RESULT~7_combout\ : std_logic;
SIGNAL \C[8]~11_combout\ : std_logic;
SIGNAL \OPRND_2[8]~input_o\ : std_logic;
SIGNAL \OPRND_1[8]~input_o\ : std_logic;
SIGNAL \RESULT~8_combout\ : std_logic;
SIGNAL \OPRND_2[9]~input_o\ : std_logic;
SIGNAL \C[9]~13_combout\ : std_logic;
SIGNAL \C[9]~12_combout\ : std_logic;
SIGNAL \OPRND_1[9]~input_o\ : std_logic;
SIGNAL \RESULT~9_combout\ : std_logic;
SIGNAL \OPRND_2[10]~input_o\ : std_logic;
SIGNAL \C[10]~14_combout\ : std_logic;
SIGNAL \OPRND_1[10]~input_o\ : std_logic;
SIGNAL \RESULT~10_combout\ : std_logic;
SIGNAL \C[11]~15_combout\ : std_logic;
SIGNAL \OPRND_2[11]~input_o\ : std_logic;
SIGNAL \C[11]~16_combout\ : std_logic;
SIGNAL \OPRND_1[11]~input_o\ : std_logic;
SIGNAL \RESULT~11_combout\ : std_logic;
SIGNAL \C[12]~17_combout\ : std_logic;
SIGNAL \OPRND_1[12]~input_o\ : std_logic;
SIGNAL \OPRND_2[12]~input_o\ : std_logic;
SIGNAL \RESULT~12_combout\ : std_logic;
SIGNAL \C[13]~18_combout\ : std_logic;
SIGNAL \OPRND_2[13]~input_o\ : std_logic;
SIGNAL \OPRND_1[13]~input_o\ : std_logic;
SIGNAL \C[13]~19_combout\ : std_logic;
SIGNAL \RESULT~13_combout\ : std_logic;
SIGNAL \OPRND_2[14]~input_o\ : std_logic;
SIGNAL \OPRND_1[14]~input_o\ : std_logic;
SIGNAL \C[14]~20_combout\ : std_logic;
SIGNAL \RESULT~14_combout\ : std_logic;
SIGNAL \C[15]~21_combout\ : std_logic;
SIGNAL \C[15]~22_combout\ : std_logic;
SIGNAL \OPRND_1[15]~input_o\ : std_logic;
SIGNAL \OPRND_2[15]~input_o\ : std_logic;
SIGNAL \RESULT~15_combout\ : std_logic;
SIGNAL \OPRND_2[16]~input_o\ : std_logic;
SIGNAL \C[16]~23_combout\ : std_logic;
SIGNAL \OPRND_1[16]~input_o\ : std_logic;
SIGNAL \RESULT~16_combout\ : std_logic;
SIGNAL \OPRND_1[17]~input_o\ : std_logic;
SIGNAL \C[17]~24_combout\ : std_logic;
SIGNAL \C[17]~25_combout\ : std_logic;
SIGNAL \OPRND_2[17]~input_o\ : std_logic;
SIGNAL \RESULT~17_combout\ : std_logic;
SIGNAL \C[18]~26_combout\ : std_logic;
SIGNAL \OPRND_2[18]~input_o\ : std_logic;
SIGNAL \OPRND_1[18]~input_o\ : std_logic;
SIGNAL \RESULT~18_combout\ : std_logic;
SIGNAL \C[19]~27_combout\ : std_logic;
SIGNAL \C[19]~28_combout\ : std_logic;
SIGNAL \OPRND_1[19]~input_o\ : std_logic;
SIGNAL \OPRND_2[19]~input_o\ : std_logic;
SIGNAL \RESULT~19_combout\ : std_logic;
SIGNAL \OPRND_2[20]~input_o\ : std_logic;
SIGNAL \C[20]~29_combout\ : std_logic;
SIGNAL \OPRND_1[20]~input_o\ : std_logic;
SIGNAL \RESULT~20_combout\ : std_logic;
SIGNAL \C[21]~30_combout\ : std_logic;
SIGNAL \C[21]~31_combout\ : std_logic;
SIGNAL \OPRND_1[21]~input_o\ : std_logic;
SIGNAL \OPRND_2[21]~input_o\ : std_logic;
SIGNAL \RESULT~21_combout\ : std_logic;
SIGNAL \C[22]~32_combout\ : std_logic;
SIGNAL \OPRND_1[22]~input_o\ : std_logic;
SIGNAL \OPRND_2[22]~input_o\ : std_logic;
SIGNAL \RESULT~22_combout\ : std_logic;
SIGNAL \C[23]~34_combout\ : std_logic;
SIGNAL \OPRND_2[23]~input_o\ : std_logic;
SIGNAL \OPRND_1[23]~input_o\ : std_logic;
SIGNAL \C[23]~33_combout\ : std_logic;
SIGNAL \RESULT~23_combout\ : std_logic;
SIGNAL \C[24]~35_combout\ : std_logic;
SIGNAL \OPRND_2[24]~input_o\ : std_logic;
SIGNAL \OPRND_1[24]~input_o\ : std_logic;
SIGNAL \RESULT~24_combout\ : std_logic;
SIGNAL \OPRND_1[25]~input_o\ : std_logic;
SIGNAL \C[25]~37_combout\ : std_logic;
SIGNAL \C[25]~36_combout\ : std_logic;
SIGNAL \OPRND_2[25]~input_o\ : std_logic;
SIGNAL \RESULT~25_combout\ : std_logic;
SIGNAL \OPRND_2[26]~input_o\ : std_logic;
SIGNAL \OPRND_1[26]~input_o\ : std_logic;
SIGNAL \C[26]~38_combout\ : std_logic;
SIGNAL \RESULT~26_combout\ : std_logic;
SIGNAL \C[27]~39_combout\ : std_logic;
SIGNAL \OPRND_1[27]~input_o\ : std_logic;
SIGNAL \OPRND_2[27]~input_o\ : std_logic;
SIGNAL \C[27]~40_combout\ : std_logic;
SIGNAL \RESULT~27_combout\ : std_logic;
SIGNAL \OPRND_2[28]~input_o\ : std_logic;
SIGNAL \OPRND_1[28]~input_o\ : std_logic;
SIGNAL \C[28]~41_combout\ : std_logic;
SIGNAL \RESULT~28_combout\ : std_logic;
SIGNAL \OPRND_1[29]~input_o\ : std_logic;
SIGNAL \OPRND_2[29]~input_o\ : std_logic;
SIGNAL \C[29]~43_combout\ : std_logic;
SIGNAL \C[29]~42_combout\ : std_logic;
SIGNAL \RESULT~29_combout\ : std_logic;
SIGNAL \OPRND_2[30]~input_o\ : std_logic;
SIGNAL \OPRND_1[30]~input_o\ : std_logic;
SIGNAL \C[30]~44_combout\ : std_logic;
SIGNAL \RESULT~30_combout\ : std_logic;
SIGNAL \C[31]~45_combout\ : std_logic;
SIGNAL \OPRND_1[31]~input_o\ : std_logic;
SIGNAL \OPRND_2[31]~input_o\ : std_logic;
SIGNAL \C[31]~46_combout\ : std_logic;
SIGNAL \RESULT~31_combout\ : std_logic;
SIGNAL \C_OUT~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OPRND_1 <= OPRND_1;
ww_OPRND_2 <= OPRND_2;
ww_C_IN <= C_IN;
RESULT <= ww_RESULT;
C_OUT <= ww_C_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y62_N23
\RESULT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~0_combout\,
	devoe => ww_devoe,
	o => \RESULT[0]~output_o\);

-- Location: IOOBUF_X18_Y62_N9
\RESULT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~1_combout\,
	devoe => ww_devoe,
	o => \RESULT[1]~output_o\);

-- Location: IOOBUF_X18_Y62_N2
\RESULT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~2_combout\,
	devoe => ww_devoe,
	o => \RESULT[2]~output_o\);

-- Location: IOOBUF_X18_Y62_N23
\RESULT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~3_combout\,
	devoe => ww_devoe,
	o => \RESULT[3]~output_o\);

-- Location: IOOBUF_X34_Y62_N2
\RESULT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~4_combout\,
	devoe => ww_devoe,
	o => \RESULT[4]~output_o\);

-- Location: IOOBUF_X29_Y62_N9
\RESULT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~5_combout\,
	devoe => ww_devoe,
	o => \RESULT[5]~output_o\);

-- Location: IOOBUF_X38_Y62_N2
\RESULT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~6_combout\,
	devoe => ww_devoe,
	o => \RESULT[6]~output_o\);

-- Location: IOOBUF_X34_Y62_N9
\RESULT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~7_combout\,
	devoe => ww_devoe,
	o => \RESULT[7]~output_o\);

-- Location: IOOBUF_X29_Y62_N2
\RESULT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~8_combout\,
	devoe => ww_devoe,
	o => \RESULT[8]~output_o\);

-- Location: IOOBUF_X45_Y62_N23
\RESULT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~9_combout\,
	devoe => ww_devoe,
	o => \RESULT[9]~output_o\);

-- Location: IOOBUF_X62_Y62_N9
\RESULT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~10_combout\,
	devoe => ww_devoe,
	o => \RESULT[10]~output_o\);

-- Location: IOOBUF_X62_Y62_N23
\RESULT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~11_combout\,
	devoe => ww_devoe,
	o => \RESULT[11]~output_o\);

-- Location: IOOBUF_X62_Y62_N2
\RESULT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~12_combout\,
	devoe => ww_devoe,
	o => \RESULT[12]~output_o\);

-- Location: IOOBUF_X69_Y62_N23
\RESULT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~13_combout\,
	devoe => ww_devoe,
	o => \RESULT[13]~output_o\);

-- Location: IOOBUF_X1_Y62_N23
\RESULT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~14_combout\,
	devoe => ww_devoe,
	o => \RESULT[14]~output_o\);

-- Location: IOOBUF_X7_Y62_N2
\RESULT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~15_combout\,
	devoe => ww_devoe,
	o => \RESULT[15]~output_o\);

-- Location: IOOBUF_X1_Y62_N9
\RESULT[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~16_combout\,
	devoe => ww_devoe,
	o => \RESULT[16]~output_o\);

-- Location: IOOBUF_X0_Y57_N9
\RESULT[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~17_combout\,
	devoe => ww_devoe,
	o => \RESULT[17]~output_o\);

-- Location: IOOBUF_X1_Y62_N2
\RESULT[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~18_combout\,
	devoe => ww_devoe,
	o => \RESULT[18]~output_o\);

-- Location: IOOBUF_X3_Y62_N2
\RESULT[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~19_combout\,
	devoe => ww_devoe,
	o => \RESULT[19]~output_o\);

-- Location: IOOBUF_X51_Y62_N9
\RESULT[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~20_combout\,
	devoe => ww_devoe,
	o => \RESULT[20]~output_o\);

-- Location: IOOBUF_X53_Y62_N16
\RESULT[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~21_combout\,
	devoe => ww_devoe,
	o => \RESULT[21]~output_o\);

-- Location: IOOBUF_X45_Y62_N2
\RESULT[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~22_combout\,
	devoe => ww_devoe,
	o => \RESULT[22]~output_o\);

-- Location: IOOBUF_X51_Y62_N2
\RESULT[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~23_combout\,
	devoe => ww_devoe,
	o => \RESULT[23]~output_o\);

-- Location: IOOBUF_X45_Y62_N9
\RESULT[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~24_combout\,
	devoe => ww_devoe,
	o => \RESULT[24]~output_o\);

-- Location: IOOBUF_X58_Y62_N23
\RESULT[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~25_combout\,
	devoe => ww_devoe,
	o => \RESULT[25]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\RESULT[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~26_combout\,
	devoe => ww_devoe,
	o => \RESULT[26]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\RESULT[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~27_combout\,
	devoe => ww_devoe,
	o => \RESULT[27]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\RESULT[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~28_combout\,
	devoe => ww_devoe,
	o => \RESULT[28]~output_o\);

-- Location: IOOBUF_X0_Y50_N2
\RESULT[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~29_combout\,
	devoe => ww_devoe,
	o => \RESULT[29]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\RESULT[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~30_combout\,
	devoe => ww_devoe,
	o => \RESULT[30]~output_o\);

-- Location: IOOBUF_X0_Y49_N23
\RESULT[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~31_combout\,
	devoe => ww_devoe,
	o => \RESULT[31]~output_o\);

-- Location: IOOBUF_X0_Y47_N9
\C_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C_OUT~0_combout\,
	devoe => ww_devoe,
	o => \C_OUT~output_o\);

-- Location: IOIBUF_X0_Y30_N22
\OPRND_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(0),
	o => \OPRND_2[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N15
\OPRND_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(0),
	o => \OPRND_1[0]~input_o\);

-- Location: IOIBUF_X20_Y62_N1
\C_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_IN,
	o => \C_IN~input_o\);

-- Location: LCCOMB_X19_Y61_N16
\RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~0_combout\ = \OPRND_2[0]~input_o\ $ (\OPRND_1[0]~input_o\ $ (\C_IN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[0]~input_o\,
	datac => \OPRND_1[0]~input_o\,
	datad => \C_IN~input_o\,
	combout => \RESULT~0_combout\);

-- Location: LCCOMB_X19_Y61_N10
\C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[1]~0_combout\ = (\OPRND_2[0]~input_o\ & \OPRND_1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[0]~input_o\,
	datac => \OPRND_1[0]~input_o\,
	combout => \C[1]~0_combout\);

-- Location: LCCOMB_X19_Y61_N28
\C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[1]~1_combout\ = (\C_IN~input_o\ & ((\OPRND_2[0]~input_o\) # (\OPRND_1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[0]~input_o\,
	datac => \OPRND_1[0]~input_o\,
	datad => \C_IN~input_o\,
	combout => \C[1]~1_combout\);

-- Location: IOIBUF_X20_Y62_N8
\OPRND_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(1),
	o => \OPRND_2[1]~input_o\);

-- Location: IOIBUF_X23_Y62_N8
\OPRND_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(1),
	o => \OPRND_1[1]~input_o\);

-- Location: LCCOMB_X19_Y61_N6
\RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~1_combout\ = \OPRND_2[1]~input_o\ $ (\OPRND_1[1]~input_o\ $ (((\C[1]~0_combout\) # (\C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~0_combout\,
	datab => \C[1]~1_combout\,
	datac => \OPRND_2[1]~input_o\,
	datad => \OPRND_1[1]~input_o\,
	combout => \RESULT~1_combout\);

-- Location: IOIBUF_X23_Y62_N15
\OPRND_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(2),
	o => \OPRND_2[2]~input_o\);

-- Location: LCCOMB_X19_Y61_N24
\C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[2]~2_combout\ = (\OPRND_2[1]~input_o\ & ((\C[1]~0_combout\) # ((\C[1]~1_combout\) # (\OPRND_1[1]~input_o\)))) # (!\OPRND_2[1]~input_o\ & (\OPRND_1[1]~input_o\ & ((\C[1]~0_combout\) # (\C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~0_combout\,
	datab => \C[1]~1_combout\,
	datac => \OPRND_2[1]~input_o\,
	datad => \OPRND_1[1]~input_o\,
	combout => \C[2]~2_combout\);

-- Location: IOIBUF_X16_Y62_N1
\OPRND_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(2),
	o => \OPRND_1[2]~input_o\);

-- Location: LCCOMB_X19_Y61_N2
\RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~2_combout\ = \OPRND_2[2]~input_o\ $ (\C[2]~2_combout\ $ (\OPRND_1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[2]~input_o\,
	datab => \C[2]~2_combout\,
	datac => \OPRND_1[2]~input_o\,
	combout => \RESULT~2_combout\);

-- Location: LCCOMB_X19_Y61_N22
\C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[3]~4_combout\ = (\C[2]~2_combout\ & ((\OPRND_2[2]~input_o\) # (\OPRND_1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[2]~input_o\,
	datab => \C[2]~2_combout\,
	datac => \OPRND_1[2]~input_o\,
	combout => \C[3]~4_combout\);

-- Location: IOIBUF_X18_Y62_N15
\OPRND_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(3),
	o => \OPRND_1[3]~input_o\);

-- Location: IOIBUF_X20_Y62_N15
\OPRND_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(3),
	o => \OPRND_2[3]~input_o\);

-- Location: LCCOMB_X19_Y61_N20
\C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[3]~3_combout\ = (\OPRND_2[2]~input_o\ & \OPRND_1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[2]~input_o\,
	datac => \OPRND_1[2]~input_o\,
	combout => \C[3]~3_combout\);

-- Location: LCCOMB_X19_Y61_N0
\RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~3_combout\ = \OPRND_1[3]~input_o\ $ (\OPRND_2[3]~input_o\ $ (((\C[3]~4_combout\) # (\C[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~4_combout\,
	datab => \OPRND_1[3]~input_o\,
	datac => \OPRND_2[3]~input_o\,
	datad => \C[3]~3_combout\,
	combout => \RESULT~3_combout\);

-- Location: IOIBUF_X40_Y62_N22
\OPRND_1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(4),
	o => \OPRND_1[4]~input_o\);

-- Location: IOIBUF_X31_Y62_N22
\OPRND_2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(4),
	o => \OPRND_2[4]~input_o\);

-- Location: LCCOMB_X19_Y61_N26
\C[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[4]~5_combout\ = (\OPRND_1[3]~input_o\ & ((\C[3]~4_combout\) # ((\OPRND_2[3]~input_o\) # (\C[3]~3_combout\)))) # (!\OPRND_1[3]~input_o\ & (\OPRND_2[3]~input_o\ & ((\C[3]~4_combout\) # (\C[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~4_combout\,
	datab => \OPRND_1[3]~input_o\,
	datac => \OPRND_2[3]~input_o\,
	datad => \C[3]~3_combout\,
	combout => \C[4]~5_combout\);

-- Location: LCCOMB_X35_Y61_N0
\RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~4_combout\ = \OPRND_1[4]~input_o\ $ (\OPRND_2[4]~input_o\ $ (\C[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[4]~input_o\,
	datab => \OPRND_2[4]~input_o\,
	datac => \C[4]~5_combout\,
	combout => \RESULT~4_combout\);

-- Location: LCCOMB_X35_Y61_N10
\C[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[5]~6_combout\ = (\OPRND_2[4]~input_o\ & \OPRND_1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPRND_2[4]~input_o\,
	datac => \OPRND_1[4]~input_o\,
	combout => \C[5]~6_combout\);

-- Location: LCCOMB_X35_Y61_N20
\C[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[5]~7_combout\ = (\C[4]~5_combout\ & ((\OPRND_1[4]~input_o\) # (\OPRND_2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[4]~input_o\,
	datab => \OPRND_2[4]~input_o\,
	datac => \C[4]~5_combout\,
	combout => \C[5]~7_combout\);

-- Location: IOIBUF_X36_Y62_N1
\OPRND_2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(5),
	o => \OPRND_2[5]~input_o\);

-- Location: IOIBUF_X43_Y62_N1
\OPRND_1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(5),
	o => \OPRND_1[5]~input_o\);

-- Location: LCCOMB_X35_Y61_N30
\RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~5_combout\ = \OPRND_2[5]~input_o\ $ (\OPRND_1[5]~input_o\ $ (((\C[5]~6_combout\) # (\C[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~6_combout\,
	datab => \C[5]~7_combout\,
	datac => \OPRND_2[5]~input_o\,
	datad => \OPRND_1[5]~input_o\,
	combout => \RESULT~5_combout\);

-- Location: IOIBUF_X27_Y62_N22
\OPRND_2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(6),
	o => \OPRND_2[6]~input_o\);

-- Location: LCCOMB_X35_Y61_N16
\C[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[6]~8_combout\ = (\OPRND_2[5]~input_o\ & ((\C[5]~6_combout\) # ((\C[5]~7_combout\) # (\OPRND_1[5]~input_o\)))) # (!\OPRND_2[5]~input_o\ & (\OPRND_1[5]~input_o\ & ((\C[5]~6_combout\) # (\C[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~6_combout\,
	datab => \C[5]~7_combout\,
	datac => \OPRND_2[5]~input_o\,
	datad => \OPRND_1[5]~input_o\,
	combout => \C[6]~8_combout\);

-- Location: IOIBUF_X38_Y62_N8
\OPRND_1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(6),
	o => \OPRND_1[6]~input_o\);

-- Location: LCCOMB_X35_Y61_N2
\RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~6_combout\ = \OPRND_2[6]~input_o\ $ (\C[6]~8_combout\ $ (\OPRND_1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[6]~input_o\,
	datab => \C[6]~8_combout\,
	datad => \OPRND_1[6]~input_o\,
	combout => \RESULT~6_combout\);

-- Location: LCCOMB_X35_Y61_N6
\C[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[7]~10_combout\ = (\C[6]~8_combout\ & ((\OPRND_2[6]~input_o\) # (\OPRND_1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[6]~input_o\,
	datab => \C[6]~8_combout\,
	datad => \OPRND_1[6]~input_o\,
	combout => \C[7]~10_combout\);

-- Location: LCCOMB_X35_Y61_N28
\C[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[7]~9_combout\ = (\OPRND_2[6]~input_o\ & \OPRND_1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[6]~input_o\,
	datad => \OPRND_1[6]~input_o\,
	combout => \C[7]~9_combout\);

-- Location: IOIBUF_X34_Y62_N15
\OPRND_2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(7),
	o => \OPRND_2[7]~input_o\);

-- Location: IOIBUF_X36_Y62_N8
\OPRND_1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(7),
	o => \OPRND_1[7]~input_o\);

-- Location: LCCOMB_X35_Y61_N8
\RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~7_combout\ = \OPRND_2[7]~input_o\ $ (\OPRND_1[7]~input_o\ $ (((\C[7]~10_combout\) # (\C[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~10_combout\,
	datab => \C[7]~9_combout\,
	datac => \OPRND_2[7]~input_o\,
	datad => \OPRND_1[7]~input_o\,
	combout => \RESULT~7_combout\);

-- Location: LCCOMB_X35_Y61_N18
\C[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[8]~11_combout\ = (\OPRND_2[7]~input_o\ & ((\C[7]~10_combout\) # ((\C[7]~9_combout\) # (\OPRND_1[7]~input_o\)))) # (!\OPRND_2[7]~input_o\ & (\OPRND_1[7]~input_o\ & ((\C[7]~10_combout\) # (\C[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~10_combout\,
	datab => \C[7]~9_combout\,
	datac => \OPRND_2[7]~input_o\,
	datad => \OPRND_1[7]~input_o\,
	combout => \C[8]~11_combout\);

-- Location: IOIBUF_X34_Y62_N22
\OPRND_2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(8),
	o => \OPRND_2[8]~input_o\);

-- Location: IOIBUF_X43_Y62_N8
\OPRND_1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(8),
	o => \OPRND_1[8]~input_o\);

-- Location: LCCOMB_X35_Y61_N4
\RESULT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~8_combout\ = \C[8]~11_combout\ $ (\OPRND_2[8]~input_o\ $ (\OPRND_1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[8]~11_combout\,
	datac => \OPRND_2[8]~input_o\,
	datad => \OPRND_1[8]~input_o\,
	combout => \RESULT~8_combout\);

-- Location: IOIBUF_X31_Y62_N15
\OPRND_2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(9),
	o => \OPRND_2[9]~input_o\);

-- Location: LCCOMB_X35_Y61_N24
\C[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[9]~13_combout\ = (\C[8]~11_combout\ & ((\OPRND_2[8]~input_o\) # (\OPRND_1[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[8]~11_combout\,
	datac => \OPRND_2[8]~input_o\,
	datad => \OPRND_1[8]~input_o\,
	combout => \C[9]~13_combout\);

-- Location: LCCOMB_X35_Y61_N22
\C[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[9]~12_combout\ = (\OPRND_2[8]~input_o\ & \OPRND_1[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPRND_2[8]~input_o\,
	datad => \OPRND_1[8]~input_o\,
	combout => \C[9]~12_combout\);

-- Location: IOIBUF_X40_Y62_N1
\OPRND_1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(9),
	o => \OPRND_1[9]~input_o\);

-- Location: LCCOMB_X35_Y61_N26
\RESULT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~9_combout\ = \OPRND_2[9]~input_o\ $ (\OPRND_1[9]~input_o\ $ (((\C[9]~13_combout\) # (\C[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[9]~input_o\,
	datab => \C[9]~13_combout\,
	datac => \C[9]~12_combout\,
	datad => \OPRND_1[9]~input_o\,
	combout => \RESULT~9_combout\);

-- Location: IOIBUF_X62_Y62_N15
\OPRND_2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(10),
	o => \OPRND_2[10]~input_o\);

-- Location: LCCOMB_X35_Y61_N12
\C[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[10]~14_combout\ = (\OPRND_2[9]~input_o\ & ((\C[9]~13_combout\) # ((\C[9]~12_combout\) # (\OPRND_1[9]~input_o\)))) # (!\OPRND_2[9]~input_o\ & (\OPRND_1[9]~input_o\ & ((\C[9]~13_combout\) # (\C[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[9]~input_o\,
	datab => \C[9]~13_combout\,
	datac => \C[9]~12_combout\,
	datad => \OPRND_1[9]~input_o\,
	combout => \C[10]~14_combout\);

-- Location: IOIBUF_X69_Y62_N15
\OPRND_1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(10),
	o => \OPRND_1[10]~input_o\);

-- Location: LCCOMB_X67_Y61_N8
\RESULT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~10_combout\ = \OPRND_2[10]~input_o\ $ (\C[10]~14_combout\ $ (\OPRND_1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[10]~input_o\,
	datac => \C[10]~14_combout\,
	datad => \OPRND_1[10]~input_o\,
	combout => \RESULT~10_combout\);

-- Location: LCCOMB_X67_Y61_N10
\C[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[11]~15_combout\ = (\OPRND_2[10]~input_o\ & \OPRND_1[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPRND_2[10]~input_o\,
	datad => \OPRND_1[10]~input_o\,
	combout => \C[11]~15_combout\);

-- Location: IOIBUF_X67_Y62_N8
\OPRND_2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(11),
	o => \OPRND_2[11]~input_o\);

-- Location: LCCOMB_X67_Y61_N4
\C[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[11]~16_combout\ = (\C[10]~14_combout\ & ((\OPRND_2[10]~input_o\) # (\OPRND_1[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[10]~input_o\,
	datac => \C[10]~14_combout\,
	datad => \OPRND_1[10]~input_o\,
	combout => \C[11]~16_combout\);

-- Location: IOIBUF_X67_Y62_N15
\OPRND_1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(11),
	o => \OPRND_1[11]~input_o\);

-- Location: LCCOMB_X67_Y61_N30
\RESULT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~11_combout\ = \OPRND_2[11]~input_o\ $ (\OPRND_1[11]~input_o\ $ (((\C[11]~15_combout\) # (\C[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[11]~15_combout\,
	datab => \OPRND_2[11]~input_o\,
	datac => \C[11]~16_combout\,
	datad => \OPRND_1[11]~input_o\,
	combout => \RESULT~11_combout\);

-- Location: LCCOMB_X67_Y61_N24
\C[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[12]~17_combout\ = (\OPRND_2[11]~input_o\ & ((\C[11]~15_combout\) # ((\C[11]~16_combout\) # (\OPRND_1[11]~input_o\)))) # (!\OPRND_2[11]~input_o\ & (\OPRND_1[11]~input_o\ & ((\C[11]~15_combout\) # (\C[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[11]~15_combout\,
	datab => \OPRND_2[11]~input_o\,
	datac => \C[11]~16_combout\,
	datad => \OPRND_1[11]~input_o\,
	combout => \C[12]~17_combout\);

-- Location: IOIBUF_X71_Y62_N1
\OPRND_1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(12),
	o => \OPRND_1[12]~input_o\);

-- Location: IOIBUF_X71_Y62_N8
\OPRND_2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(12),
	o => \OPRND_2[12]~input_o\);

-- Location: LCCOMB_X67_Y61_N26
\RESULT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~12_combout\ = \C[12]~17_combout\ $ (\OPRND_1[12]~input_o\ $ (\OPRND_2[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[12]~17_combout\,
	datac => \OPRND_1[12]~input_o\,
	datad => \OPRND_2[12]~input_o\,
	combout => \RESULT~12_combout\);

-- Location: LCCOMB_X67_Y61_N12
\C[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[13]~18_combout\ = (\OPRND_1[12]~input_o\ & \OPRND_2[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPRND_1[12]~input_o\,
	datad => \OPRND_2[12]~input_o\,
	combout => \C[13]~18_combout\);

-- Location: IOIBUF_X67_Y62_N1
\OPRND_2[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(13),
	o => \OPRND_2[13]~input_o\);

-- Location: IOIBUF_X67_Y62_N22
\OPRND_1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(13),
	o => \OPRND_1[13]~input_o\);

-- Location: LCCOMB_X67_Y61_N6
\C[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[13]~19_combout\ = (\C[12]~17_combout\ & ((\OPRND_1[12]~input_o\) # (\OPRND_2[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[12]~17_combout\,
	datac => \OPRND_1[12]~input_o\,
	datad => \OPRND_2[12]~input_o\,
	combout => \C[13]~19_combout\);

-- Location: LCCOMB_X67_Y61_N0
\RESULT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~13_combout\ = \OPRND_2[13]~input_o\ $ (\OPRND_1[13]~input_o\ $ (((\C[13]~18_combout\) # (\C[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[13]~18_combout\,
	datab => \OPRND_2[13]~input_o\,
	datac => \OPRND_1[13]~input_o\,
	datad => \C[13]~19_combout\,
	combout => \RESULT~13_combout\);

-- Location: IOIBUF_X0_Y57_N1
\OPRND_2[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(14),
	o => \OPRND_2[14]~input_o\);

-- Location: IOIBUF_X13_Y62_N8
\OPRND_1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(14),
	o => \OPRND_1[14]~input_o\);

-- Location: LCCOMB_X67_Y61_N2
\C[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[14]~20_combout\ = (\OPRND_2[13]~input_o\ & ((\C[13]~18_combout\) # ((\OPRND_1[13]~input_o\) # (\C[13]~19_combout\)))) # (!\OPRND_2[13]~input_o\ & (\OPRND_1[13]~input_o\ & ((\C[13]~18_combout\) # (\C[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[13]~18_combout\,
	datab => \OPRND_2[13]~input_o\,
	datac => \OPRND_1[13]~input_o\,
	datad => \C[13]~19_combout\,
	combout => \C[14]~20_combout\);

-- Location: LCCOMB_X5_Y61_N0
\RESULT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~14_combout\ = \OPRND_2[14]~input_o\ $ (\OPRND_1[14]~input_o\ $ (\C[14]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[14]~input_o\,
	datab => \OPRND_1[14]~input_o\,
	datac => \C[14]~20_combout\,
	combout => \RESULT~14_combout\);

-- Location: LCCOMB_X5_Y61_N10
\C[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[15]~21_combout\ = (\OPRND_2[14]~input_o\ & \OPRND_1[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[14]~input_o\,
	datad => \OPRND_1[14]~input_o\,
	combout => \C[15]~21_combout\);

-- Location: LCCOMB_X5_Y61_N28
\C[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[15]~22_combout\ = (\C[14]~20_combout\ & ((\OPRND_2[14]~input_o\) # (\OPRND_1[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[14]~input_o\,
	datab => \OPRND_1[14]~input_o\,
	datac => \C[14]~20_combout\,
	combout => \C[15]~22_combout\);

-- Location: IOIBUF_X5_Y62_N1
\OPRND_1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(15),
	o => \OPRND_1[15]~input_o\);

-- Location: IOIBUF_X13_Y62_N1
\OPRND_2[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(15),
	o => \OPRND_2[15]~input_o\);

-- Location: LCCOMB_X5_Y61_N30
\RESULT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~15_combout\ = \OPRND_1[15]~input_o\ $ (\OPRND_2[15]~input_o\ $ (((\C[15]~21_combout\) # (\C[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[15]~21_combout\,
	datab => \C[15]~22_combout\,
	datac => \OPRND_1[15]~input_o\,
	datad => \OPRND_2[15]~input_o\,
	combout => \RESULT~15_combout\);

-- Location: IOIBUF_X7_Y62_N8
\OPRND_2[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(16),
	o => \OPRND_2[16]~input_o\);

-- Location: LCCOMB_X5_Y61_N16
\C[16]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[16]~23_combout\ = (\OPRND_1[15]~input_o\ & ((\C[15]~21_combout\) # ((\C[15]~22_combout\) # (\OPRND_2[15]~input_o\)))) # (!\OPRND_1[15]~input_o\ & (\OPRND_2[15]~input_o\ & ((\C[15]~21_combout\) # (\C[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[15]~21_combout\,
	datab => \C[15]~22_combout\,
	datac => \OPRND_1[15]~input_o\,
	datad => \OPRND_2[15]~input_o\,
	combout => \C[16]~23_combout\);

-- Location: IOIBUF_X0_Y58_N8
\OPRND_1[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(16),
	o => \OPRND_1[16]~input_o\);

-- Location: LCCOMB_X5_Y61_N2
\RESULT~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~16_combout\ = \OPRND_2[16]~input_o\ $ (\C[16]~23_combout\ $ (\OPRND_1[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[16]~input_o\,
	datab => \C[16]~23_combout\,
	datac => \OPRND_1[16]~input_o\,
	combout => \RESULT~16_combout\);

-- Location: IOIBUF_X5_Y62_N8
\OPRND_1[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(17),
	o => \OPRND_1[17]~input_o\);

-- Location: LCCOMB_X5_Y61_N20
\C[17]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[17]~24_combout\ = (\OPRND_2[16]~input_o\ & \OPRND_1[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[16]~input_o\,
	datac => \OPRND_1[16]~input_o\,
	combout => \C[17]~24_combout\);

-- Location: LCCOMB_X5_Y61_N22
\C[17]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[17]~25_combout\ = (\C[16]~23_combout\ & ((\OPRND_2[16]~input_o\) # (\OPRND_1[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[16]~input_o\,
	datab => \C[16]~23_combout\,
	datac => \OPRND_1[16]~input_o\,
	combout => \C[17]~25_combout\);

-- Location: IOIBUF_X16_Y62_N8
\OPRND_2[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(17),
	o => \OPRND_2[17]~input_o\);

-- Location: LCCOMB_X5_Y61_N8
\RESULT~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~17_combout\ = \OPRND_1[17]~input_o\ $ (\OPRND_2[17]~input_o\ $ (((\C[17]~24_combout\) # (\C[17]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[17]~input_o\,
	datab => \C[17]~24_combout\,
	datac => \C[17]~25_combout\,
	datad => \OPRND_2[17]~input_o\,
	combout => \RESULT~17_combout\);

-- Location: LCCOMB_X5_Y61_N18
\C[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[18]~26_combout\ = (\OPRND_1[17]~input_o\ & ((\C[17]~24_combout\) # ((\C[17]~25_combout\) # (\OPRND_2[17]~input_o\)))) # (!\OPRND_1[17]~input_o\ & (\OPRND_2[17]~input_o\ & ((\C[17]~24_combout\) # (\C[17]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[17]~input_o\,
	datab => \C[17]~24_combout\,
	datac => \C[17]~25_combout\,
	datad => \OPRND_2[17]~input_o\,
	combout => \C[18]~26_combout\);

-- Location: IOIBUF_X3_Y62_N22
\OPRND_2[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(18),
	o => \OPRND_2[18]~input_o\);

-- Location: IOIBUF_X11_Y62_N8
\OPRND_1[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(18),
	o => \OPRND_1[18]~input_o\);

-- Location: LCCOMB_X5_Y61_N4
\RESULT~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~18_combout\ = \C[18]~26_combout\ $ (\OPRND_2[18]~input_o\ $ (\OPRND_1[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[18]~26_combout\,
	datac => \OPRND_2[18]~input_o\,
	datad => \OPRND_1[18]~input_o\,
	combout => \RESULT~18_combout\);

-- Location: LCCOMB_X5_Y61_N6
\C[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[19]~27_combout\ = (\OPRND_2[18]~input_o\ & \OPRND_1[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPRND_2[18]~input_o\,
	datad => \OPRND_1[18]~input_o\,
	combout => \C[19]~27_combout\);

-- Location: LCCOMB_X5_Y61_N24
\C[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[19]~28_combout\ = (\C[18]~26_combout\ & ((\OPRND_2[18]~input_o\) # (\OPRND_1[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[18]~26_combout\,
	datac => \OPRND_2[18]~input_o\,
	datad => \OPRND_1[18]~input_o\,
	combout => \C[19]~28_combout\);

-- Location: IOIBUF_X3_Y62_N15
\OPRND_1[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(19),
	o => \OPRND_1[19]~input_o\);

-- Location: IOIBUF_X11_Y62_N1
\OPRND_2[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(19),
	o => \OPRND_2[19]~input_o\);

-- Location: LCCOMB_X5_Y61_N26
\RESULT~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~19_combout\ = \OPRND_1[19]~input_o\ $ (\OPRND_2[19]~input_o\ $ (((\C[19]~27_combout\) # (\C[19]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[19]~27_combout\,
	datab => \C[19]~28_combout\,
	datac => \OPRND_1[19]~input_o\,
	datad => \OPRND_2[19]~input_o\,
	combout => \RESULT~19_combout\);

-- Location: IOIBUF_X49_Y62_N15
\OPRND_2[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(20),
	o => \OPRND_2[20]~input_o\);

-- Location: LCCOMB_X5_Y61_N12
\C[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[20]~29_combout\ = (\OPRND_1[19]~input_o\ & ((\C[19]~27_combout\) # ((\C[19]~28_combout\) # (\OPRND_2[19]~input_o\)))) # (!\OPRND_1[19]~input_o\ & (\OPRND_2[19]~input_o\ & ((\C[19]~27_combout\) # (\C[19]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[19]~27_combout\,
	datab => \C[19]~28_combout\,
	datac => \OPRND_1[19]~input_o\,
	datad => \OPRND_2[19]~input_o\,
	combout => \C[20]~29_combout\);

-- Location: IOIBUF_X53_Y62_N22
\OPRND_1[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(20),
	o => \OPRND_1[20]~input_o\);

-- Location: LCCOMB_X52_Y61_N0
\RESULT~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~20_combout\ = \OPRND_2[20]~input_o\ $ (\C[20]~29_combout\ $ (\OPRND_1[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[20]~input_o\,
	datab => \C[20]~29_combout\,
	datac => \OPRND_1[20]~input_o\,
	combout => \RESULT~20_combout\);

-- Location: LCCOMB_X52_Y61_N10
\C[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[21]~30_combout\ = (\OPRND_1[20]~input_o\ & \OPRND_2[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPRND_1[20]~input_o\,
	datac => \OPRND_2[20]~input_o\,
	combout => \C[21]~30_combout\);

-- Location: LCCOMB_X52_Y61_N20
\C[21]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[21]~31_combout\ = (\C[20]~29_combout\ & ((\OPRND_2[20]~input_o\) # (\OPRND_1[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[20]~input_o\,
	datab => \C[20]~29_combout\,
	datac => \OPRND_1[20]~input_o\,
	combout => \C[21]~31_combout\);

-- Location: IOIBUF_X56_Y62_N15
\OPRND_1[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(21),
	o => \OPRND_1[21]~input_o\);

-- Location: IOIBUF_X49_Y62_N22
\OPRND_2[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(21),
	o => \OPRND_2[21]~input_o\);

-- Location: LCCOMB_X52_Y61_N6
\RESULT~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~21_combout\ = \OPRND_1[21]~input_o\ $ (\OPRND_2[21]~input_o\ $ (((\C[21]~30_combout\) # (\C[21]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[21]~30_combout\,
	datab => \C[21]~31_combout\,
	datac => \OPRND_1[21]~input_o\,
	datad => \OPRND_2[21]~input_o\,
	combout => \RESULT~21_combout\);

-- Location: LCCOMB_X52_Y61_N24
\C[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[22]~32_combout\ = (\OPRND_1[21]~input_o\ & ((\C[21]~30_combout\) # ((\C[21]~31_combout\) # (\OPRND_2[21]~input_o\)))) # (!\OPRND_1[21]~input_o\ & (\OPRND_2[21]~input_o\ & ((\C[21]~30_combout\) # (\C[21]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[21]~30_combout\,
	datab => \C[21]~31_combout\,
	datac => \OPRND_1[21]~input_o\,
	datad => \OPRND_2[21]~input_o\,
	combout => \C[22]~32_combout\);

-- Location: IOIBUF_X49_Y62_N1
\OPRND_1[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(22),
	o => \OPRND_1[22]~input_o\);

-- Location: IOIBUF_X56_Y62_N1
\OPRND_2[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(22),
	o => \OPRND_2[22]~input_o\);

-- Location: LCCOMB_X52_Y61_N2
\RESULT~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~22_combout\ = \C[22]~32_combout\ $ (\OPRND_1[22]~input_o\ $ (\OPRND_2[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[22]~32_combout\,
	datac => \OPRND_1[22]~input_o\,
	datad => \OPRND_2[22]~input_o\,
	combout => \RESULT~22_combout\);

-- Location: LCCOMB_X52_Y61_N30
\C[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[23]~34_combout\ = (\C[22]~32_combout\ & ((\OPRND_1[22]~input_o\) # (\OPRND_2[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[22]~32_combout\,
	datac => \OPRND_1[22]~input_o\,
	datad => \OPRND_2[22]~input_o\,
	combout => \C[23]~34_combout\);

-- Location: IOIBUF_X53_Y62_N1
\OPRND_2[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(23),
	o => \OPRND_2[23]~input_o\);

-- Location: IOIBUF_X45_Y62_N15
\OPRND_1[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(23),
	o => \OPRND_1[23]~input_o\);

-- Location: LCCOMB_X52_Y61_N12
\C[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[23]~33_combout\ = (\OPRND_1[22]~input_o\ & \OPRND_2[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPRND_1[22]~input_o\,
	datad => \OPRND_2[22]~input_o\,
	combout => \C[23]~33_combout\);

-- Location: LCCOMB_X52_Y61_N16
\RESULT~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~23_combout\ = \OPRND_2[23]~input_o\ $ (\OPRND_1[23]~input_o\ $ (((\C[23]~34_combout\) # (\C[23]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[23]~34_combout\,
	datab => \OPRND_2[23]~input_o\,
	datac => \OPRND_1[23]~input_o\,
	datad => \C[23]~33_combout\,
	combout => \RESULT~23_combout\);

-- Location: LCCOMB_X52_Y61_N18
\C[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[24]~35_combout\ = (\OPRND_2[23]~input_o\ & ((\C[23]~34_combout\) # ((\OPRND_1[23]~input_o\) # (\C[23]~33_combout\)))) # (!\OPRND_2[23]~input_o\ & (\OPRND_1[23]~input_o\ & ((\C[23]~34_combout\) # (\C[23]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[23]~34_combout\,
	datab => \OPRND_2[23]~input_o\,
	datac => \OPRND_1[23]~input_o\,
	datad => \C[23]~33_combout\,
	combout => \C[24]~35_combout\);

-- Location: IOIBUF_X53_Y62_N8
\OPRND_2[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(24),
	o => \OPRND_2[24]~input_o\);

-- Location: IOIBUF_X56_Y62_N8
\OPRND_1[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(24),
	o => \OPRND_1[24]~input_o\);

-- Location: LCCOMB_X52_Y61_N4
\RESULT~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~24_combout\ = \C[24]~35_combout\ $ (\OPRND_2[24]~input_o\ $ (\OPRND_1[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[24]~35_combout\,
	datac => \OPRND_2[24]~input_o\,
	datad => \OPRND_1[24]~input_o\,
	combout => \RESULT~24_combout\);

-- Location: IOIBUF_X56_Y62_N22
\OPRND_1[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(25),
	o => \OPRND_1[25]~input_o\);

-- Location: LCCOMB_X52_Y61_N8
\C[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[25]~37_combout\ = (\C[24]~35_combout\ & ((\OPRND_2[24]~input_o\) # (\OPRND_1[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[24]~35_combout\,
	datac => \OPRND_2[24]~input_o\,
	datad => \OPRND_1[24]~input_o\,
	combout => \C[25]~37_combout\);

-- Location: LCCOMB_X52_Y61_N22
\C[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[25]~36_combout\ = (\OPRND_2[24]~input_o\ & \OPRND_1[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPRND_2[24]~input_o\,
	datad => \OPRND_1[24]~input_o\,
	combout => \C[25]~36_combout\);

-- Location: IOIBUF_X58_Y62_N15
\OPRND_2[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(25),
	o => \OPRND_2[25]~input_o\);

-- Location: LCCOMB_X52_Y61_N26
\RESULT~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~25_combout\ = \OPRND_1[25]~input_o\ $ (\OPRND_2[25]~input_o\ $ (((\C[25]~37_combout\) # (\C[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[25]~input_o\,
	datab => \C[25]~37_combout\,
	datac => \C[25]~36_combout\,
	datad => \OPRND_2[25]~input_o\,
	combout => \RESULT~25_combout\);

-- Location: IOIBUF_X0_Y44_N8
\OPRND_2[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(26),
	o => \OPRND_2[26]~input_o\);

-- Location: IOIBUF_X0_Y50_N8
\OPRND_1[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(26),
	o => \OPRND_1[26]~input_o\);

-- Location: LCCOMB_X52_Y61_N28
\C[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[26]~38_combout\ = (\OPRND_1[25]~input_o\ & ((\C[25]~37_combout\) # ((\C[25]~36_combout\) # (\OPRND_2[25]~input_o\)))) # (!\OPRND_1[25]~input_o\ & (\OPRND_2[25]~input_o\ & ((\C[25]~37_combout\) # (\C[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[25]~input_o\,
	datab => \C[25]~37_combout\,
	datac => \C[25]~36_combout\,
	datad => \OPRND_2[25]~input_o\,
	combout => \C[26]~38_combout\);

-- Location: LCCOMB_X1_Y46_N8
\RESULT~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~26_combout\ = \OPRND_2[26]~input_o\ $ (\OPRND_1[26]~input_o\ $ (\C[26]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPRND_2[26]~input_o\,
	datac => \OPRND_1[26]~input_o\,
	datad => \C[26]~38_combout\,
	combout => \RESULT~26_combout\);

-- Location: LCCOMB_X1_Y46_N26
\C[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[27]~39_combout\ = (\OPRND_2[26]~input_o\ & \OPRND_1[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPRND_2[26]~input_o\,
	datac => \OPRND_1[26]~input_o\,
	combout => \C[27]~39_combout\);

-- Location: IOIBUF_X0_Y42_N1
\OPRND_1[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(27),
	o => \OPRND_1[27]~input_o\);

-- Location: IOIBUF_X0_Y41_N8
\OPRND_2[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(27),
	o => \OPRND_2[27]~input_o\);

-- Location: LCCOMB_X1_Y46_N28
\C[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[27]~40_combout\ = (\C[26]~38_combout\ & ((\OPRND_2[26]~input_o\) # (\OPRND_1[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPRND_2[26]~input_o\,
	datac => \OPRND_1[26]~input_o\,
	datad => \C[26]~38_combout\,
	combout => \C[27]~40_combout\);

-- Location: LCCOMB_X1_Y46_N22
\RESULT~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~27_combout\ = \OPRND_1[27]~input_o\ $ (\OPRND_2[27]~input_o\ $ (((\C[27]~39_combout\) # (\C[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[27]~39_combout\,
	datab => \OPRND_1[27]~input_o\,
	datac => \OPRND_2[27]~input_o\,
	datad => \C[27]~40_combout\,
	combout => \RESULT~27_combout\);

-- Location: IOIBUF_X0_Y42_N8
\OPRND_2[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(28),
	o => \OPRND_2[28]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\OPRND_1[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(28),
	o => \OPRND_1[28]~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\C[28]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[28]~41_combout\ = (\OPRND_1[27]~input_o\ & ((\C[27]~39_combout\) # ((\OPRND_2[27]~input_o\) # (\C[27]~40_combout\)))) # (!\OPRND_1[27]~input_o\ & (\OPRND_2[27]~input_o\ & ((\C[27]~39_combout\) # (\C[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[27]~39_combout\,
	datab => \OPRND_1[27]~input_o\,
	datac => \OPRND_2[27]~input_o\,
	datad => \C[27]~40_combout\,
	combout => \C[28]~41_combout\);

-- Location: LCCOMB_X1_Y46_N10
\RESULT~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~28_combout\ = \OPRND_2[28]~input_o\ $ (\OPRND_1[28]~input_o\ $ (\C[28]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[28]~input_o\,
	datab => \OPRND_1[28]~input_o\,
	datad => \C[28]~41_combout\,
	combout => \RESULT~28_combout\);

-- Location: IOIBUF_X0_Y46_N1
\OPRND_1[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(29),
	o => \OPRND_1[29]~input_o\);

-- Location: IOIBUF_X0_Y41_N1
\OPRND_2[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(29),
	o => \OPRND_2[29]~input_o\);

-- Location: LCCOMB_X1_Y46_N30
\C[29]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[29]~43_combout\ = (\C[28]~41_combout\ & ((\OPRND_2[28]~input_o\) # (\OPRND_1[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[28]~input_o\,
	datab => \OPRND_1[28]~input_o\,
	datad => \C[28]~41_combout\,
	combout => \C[29]~43_combout\);

-- Location: LCCOMB_X1_Y46_N20
\C[29]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[29]~42_combout\ = (\OPRND_2[28]~input_o\ & \OPRND_1[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[28]~input_o\,
	datad => \OPRND_1[28]~input_o\,
	combout => \C[29]~42_combout\);

-- Location: LCCOMB_X1_Y46_N0
\RESULT~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~29_combout\ = \OPRND_1[29]~input_o\ $ (\OPRND_2[29]~input_o\ $ (((\C[29]~43_combout\) # (\C[29]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[29]~input_o\,
	datab => \OPRND_2[29]~input_o\,
	datac => \C[29]~43_combout\,
	datad => \C[29]~42_combout\,
	combout => \RESULT~29_combout\);

-- Location: IOIBUF_X0_Y40_N22
\OPRND_2[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(30),
	o => \OPRND_2[30]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\OPRND_1[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(30),
	o => \OPRND_1[30]~input_o\);

-- Location: LCCOMB_X1_Y46_N18
\C[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[30]~44_combout\ = (\OPRND_1[29]~input_o\ & ((\OPRND_2[29]~input_o\) # ((\C[29]~43_combout\) # (\C[29]~42_combout\)))) # (!\OPRND_1[29]~input_o\ & (\OPRND_2[29]~input_o\ & ((\C[29]~43_combout\) # (\C[29]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_1[29]~input_o\,
	datab => \OPRND_2[29]~input_o\,
	datac => \C[29]~43_combout\,
	datad => \C[29]~42_combout\,
	combout => \C[30]~44_combout\);

-- Location: LCCOMB_X1_Y46_N12
\RESULT~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~30_combout\ = \OPRND_2[30]~input_o\ $ (\OPRND_1[30]~input_o\ $ (\C[30]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[30]~input_o\,
	datab => \OPRND_1[30]~input_o\,
	datad => \C[30]~44_combout\,
	combout => \RESULT~30_combout\);

-- Location: LCCOMB_X1_Y46_N6
\C[31]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[31]~45_combout\ = (\OPRND_2[30]~input_o\ & \OPRND_1[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[30]~input_o\,
	datad => \OPRND_1[30]~input_o\,
	combout => \C[31]~45_combout\);

-- Location: IOIBUF_X0_Y43_N22
\OPRND_1[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_1(31),
	o => \OPRND_1[31]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\OPRND_2[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPRND_2(31),
	o => \OPRND_2[31]~input_o\);

-- Location: LCCOMB_X1_Y46_N16
\C[31]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[31]~46_combout\ = (\C[30]~44_combout\ & ((\OPRND_2[30]~input_o\) # (\OPRND_1[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPRND_2[30]~input_o\,
	datab => \OPRND_1[30]~input_o\,
	datad => \C[30]~44_combout\,
	combout => \C[31]~46_combout\);

-- Location: LCCOMB_X1_Y46_N2
\RESULT~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RESULT~31_combout\ = \OPRND_1[31]~input_o\ $ (\OPRND_2[31]~input_o\ $ (((\C[31]~45_combout\) # (\C[31]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[31]~45_combout\,
	datab => \OPRND_1[31]~input_o\,
	datac => \OPRND_2[31]~input_o\,
	datad => \C[31]~46_combout\,
	combout => \RESULT~31_combout\);

-- Location: LCCOMB_X1_Y46_N4
\C_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \C_OUT~0_combout\ = (\OPRND_1[31]~input_o\ & ((\C[31]~45_combout\) # ((\OPRND_2[31]~input_o\) # (\C[31]~46_combout\)))) # (!\OPRND_1[31]~input_o\ & (\OPRND_2[31]~input_o\ & ((\C[31]~45_combout\) # (\C[31]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[31]~45_combout\,
	datab => \OPRND_1[31]~input_o\,
	datac => \OPRND_2[31]~input_o\,
	datad => \C[31]~46_combout\,
	combout => \C_OUT~0_combout\);

ww_RESULT(0) <= \RESULT[0]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;

ww_RESULT(4) <= \RESULT[4]~output_o\;

ww_RESULT(5) <= \RESULT[5]~output_o\;

ww_RESULT(6) <= \RESULT[6]~output_o\;

ww_RESULT(7) <= \RESULT[7]~output_o\;

ww_RESULT(8) <= \RESULT[8]~output_o\;

ww_RESULT(9) <= \RESULT[9]~output_o\;

ww_RESULT(10) <= \RESULT[10]~output_o\;

ww_RESULT(11) <= \RESULT[11]~output_o\;

ww_RESULT(12) <= \RESULT[12]~output_o\;

ww_RESULT(13) <= \RESULT[13]~output_o\;

ww_RESULT(14) <= \RESULT[14]~output_o\;

ww_RESULT(15) <= \RESULT[15]~output_o\;

ww_RESULT(16) <= \RESULT[16]~output_o\;

ww_RESULT(17) <= \RESULT[17]~output_o\;

ww_RESULT(18) <= \RESULT[18]~output_o\;

ww_RESULT(19) <= \RESULT[19]~output_o\;

ww_RESULT(20) <= \RESULT[20]~output_o\;

ww_RESULT(21) <= \RESULT[21]~output_o\;

ww_RESULT(22) <= \RESULT[22]~output_o\;

ww_RESULT(23) <= \RESULT[23]~output_o\;

ww_RESULT(24) <= \RESULT[24]~output_o\;

ww_RESULT(25) <= \RESULT[25]~output_o\;

ww_RESULT(26) <= \RESULT[26]~output_o\;

ww_RESULT(27) <= \RESULT[27]~output_o\;

ww_RESULT(28) <= \RESULT[28]~output_o\;

ww_RESULT(29) <= \RESULT[29]~output_o\;

ww_RESULT(30) <= \RESULT[30]~output_o\;

ww_RESULT(31) <= \RESULT[31]~output_o\;

ww_C_OUT <= \C_OUT~output_o\;
END structure;


