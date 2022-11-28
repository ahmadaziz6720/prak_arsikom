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

-- DATE "11/25/2022 15:15:48"

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

ENTITY 	mux_4to1_5bit IS
    PORT (
	D1 : IN std_logic_vector(4 DOWNTO 0);
	D2 : IN std_logic_vector(4 DOWNTO 0);
	D3 : IN std_logic_vector(4 DOWNTO 0);
	D4 : IN std_logic_vector(4 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0);
	Y : OUT std_logic_vector(4 DOWNTO 0)
	);
END mux_4to1_5bit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_4to1_5bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_D4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \D4[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \Y[0]~0_combout\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \D4[1]~input_o\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \Y[1]~1_combout\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \D4[2]~input_o\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \Y[2]~2_combout\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \D4[3]~input_o\ : std_logic;
SIGNAL \Y[3]~3_combout\ : std_logic;
SIGNAL \D1[4]~input_o\ : std_logic;
SIGNAL \D3[4]~input_o\ : std_logic;
SIGNAL \D4[4]~input_o\ : std_logic;
SIGNAL \D2[4]~input_o\ : std_logic;
SIGNAL \Y[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D4[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D3[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D2[4]~input_o\ : std_logic;

BEGIN

ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D4 <= D4;
ww_S <= S;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_D3[0]~input_o\ <= NOT \D3[0]~input_o\;
\ALT_INV_D4[0]~input_o\ <= NOT \D4[0]~input_o\;
\ALT_INV_D2[0]~input_o\ <= NOT \D2[0]~input_o\;
\ALT_INV_D1[0]~input_o\ <= NOT \D1[0]~input_o\;
\ALT_INV_D4[1]~input_o\ <= NOT \D4[1]~input_o\;
\ALT_INV_D3[1]~input_o\ <= NOT \D3[1]~input_o\;
\ALT_INV_D2[1]~input_o\ <= NOT \D2[1]~input_o\;
\ALT_INV_D1[1]~input_o\ <= NOT \D1[1]~input_o\;
\ALT_INV_D4[2]~input_o\ <= NOT \D4[2]~input_o\;
\ALT_INV_D3[2]~input_o\ <= NOT \D3[2]~input_o\;
\ALT_INV_D2[2]~input_o\ <= NOT \D2[2]~input_o\;
\ALT_INV_D1[2]~input_o\ <= NOT \D1[2]~input_o\;
\ALT_INV_D3[3]~input_o\ <= NOT \D3[3]~input_o\;
\ALT_INV_D4[3]~input_o\ <= NOT \D4[3]~input_o\;
\ALT_INV_D1[3]~input_o\ <= NOT \D1[3]~input_o\;
\ALT_INV_D2[3]~input_o\ <= NOT \D2[3]~input_o\;
\ALT_INV_D4[4]~input_o\ <= NOT \D4[4]~input_o\;
\ALT_INV_D3[4]~input_o\ <= NOT \D3[4]~input_o\;
\ALT_INV_D1[4]~input_o\ <= NOT \D1[4]~input_o\;
\ALT_INV_D2[4]~input_o\ <= NOT \D2[4]~input_o\;

-- Location: IOOBUF_X89_Y35_N45
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X89_Y35_N62
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

-- Location: IOIBUF_X89_Y6_N55
\D3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\D4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(0),
	o => \D4[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\D2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\D1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LABCELL_X88_Y8_N30
\Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[0]~0_combout\ = ( \D1[0]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\D2[0]~input_o\))) # (\S[1]~input_o\ & (\D4[0]~input_o\)) ) ) ) # ( !\D1[0]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\D2[0]~input_o\))) # (\S[1]~input_o\ & 
-- (\D4[0]~input_o\)) ) ) ) # ( \D1[0]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\) # (\D3[0]~input_o\) ) ) ) # ( !\D1[0]~input_o\ & ( !\S[0]~input_o\ & ( (\D3[0]~input_o\ & \S[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[0]~input_o\,
	datab => \ALT_INV_D4[0]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_D2[0]~input_o\,
	datae => \ALT_INV_D1[0]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[0]~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\D1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\D2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\D4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(1),
	o => \D4[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\D3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: LABCELL_X88_Y6_N0
\Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[1]~1_combout\ = ( \D3[1]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D2[1]~input_o\)) # (\S[1]~input_o\ & ((\D4[1]~input_o\))) ) ) ) # ( !\D3[1]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D2[1]~input_o\)) # (\S[1]~input_o\ & 
-- ((\D4[1]~input_o\))) ) ) ) # ( \D3[1]~input_o\ & ( !\S[0]~input_o\ & ( (\S[1]~input_o\) # (\D1[1]~input_o\) ) ) ) # ( !\D3[1]~input_o\ & ( !\S[0]~input_o\ & ( (\D1[1]~input_o\ & !\S[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D1[1]~input_o\,
	datab => \ALT_INV_D2[1]~input_o\,
	datac => \ALT_INV_D4[1]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D3[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[1]~1_combout\);

-- Location: IOIBUF_X89_Y4_N61
\D3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\D2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\D4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(2),
	o => \D4[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\D1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: LABCELL_X88_Y8_N6
\Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[2]~2_combout\ = ( \S[1]~input_o\ & ( \D1[2]~input_o\ & ( (!\S[0]~input_o\ & (\D3[2]~input_o\)) # (\S[0]~input_o\ & ((\D4[2]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \D1[2]~input_o\ & ( (!\S[0]~input_o\) # (\D2[2]~input_o\) ) ) ) # ( \S[1]~input_o\ & ( 
-- !\D1[2]~input_o\ & ( (!\S[0]~input_o\ & (\D3[2]~input_o\)) # (\S[0]~input_o\ & ((\D4[2]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\D1[2]~input_o\ & ( (\D2[2]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D3[2]~input_o\,
	datab => \ALT_INV_D2[2]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_D4[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_D1[2]~input_o\,
	combout => \Y[2]~2_combout\);

-- Location: IOIBUF_X89_Y9_N38
\D3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\D2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\D1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\D4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(3),
	o => \D4[3]~input_o\);

-- Location: LABCELL_X88_Y8_N12
\Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[3]~3_combout\ = ( \D1[3]~input_o\ & ( \D4[3]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\) # (\D2[3]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)) # (\D3[3]~input_o\))) ) ) ) # ( !\D1[3]~input_o\ & ( \D4[3]~input_o\ & ( (!\S[1]~input_o\ & 
-- (((\S[0]~input_o\ & \D2[3]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)) # (\D3[3]~input_o\))) ) ) ) # ( \D1[3]~input_o\ & ( !\D4[3]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\) # (\D2[3]~input_o\)))) # (\S[1]~input_o\ & (\D3[3]~input_o\ & 
-- (!\S[0]~input_o\))) ) ) ) # ( !\D1[3]~input_o\ & ( !\D4[3]~input_o\ & ( (!\S[1]~input_o\ & (((\S[0]~input_o\ & \D2[3]~input_o\)))) # (\S[1]~input_o\ & (\D3[3]~input_o\ & (!\S[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_D3[3]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_D2[3]~input_o\,
	datae => \ALT_INV_D1[3]~input_o\,
	dataf => \ALT_INV_D4[3]~input_o\,
	combout => \Y[3]~3_combout\);

-- Location: IOIBUF_X89_Y8_N55
\D1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(4),
	o => \D1[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\D3[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(4),
	o => \D3[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\D4[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(4),
	o => \D4[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\D2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(4),
	o => \D2[4]~input_o\);

-- Location: LABCELL_X88_Y8_N18
\Y[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[4]~4_combout\ = ( \D2[4]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\) # (\D4[4]~input_o\) ) ) ) # ( !\D2[4]~input_o\ & ( \S[0]~input_o\ & ( (\S[1]~input_o\ & \D4[4]~input_o\) ) ) ) # ( \D2[4]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & 
-- (\D1[4]~input_o\)) # (\S[1]~input_o\ & ((\D3[4]~input_o\))) ) ) ) # ( !\D2[4]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\D1[4]~input_o\)) # (\S[1]~input_o\ & ((\D3[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_D1[4]~input_o\,
	datac => \ALT_INV_D3[4]~input_o\,
	datad => \ALT_INV_D4[4]~input_o\,
	datae => \ALT_INV_D2[4]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \Y[4]~4_combout\);

-- Location: LABCELL_X36_Y18_N0
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


