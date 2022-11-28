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

-- DATE "11/25/2022 14:13:47"

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

ENTITY 	mux_2to1_32bit IS
    PORT (
	D1 : IN std_logic_vector(31 DOWNTO 0);
	D2 : IN std_logic_vector(31 DOWNTO 0);
	Y : BUFFER std_logic_vector(31 DOWNTO 0);
	S : IN std_logic
	);
END mux_2to1_32bit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[16]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[17]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[18]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[18]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[19]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[20]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[20]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[22]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[22]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[23]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[23]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[24]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[24]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[25]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[25]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[26]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[26]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[27]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[27]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[28]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[28]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[29]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[29]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[30]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[30]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[31]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[31]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_2to1_32bit IS
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
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_S : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \D2[4]~input_o\ : std_logic;
SIGNAL \D1[4]~input_o\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \D1[5]~input_o\ : std_logic;
SIGNAL \D2[5]~input_o\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \D2[6]~input_o\ : std_logic;
SIGNAL \D1[6]~input_o\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \D1[7]~input_o\ : std_logic;
SIGNAL \D2[7]~input_o\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \D2[8]~input_o\ : std_logic;
SIGNAL \D1[8]~input_o\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \D1[9]~input_o\ : std_logic;
SIGNAL \D2[9]~input_o\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \D2[10]~input_o\ : std_logic;
SIGNAL \D1[10]~input_o\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \D2[11]~input_o\ : std_logic;
SIGNAL \D1[11]~input_o\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \D1[12]~input_o\ : std_logic;
SIGNAL \D2[12]~input_o\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \D1[13]~input_o\ : std_logic;
SIGNAL \D2[13]~input_o\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \D2[14]~input_o\ : std_logic;
SIGNAL \D1[14]~input_o\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \D1[15]~input_o\ : std_logic;
SIGNAL \D2[15]~input_o\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \D2[16]~input_o\ : std_logic;
SIGNAL \D1[16]~input_o\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \D2[17]~input_o\ : std_logic;
SIGNAL \D1[17]~input_o\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \D1[18]~input_o\ : std_logic;
SIGNAL \D2[18]~input_o\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \D2[19]~input_o\ : std_logic;
SIGNAL \D1[19]~input_o\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \D1[20]~input_o\ : std_logic;
SIGNAL \D2[20]~input_o\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \D2[21]~input_o\ : std_logic;
SIGNAL \D1[21]~input_o\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \D2[22]~input_o\ : std_logic;
SIGNAL \D1[22]~input_o\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \D2[23]~input_o\ : std_logic;
SIGNAL \D1[23]~input_o\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \D1[24]~input_o\ : std_logic;
SIGNAL \D2[24]~input_o\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \D1[25]~input_o\ : std_logic;
SIGNAL \D2[25]~input_o\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \D2[26]~input_o\ : std_logic;
SIGNAL \D1[26]~input_o\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \D2[27]~input_o\ : std_logic;
SIGNAL \D1[27]~input_o\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \D2[28]~input_o\ : std_logic;
SIGNAL \D1[28]~input_o\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \D2[29]~input_o\ : std_logic;
SIGNAL \D1[29]~input_o\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \D2[30]~input_o\ : std_logic;
SIGNAL \D1[30]~input_o\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \D1[31]~input_o\ : std_logic;
SIGNAL \D2[31]~input_o\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \ALT_INV_D1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[6]~input_o\ : std_logic;

BEGIN

ww_D1 <= D1;
ww_D2 <= D2;
Y <= ww_Y;
ww_S <= S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D1[5]~input_o\ <= NOT \D1[5]~input_o\;
\ALT_INV_D2[5]~input_o\ <= NOT \D2[5]~input_o\;
\ALT_INV_D1[4]~input_o\ <= NOT \D1[4]~input_o\;
\ALT_INV_D2[4]~input_o\ <= NOT \D2[4]~input_o\;
\ALT_INV_D1[3]~input_o\ <= NOT \D1[3]~input_o\;
\ALT_INV_D2[3]~input_o\ <= NOT \D2[3]~input_o\;
\ALT_INV_D1[2]~input_o\ <= NOT \D1[2]~input_o\;
\ALT_INV_D2[2]~input_o\ <= NOT \D2[2]~input_o\;
\ALT_INV_D1[1]~input_o\ <= NOT \D1[1]~input_o\;
\ALT_INV_D2[1]~input_o\ <= NOT \D2[1]~input_o\;
\ALT_INV_D1[0]~input_o\ <= NOT \D1[0]~input_o\;
\ALT_INV_S~input_o\ <= NOT \S~input_o\;
\ALT_INV_D2[0]~input_o\ <= NOT \D2[0]~input_o\;
\ALT_INV_D1[31]~input_o\ <= NOT \D1[31]~input_o\;
\ALT_INV_D2[31]~input_o\ <= NOT \D2[31]~input_o\;
\ALT_INV_D1[30]~input_o\ <= NOT \D1[30]~input_o\;
\ALT_INV_D2[30]~input_o\ <= NOT \D2[30]~input_o\;
\ALT_INV_D1[29]~input_o\ <= NOT \D1[29]~input_o\;
\ALT_INV_D2[29]~input_o\ <= NOT \D2[29]~input_o\;
\ALT_INV_D1[28]~input_o\ <= NOT \D1[28]~input_o\;
\ALT_INV_D2[28]~input_o\ <= NOT \D2[28]~input_o\;
\ALT_INV_D1[27]~input_o\ <= NOT \D1[27]~input_o\;
\ALT_INV_D2[27]~input_o\ <= NOT \D2[27]~input_o\;
\ALT_INV_D1[26]~input_o\ <= NOT \D1[26]~input_o\;
\ALT_INV_D2[26]~input_o\ <= NOT \D2[26]~input_o\;
\ALT_INV_D1[25]~input_o\ <= NOT \D1[25]~input_o\;
\ALT_INV_D2[25]~input_o\ <= NOT \D2[25]~input_o\;
\ALT_INV_D1[24]~input_o\ <= NOT \D1[24]~input_o\;
\ALT_INV_D2[24]~input_o\ <= NOT \D2[24]~input_o\;
\ALT_INV_D1[23]~input_o\ <= NOT \D1[23]~input_o\;
\ALT_INV_D2[23]~input_o\ <= NOT \D2[23]~input_o\;
\ALT_INV_D1[22]~input_o\ <= NOT \D1[22]~input_o\;
\ALT_INV_D2[22]~input_o\ <= NOT \D2[22]~input_o\;
\ALT_INV_D1[21]~input_o\ <= NOT \D1[21]~input_o\;
\ALT_INV_D2[21]~input_o\ <= NOT \D2[21]~input_o\;
\ALT_INV_D1[20]~input_o\ <= NOT \D1[20]~input_o\;
\ALT_INV_D2[20]~input_o\ <= NOT \D2[20]~input_o\;
\ALT_INV_D1[19]~input_o\ <= NOT \D1[19]~input_o\;
\ALT_INV_D2[19]~input_o\ <= NOT \D2[19]~input_o\;
\ALT_INV_D1[18]~input_o\ <= NOT \D1[18]~input_o\;
\ALT_INV_D2[18]~input_o\ <= NOT \D2[18]~input_o\;
\ALT_INV_D1[17]~input_o\ <= NOT \D1[17]~input_o\;
\ALT_INV_D2[17]~input_o\ <= NOT \D2[17]~input_o\;
\ALT_INV_D1[16]~input_o\ <= NOT \D1[16]~input_o\;
\ALT_INV_D2[16]~input_o\ <= NOT \D2[16]~input_o\;
\ALT_INV_D1[15]~input_o\ <= NOT \D1[15]~input_o\;
\ALT_INV_D2[15]~input_o\ <= NOT \D2[15]~input_o\;
\ALT_INV_D1[14]~input_o\ <= NOT \D1[14]~input_o\;
\ALT_INV_D2[14]~input_o\ <= NOT \D2[14]~input_o\;
\ALT_INV_D1[13]~input_o\ <= NOT \D1[13]~input_o\;
\ALT_INV_D2[13]~input_o\ <= NOT \D2[13]~input_o\;
\ALT_INV_D1[12]~input_o\ <= NOT \D1[12]~input_o\;
\ALT_INV_D2[12]~input_o\ <= NOT \D2[12]~input_o\;
\ALT_INV_D1[11]~input_o\ <= NOT \D1[11]~input_o\;
\ALT_INV_D2[11]~input_o\ <= NOT \D2[11]~input_o\;
\ALT_INV_D1[10]~input_o\ <= NOT \D1[10]~input_o\;
\ALT_INV_D2[10]~input_o\ <= NOT \D2[10]~input_o\;
\ALT_INV_D1[9]~input_o\ <= NOT \D1[9]~input_o\;
\ALT_INV_D2[9]~input_o\ <= NOT \D2[9]~input_o\;
\ALT_INV_D1[8]~input_o\ <= NOT \D1[8]~input_o\;
\ALT_INV_D2[8]~input_o\ <= NOT \D2[8]~input_o\;
\ALT_INV_D1[7]~input_o\ <= NOT \D1[7]~input_o\;
\ALT_INV_D2[7]~input_o\ <= NOT \D2[7]~input_o\;
\ALT_INV_D1[6]~input_o\ <= NOT \D1[6]~input_o\;
\ALT_INV_D2[6]~input_o\ <= NOT \D2[6]~input_o\;

-- Location: IOOBUF_X28_Y0_N36
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X36_Y0_N53
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X52_Y0_N53
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X38_Y0_N19
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X30_Y0_N19
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~4_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X2_Y0_N59
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~5_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X89_Y4_N79
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOOBUF_X4_Y0_N36
\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => ww_Y(7));

-- Location: IOOBUF_X64_Y0_N19
\Y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => ww_Y(8));

-- Location: IOOBUF_X54_Y0_N36
\Y[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => ww_Y(9));

-- Location: IOOBUF_X66_Y0_N59
\Y[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => ww_Y(10));

-- Location: IOOBUF_X40_Y0_N19
\Y[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => ww_Y(11));

-- Location: IOOBUF_X30_Y0_N2
\Y[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => ww_Y(12));

-- Location: IOOBUF_X62_Y0_N53
\Y[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => ww_Y(13));

-- Location: IOOBUF_X28_Y0_N53
\Y[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => ww_Y(14));

-- Location: IOOBUF_X28_Y0_N2
\Y[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => ww_Y(15));

-- Location: IOOBUF_X2_Y0_N76
\Y[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => ww_Y(16));

-- Location: IOOBUF_X72_Y0_N19
\Y[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => ww_Y(17));

-- Location: IOOBUF_X66_Y0_N42
\Y[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => ww_Y(18));

-- Location: IOOBUF_X40_Y0_N2
\Y[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => ww_Y(19));

-- Location: IOOBUF_X64_Y0_N2
\Y[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => ww_Y(20));

-- Location: IOOBUF_X50_Y0_N93
\Y[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => ww_Y(21));

-- Location: IOOBUF_X32_Y0_N19
\Y[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => ww_Y(22));

-- Location: IOOBUF_X54_Y0_N19
\Y[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => ww_Y(23));

-- Location: IOOBUF_X60_Y0_N36
\Y[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => ww_Y(24));

-- Location: IOOBUF_X4_Y0_N53
\Y[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => ww_Y(25));

-- Location: IOOBUF_X32_Y0_N53
\Y[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~26_combout\,
	devoe => ww_devoe,
	o => ww_Y(26));

-- Location: IOOBUF_X2_Y0_N93
\Y[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => ww_Y(27));

-- Location: IOOBUF_X60_Y0_N19
\Y[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => ww_Y(28));

-- Location: IOOBUF_X56_Y0_N53
\Y[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => ww_Y(29));

-- Location: IOOBUF_X72_Y0_N2
\Y[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => ww_Y(30));

-- Location: IOOBUF_X58_Y0_N76
\Y[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => ww_Y(31));

-- Location: IOIBUF_X8_Y0_N35
\D2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\D1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\S~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LABCELL_X9_Y1_N0
\Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \D1[0]~input_o\ & ( \S~input_o\ & ( \D2[0]~input_o\ ) ) ) # ( !\D1[0]~input_o\ & ( \S~input_o\ & ( \D2[0]~input_o\ ) ) ) # ( \D1[0]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[0]~input_o\,
	datae => \ALT_INV_D1[0]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~0_combout\);

-- Location: IOIBUF_X34_Y0_N58
\D1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\D2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: LABCELL_X35_Y1_N30
\Y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( \D2[1]~input_o\ & ( \S~input_o\ ) ) # ( \D2[1]~input_o\ & ( !\S~input_o\ & ( \D1[1]~input_o\ ) ) ) # ( !\D2[1]~input_o\ & ( !\S~input_o\ & ( \D1[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D1[1]~input_o\,
	datae => \ALT_INV_D2[1]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~1_combout\);

-- Location: IOIBUF_X50_Y0_N75
\D1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\D2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: LABCELL_X50_Y1_N3
\Y~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = ( \S~input_o\ & ( \D2[2]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D1[2]~input_o\,
	datac => \ALT_INV_D2[2]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~2_combout\);

-- Location: IOIBUF_X32_Y0_N35
\D2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\D1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: LABCELL_X35_Y1_N39
\Y~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = ( \D1[3]~input_o\ & ( \S~input_o\ & ( \D2[3]~input_o\ ) ) ) # ( !\D1[3]~input_o\ & ( \S~input_o\ & ( \D2[3]~input_o\ ) ) ) # ( \D1[3]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D2[3]~input_o\,
	datae => \ALT_INV_D1[3]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~3_combout\);

-- Location: IOIBUF_X36_Y0_N35
\D2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(4),
	o => \D2[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\D1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(4),
	o => \D1[4]~input_o\);

-- Location: LABCELL_X35_Y1_N12
\Y~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = ( \S~input_o\ & ( \D2[4]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[4]~input_o\,
	datac => \ALT_INV_D1[4]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~4_combout\);

-- Location: IOIBUF_X4_Y0_N1
\D1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(5),
	o => \D1[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\D2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(5),
	o => \D2[5]~input_o\);

-- Location: LABCELL_X9_Y1_N39
\Y~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = ( \S~input_o\ & ( \D2[5]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[5]~input_o\,
	datad => \ALT_INV_D2[5]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~5_combout\);

-- Location: IOIBUF_X64_Y0_N35
\D2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(6),
	o => \D2[6]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\D1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(6),
	o => \D1[6]~input_o\);

-- Location: LABCELL_X67_Y1_N30
\Y~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = ( \D1[6]~input_o\ & ( (!\S~input_o\) # (\D2[6]~input_o\) ) ) # ( !\D1[6]~input_o\ & ( (\D2[6]~input_o\ & \S~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[6]~input_o\,
	datac => \ALT_INV_S~input_o\,
	dataf => \ALT_INV_D1[6]~input_o\,
	combout => \Y~6_combout\);

-- Location: IOIBUF_X8_Y0_N52
\D1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(7),
	o => \D1[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\D2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(7),
	o => \D2[7]~input_o\);

-- Location: LABCELL_X9_Y1_N42
\Y~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = ( \D2[7]~input_o\ & ( \S~input_o\ ) ) # ( \D2[7]~input_o\ & ( !\S~input_o\ & ( \D1[7]~input_o\ ) ) ) # ( !\D2[7]~input_o\ & ( !\S~input_o\ & ( \D1[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D1[7]~input_o\,
	datae => \ALT_INV_D2[7]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~7_combout\);

-- Location: IOIBUF_X66_Y0_N75
\D2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(8),
	o => \D2[8]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\D1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(8),
	o => \D1[8]~input_o\);

-- Location: LABCELL_X67_Y1_N36
\Y~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = ( \S~input_o\ & ( \D2[8]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[8]~input_o\,
	datac => \ALT_INV_D1[8]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~8_combout\);

-- Location: IOIBUF_X56_Y0_N1
\D1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(9),
	o => \D1[9]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\D2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(9),
	o => \D2[9]~input_o\);

-- Location: LABCELL_X50_Y1_N9
\Y~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = ( \D2[9]~input_o\ & ( \S~input_o\ ) ) # ( \D2[9]~input_o\ & ( !\S~input_o\ & ( \D1[9]~input_o\ ) ) ) # ( !\D2[9]~input_o\ & ( !\S~input_o\ & ( \D1[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[9]~input_o\,
	datae => \ALT_INV_D2[9]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~9_combout\);

-- Location: IOIBUF_X64_Y0_N52
\D2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(10),
	o => \D2[10]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\D1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(10),
	o => \D1[10]~input_o\);

-- Location: LABCELL_X67_Y1_N15
\Y~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = ( \D1[10]~input_o\ & ( (!\S~input_o\) # (\D2[10]~input_o\) ) ) # ( !\D1[10]~input_o\ & ( (\S~input_o\ & \D2[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~input_o\,
	datac => \ALT_INV_D2[10]~input_o\,
	dataf => \ALT_INV_D1[10]~input_o\,
	combout => \Y~10_combout\);

-- Location: IOIBUF_X28_Y0_N18
\D2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(11),
	o => \D2[11]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\D1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(11),
	o => \D1[11]~input_o\);

-- Location: LABCELL_X35_Y1_N51
\Y~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = ( \D1[11]~input_o\ & ( \S~input_o\ & ( \D2[11]~input_o\ ) ) ) # ( !\D1[11]~input_o\ & ( \S~input_o\ & ( \D2[11]~input_o\ ) ) ) # ( \D1[11]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[11]~input_o\,
	datae => \ALT_INV_D1[11]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~11_combout\);

-- Location: IOIBUF_X36_Y0_N1
\D1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(12),
	o => \D1[12]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\D2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(12),
	o => \D2[12]~input_o\);

-- Location: LABCELL_X35_Y1_N24
\Y~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = ( \D2[12]~input_o\ & ( \S~input_o\ ) ) # ( \D2[12]~input_o\ & ( !\S~input_o\ & ( \D1[12]~input_o\ ) ) ) # ( !\D2[12]~input_o\ & ( !\S~input_o\ & ( \D1[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D1[12]~input_o\,
	datae => \ALT_INV_D2[12]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~12_combout\);

-- Location: IOIBUF_X68_Y0_N35
\D1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(13),
	o => \D1[13]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\D2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(13),
	o => \D2[13]~input_o\);

-- Location: LABCELL_X67_Y1_N51
\Y~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = ( \D2[13]~input_o\ & ( (\D1[13]~input_o\) # (\S~input_o\) ) ) # ( !\D2[13]~input_o\ & ( (!\S~input_o\ & \D1[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~input_o\,
	datac => \ALT_INV_D1[13]~input_o\,
	dataf => \ALT_INV_D2[13]~input_o\,
	combout => \Y~13_combout\);

-- Location: IOIBUF_X26_Y0_N92
\D2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(14),
	o => \D2[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\D1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(14),
	o => \D1[14]~input_o\);

-- Location: LABCELL_X9_Y1_N51
\Y~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = ( \D1[14]~input_o\ & ( \S~input_o\ & ( \D2[14]~input_o\ ) ) ) # ( !\D1[14]~input_o\ & ( \S~input_o\ & ( \D2[14]~input_o\ ) ) ) # ( \D1[14]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[14]~input_o\,
	datae => \ALT_INV_D1[14]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~14_combout\);

-- Location: IOIBUF_X8_Y0_N18
\D1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(15),
	o => \D1[15]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\D2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(15),
	o => \D2[15]~input_o\);

-- Location: LABCELL_X9_Y1_N57
\Y~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = ( \D2[15]~input_o\ & ( \S~input_o\ ) ) # ( \D2[15]~input_o\ & ( !\S~input_o\ & ( \D1[15]~input_o\ ) ) ) # ( !\D2[15]~input_o\ & ( !\S~input_o\ & ( \D1[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D1[15]~input_o\,
	datae => \ALT_INV_D2[15]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~15_combout\);

-- Location: IOIBUF_X4_Y0_N18
\D2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(16),
	o => \D2[16]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\D1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(16),
	o => \D1[16]~input_o\);

-- Location: LABCELL_X9_Y1_N33
\Y~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = ( \D1[16]~input_o\ & ( \S~input_o\ & ( \D2[16]~input_o\ ) ) ) # ( !\D1[16]~input_o\ & ( \S~input_o\ & ( \D2[16]~input_o\ ) ) ) # ( \D1[16]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[16]~input_o\,
	datae => \ALT_INV_D1[16]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~16_combout\);

-- Location: IOIBUF_X68_Y0_N52
\D2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(17),
	o => \D2[17]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\D1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(17),
	o => \D1[17]~input_o\);

-- Location: LABCELL_X67_Y1_N57
\Y~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = ( \D1[17]~input_o\ & ( (!\S~input_o\) # (\D2[17]~input_o\) ) ) # ( !\D1[17]~input_o\ & ( (\D2[17]~input_o\ & \S~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[17]~input_o\,
	datad => \ALT_INV_S~input_o\,
	dataf => \ALT_INV_D1[17]~input_o\,
	combout => \Y~17_combout\);

-- Location: IOIBUF_X62_Y0_N18
\D1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(18),
	o => \D1[18]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\D2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(18),
	o => \D2[18]~input_o\);

-- Location: LABCELL_X67_Y1_N0
\Y~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = ( \D2[18]~input_o\ & ( (\S~input_o\) # (\D1[18]~input_o\) ) ) # ( !\D2[18]~input_o\ & ( (\D1[18]~input_o\ & !\S~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D1[18]~input_o\,
	datac => \ALT_INV_S~input_o\,
	dataf => \ALT_INV_D2[18]~input_o\,
	combout => \Y~18_combout\);

-- Location: IOIBUF_X38_Y0_N52
\D2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(19),
	o => \D2[19]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\D1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(19),
	o => \D1[19]~input_o\);

-- Location: LABCELL_X35_Y1_N3
\Y~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = ( \D1[19]~input_o\ & ( \S~input_o\ & ( \D2[19]~input_o\ ) ) ) # ( !\D1[19]~input_o\ & ( \S~input_o\ & ( \D2[19]~input_o\ ) ) ) # ( \D1[19]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[19]~input_o\,
	datae => \ALT_INV_D1[19]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~19_combout\);

-- Location: IOIBUF_X70_Y0_N35
\D1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(20),
	o => \D1[20]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\D2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(20),
	o => \D2[20]~input_o\);

-- Location: LABCELL_X67_Y1_N9
\Y~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = ( \D2[20]~input_o\ & ( (\D1[20]~input_o\) # (\S~input_o\) ) ) # ( !\D2[20]~input_o\ & ( (!\S~input_o\ & \D1[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~input_o\,
	datac => \ALT_INV_D1[20]~input_o\,
	dataf => \ALT_INV_D2[20]~input_o\,
	combout => \Y~20_combout\);

-- Location: IOIBUF_X52_Y0_N35
\D2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(21),
	o => \D2[21]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\D1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(21),
	o => \D1[21]~input_o\);

-- Location: LABCELL_X50_Y1_N45
\Y~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = ( \D1[21]~input_o\ & ( \S~input_o\ & ( \D2[21]~input_o\ ) ) ) # ( !\D1[21]~input_o\ & ( \S~input_o\ & ( \D2[21]~input_o\ ) ) ) # ( \D1[21]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[21]~input_o\,
	datae => \ALT_INV_D1[21]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~21_combout\);

-- Location: IOIBUF_X38_Y0_N35
\D2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(22),
	o => \D2[22]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\D1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(22),
	o => \D1[22]~input_o\);

-- Location: LABCELL_X35_Y1_N9
\Y~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = ( \D1[22]~input_o\ & ( \S~input_o\ & ( \D2[22]~input_o\ ) ) ) # ( !\D1[22]~input_o\ & ( \S~input_o\ & ( \D2[22]~input_o\ ) ) ) # ( \D1[22]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[22]~input_o\,
	datae => \ALT_INV_D1[22]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~22_combout\);

-- Location: IOIBUF_X54_Y0_N52
\D2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(23),
	o => \D2[23]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\D1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(23),
	o => \D1[23]~input_o\);

-- Location: LABCELL_X50_Y1_N18
\Y~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = ( \S~input_o\ & ( \D2[23]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[23]~input_o\,
	datac => \ALT_INV_D1[23]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~23_combout\);

-- Location: IOIBUF_X56_Y0_N18
\D1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(24),
	o => \D1[24]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\D2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(24),
	o => \D2[24]~input_o\);

-- Location: MLABCELL_X59_Y1_N30
\Y~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = ( \D2[24]~input_o\ & ( (\S~input_o\) # (\D1[24]~input_o\) ) ) # ( !\D2[24]~input_o\ & ( (\D1[24]~input_o\ & !\S~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D1[24]~input_o\,
	datac => \ALT_INV_S~input_o\,
	datae => \ALT_INV_D2[24]~input_o\,
	combout => \Y~24_combout\);

-- Location: IOIBUF_X2_Y0_N41
\D1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(25),
	o => \D1[25]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\D2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(25),
	o => \D2[25]~input_o\);

-- Location: LABCELL_X9_Y1_N6
\Y~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = ( \D2[25]~input_o\ & ( \S~input_o\ ) ) # ( \D2[25]~input_o\ & ( !\S~input_o\ & ( \D1[25]~input_o\ ) ) ) # ( !\D2[25]~input_o\ & ( !\S~input_o\ & ( \D1[25]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D1[25]~input_o\,
	datae => \ALT_INV_D2[25]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~25_combout\);

-- Location: IOIBUF_X26_Y0_N75
\D2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(26),
	o => \D2[26]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\D1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(26),
	o => \D1[26]~input_o\);

-- Location: LABCELL_X35_Y1_N42
\Y~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = ( \D1[26]~input_o\ & ( \S~input_o\ & ( \D2[26]~input_o\ ) ) ) # ( !\D1[26]~input_o\ & ( \S~input_o\ & ( \D2[26]~input_o\ ) ) ) # ( \D1[26]~input_o\ & ( !\S~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[26]~input_o\,
	datae => \ALT_INV_D1[26]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~26_combout\);

-- Location: IOIBUF_X52_Y0_N1
\D2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(27),
	o => \D2[27]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\D1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(27),
	o => \D1[27]~input_o\);

-- Location: LABCELL_X50_Y1_N24
\Y~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = ( \S~input_o\ & ( \D2[27]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[27]~input_o\,
	datac => \ALT_INV_D1[27]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~27_combout\);

-- Location: IOIBUF_X54_Y0_N1
\D2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(28),
	o => \D2[28]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\D1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(28),
	o => \D1[28]~input_o\);

-- Location: MLABCELL_X59_Y1_N9
\Y~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = ( \D1[28]~input_o\ & ( (!\S~input_o\) # (\D2[28]~input_o\) ) ) # ( !\D1[28]~input_o\ & ( (\S~input_o\ & \D2[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~input_o\,
	datac => \ALT_INV_D2[28]~input_o\,
	dataf => \ALT_INV_D1[28]~input_o\,
	combout => \Y~28_combout\);

-- Location: IOIBUF_X56_Y0_N35
\D2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(29),
	o => \D2[29]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\D1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(29),
	o => \D1[29]~input_o\);

-- Location: MLABCELL_X59_Y1_N15
\Y~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = ( \S~input_o\ & ( \D2[29]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D2[29]~input_o\,
	datac => \ALT_INV_D1[29]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~29_combout\);

-- Location: IOIBUF_X62_Y0_N1
\D2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(30),
	o => \D2[30]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\D1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(30),
	o => \D1[30]~input_o\);

-- Location: LABCELL_X67_Y1_N42
\Y~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = ( \D1[30]~input_o\ & ( (!\S~input_o\) # (\D2[30]~input_o\) ) ) # ( !\D1[30]~input_o\ & ( (\D2[30]~input_o\ & \S~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D2[30]~input_o\,
	datac => \ALT_INV_S~input_o\,
	dataf => \ALT_INV_D1[30]~input_o\,
	combout => \Y~30_combout\);

-- Location: IOIBUF_X58_Y0_N58
\D1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(31),
	o => \D1[31]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\D2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(31),
	o => \D2[31]~input_o\);

-- Location: MLABCELL_X59_Y1_N48
\Y~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = ( \S~input_o\ & ( \D2[31]~input_o\ ) ) # ( !\S~input_o\ & ( \D1[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D1[31]~input_o\,
	datac => \ALT_INV_D2[31]~input_o\,
	dataf => \ALT_INV_S~input_o\,
	combout => \Y~31_combout\);

-- Location: LABCELL_X79_Y7_N0
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


