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

-- DATE "11/25/2022 15:21:37"

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

ENTITY 	comparator IS
    PORT (
	D_1 : IN std_logic_vector(31 DOWNTO 0);
	D_2 : IN std_logic_vector(31 DOWNTO 0);
	EQ : OUT std_logic
	);
END comparator;

-- Design Ports Information
-- EQ	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[9]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[14]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[16]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[17]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[8]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[8]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[18]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[18]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[19]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[19]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[20]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[20]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[21]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[21]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[22]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[23]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[23]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[25]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[25]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[26]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[26]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[27]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[27]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[28]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[29]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[30]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[30]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_1[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_2[31]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_D_2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_EQ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D_2[3]~input_o\ : std_logic;
SIGNAL \D_1[3]~input_o\ : std_logic;
SIGNAL \D_2[4]~input_o\ : std_logic;
SIGNAL \D_1[4]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \D_1[6]~input_o\ : std_logic;
SIGNAL \D_2[8]~input_o\ : std_logic;
SIGNAL \D_2[7]~input_o\ : std_logic;
SIGNAL \D_1[7]~input_o\ : std_logic;
SIGNAL \D_1[8]~input_o\ : std_logic;
SIGNAL \D_2[6]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \D_1[5]~input_o\ : std_logic;
SIGNAL \D_2[5]~input_o\ : std_logic;
SIGNAL \D_1[2]~input_o\ : std_logic;
SIGNAL \D_1[1]~input_o\ : std_logic;
SIGNAL \D_2[0]~input_o\ : std_logic;
SIGNAL \D_1[0]~input_o\ : std_logic;
SIGNAL \D_2[1]~input_o\ : std_logic;
SIGNAL \D_2[2]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \D_2[10]~input_o\ : std_logic;
SIGNAL \D_2[9]~input_o\ : std_logic;
SIGNAL \D_1[9]~input_o\ : std_logic;
SIGNAL \D_2[11]~input_o\ : std_logic;
SIGNAL \D_1[11]~input_o\ : std_logic;
SIGNAL \D_1[10]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \D_1[17]~input_o\ : std_logic;
SIGNAL \D_2[15]~input_o\ : std_logic;
SIGNAL \D_2[17]~input_o\ : std_logic;
SIGNAL \D_1[15]~input_o\ : std_logic;
SIGNAL \D_1[16]~input_o\ : std_logic;
SIGNAL \D_2[16]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \D_2[25]~input_o\ : std_logic;
SIGNAL \D_2[24]~input_o\ : std_logic;
SIGNAL \D_1[24]~input_o\ : std_logic;
SIGNAL \D_2[26]~input_o\ : std_logic;
SIGNAL \D_1[26]~input_o\ : std_logic;
SIGNAL \D_1[25]~input_o\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \D_2[20]~input_o\ : std_logic;
SIGNAL \D_1[20]~input_o\ : std_logic;
SIGNAL \D_2[19]~input_o\ : std_logic;
SIGNAL \D_1[18]~input_o\ : std_logic;
SIGNAL \D_1[19]~input_o\ : std_logic;
SIGNAL \D_2[18]~input_o\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \D_1[23]~input_o\ : std_logic;
SIGNAL \D_1[21]~input_o\ : std_logic;
SIGNAL \D_2[21]~input_o\ : std_logic;
SIGNAL \D_1[22]~input_o\ : std_logic;
SIGNAL \D_2[22]~input_o\ : std_logic;
SIGNAL \D_2[23]~input_o\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \D_2[27]~input_o\ : std_logic;
SIGNAL \D_2[29]~input_o\ : std_logic;
SIGNAL \D_1[29]~input_o\ : std_logic;
SIGNAL \D_1[28]~input_o\ : std_logic;
SIGNAL \D_2[28]~input_o\ : std_logic;
SIGNAL \D_1[27]~input_o\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \D_2[30]~input_o\ : std_logic;
SIGNAL \D_2[31]~input_o\ : std_logic;
SIGNAL \D_1[30]~input_o\ : std_logic;
SIGNAL \D_1[31]~input_o\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \D_2[12]~input_o\ : std_logic;
SIGNAL \D_2[14]~input_o\ : std_logic;
SIGNAL \D_1[12]~input_o\ : std_logic;
SIGNAL \D_1[13]~input_o\ : std_logic;
SIGNAL \D_1[14]~input_o\ : std_logic;
SIGNAL \D_2[13]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_D_2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_D_1 <= D_1;
ww_D_2 <= D_2;
EQ <= ww_EQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D_2[31]~input_o\ <= NOT \D_2[31]~input_o\;
\ALT_INV_D_1[31]~input_o\ <= NOT \D_1[31]~input_o\;
\ALT_INV_D_2[30]~input_o\ <= NOT \D_2[30]~input_o\;
\ALT_INV_D_1[30]~input_o\ <= NOT \D_1[30]~input_o\;
\ALT_INV_D_2[29]~input_o\ <= NOT \D_2[29]~input_o\;
\ALT_INV_D_1[29]~input_o\ <= NOT \D_1[29]~input_o\;
\ALT_INV_D_2[28]~input_o\ <= NOT \D_2[28]~input_o\;
\ALT_INV_D_1[28]~input_o\ <= NOT \D_1[28]~input_o\;
\ALT_INV_D_2[27]~input_o\ <= NOT \D_2[27]~input_o\;
\ALT_INV_D_1[27]~input_o\ <= NOT \D_1[27]~input_o\;
\ALT_INV_D_2[26]~input_o\ <= NOT \D_2[26]~input_o\;
\ALT_INV_D_1[26]~input_o\ <= NOT \D_1[26]~input_o\;
\ALT_INV_D_2[25]~input_o\ <= NOT \D_2[25]~input_o\;
\ALT_INV_D_1[25]~input_o\ <= NOT \D_1[25]~input_o\;
\ALT_INV_D_2[24]~input_o\ <= NOT \D_2[24]~input_o\;
\ALT_INV_D_1[24]~input_o\ <= NOT \D_1[24]~input_o\;
\ALT_INV_D_2[23]~input_o\ <= NOT \D_2[23]~input_o\;
\ALT_INV_D_1[23]~input_o\ <= NOT \D_1[23]~input_o\;
\ALT_INV_D_2[22]~input_o\ <= NOT \D_2[22]~input_o\;
\ALT_INV_D_1[22]~input_o\ <= NOT \D_1[22]~input_o\;
\ALT_INV_D_2[21]~input_o\ <= NOT \D_2[21]~input_o\;
\ALT_INV_D_1[21]~input_o\ <= NOT \D_1[21]~input_o\;
\ALT_INV_D_2[20]~input_o\ <= NOT \D_2[20]~input_o\;
\ALT_INV_D_1[20]~input_o\ <= NOT \D_1[20]~input_o\;
\ALT_INV_D_2[19]~input_o\ <= NOT \D_2[19]~input_o\;
\ALT_INV_D_1[19]~input_o\ <= NOT \D_1[19]~input_o\;
\ALT_INV_D_2[18]~input_o\ <= NOT \D_2[18]~input_o\;
\ALT_INV_D_1[18]~input_o\ <= NOT \D_1[18]~input_o\;
\ALT_INV_D_2[8]~input_o\ <= NOT \D_2[8]~input_o\;
\ALT_INV_D_1[8]~input_o\ <= NOT \D_1[8]~input_o\;
\ALT_INV_D_2[7]~input_o\ <= NOT \D_2[7]~input_o\;
\ALT_INV_D_1[7]~input_o\ <= NOT \D_1[7]~input_o\;
\ALT_INV_D_2[6]~input_o\ <= NOT \D_2[6]~input_o\;
\ALT_INV_D_1[6]~input_o\ <= NOT \D_1[6]~input_o\;
\ALT_INV_D_2[4]~input_o\ <= NOT \D_2[4]~input_o\;
\ALT_INV_D_1[4]~input_o\ <= NOT \D_1[4]~input_o\;
\ALT_INV_D_2[3]~input_o\ <= NOT \D_2[3]~input_o\;
\ALT_INV_D_1[3]~input_o\ <= NOT \D_1[3]~input_o\;
\ALT_INV_D_2[2]~input_o\ <= NOT \D_2[2]~input_o\;
\ALT_INV_D_1[2]~input_o\ <= NOT \D_1[2]~input_o\;
\ALT_INV_D_2[1]~input_o\ <= NOT \D_2[1]~input_o\;
\ALT_INV_D_1[1]~input_o\ <= NOT \D_1[1]~input_o\;
\ALT_INV_D_2[0]~input_o\ <= NOT \D_2[0]~input_o\;
\ALT_INV_D_1[0]~input_o\ <= NOT \D_1[0]~input_o\;
\ALT_INV_D_2[5]~input_o\ <= NOT \D_2[5]~input_o\;
\ALT_INV_D_1[5]~input_o\ <= NOT \D_1[5]~input_o\;
\ALT_INV_D_2[17]~input_o\ <= NOT \D_2[17]~input_o\;
\ALT_INV_D_1[17]~input_o\ <= NOT \D_1[17]~input_o\;
\ALT_INV_D_2[16]~input_o\ <= NOT \D_2[16]~input_o\;
\ALT_INV_D_1[16]~input_o\ <= NOT \D_1[16]~input_o\;
\ALT_INV_D_2[15]~input_o\ <= NOT \D_2[15]~input_o\;
\ALT_INV_D_1[15]~input_o\ <= NOT \D_1[15]~input_o\;
\ALT_INV_D_2[14]~input_o\ <= NOT \D_2[14]~input_o\;
\ALT_INV_D_1[14]~input_o\ <= NOT \D_1[14]~input_o\;
\ALT_INV_D_2[13]~input_o\ <= NOT \D_2[13]~input_o\;
\ALT_INV_D_1[13]~input_o\ <= NOT \D_1[13]~input_o\;
\ALT_INV_D_2[12]~input_o\ <= NOT \D_2[12]~input_o\;
\ALT_INV_D_1[12]~input_o\ <= NOT \D_1[12]~input_o\;
\ALT_INV_D_2[11]~input_o\ <= NOT \D_2[11]~input_o\;
\ALT_INV_D_1[11]~input_o\ <= NOT \D_1[11]~input_o\;
\ALT_INV_D_2[10]~input_o\ <= NOT \D_2[10]~input_o\;
\ALT_INV_D_1[10]~input_o\ <= NOT \D_1[10]~input_o\;
\ALT_INV_D_2[9]~input_o\ <= NOT \D_2[9]~input_o\;
\ALT_INV_D_1[9]~input_o\ <= NOT \D_1[9]~input_o\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X50_Y0_N59
\EQ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~13_combout\,
	devoe => ww_devoe,
	o => ww_EQ);

-- Location: IOIBUF_X56_Y0_N1
\D_2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(3),
	o => \D_2[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\D_1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(3),
	o => \D_1[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\D_2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(4),
	o => \D_2[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\D_1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(4),
	o => \D_1[4]~input_o\);

-- Location: LABCELL_X56_Y1_N3
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \D_2[4]~input_o\ & ( \D_1[4]~input_o\ & ( !\D_2[3]~input_o\ $ (\D_1[3]~input_o\) ) ) ) # ( !\D_2[4]~input_o\ & ( !\D_1[4]~input_o\ & ( !\D_2[3]~input_o\ $ (\D_1[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101000000000000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[3]~input_o\,
	datad => \ALT_INV_D_1[3]~input_o\,
	datae => \ALT_INV_D_2[4]~input_o\,
	dataf => \ALT_INV_D_1[4]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X36_Y0_N1
\D_1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(6),
	o => \D_1[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\D_2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(8),
	o => \D_2[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\D_2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(7),
	o => \D_2[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\D_1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(7),
	o => \D_1[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\D_1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(8),
	o => \D_1[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\D_2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(6),
	o => \D_2[6]~input_o\);

-- Location: LABCELL_X36_Y1_N0
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \D_1[8]~input_o\ & ( \D_2[6]~input_o\ & ( (\D_1[6]~input_o\ & (\D_2[8]~input_o\ & (!\D_2[7]~input_o\ $ (\D_1[7]~input_o\)))) ) ) ) # ( !\D_1[8]~input_o\ & ( \D_2[6]~input_o\ & ( (\D_1[6]~input_o\ & (!\D_2[8]~input_o\ & 
-- (!\D_2[7]~input_o\ $ (\D_1[7]~input_o\)))) ) ) ) # ( \D_1[8]~input_o\ & ( !\D_2[6]~input_o\ & ( (!\D_1[6]~input_o\ & (\D_2[8]~input_o\ & (!\D_2[7]~input_o\ $ (\D_1[7]~input_o\)))) ) ) ) # ( !\D_1[8]~input_o\ & ( !\D_2[6]~input_o\ & ( (!\D_1[6]~input_o\ & 
-- (!\D_2[8]~input_o\ & (!\D_2[7]~input_o\ $ (\D_1[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_1[6]~input_o\,
	datab => \ALT_INV_D_2[8]~input_o\,
	datac => \ALT_INV_D_2[7]~input_o\,
	datad => \ALT_INV_D_1[7]~input_o\,
	datae => \ALT_INV_D_1[8]~input_o\,
	dataf => \ALT_INV_D_2[6]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X40_Y0_N35
\D_1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(5),
	o => \D_1[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\D_2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(5),
	o => \D_2[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\D_1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(2),
	o => \D_1[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\D_1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(1),
	o => \D_1[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\D_2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(0),
	o => \D_2[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\D_1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(0),
	o => \D_1[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\D_2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(1),
	o => \D_2[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\D_2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(2),
	o => \D_2[2]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \D_2[1]~input_o\ & ( \D_2[2]~input_o\ & ( (\D_1[2]~input_o\ & (\D_1[1]~input_o\ & (!\D_2[0]~input_o\ $ (\D_1[0]~input_o\)))) ) ) ) # ( !\D_2[1]~input_o\ & ( \D_2[2]~input_o\ & ( (\D_1[2]~input_o\ & (!\D_1[1]~input_o\ & 
-- (!\D_2[0]~input_o\ $ (\D_1[0]~input_o\)))) ) ) ) # ( \D_2[1]~input_o\ & ( !\D_2[2]~input_o\ & ( (!\D_1[2]~input_o\ & (\D_1[1]~input_o\ & (!\D_2[0]~input_o\ $ (\D_1[0]~input_o\)))) ) ) ) # ( !\D_2[1]~input_o\ & ( !\D_2[2]~input_o\ & ( (!\D_1[2]~input_o\ & 
-- (!\D_1[1]~input_o\ & (!\D_2[0]~input_o\ $ (\D_1[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_1[2]~input_o\,
	datab => \ALT_INV_D_1[1]~input_o\,
	datac => \ALT_INV_D_2[0]~input_o\,
	datad => \ALT_INV_D_1[0]~input_o\,
	datae => \ALT_INV_D_2[1]~input_o\,
	dataf => \ALT_INV_D_2[2]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X45_Y1_N6
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~3_combout\ & ( (\Equal0~4_combout\ & (\Equal0~5_combout\ & (!\D_1[5]~input_o\ $ (\D_2[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000100000000000000000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_D_1[5]~input_o\,
	datad => \ALT_INV_D_2[5]~input_o\,
	datae => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X38_Y0_N52
\D_2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(10),
	o => \D_2[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\D_2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(9),
	o => \D_2[9]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\D_1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(9),
	o => \D_1[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\D_2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(11),
	o => \D_2[11]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\D_1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(11),
	o => \D_1[11]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\D_1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(10),
	o => \D_1[10]~input_o\);

-- Location: LABCELL_X50_Y1_N33
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \D_1[11]~input_o\ & ( \D_1[10]~input_o\ & ( (\D_2[10]~input_o\ & (\D_2[11]~input_o\ & (!\D_2[9]~input_o\ $ (\D_1[9]~input_o\)))) ) ) ) # ( !\D_1[11]~input_o\ & ( \D_1[10]~input_o\ & ( (\D_2[10]~input_o\ & (!\D_2[11]~input_o\ & 
-- (!\D_2[9]~input_o\ $ (\D_1[9]~input_o\)))) ) ) ) # ( \D_1[11]~input_o\ & ( !\D_1[10]~input_o\ & ( (!\D_2[10]~input_o\ & (\D_2[11]~input_o\ & (!\D_2[9]~input_o\ $ (\D_1[9]~input_o\)))) ) ) ) # ( !\D_1[11]~input_o\ & ( !\D_1[10]~input_o\ & ( 
-- (!\D_2[10]~input_o\ & (!\D_2[11]~input_o\ & (!\D_2[9]~input_o\ $ (\D_1[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[10]~input_o\,
	datab => \ALT_INV_D_2[9]~input_o\,
	datac => \ALT_INV_D_1[9]~input_o\,
	datad => \ALT_INV_D_2[11]~input_o\,
	datae => \ALT_INV_D_1[11]~input_o\,
	dataf => \ALT_INV_D_1[10]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\D_1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(17),
	o => \D_1[17]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\D_2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(15),
	o => \D_2[15]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\D_2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(17),
	o => \D_2[17]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\D_1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(15),
	o => \D_1[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\D_1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(16),
	o => \D_1[16]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\D_2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(16),
	o => \D_2[16]~input_o\);

-- Location: LABCELL_X45_Y1_N30
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \D_1[16]~input_o\ & ( \D_2[16]~input_o\ & ( (!\D_1[17]~input_o\ & (!\D_2[17]~input_o\ & (!\D_2[15]~input_o\ $ (\D_1[15]~input_o\)))) # (\D_1[17]~input_o\ & (\D_2[17]~input_o\ & (!\D_2[15]~input_o\ $ (\D_1[15]~input_o\)))) ) ) ) # ( 
-- !\D_1[16]~input_o\ & ( !\D_2[16]~input_o\ & ( (!\D_1[17]~input_o\ & (!\D_2[17]~input_o\ & (!\D_2[15]~input_o\ $ (\D_1[15]~input_o\)))) # (\D_1[17]~input_o\ & (\D_2[17]~input_o\ & (!\D_2[15]~input_o\ $ (\D_1[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_1[17]~input_o\,
	datab => \ALT_INV_D_2[15]~input_o\,
	datac => \ALT_INV_D_2[17]~input_o\,
	datad => \ALT_INV_D_1[15]~input_o\,
	datae => \ALT_INV_D_1[16]~input_o\,
	dataf => \ALT_INV_D_2[16]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X30_Y0_N1
\D_2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(25),
	o => \D_2[25]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\D_2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(24),
	o => \D_2[24]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\D_1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(24),
	o => \D_1[24]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\D_2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(26),
	o => \D_2[26]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\D_1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(26),
	o => \D_1[26]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\D_1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(25),
	o => \D_1[25]~input_o\);

-- Location: LABCELL_X27_Y1_N33
\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( \D_1[26]~input_o\ & ( \D_1[25]~input_o\ & ( (\D_2[25]~input_o\ & (\D_2[26]~input_o\ & (!\D_2[24]~input_o\ $ (\D_1[24]~input_o\)))) ) ) ) # ( !\D_1[26]~input_o\ & ( \D_1[25]~input_o\ & ( (\D_2[25]~input_o\ & (!\D_2[26]~input_o\ & 
-- (!\D_2[24]~input_o\ $ (\D_1[24]~input_o\)))) ) ) ) # ( \D_1[26]~input_o\ & ( !\D_1[25]~input_o\ & ( (!\D_2[25]~input_o\ & (\D_2[26]~input_o\ & (!\D_2[24]~input_o\ $ (\D_1[24]~input_o\)))) ) ) ) # ( !\D_1[26]~input_o\ & ( !\D_1[25]~input_o\ & ( 
-- (!\D_2[25]~input_o\ & (!\D_2[26]~input_o\ & (!\D_2[24]~input_o\ $ (\D_1[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[25]~input_o\,
	datab => \ALT_INV_D_2[24]~input_o\,
	datac => \ALT_INV_D_1[24]~input_o\,
	datad => \ALT_INV_D_2[26]~input_o\,
	datae => \ALT_INV_D_1[26]~input_o\,
	dataf => \ALT_INV_D_1[25]~input_o\,
	combout => \Equal0~9_combout\);

-- Location: IOIBUF_X6_Y0_N18
\D_2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(20),
	o => \D_2[20]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\D_1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(20),
	o => \D_1[20]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\D_2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(19),
	o => \D_2[19]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\D_1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(18),
	o => \D_1[18]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\D_1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(19),
	o => \D_1[19]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\D_2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(18),
	o => \D_2[18]~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \D_1[19]~input_o\ & ( \D_2[18]~input_o\ & ( (\D_2[19]~input_o\ & (\D_1[18]~input_o\ & (!\D_2[20]~input_o\ $ (\D_1[20]~input_o\)))) ) ) ) # ( !\D_1[19]~input_o\ & ( \D_2[18]~input_o\ & ( (!\D_2[19]~input_o\ & (\D_1[18]~input_o\ & 
-- (!\D_2[20]~input_o\ $ (\D_1[20]~input_o\)))) ) ) ) # ( \D_1[19]~input_o\ & ( !\D_2[18]~input_o\ & ( (\D_2[19]~input_o\ & (!\D_1[18]~input_o\ & (!\D_2[20]~input_o\ $ (\D_1[20]~input_o\)))) ) ) ) # ( !\D_1[19]~input_o\ & ( !\D_2[18]~input_o\ & ( 
-- (!\D_2[19]~input_o\ & (!\D_1[18]~input_o\ & (!\D_2[20]~input_o\ $ (\D_1[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[20]~input_o\,
	datab => \ALT_INV_D_1[20]~input_o\,
	datac => \ALT_INV_D_2[19]~input_o\,
	datad => \ALT_INV_D_1[18]~input_o\,
	datae => \ALT_INV_D_1[19]~input_o\,
	dataf => \ALT_INV_D_2[18]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: IOIBUF_X4_Y0_N18
\D_1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(23),
	o => \D_1[23]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\D_1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(21),
	o => \D_1[21]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\D_2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(21),
	o => \D_2[21]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\D_1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(22),
	o => \D_1[22]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\D_2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(22),
	o => \D_2[22]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\D_2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(23),
	o => \D_2[23]~input_o\);

-- Location: LABCELL_X4_Y1_N30
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \D_2[22]~input_o\ & ( \D_2[23]~input_o\ & ( (\D_1[23]~input_o\ & (\D_1[22]~input_o\ & (!\D_1[21]~input_o\ $ (\D_2[21]~input_o\)))) ) ) ) # ( !\D_2[22]~input_o\ & ( \D_2[23]~input_o\ & ( (\D_1[23]~input_o\ & (!\D_1[22]~input_o\ & 
-- (!\D_1[21]~input_o\ $ (\D_2[21]~input_o\)))) ) ) ) # ( \D_2[22]~input_o\ & ( !\D_2[23]~input_o\ & ( (!\D_1[23]~input_o\ & (\D_1[22]~input_o\ & (!\D_1[21]~input_o\ $ (\D_2[21]~input_o\)))) ) ) ) # ( !\D_2[22]~input_o\ & ( !\D_2[23]~input_o\ & ( 
-- (!\D_1[23]~input_o\ & (!\D_1[22]~input_o\ & (!\D_1[21]~input_o\ $ (\D_2[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_1[23]~input_o\,
	datab => \ALT_INV_D_1[21]~input_o\,
	datac => \ALT_INV_D_2[21]~input_o\,
	datad => \ALT_INV_D_1[22]~input_o\,
	datae => \ALT_INV_D_2[22]~input_o\,
	dataf => \ALT_INV_D_2[23]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: IOIBUF_X26_Y0_N92
\D_2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(27),
	o => \D_2[27]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\D_2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(29),
	o => \D_2[29]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\D_1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(29),
	o => \D_1[29]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\D_1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(28),
	o => \D_1[28]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\D_2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(28),
	o => \D_2[28]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\D_1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(27),
	o => \D_1[27]~input_o\);

-- Location: LABCELL_X27_Y1_N6
\Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( \D_2[28]~input_o\ & ( \D_1[27]~input_o\ & ( (\D_2[27]~input_o\ & (\D_1[28]~input_o\ & (!\D_2[29]~input_o\ $ (\D_1[29]~input_o\)))) ) ) ) # ( !\D_2[28]~input_o\ & ( \D_1[27]~input_o\ & ( (\D_2[27]~input_o\ & (!\D_1[28]~input_o\ & 
-- (!\D_2[29]~input_o\ $ (\D_1[29]~input_o\)))) ) ) ) # ( \D_2[28]~input_o\ & ( !\D_1[27]~input_o\ & ( (!\D_2[27]~input_o\ & (\D_1[28]~input_o\ & (!\D_2[29]~input_o\ $ (\D_1[29]~input_o\)))) ) ) ) # ( !\D_2[28]~input_o\ & ( !\D_1[27]~input_o\ & ( 
-- (!\D_2[27]~input_o\ & (!\D_1[28]~input_o\ & (!\D_2[29]~input_o\ $ (\D_1[29]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[27]~input_o\,
	datab => \ALT_INV_D_2[29]~input_o\,
	datac => \ALT_INV_D_1[29]~input_o\,
	datad => \ALT_INV_D_1[28]~input_o\,
	datae => \ALT_INV_D_2[28]~input_o\,
	dataf => \ALT_INV_D_1[27]~input_o\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X28_Y0_N18
\D_2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(30),
	o => \D_2[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\D_2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(31),
	o => \D_2[31]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\D_1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(30),
	o => \D_1[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\D_1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(31),
	o => \D_1[31]~input_o\);

-- Location: MLABCELL_X28_Y1_N30
\Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( \D_1[30]~input_o\ & ( \D_1[31]~input_o\ & ( (\D_2[30]~input_o\ & \D_2[31]~input_o\) ) ) ) # ( !\D_1[30]~input_o\ & ( \D_1[31]~input_o\ & ( (!\D_2[30]~input_o\ & \D_2[31]~input_o\) ) ) ) # ( \D_1[30]~input_o\ & ( !\D_1[31]~input_o\ 
-- & ( (\D_2[30]~input_o\ & !\D_2[31]~input_o\) ) ) ) # ( !\D_1[30]~input_o\ & ( !\D_1[31]~input_o\ & ( (!\D_2[30]~input_o\ & !\D_2[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[30]~input_o\,
	datac => \ALT_INV_D_2[31]~input_o\,
	datae => \ALT_INV_D_1[30]~input_o\,
	dataf => \ALT_INV_D_1[31]~input_o\,
	combout => \Equal0~11_combout\);

-- Location: LABCELL_X27_Y1_N12
\Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Equal0~11_combout\ & ( (\Equal0~9_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Equal0~7_combout\,
	datac => \ALT_INV_Equal0~8_combout\,
	datad => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~11_combout\,
	combout => \Equal0~12_combout\);

-- Location: IOIBUF_X54_Y0_N18
\D_2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(12),
	o => \D_2[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\D_2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(14),
	o => \D_2[14]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\D_1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(12),
	o => \D_1[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\D_1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(13),
	o => \D_1[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\D_1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_1(14),
	o => \D_1[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\D_2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_2(13),
	o => \D_2[13]~input_o\);

-- Location: LABCELL_X51_Y1_N33
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \D_1[14]~input_o\ & ( \D_2[13]~input_o\ & ( (\D_2[14]~input_o\ & (\D_1[13]~input_o\ & (!\D_2[12]~input_o\ $ (\D_1[12]~input_o\)))) ) ) ) # ( !\D_1[14]~input_o\ & ( \D_2[13]~input_o\ & ( (!\D_2[14]~input_o\ & (\D_1[13]~input_o\ & 
-- (!\D_2[12]~input_o\ $ (\D_1[12]~input_o\)))) ) ) ) # ( \D_1[14]~input_o\ & ( !\D_2[13]~input_o\ & ( (\D_2[14]~input_o\ & (!\D_1[13]~input_o\ & (!\D_2[12]~input_o\ $ (\D_1[12]~input_o\)))) ) ) ) # ( !\D_1[14]~input_o\ & ( !\D_2[13]~input_o\ & ( 
-- (!\D_2[14]~input_o\ & (!\D_1[13]~input_o\ & (!\D_2[12]~input_o\ $ (\D_1[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_2[12]~input_o\,
	datab => \ALT_INV_D_2[14]~input_o\,
	datac => \ALT_INV_D_1[12]~input_o\,
	datad => \ALT_INV_D_1[13]~input_o\,
	datae => \ALT_INV_D_1[14]~input_o\,
	dataf => \ALT_INV_D_2[13]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X45_Y1_N42
\Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( \Equal0~12_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~6_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~12_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~13_combout\);

-- Location: LABCELL_X70_Y35_N3
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


