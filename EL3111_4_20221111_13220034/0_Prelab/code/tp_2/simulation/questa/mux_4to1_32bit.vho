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

-- DATE "11/25/2022 14:25:37"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux_4to1_32bit IS
    PORT (
	D1 : IN std_logic_vector(31 DOWNTO 0);
	D2 : IN std_logic_vector(31 DOWNTO 0);
	D3 : IN std_logic_vector(31 DOWNTO 0);
	D4 : IN std_logic_vector(31 DOWNTO 0);
	Y : OUT std_logic_vector(31 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0)
	);
END mux_4to1_32bit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[9]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[10]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[10]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[11]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[12]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[13]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[15]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[15]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[16]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[16]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[16]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[16]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[17]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[17]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[18]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[18]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[18]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[18]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[19]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[19]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[20]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[20]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[20]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[20]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[21]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[21]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[21]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[21]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[22]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[22]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[22]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[22]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[23]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[23]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[23]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[24]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[24]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[24]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[24]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[25]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[25]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[25]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[25]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[26]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[26]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[26]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[27]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[27]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[27]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[27]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[28]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[28]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[28]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[28]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[29]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[29]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[29]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[29]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[30]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[30]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[30]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[30]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[31]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[31]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[31]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[31]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_4to1_32bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \D4[0]~input_o\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \Y[0]~0_combout\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \D4[1]~input_o\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \Y[1]~1_combout\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \D4[2]~input_o\ : std_logic;
SIGNAL \Y[2]~2_combout\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \D4[3]~input_o\ : std_logic;
SIGNAL \Y[3]~3_combout\ : std_logic;
SIGNAL \D1[4]~input_o\ : std_logic;
SIGNAL \D2[4]~input_o\ : std_logic;
SIGNAL \D4[4]~input_o\ : std_logic;
SIGNAL \D3[4]~input_o\ : std_logic;
SIGNAL \Y[4]~4_combout\ : std_logic;
SIGNAL \D1[5]~input_o\ : std_logic;
SIGNAL \D3[5]~input_o\ : std_logic;
SIGNAL \D2[5]~input_o\ : std_logic;
SIGNAL \D4[5]~input_o\ : std_logic;
SIGNAL \Y[5]~5_combout\ : std_logic;
SIGNAL \D3[6]~input_o\ : std_logic;
SIGNAL \D2[6]~input_o\ : std_logic;
SIGNAL \D1[6]~input_o\ : std_logic;
SIGNAL \D4[6]~input_o\ : std_logic;
SIGNAL \Y[6]~6_combout\ : std_logic;
SIGNAL \D1[7]~input_o\ : std_logic;
SIGNAL \D3[7]~input_o\ : std_logic;
SIGNAL \D4[7]~input_o\ : std_logic;
SIGNAL \D2[7]~input_o\ : std_logic;
SIGNAL \Y[7]~7_combout\ : std_logic;
SIGNAL \D1[8]~input_o\ : std_logic;
SIGNAL \D4[8]~input_o\ : std_logic;
SIGNAL \D2[8]~input_o\ : std_logic;
SIGNAL \D3[8]~input_o\ : std_logic;
SIGNAL \Y[8]~8_combout\ : std_logic;
SIGNAL \D3[9]~input_o\ : std_logic;
SIGNAL \D1[9]~input_o\ : std_logic;
SIGNAL \D4[9]~input_o\ : std_logic;
SIGNAL \D2[9]~input_o\ : std_logic;
SIGNAL \Y[9]~9_combout\ : std_logic;
SIGNAL \D2[10]~input_o\ : std_logic;
SIGNAL \D3[10]~input_o\ : std_logic;
SIGNAL \D1[10]~input_o\ : std_logic;
SIGNAL \D4[10]~input_o\ : std_logic;
SIGNAL \Y[10]~10_combout\ : std_logic;
SIGNAL \D3[11]~input_o\ : std_logic;
SIGNAL \D2[11]~input_o\ : std_logic;
SIGNAL \D4[11]~input_o\ : std_logic;
SIGNAL \D1[11]~input_o\ : std_logic;
SIGNAL \Y[11]~11_combout\ : std_logic;
SIGNAL \D1[12]~input_o\ : std_logic;
SIGNAL \D3[12]~input_o\ : std_logic;
SIGNAL \D4[12]~input_o\ : std_logic;
SIGNAL \D2[12]~input_o\ : std_logic;
SIGNAL \Y[12]~12_combout\ : std_logic;
SIGNAL \D4[13]~input_o\ : std_logic;
SIGNAL \D1[13]~input_o\ : std_logic;
SIGNAL \D3[13]~input_o\ : std_logic;
SIGNAL \D2[13]~input_o\ : std_logic;
SIGNAL \Y[13]~13_combout\ : std_logic;
SIGNAL \D4[14]~input_o\ : std_logic;
SIGNAL \D1[14]~input_o\ : std_logic;
SIGNAL \D2[14]~input_o\ : std_logic;
SIGNAL \D3[14]~input_o\ : std_logic;
SIGNAL \Y[14]~14_combout\ : std_logic;
SIGNAL \D1[15]~input_o\ : std_logic;
SIGNAL \D2[15]~input_o\ : std_logic;
SIGNAL \D4[15]~input_o\ : std_logic;
SIGNAL \D3[15]~input_o\ : std_logic;
SIGNAL \Y[15]~15_combout\ : std_logic;
SIGNAL \D1[16]~input_o\ : std_logic;
SIGNAL \D3[16]~input_o\ : std_logic;
SIGNAL \D4[16]~input_o\ : std_logic;
SIGNAL \D2[16]~input_o\ : std_logic;
SIGNAL \Y[16]~16_combout\ : std_logic;
SIGNAL \D3[17]~input_o\ : std_logic;
SIGNAL \D4[17]~input_o\ : std_logic;
SIGNAL \D2[17]~input_o\ : std_logic;
SIGNAL \D1[17]~input_o\ : std_logic;
SIGNAL \Y[17]~17_combout\ : std_logic;
SIGNAL \D1[18]~input_o\ : std_logic;
SIGNAL \D4[18]~input_o\ : std_logic;
SIGNAL \D2[18]~input_o\ : std_logic;
SIGNAL \D3[18]~input_o\ : std_logic;
SIGNAL \Y[18]~18_combout\ : std_logic;
SIGNAL \D1[19]~input_o\ : std_logic;
SIGNAL \D4[19]~input_o\ : std_logic;
SIGNAL \D3[19]~input_o\ : std_logic;
SIGNAL \D2[19]~input_o\ : std_logic;
SIGNAL \Y[19]~19_combout\ : std_logic;
SIGNAL \D2[20]~input_o\ : std_logic;
SIGNAL \D1[20]~input_o\ : std_logic;
SIGNAL \D3[20]~input_o\ : std_logic;
SIGNAL \D4[20]~input_o\ : std_logic;
SIGNAL \Y[20]~20_combout\ : std_logic;
SIGNAL \D2[21]~input_o\ : std_logic;
SIGNAL \D3[21]~input_o\ : std_logic;
SIGNAL \D4[21]~input_o\ : std_logic;
SIGNAL \D1[21]~input_o\ : std_logic;
SIGNAL \Y[21]~21_combout\ : std_logic;
SIGNAL \D2[22]~input_o\ : std_logic;
SIGNAL \D1[22]~input_o\ : std_logic;
SIGNAL \D3[22]~input_o\ : std_logic;
SIGNAL \D4[22]~input_o\ : std_logic;
SIGNAL \Y[22]~22_combout\ : std_logic;
SIGNAL \D3[23]~input_o\ : std_logic;
SIGNAL \D2[23]~input_o\ : std_logic;
SIGNAL \D1[23]~input_o\ : std_logic;
SIGNAL \D4[23]~input_o\ : std_logic;
SIGNAL \Y[23]~23_combout\ : std_logic;
SIGNAL \D4[24]~input_o\ : std_logic;
SIGNAL \D1[24]~input_o\ : std_logic;
SIGNAL \D3[24]~input_o\ : std_logic;
SIGNAL \D2[24]~input_o\ : std_logic;
SIGNAL \Y[24]~24_combout\ : std_logic;
SIGNAL \D1[25]~input_o\ : std_logic;
SIGNAL \D4[25]~input_o\ : std_logic;
SIGNAL \D3[25]~input_o\ : std_logic;
SIGNAL \D2[25]~input_o\ : std_logic;
SIGNAL \Y[25]~25_combout\ : std_logic;
SIGNAL \D1[26]~input_o\ : std_logic;
SIGNAL \D4[26]~input_o\ : std_logic;
SIGNAL \D2[26]~input_o\ : std_logic;
SIGNAL \D3[26]~input_o\ : std_logic;
SIGNAL \Y[26]~26_combout\ : std_logic;
SIGNAL \D4[27]~input_o\ : std_logic;
SIGNAL \D2[27]~input_o\ : std_logic;
SIGNAL \D1[27]~input_o\ : std_logic;
SIGNAL \D3[27]~input_o\ : std_logic;
SIGNAL \Y[27]~27_combout\ : std_logic;
SIGNAL \D2[28]~input_o\ : std_logic;
SIGNAL \D4[28]~input_o\ : std_logic;
SIGNAL \D1[28]~input_o\ : std_logic;
SIGNAL \D3[28]~input_o\ : std_logic;
SIGNAL \Y[28]~28_combout\ : std_logic;
SIGNAL \D4[29]~input_o\ : std_logic;
SIGNAL \D1[29]~input_o\ : std_logic;
SIGNAL \D3[29]~input_o\ : std_logic;
SIGNAL \D2[29]~input_o\ : std_logic;
SIGNAL \Y[29]~29_combout\ : std_logic;
SIGNAL \D3[30]~input_o\ : std_logic;
SIGNAL \D1[30]~input_o\ : std_logic;
SIGNAL \D4[30]~input_o\ : std_logic;
SIGNAL \D2[30]~input_o\ : std_logic;
SIGNAL \Y[30]~30_combout\ : std_logic;
SIGNAL \D4[31]~input_o\ : std_logic;
SIGNAL \D3[31]~input_o\ : std_logic;
SIGNAL \D1[31]~input_o\ : std_logic;
SIGNAL \D2[31]~input_o\ : std_logic;
SIGNAL \Y[31]~31_combout\ : std_logic;
SIGNAL \ALT_INV_D1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;

BEGIN

ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D4 <= D4;
Y <= ww_Y;
ww_S <= S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D1[31]~input_o\ <= NOT \D1[31]~input_o\;
\ALT_INV_D2[31]~input_o\ <= NOT \D2[31]~input_o\;
\ALT_INV_D4[31]~input_o\ <= NOT \D4[31]~input_o\;
\ALT_INV_D3[31]~input_o\ <= NOT \D3[31]~input_o\;
\ALT_INV_D1[30]~input_o\ <= NOT \D1[30]~input_o\;
\ALT_INV_D2[30]~input_o\ <= NOT \D2[30]~input_o\;
\ALT_INV_D4[30]~input_o\ <= NOT \D4[30]~input_o\;
\ALT_INV_D3[30]~input_o\ <= NOT \D3[30]~input_o\;
\ALT_INV_D1[29]~input_o\ <= NOT \D1[29]~input_o\;
\ALT_INV_D2[29]~input_o\ <= NOT \D2[29]~input_o\;
\ALT_INV_D4[29]~input_o\ <= NOT \D4[29]~input_o\;
\ALT_INV_D3[29]~input_o\ <= NOT \D3[29]~input_o\;
\ALT_INV_D1[28]~input_o\ <= NOT \D1[28]~input_o\;
\ALT_INV_D2[28]~input_o\ <= NOT \D2[28]~input_o\;
\ALT_INV_D4[28]~input_o\ <= NOT \D4[28]~input_o\;
\ALT_INV_D3[28]~input_o\ <= NOT \D3[28]~input_o\;
\ALT_INV_D1[27]~input_o\ <= NOT \D1[27]~input_o\;
\ALT_INV_D2[27]~input_o\ <= NOT \D2[27]~input_o\;
\ALT_INV_D4[27]~input_o\ <= NOT \D4[27]~input_o\;
\ALT_INV_D3[27]~input_o\ <= NOT \D3[27]~input_o\;
\ALT_INV_D1[26]~input_o\ <= NOT \D1[26]~input_o\;
\ALT_INV_D2[26]~input_o\ <= NOT \D2[26]~input_o\;
\ALT_INV_D4[26]~input_o\ <= NOT \D4[26]~input_o\;
\ALT_INV_D3[26]~input_o\ <= NOT \D3[26]~input_o\;
\ALT_INV_D1[25]~input_o\ <= NOT \D1[25]~input_o\;
\ALT_INV_D2[25]~input_o\ <= NOT \D2[25]~input_o\;
\ALT_INV_D4[25]~input_o\ <= NOT \D4[25]~input_o\;
\ALT_INV_D3[25]~input_o\ <= NOT \D3[25]~input_o\;
\ALT_INV_D1[24]~input_o\ <= NOT \D1[24]~input_o\;
\ALT_INV_D2[24]~input_o\ <= NOT \D2[24]~input_o\;
\ALT_INV_D4[24]~input_o\ <= NOT \D4[24]~input_o\;
\ALT_INV_D3[24]~input_o\ <= NOT \D3[24]~input_o\;
\ALT_INV_D1[23]~input_o\ <= NOT \D1[23]~input_o\;
\ALT_INV_D2[23]~input_o\ <= NOT \D2[23]~input_o\;
\ALT_INV_D4[23]~input_o\ <= NOT \D4[23]~input_o\;
\ALT_INV_D3[23]~input_o\ <= NOT \D3[23]~input_o\;
\ALT_INV_D1[22]~input_o\ <= NOT \D1[22]~input_o\;
\ALT_INV_D2[22]~input_o\ <= NOT \D2[22]~input_o\;
\ALT_INV_D4[22]~input_o\ <= NOT \D4[22]~input_o\;
\ALT_INV_D3[22]~input_o\ <= NOT \D3[22]~input_o\;
\ALT_INV_D1[21]~input_o\ <= NOT \D1[21]~input_o\;
\ALT_INV_D2[21]~input_o\ <= NOT \D2[21]~input_o\;
\ALT_INV_D4[21]~input_o\ <= NOT \D4[21]~input_o\;
\ALT_INV_D3[21]~input_o\ <= NOT \D3[21]~input_o\;
\ALT_INV_D1[20]~input_o\ <= NOT \D1[20]~input_o\;
\ALT_INV_D2[20]~input_o\ <= NOT \D2[20]~input_o\;
\ALT_INV_D4[20]~input_o\ <= NOT \D4[20]~input_o\;
\ALT_INV_D3[20]~input_o\ <= NOT \D3[20]~input_o\;
\ALT_INV_D1[19]~input_o\ <= NOT \D1[19]~input_o\;
\ALT_INV_D2[19]~input_o\ <= NOT \D2[19]~input_o\;
\ALT_INV_D4[19]~input_o\ <= NOT \D4[19]~input_o\;
\ALT_INV_D3[19]~input_o\ <= NOT \D3[19]~input_o\;
\ALT_INV_D1[18]~input_o\ <= NOT \D1[18]~input_o\;
\ALT_INV_D2[18]~input_o\ <= NOT \D2[18]~input_o\;
\ALT_INV_D4[18]~input_o\ <= NOT \D4[18]~input_o\;
\ALT_INV_D3[18]~input_o\ <= NOT \D3[18]~input_o\;
\ALT_INV_D1[17]~input_o\ <= NOT \D1[17]~input_o\;
\ALT_INV_D2[17]~input_o\ <= NOT \D2[17]~input_o\;
\ALT_INV_D4[17]~input_o\ <= NOT \D4[17]~input_o\;
\ALT_INV_D3[17]~input_o\ <= NOT \D3[17]~input_o\;
\ALT_INV_D1[16]~input_o\ <= NOT \D1[16]~input_o\;
\ALT_INV_D2[16]~input_o\ <= NOT \D2[16]~input_o\;
\ALT_INV_D4[16]~input_o\ <= NOT \D4[16]~input_o\;
\ALT_INV_D3[16]~input_o\ <= NOT \D3[16]~input_o\;
\ALT_INV_D1[15]~input_o\ <= NOT \D1[15]~input_o\;
\ALT_INV_D2[15]~input_o\ <= NOT \D2[15]~input_o\;
\ALT_INV_D4[15]~input_o\ <= NOT \D4[15]~input_o\;
\ALT_INV_D3[15]~input_o\ <= NOT \D3[15]~input_o\;
\ALT_INV_D1[14]~input_o\ <= NOT \D1[14]~input_o\;
\ALT_INV_D2[14]~input_o\ <= NOT \D2[14]~input_o\;
\ALT_INV_D4[14]~input_o\ <= NOT \D4[14]~input_o\;
\ALT_INV_D3[14]~input_o\ <= NOT \D3[14]~input_o\;
\ALT_INV_D1[13]~input_o\ <= NOT \D1[13]~input_o\;
\ALT_INV_D2[13]~input_o\ <= NOT \D2[13]~input_o\;
\ALT_INV_D4[13]~input_o\ <= NOT \D4[13]~input_o\;
\ALT_INV_D3[13]~input_o\ <= NOT \D3[13]~input_o\;
\ALT_INV_D1[12]~input_o\ <= NOT \D1[12]~input_o\;
\ALT_INV_D2[12]~input_o\ <= NOT \D2[12]~input_o\;
\ALT_INV_D4[12]~input_o\ <= NOT \D4[12]~input_o\;
\ALT_INV_D3[12]~input_o\ <= NOT \D3[12]~input_o\;
\ALT_INV_D1[11]~input_o\ <= NOT \D1[11]~input_o\;
\ALT_INV_D2[11]~input_o\ <= NOT \D2[11]~input_o\;
\ALT_INV_D4[11]~input_o\ <= NOT \D4[11]~input_o\;
\ALT_INV_D3[11]~input_o\ <= NOT \D3[11]~input_o\;
\ALT_INV_D1[10]~input_o\ <= NOT \D1[10]~input_o\;
\ALT_INV_D2[10]~input_o\ <= NOT \D2[10]~input_o\;
\ALT_INV_D4[10]~input_o\ <= NOT \D4[10]~input_o\;
\ALT_INV_D3[10]~input_o\ <= NOT \D3[10]~input_o\;
\ALT_INV_D1[9]~input_o\ <= NOT \D1[9]~input_o\;
\ALT_INV_D2[9]~input_o\ <= NOT \D2[9]~input_o\;
\ALT_INV_D4[9]~input_o\ <= NOT \D4[9]~input_o\;
\ALT_INV_D3[9]~input_o\ <= NOT \D3[9]~input_o\;
\ALT_INV_D1[8]~input_o\ <= NOT \D1[8]~input_o\;
\ALT_INV_D2[8]~input_o\ <= NOT \D2[8]~input_o\;
\ALT_INV_D4[8]~input_o\ <= NOT \D4[8]~input_o\;
\ALT_INV_D3[8]~input_o\ <= NOT \D3[8]~input_o\;
\ALT_INV_D1[7]~input_o\ <= NOT \D1[7]~input_o\;
\ALT_INV_D2[7]~input_o\ <= NOT \D2[7]~input_o\;
\ALT_INV_D4[7]~input_o\ <= NOT \D4[7]~input_o\;
\ALT_INV_D3[7]~input_o\ <= NOT \D3[7]~input_o\;
\ALT_INV_D1[6]~input_o\ <= NOT \D1[6]~input_o\;
\ALT_INV_D2[6]~input_o\ <= NOT \D2[6]~input_o\;
\ALT_INV_D4[6]~input_o\ <= NOT \D4[6]~input_o\;
\ALT_INV_D3[6]~input_o\ <= NOT \D3[6]~input_o\;
\ALT_INV_D1[5]~input_o\ <= NOT \D1[5]~input_o\;
\ALT_INV_D2[5]~input_o\ <= NOT \D2[5]~input_o\;
\ALT_INV_D4[5]~input_o\ <= NOT \D4[5]~input_o\;
\ALT_INV_D3[5]~input_o\ <= NOT \D3[5]~input_o\;
\ALT_INV_D1[4]~input_o\ <= NOT \D1[4]~input_o\;
\ALT_INV_D2[4]~input_o\ <= NOT \D2[4]~input_o\;
\ALT_INV_D4[4]~input_o\ <= NOT \D4[4]~input_o\;
\ALT_INV_D3[4]~input_o\ <= NOT \D3[4]~input_o\;
\ALT_INV_D1[3]~input_o\ <= NOT \D1[3]~input_o\;
\ALT_INV_D2[3]~input_o\ <= NOT \D2[3]~input_o\;
\ALT_INV_D4[3]~input_o\ <= NOT \D4[3]~input_o\;
\ALT_INV_D3[3]~input_o\ <= NOT \D3[3]~input_o\;
\ALT_INV_D1[2]~input_o\ <= NOT \D1[2]~input_o\;
\ALT_INV_D2[2]~input_o\ <= NOT \D2[2]~input_o\;
\ALT_INV_D4[2]~input_o\ <= NOT \D4[2]~input_o\;
\ALT_INV_D3[2]~input_o\ <= NOT \D3[2]~input_o\;
\ALT_INV_D1[1]~input_o\ <= NOT \D1[1]~input_o\;
\ALT_INV_D2[1]~input_o\ <= NOT \D2[1]~input_o\;
\ALT_INV_D4[1]~input_o\ <= NOT \D4[1]~input_o\;
\ALT_INV_D3[1]~input_o\ <= NOT \D3[1]~input_o\;
\ALT_INV_D1[0]~input_o\ <= NOT \D1[0]~input_o\;
\ALT_INV_D2[0]~input_o\ <= NOT \D2[0]~input_o\;
\ALT_INV_D4[0]~input_o\ <= NOT \D4[0]~input_o\;
\ALT_INV_D3[0]~input_o\ <= NOT \D3[0]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X36_Y0_N19
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X4_Y0_N36
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X32_Y81_N19
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X89_Y6_N39
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X66_Y0_N59
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X36_Y0_N2
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOOBUF_X72_Y0_N2
\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_Y(7));

-- Location: IOOBUF_X52_Y81_N19
\Y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_Y(8));

-- Location: IOOBUF_X40_Y81_N53
\Y[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_Y(9));

-- Location: IOOBUF_X34_Y0_N59
\Y[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_Y(10));

-- Location: IOOBUF_X30_Y0_N19
\Y[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_Y(11));

-- Location: IOOBUF_X52_Y0_N19
\Y[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_Y(12));

-- Location: IOOBUF_X89_Y36_N56
\Y[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_Y(13));

-- Location: IOOBUF_X30_Y81_N53
\Y[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_Y(14));

-- Location: IOOBUF_X89_Y37_N39
\Y[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_Y(15));

-- Location: IOOBUF_X2_Y0_N93
\Y[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_Y(16));

-- Location: IOOBUF_X58_Y0_N42
\Y[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_Y(17));

-- Location: IOOBUF_X58_Y0_N59
\Y[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_Y(18));

-- Location: IOOBUF_X52_Y0_N2
\Y[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_Y(19));

-- Location: IOOBUF_X70_Y0_N19
\Y[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_Y(20));

-- Location: IOOBUF_X4_Y0_N53
\Y[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_Y(21));

-- Location: IOOBUF_X89_Y4_N62
\Y[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_Y(22));

-- Location: IOOBUF_X60_Y0_N36
\Y[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_Y(23));

-- Location: IOOBUF_X50_Y81_N76
\Y[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_Y(24));

-- Location: IOOBUF_X89_Y6_N56
\Y[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_Y(25));

-- Location: IOOBUF_X34_Y81_N76
\Y[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_Y(26));

-- Location: IOOBUF_X38_Y0_N36
\Y[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_Y(27));

-- Location: IOOBUF_X6_Y0_N2
\Y[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_Y(28));

-- Location: IOOBUF_X68_Y0_N19
\Y[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_Y(29));

-- Location: IOOBUF_X89_Y37_N56
\Y[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_Y(30));

-- Location: IOOBUF_X89_Y37_N5
\Y[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_Y(31));

-- Location: IOIBUF_X30_Y0_N1
\D1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\D4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(0),
	o => \D4[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\D3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\D2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: IOIBUF_X74_Y81_N58
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: LABCELL_X24_Y1_N0
\Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[0]~0_combout\ = ( \D2[0]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[0]~input_o\))) # (\S[0]~input_o\ & (\D4[0]~input_o\)) ) ) ) # ( !\D2[0]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[0]~input_o\))) # (\S[0]~input_o\ & 
-- (\D4[0]~input_o\)) ) ) ) # ( \D2[0]~input_o\ & ( !\S[1]~input_o\ & ( (\S[0]~input_o\) # (\D1[0]~input_o\) ) ) ) # ( !\D2[0]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[0]~input_o\ & !\S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[0]~input_o\,
	datab => \ALT_INV_D4[0]~input_o\,
	datac => \ALT_INV_D3[0]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D2[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[0]~0_combout\);

-- Location: IOIBUF_X50_Y81_N92
\D3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\D4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(1),
	o => \D4[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\D2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\D1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: LABCELL_X40_Y1_N33
\Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[1]~1_combout\ = ( \D1[1]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[1]~input_o\)) # (\S[0]~input_o\ & ((\D4[1]~input_o\))) ) ) ) # ( !\D1[1]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[1]~input_o\)) # (\S[0]~input_o\ & 
-- ((\D4[1]~input_o\))) ) ) ) # ( \D1[1]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D2[1]~input_o\) ) ) ) # ( !\D1[1]~input_o\ & ( !\S[1]~input_o\ & ( (\D2[1]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[1]~input_o\,
	datab => \ALT_INV_D4[1]~input_o\,
	datac => \ALT_INV_D2[1]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D1[1]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[1]~1_combout\);

-- Location: IOIBUF_X30_Y0_N35
\D2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\D3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\D1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\D4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(2),
	o => \D4[2]~input_o\);

-- Location: LABCELL_X24_Y1_N36
\Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[2]~2_combout\ = ( \D4[2]~input_o\ & ( \S[1]~input_o\ & ( (\S[0]~input_o\) # (\D3[2]~input_o\) ) ) ) # ( !\D4[2]~input_o\ & ( \S[1]~input_o\ & ( (\D3[2]~input_o\ & !\S[0]~input_o\) ) ) ) # ( \D4[2]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & 
-- ((\D1[2]~input_o\))) # (\S[0]~input_o\ & (\D2[2]~input_o\)) ) ) ) # ( !\D4[2]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D1[2]~input_o\))) # (\S[0]~input_o\ & (\D2[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[2]~input_o\,
	datab => \ALT_INV_D3[2]~input_o\,
	datac => \ALT_INV_D1[2]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D4[2]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[2]~2_combout\);

-- Location: IOIBUF_X40_Y81_N35
\D1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\D3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\D2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\D4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(3),
	o => \D4[3]~input_o\);

-- Location: LABCELL_X37_Y79_N30
\Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[3]~3_combout\ = ( \D4[3]~input_o\ & ( \S[1]~input_o\ & ( (\S[0]~input_o\) # (\D3[3]~input_o\) ) ) ) # ( !\D4[3]~input_o\ & ( \S[1]~input_o\ & ( (\D3[3]~input_o\ & !\S[0]~input_o\) ) ) ) # ( \D4[3]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & 
-- (\D1[3]~input_o\)) # (\S[0]~input_o\ & ((\D2[3]~input_o\))) ) ) ) # ( !\D4[3]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D1[3]~input_o\)) # (\S[0]~input_o\ & ((\D2[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[3]~input_o\,
	datab => \ALT_INV_D3[3]~input_o\,
	datac => \ALT_INV_D2[3]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D4[3]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[3]~3_combout\);

-- Location: IOIBUF_X89_Y8_N21
\D1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(4),
	o => \D1[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\D2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(4),
	o => \D2[4]~input_o\);

-- Location: IOIBUF_X76_Y81_N18
\D4[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(4),
	o => \D4[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\D3[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(4),
	o => \D3[4]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\Y[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[4]~4_combout\ = ( \D4[4]~input_o\ & ( \D3[4]~input_o\ & ( ((!\S[0]~input_o\ & (\D1[4]~input_o\)) # (\S[0]~input_o\ & ((\D2[4]~input_o\)))) # (\S[1]~input_o\) ) ) ) # ( !\D4[4]~input_o\ & ( \D3[4]~input_o\ & ( (!\S[0]~input_o\ & (((\S[1]~input_o\)) # 
-- (\D1[4]~input_o\))) # (\S[0]~input_o\ & (((\D2[4]~input_o\ & !\S[1]~input_o\)))) ) ) ) # ( \D4[4]~input_o\ & ( !\D3[4]~input_o\ & ( (!\S[0]~input_o\ & (\D1[4]~input_o\ & ((!\S[1]~input_o\)))) # (\S[0]~input_o\ & (((\S[1]~input_o\) # (\D2[4]~input_o\)))) ) 
-- ) ) # ( !\D4[4]~input_o\ & ( !\D3[4]~input_o\ & ( (!\S[1]~input_o\ & ((!\S[0]~input_o\ & (\D1[4]~input_o\)) # (\S[0]~input_o\ & ((\D2[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[4]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_D2[4]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D4[4]~input_o\,
	dataf => \ALT_INV_D3[4]~input_o\,
	combout => \Y[4]~4_combout\);

-- Location: IOIBUF_X62_Y0_N1
\D1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(5),
	o => \D1[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\D3[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(5),
	o => \D3[5]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\D2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(5),
	o => \D2[5]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\D4[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(5),
	o => \D4[5]~input_o\);

-- Location: LABCELL_X63_Y1_N30
\Y[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[5]~5_combout\ = ( \D2[5]~input_o\ & ( \D4[5]~input_o\ & ( ((!\S[1]~input_o\ & (\D1[5]~input_o\)) # (\S[1]~input_o\ & ((\D3[5]~input_o\)))) # (\S[0]~input_o\) ) ) ) # ( !\D2[5]~input_o\ & ( \D4[5]~input_o\ & ( (!\S[1]~input_o\ & (\D1[5]~input_o\ & 
-- ((!\S[0]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\) # (\D3[5]~input_o\)))) ) ) ) # ( \D2[5]~input_o\ & ( !\D4[5]~input_o\ & ( (!\S[1]~input_o\ & (((\S[0]~input_o\)) # (\D1[5]~input_o\))) # (\S[1]~input_o\ & (((\D3[5]~input_o\ & 
-- !\S[0]~input_o\)))) ) ) ) # ( !\D2[5]~input_o\ & ( !\D4[5]~input_o\ & ( (!\S[0]~input_o\ & ((!\S[1]~input_o\ & (\D1[5]~input_o\)) # (\S[1]~input_o\ & ((\D3[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_D1[5]~input_o\,
	datac => \ALT_INV_D3[5]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D2[5]~input_o\,
	dataf => \ALT_INV_D4[5]~input_o\,
	combout => \Y[5]~5_combout\);

-- Location: IOIBUF_X36_Y0_N35
\D3[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(6),
	o => \D3[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\D2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(6),
	o => \D2[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\D1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(6),
	o => \D1[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\D4[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(6),
	o => \D4[6]~input_o\);

-- Location: MLABCELL_X34_Y1_N0
\Y[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[6]~6_combout\ = ( \S[0]~input_o\ & ( \S[1]~input_o\ & ( \D4[6]~input_o\ ) ) ) # ( !\S[0]~input_o\ & ( \S[1]~input_o\ & ( \D3[6]~input_o\ ) ) ) # ( \S[0]~input_o\ & ( !\S[1]~input_o\ & ( \D2[6]~input_o\ ) ) ) # ( !\S[0]~input_o\ & ( !\S[1]~input_o\ & ( 
-- \D1[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[6]~input_o\,
	datab => \ALT_INV_D2[6]~input_o\,
	datac => \ALT_INV_D1[6]~input_o\,
	datad => \ALT_INV_D4[6]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[6]~6_combout\);

-- Location: IOIBUF_X72_Y0_N35
\D1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(7),
	o => \D1[7]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\D3[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(7),
	o => \D3[7]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\D4[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(7),
	o => \D4[7]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\D2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(7),
	o => \D2[7]~input_o\);

-- Location: LABCELL_X70_Y1_N30
\Y[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[7]~7_combout\ = ( \D2[7]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[7]~input_o\)) # (\S[0]~input_o\ & ((\D4[7]~input_o\))) ) ) ) # ( !\D2[7]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[7]~input_o\)) # (\S[0]~input_o\ & 
-- ((\D4[7]~input_o\))) ) ) ) # ( \D2[7]~input_o\ & ( !\S[1]~input_o\ & ( (\S[0]~input_o\) # (\D1[7]~input_o\) ) ) ) # ( !\D2[7]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[7]~input_o\ & !\S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[7]~input_o\,
	datab => \ALT_INV_D3[7]~input_o\,
	datac => \ALT_INV_D4[7]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D2[7]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[7]~7_combout\);

-- Location: IOIBUF_X52_Y81_N52
\D1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(8),
	o => \D1[8]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\D4[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(8),
	o => \D4[8]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\D2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(8),
	o => \D2[8]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\D3[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(8),
	o => \D3[8]~input_o\);

-- Location: LABCELL_X37_Y79_N6
\Y[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[8]~8_combout\ = ( \D3[8]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D4[8]~input_o\) ) ) ) # ( !\D3[8]~input_o\ & ( \S[1]~input_o\ & ( (\D4[8]~input_o\ & \S[0]~input_o\) ) ) ) # ( \D3[8]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & 
-- (\D1[8]~input_o\)) # (\S[0]~input_o\ & ((\D2[8]~input_o\))) ) ) ) # ( !\D3[8]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D1[8]~input_o\)) # (\S[0]~input_o\ & ((\D2[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[8]~input_o\,
	datab => \ALT_INV_D4[8]~input_o\,
	datac => \ALT_INV_D2[8]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D3[8]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[8]~8_combout\);

-- Location: IOIBUF_X38_Y81_N1
\D3[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(9),
	o => \D3[9]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\D1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(9),
	o => \D1[9]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\D4[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(9),
	o => \D4[9]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\D2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(9),
	o => \D2[9]~input_o\);

-- Location: LABCELL_X37_Y79_N42
\Y[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[9]~9_combout\ = ( \D2[9]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[9]~input_o\)) # (\S[0]~input_o\ & ((\D4[9]~input_o\))) ) ) ) # ( !\D2[9]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[9]~input_o\)) # (\S[0]~input_o\ & 
-- ((\D4[9]~input_o\))) ) ) ) # ( \D2[9]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[9]~input_o\) # (\S[0]~input_o\) ) ) ) # ( !\D2[9]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & \D1[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[9]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_D1[9]~input_o\,
	datad => \ALT_INV_D4[9]~input_o\,
	datae => \ALT_INV_D2[9]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[9]~9_combout\);

-- Location: IOIBUF_X34_Y0_N75
\D2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(10),
	o => \D2[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\D3[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(10),
	o => \D3[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\D1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(10),
	o => \D1[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\D4[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(10),
	o => \D4[10]~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\Y[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[10]~10_combout\ = ( \S[0]~input_o\ & ( \S[1]~input_o\ & ( \D4[10]~input_o\ ) ) ) # ( !\S[0]~input_o\ & ( \S[1]~input_o\ & ( \D3[10]~input_o\ ) ) ) # ( \S[0]~input_o\ & ( !\S[1]~input_o\ & ( \D2[10]~input_o\ ) ) ) # ( !\S[0]~input_o\ & ( !\S[1]~input_o\ 
-- & ( \D1[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[10]~input_o\,
	datab => \ALT_INV_D3[10]~input_o\,
	datac => \ALT_INV_D1[10]~input_o\,
	datad => \ALT_INV_D4[10]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[10]~10_combout\);

-- Location: IOIBUF_X8_Y0_N35
\D3[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(11),
	o => \D3[11]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\D2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(11),
	o => \D2[11]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\D4[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(11),
	o => \D4[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\D1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(11),
	o => \D1[11]~input_o\);

-- Location: LABCELL_X24_Y1_N42
\Y[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[11]~11_combout\ = ( \D1[11]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[11]~input_o\)) # (\S[0]~input_o\ & ((\D4[11]~input_o\))) ) ) ) # ( !\D1[11]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[11]~input_o\)) # (\S[0]~input_o\ & 
-- ((\D4[11]~input_o\))) ) ) ) # ( \D1[11]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D2[11]~input_o\) ) ) ) # ( !\D1[11]~input_o\ & ( !\S[1]~input_o\ & ( (\D2[11]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[11]~input_o\,
	datab => \ALT_INV_D2[11]~input_o\,
	datac => \ALT_INV_D4[11]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D1[11]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[11]~11_combout\);

-- Location: IOIBUF_X56_Y0_N52
\D1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(12),
	o => \D1[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\D3[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(12),
	o => \D3[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\D4[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(12),
	o => \D4[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\D2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(12),
	o => \D2[12]~input_o\);

-- Location: LABCELL_X55_Y1_N0
\Y[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[12]~12_combout\ = ( \D2[12]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\) # (\D4[12]~input_o\) ) ) ) # ( !\D2[12]~input_o\ & ( \S[0]~input_o\ & ( (\D4[12]~input_o\ & \S[1]~input_o\) ) ) ) # ( \D2[12]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & (\D1[12]~input_o\)) # (\S[1]~input_o\ & ((\D3[12]~input_o\))) ) ) ) # ( !\D2[12]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D1[12]~input_o\)) # (\S[1]~input_o\ & ((\D3[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[12]~input_o\,
	datab => \ALT_INV_D3[12]~input_o\,
	datac => \ALT_INV_D4[12]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D2[12]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[12]~12_combout\);

-- Location: IOIBUF_X89_Y8_N38
\D4[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(13),
	o => \D4[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\D1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(13),
	o => \D1[13]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\D3[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(13),
	o => \D3[13]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\D2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(13),
	o => \D2[13]~input_o\);

-- Location: LABCELL_X88_Y8_N36
\Y[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[13]~13_combout\ = ( \D3[13]~input_o\ & ( \D2[13]~input_o\ & ( (!\S[0]~input_o\ & (((\S[1]~input_o\) # (\D1[13]~input_o\)))) # (\S[0]~input_o\ & (((!\S[1]~input_o\)) # (\D4[13]~input_o\))) ) ) ) # ( !\D3[13]~input_o\ & ( \D2[13]~input_o\ & ( 
-- (!\S[0]~input_o\ & (((\D1[13]~input_o\ & !\S[1]~input_o\)))) # (\S[0]~input_o\ & (((!\S[1]~input_o\)) # (\D4[13]~input_o\))) ) ) ) # ( \D3[13]~input_o\ & ( !\D2[13]~input_o\ & ( (!\S[0]~input_o\ & (((\S[1]~input_o\) # (\D1[13]~input_o\)))) # 
-- (\S[0]~input_o\ & (\D4[13]~input_o\ & ((\S[1]~input_o\)))) ) ) ) # ( !\D3[13]~input_o\ & ( !\D2[13]~input_o\ & ( (!\S[0]~input_o\ & (((\D1[13]~input_o\ & !\S[1]~input_o\)))) # (\S[0]~input_o\ & (\D4[13]~input_o\ & ((\S[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D4[13]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_D1[13]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D3[13]~input_o\,
	dataf => \ALT_INV_D2[13]~input_o\,
	combout => \Y[13]~13_combout\);

-- Location: IOIBUF_X40_Y81_N18
\D4[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(14),
	o => \D4[14]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\D1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(14),
	o => \D1[14]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\D2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(14),
	o => \D2[14]~input_o\);

-- Location: IOIBUF_X34_Y81_N58
\D3[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(14),
	o => \D3[14]~input_o\);

-- Location: LABCELL_X37_Y79_N18
\Y[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[14]~14_combout\ = ( \D3[14]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D4[14]~input_o\) ) ) ) # ( !\D3[14]~input_o\ & ( \S[1]~input_o\ & ( (\D4[14]~input_o\ & \S[0]~input_o\) ) ) ) # ( \D3[14]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & (\D1[14]~input_o\)) # (\S[0]~input_o\ & ((\D2[14]~input_o\))) ) ) ) # ( !\D3[14]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D1[14]~input_o\)) # (\S[0]~input_o\ & ((\D2[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D4[14]~input_o\,
	datab => \ALT_INV_D1[14]~input_o\,
	datac => \ALT_INV_D2[14]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D3[14]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[14]~14_combout\);

-- Location: IOIBUF_X89_Y36_N21
\D1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(15),
	o => \D1[15]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\D2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(15),
	o => \D2[15]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\D4[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(15),
	o => \D4[15]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\D3[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(15),
	o => \D3[15]~input_o\);

-- Location: LABCELL_X88_Y35_N0
\Y[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[15]~15_combout\ = ( \D4[15]~input_o\ & ( \D3[15]~input_o\ & ( ((!\S[0]~input_o\ & (\D1[15]~input_o\)) # (\S[0]~input_o\ & ((\D2[15]~input_o\)))) # (\S[1]~input_o\) ) ) ) # ( !\D4[15]~input_o\ & ( \D3[15]~input_o\ & ( (!\S[0]~input_o\ & 
-- (((\S[1]~input_o\)) # (\D1[15]~input_o\))) # (\S[0]~input_o\ & (((\D2[15]~input_o\ & !\S[1]~input_o\)))) ) ) ) # ( \D4[15]~input_o\ & ( !\D3[15]~input_o\ & ( (!\S[0]~input_o\ & (\D1[15]~input_o\ & ((!\S[1]~input_o\)))) # (\S[0]~input_o\ & 
-- (((\S[1]~input_o\) # (\D2[15]~input_o\)))) ) ) ) # ( !\D4[15]~input_o\ & ( !\D3[15]~input_o\ & ( (!\S[1]~input_o\ & ((!\S[0]~input_o\ & (\D1[15]~input_o\)) # (\S[0]~input_o\ & ((\D2[15]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[15]~input_o\,
	datab => \ALT_INV_D2[15]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D4[15]~input_o\,
	dataf => \ALT_INV_D3[15]~input_o\,
	combout => \Y[15]~15_combout\);

-- Location: IOIBUF_X6_Y0_N35
\D1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(16),
	o => \D1[16]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\D3[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(16),
	o => \D3[16]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\D4[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(16),
	o => \D4[16]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\D2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(16),
	o => \D2[16]~input_o\);

-- Location: LABCELL_X24_Y1_N48
\Y[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[16]~16_combout\ = ( \D2[16]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[16]~input_o\)) # (\S[0]~input_o\ & ((\D4[16]~input_o\))) ) ) ) # ( !\D2[16]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[16]~input_o\)) # (\S[0]~input_o\ & 
-- ((\D4[16]~input_o\))) ) ) ) # ( \D2[16]~input_o\ & ( !\S[1]~input_o\ & ( (\S[0]~input_o\) # (\D1[16]~input_o\) ) ) ) # ( !\D2[16]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[16]~input_o\ & !\S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[16]~input_o\,
	datab => \ALT_INV_D3[16]~input_o\,
	datac => \ALT_INV_D4[16]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D2[16]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[16]~16_combout\);

-- Location: IOIBUF_X54_Y0_N35
\D3[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(17),
	o => \D3[17]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\D4[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(17),
	o => \D4[17]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\D2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(17),
	o => \D2[17]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\D1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(17),
	o => \D1[17]~input_o\);

-- Location: LABCELL_X55_Y1_N9
\Y[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[17]~17_combout\ = ( \D1[17]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[17]~input_o\)) # (\S[0]~input_o\ & ((\D4[17]~input_o\))) ) ) ) # ( !\D1[17]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D3[17]~input_o\)) # (\S[0]~input_o\ & 
-- ((\D4[17]~input_o\))) ) ) ) # ( \D1[17]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D2[17]~input_o\) ) ) ) # ( !\D1[17]~input_o\ & ( !\S[1]~input_o\ & ( (\D2[17]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[17]~input_o\,
	datab => \ALT_INV_D4[17]~input_o\,
	datac => \ALT_INV_D2[17]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D1[17]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[17]~17_combout\);

-- Location: IOIBUF_X64_Y81_N35
\D1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(18),
	o => \D1[18]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\D4[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(18),
	o => \D4[18]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\D2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(18),
	o => \D2[18]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\D3[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(18),
	o => \D3[18]~input_o\);

-- Location: LABCELL_X63_Y1_N6
\Y[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[18]~18_combout\ = ( \D3[18]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D4[18]~input_o\) ) ) ) # ( !\D3[18]~input_o\ & ( \S[1]~input_o\ & ( (\D4[18]~input_o\ & \S[0]~input_o\) ) ) ) # ( \D3[18]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & (\D1[18]~input_o\)) # (\S[0]~input_o\ & ((\D2[18]~input_o\))) ) ) ) # ( !\D3[18]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D1[18]~input_o\)) # (\S[0]~input_o\ & ((\D2[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[18]~input_o\,
	datab => \ALT_INV_D4[18]~input_o\,
	datac => \ALT_INV_D2[18]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D3[18]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[18]~18_combout\);

-- Location: IOIBUF_X52_Y0_N35
\D1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(19),
	o => \D1[19]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\D4[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(19),
	o => \D4[19]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\D3[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(19),
	o => \D3[19]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\D2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(19),
	o => \D2[19]~input_o\);

-- Location: LABCELL_X55_Y1_N45
\Y[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[19]~19_combout\ = ( \S[1]~input_o\ & ( \S[0]~input_o\ & ( \D4[19]~input_o\ ) ) ) # ( !\S[1]~input_o\ & ( \S[0]~input_o\ & ( \D2[19]~input_o\ ) ) ) # ( \S[1]~input_o\ & ( !\S[0]~input_o\ & ( \D3[19]~input_o\ ) ) ) # ( !\S[1]~input_o\ & ( !\S[0]~input_o\ 
-- & ( \D1[19]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[19]~input_o\,
	datab => \ALT_INV_D4[19]~input_o\,
	datac => \ALT_INV_D3[19]~input_o\,
	datad => \ALT_INV_D2[19]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[19]~19_combout\);

-- Location: IOIBUF_X72_Y0_N52
\D2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(20),
	o => \D2[20]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\D1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(20),
	o => \D1[20]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\D3[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(20),
	o => \D3[20]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\D4[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(20),
	o => \D4[20]~input_o\);

-- Location: LABCELL_X70_Y1_N36
\Y[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[20]~20_combout\ = ( \D4[20]~input_o\ & ( \S[1]~input_o\ & ( (\S[0]~input_o\) # (\D3[20]~input_o\) ) ) ) # ( !\D4[20]~input_o\ & ( \S[1]~input_o\ & ( (\D3[20]~input_o\ & !\S[0]~input_o\) ) ) ) # ( \D4[20]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & ((\D1[20]~input_o\))) # (\S[0]~input_o\ & (\D2[20]~input_o\)) ) ) ) # ( !\D4[20]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D1[20]~input_o\))) # (\S[0]~input_o\ & (\D2[20]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[20]~input_o\,
	datab => \ALT_INV_D1[20]~input_o\,
	datac => \ALT_INV_D3[20]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D4[20]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[20]~20_combout\);

-- Location: IOIBUF_X2_Y0_N58
\D2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(21),
	o => \D2[21]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\D3[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(21),
	o => \D3[21]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\D4[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(21),
	o => \D4[21]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\D1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(21),
	o => \D1[21]~input_o\);

-- Location: LABCELL_X24_Y1_N24
\Y[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[21]~21_combout\ = ( \D1[21]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D2[21]~input_o\)) # (\S[1]~input_o\ & ((\D4[21]~input_o\))) ) ) ) # ( !\D1[21]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D2[21]~input_o\)) # (\S[1]~input_o\ & 
-- ((\D4[21]~input_o\))) ) ) ) # ( \D1[21]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\) # (\D3[21]~input_o\) ) ) ) # ( !\D1[21]~input_o\ & ( !\S[0]~input_o\ & ( (\S[1]~input_o\ & \D3[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_D2[21]~input_o\,
	datac => \ALT_INV_D3[21]~input_o\,
	datad => \ALT_INV_D4[21]~input_o\,
	datae => \ALT_INV_D1[21]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[21]~21_combout\);

-- Location: IOIBUF_X89_Y9_N38
\D2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(22),
	o => \D2[22]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\D1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(22),
	o => \D1[22]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\D3[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(22),
	o => \D3[22]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\D4[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(22),
	o => \D4[22]~input_o\);

-- Location: LABCELL_X88_Y8_N12
\Y[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[22]~22_combout\ = ( \D4[22]~input_o\ & ( \S[0]~input_o\ & ( (\S[1]~input_o\) # (\D2[22]~input_o\) ) ) ) # ( !\D4[22]~input_o\ & ( \S[0]~input_o\ & ( (\D2[22]~input_o\ & !\S[1]~input_o\) ) ) ) # ( \D4[22]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & (\D1[22]~input_o\)) # (\S[1]~input_o\ & ((\D3[22]~input_o\))) ) ) ) # ( !\D4[22]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D1[22]~input_o\)) # (\S[1]~input_o\ & ((\D3[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[22]~input_o\,
	datab => \ALT_INV_D1[22]~input_o\,
	datac => \ALT_INV_D3[22]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D4[22]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[22]~22_combout\);

-- Location: IOIBUF_X60_Y0_N52
\D3[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(23),
	o => \D3[23]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\D2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(23),
	o => \D2[23]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\D1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(23),
	o => \D1[23]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\D4[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(23),
	o => \D4[23]~input_o\);

-- Location: LABCELL_X63_Y1_N12
\Y[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[23]~23_combout\ = ( \D4[23]~input_o\ & ( \S[1]~input_o\ & ( (\D3[23]~input_o\) # (\S[0]~input_o\) ) ) ) # ( !\D4[23]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & \D3[23]~input_o\) ) ) ) # ( \D4[23]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & ((\D1[23]~input_o\))) # (\S[0]~input_o\ & (\D2[23]~input_o\)) ) ) ) # ( !\D4[23]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D1[23]~input_o\))) # (\S[0]~input_o\ & (\D2[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_D3[23]~input_o\,
	datac => \ALT_INV_D2[23]~input_o\,
	datad => \ALT_INV_D1[23]~input_o\,
	datae => \ALT_INV_D4[23]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[23]~23_combout\);

-- Location: IOIBUF_X40_Y0_N35
\D4[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(24),
	o => \D4[24]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\D1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(24),
	o => \D1[24]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\D3[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(24),
	o => \D3[24]~input_o\);

-- Location: IOIBUF_X50_Y81_N41
\D2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(24),
	o => \D2[24]~input_o\);

-- Location: LABCELL_X40_Y1_N36
\Y[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[24]~24_combout\ = ( \D2[24]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[24]~input_o\))) # (\S[0]~input_o\ & (\D4[24]~input_o\)) ) ) ) # ( !\D2[24]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[24]~input_o\))) # (\S[0]~input_o\ & 
-- (\D4[24]~input_o\)) ) ) ) # ( \D2[24]~input_o\ & ( !\S[1]~input_o\ & ( (\S[0]~input_o\) # (\D1[24]~input_o\) ) ) ) # ( !\D2[24]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[24]~input_o\ & !\S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D4[24]~input_o\,
	datab => \ALT_INV_D1[24]~input_o\,
	datac => \ALT_INV_D3[24]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D2[24]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[24]~24_combout\);

-- Location: IOIBUF_X89_Y4_N78
\D1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(25),
	o => \D1[25]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\D4[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(25),
	o => \D4[25]~input_o\);

-- Location: IOIBUF_X88_Y81_N53
\D3[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(25),
	o => \D3[25]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\D2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(25),
	o => \D2[25]~input_o\);

-- Location: LABCELL_X88_Y8_N48
\Y[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[25]~25_combout\ = ( \D3[25]~input_o\ & ( \D2[25]~input_o\ & ( (!\S[0]~input_o\ & (((\S[1]~input_o\)) # (\D1[25]~input_o\))) # (\S[0]~input_o\ & (((!\S[1]~input_o\) # (\D4[25]~input_o\)))) ) ) ) # ( !\D3[25]~input_o\ & ( \D2[25]~input_o\ & ( 
-- (!\S[0]~input_o\ & (\D1[25]~input_o\ & ((!\S[1]~input_o\)))) # (\S[0]~input_o\ & (((!\S[1]~input_o\) # (\D4[25]~input_o\)))) ) ) ) # ( \D3[25]~input_o\ & ( !\D2[25]~input_o\ & ( (!\S[0]~input_o\ & (((\S[1]~input_o\)) # (\D1[25]~input_o\))) # 
-- (\S[0]~input_o\ & (((\D4[25]~input_o\ & \S[1]~input_o\)))) ) ) ) # ( !\D3[25]~input_o\ & ( !\D2[25]~input_o\ & ( (!\S[0]~input_o\ & (\D1[25]~input_o\ & ((!\S[1]~input_o\)))) # (\S[0]~input_o\ & (((\D4[25]~input_o\ & \S[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[25]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_D4[25]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D3[25]~input_o\,
	dataf => \ALT_INV_D2[25]~input_o\,
	combout => \Y[25]~25_combout\);

-- Location: IOIBUF_X50_Y81_N58
\D1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(26),
	o => \D1[26]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\D4[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(26),
	o => \D4[26]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\D2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(26),
	o => \D2[26]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\D3[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(26),
	o => \D3[26]~input_o\);

-- Location: LABCELL_X37_Y79_N54
\Y[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[26]~26_combout\ = ( \D3[26]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D4[26]~input_o\) ) ) ) # ( !\D3[26]~input_o\ & ( \S[1]~input_o\ & ( (\D4[26]~input_o\ & \S[0]~input_o\) ) ) ) # ( \D3[26]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & (\D1[26]~input_o\)) # (\S[0]~input_o\ & ((\D2[26]~input_o\))) ) ) ) # ( !\D3[26]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & (\D1[26]~input_o\)) # (\S[0]~input_o\ & ((\D2[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[26]~input_o\,
	datab => \ALT_INV_D4[26]~input_o\,
	datac => \ALT_INV_D2[26]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D3[26]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[26]~26_combout\);

-- Location: IOIBUF_X50_Y0_N58
\D4[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(27),
	o => \D4[27]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\D2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(27),
	o => \D2[27]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\D1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(27),
	o => \D1[27]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\D3[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(27),
	o => \D3[27]~input_o\);

-- Location: LABCELL_X40_Y1_N42
\Y[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[27]~27_combout\ = ( \D3[27]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D4[27]~input_o\) ) ) ) # ( !\D3[27]~input_o\ & ( \S[1]~input_o\ & ( (\D4[27]~input_o\ & \S[0]~input_o\) ) ) ) # ( \D3[27]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & ((\D1[27]~input_o\))) # (\S[0]~input_o\ & (\D2[27]~input_o\)) ) ) ) # ( !\D3[27]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D1[27]~input_o\))) # (\S[0]~input_o\ & (\D2[27]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D4[27]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_D2[27]~input_o\,
	datad => \ALT_INV_D1[27]~input_o\,
	datae => \ALT_INV_D3[27]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[27]~27_combout\);

-- Location: IOIBUF_X28_Y0_N18
\D2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(28),
	o => \D2[28]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\D4[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(28),
	o => \D4[28]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\D1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(28),
	o => \D1[28]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\D3[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(28),
	o => \D3[28]~input_o\);

-- Location: LABCELL_X24_Y1_N30
\Y[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[28]~28_combout\ = ( \D3[28]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\) # (\D4[28]~input_o\) ) ) ) # ( !\D3[28]~input_o\ & ( \S[1]~input_o\ & ( (\D4[28]~input_o\ & \S[0]~input_o\) ) ) ) # ( \D3[28]~input_o\ & ( !\S[1]~input_o\ & ( 
-- (!\S[0]~input_o\ & ((\D1[28]~input_o\))) # (\S[0]~input_o\ & (\D2[28]~input_o\)) ) ) ) # ( !\D3[28]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D1[28]~input_o\))) # (\S[0]~input_o\ & (\D2[28]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[28]~input_o\,
	datab => \ALT_INV_D4[28]~input_o\,
	datac => \ALT_INV_D1[28]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D3[28]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[28]~28_combout\);

-- Location: IOIBUF_X64_Y0_N1
\D4[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(29),
	o => \D4[29]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\D1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(29),
	o => \D1[29]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\D3[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(29),
	o => \D3[29]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\D2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(29),
	o => \D2[29]~input_o\);

-- Location: LABCELL_X63_Y1_N18
\Y[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[29]~29_combout\ = ( \D2[29]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[29]~input_o\))) # (\S[0]~input_o\ & (\D4[29]~input_o\)) ) ) ) # ( !\D2[29]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[29]~input_o\))) # (\S[0]~input_o\ & 
-- (\D4[29]~input_o\)) ) ) ) # ( \D2[29]~input_o\ & ( !\S[1]~input_o\ & ( (\S[0]~input_o\) # (\D1[29]~input_o\) ) ) ) # ( !\D2[29]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[29]~input_o\ & !\S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D4[29]~input_o\,
	datab => \ALT_INV_D1[29]~input_o\,
	datac => \ALT_INV_D3[29]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_D2[29]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[29]~29_combout\);

-- Location: IOIBUF_X89_Y35_N44
\D3[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(30),
	o => \D3[30]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\D1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(30),
	o => \D1[30]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\D4[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(30),
	o => \D4[30]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\D2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(30),
	o => \D2[30]~input_o\);

-- Location: LABCELL_X88_Y35_N6
\Y[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[30]~30_combout\ = ( \D4[30]~input_o\ & ( \D2[30]~input_o\ & ( ((!\S[1]~input_o\ & ((\D1[30]~input_o\))) # (\S[1]~input_o\ & (\D3[30]~input_o\))) # (\S[0]~input_o\) ) ) ) # ( !\D4[30]~input_o\ & ( \D2[30]~input_o\ & ( (!\S[1]~input_o\ & 
-- (((\D1[30]~input_o\) # (\S[0]~input_o\)))) # (\S[1]~input_o\ & (\D3[30]~input_o\ & (!\S[0]~input_o\))) ) ) ) # ( \D4[30]~input_o\ & ( !\D2[30]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\ & \D1[30]~input_o\)))) # (\S[1]~input_o\ & 
-- (((\S[0]~input_o\)) # (\D3[30]~input_o\))) ) ) ) # ( !\D4[30]~input_o\ & ( !\D2[30]~input_o\ & ( (!\S[0]~input_o\ & ((!\S[1]~input_o\ & ((\D1[30]~input_o\))) # (\S[1]~input_o\ & (\D3[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[30]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_D1[30]~input_o\,
	datae => \ALT_INV_D4[30]~input_o\,
	dataf => \ALT_INV_D2[30]~input_o\,
	combout => \Y[30]~30_combout\);

-- Location: IOIBUF_X89_Y38_N21
\D4[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(31),
	o => \D4[31]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\D3[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(31),
	o => \D3[31]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\D1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(31),
	o => \D1[31]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\D2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(31),
	o => \D2[31]~input_o\);

-- Location: LABCELL_X88_Y38_N33
\Y[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[31]~31_combout\ = ( \D2[31]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[31]~input_o\))) # (\S[0]~input_o\ & (\D4[31]~input_o\)) ) ) ) # ( !\D2[31]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\D3[31]~input_o\))) # (\S[0]~input_o\ & 
-- (\D4[31]~input_o\)) ) ) ) # ( \D2[31]~input_o\ & ( !\S[1]~input_o\ & ( (\D1[31]~input_o\) # (\S[0]~input_o\) ) ) ) # ( !\D2[31]~input_o\ & ( !\S[1]~input_o\ & ( (!\S[0]~input_o\ & \D1[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_D4[31]~input_o\,
	datac => \ALT_INV_D3[31]~input_o\,
	datad => \ALT_INV_D1[31]~input_o\,
	datae => \ALT_INV_D2[31]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \Y[31]~31_combout\);

-- Location: MLABCELL_X87_Y55_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


