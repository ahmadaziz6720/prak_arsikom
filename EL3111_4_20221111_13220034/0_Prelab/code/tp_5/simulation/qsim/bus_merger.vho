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

-- DATE "11/25/2022 15:28:02"

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

ENTITY 	bus_merger IS
    PORT (
	DATA_IN1 : IN std_logic_vector(3 DOWNTO 0);
	DATA_IN2 : IN std_logic_vector(27 DOWNTO 0);
	DATA_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END bus_merger;

-- Design Ports Information
-- DATA_OUT[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[10]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[15]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[18]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[19]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[21]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[22]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[23]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[24]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[25]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[26]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[27]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[28]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[29]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[18]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[19]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[20]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[21]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[23]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[24]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[25]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[26]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN2[27]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN1[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN1[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN1[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN1[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bus_merger IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA_IN1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA_IN2 : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \DATA_IN2[0]~input_o\ : std_logic;
SIGNAL \DATA_IN2[1]~input_o\ : std_logic;
SIGNAL \DATA_IN2[2]~input_o\ : std_logic;
SIGNAL \DATA_IN2[3]~input_o\ : std_logic;
SIGNAL \DATA_IN2[4]~input_o\ : std_logic;
SIGNAL \DATA_IN2[5]~input_o\ : std_logic;
SIGNAL \DATA_IN2[6]~input_o\ : std_logic;
SIGNAL \DATA_IN2[7]~input_o\ : std_logic;
SIGNAL \DATA_IN2[8]~input_o\ : std_logic;
SIGNAL \DATA_IN2[9]~input_o\ : std_logic;
SIGNAL \DATA_IN2[10]~input_o\ : std_logic;
SIGNAL \DATA_IN2[11]~input_o\ : std_logic;
SIGNAL \DATA_IN2[12]~input_o\ : std_logic;
SIGNAL \DATA_IN2[13]~input_o\ : std_logic;
SIGNAL \DATA_IN2[14]~input_o\ : std_logic;
SIGNAL \DATA_IN2[15]~input_o\ : std_logic;
SIGNAL \DATA_IN2[16]~input_o\ : std_logic;
SIGNAL \DATA_IN2[17]~input_o\ : std_logic;
SIGNAL \DATA_IN2[18]~input_o\ : std_logic;
SIGNAL \DATA_IN2[19]~input_o\ : std_logic;
SIGNAL \DATA_IN2[20]~input_o\ : std_logic;
SIGNAL \DATA_IN2[21]~input_o\ : std_logic;
SIGNAL \DATA_IN2[22]~input_o\ : std_logic;
SIGNAL \DATA_IN2[23]~input_o\ : std_logic;
SIGNAL \DATA_IN2[24]~input_o\ : std_logic;
SIGNAL \DATA_IN2[25]~input_o\ : std_logic;
SIGNAL \DATA_IN2[26]~input_o\ : std_logic;
SIGNAL \DATA_IN2[27]~input_o\ : std_logic;
SIGNAL \DATA_IN1[0]~input_o\ : std_logic;
SIGNAL \DATA_IN1[1]~input_o\ : std_logic;
SIGNAL \DATA_IN1[2]~input_o\ : std_logic;
SIGNAL \DATA_IN1[3]~input_o\ : std_logic;

BEGIN

ww_DATA_IN1 <= DATA_IN1;
ww_DATA_IN2 <= DATA_IN2;
DATA_OUT <= ww_DATA_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y81_N2
\DATA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[0]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(0));

-- Location: IOOBUF_X28_Y81_N36
\DATA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[1]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(1));

-- Location: IOOBUF_X34_Y81_N93
\DATA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[2]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(2));

-- Location: IOOBUF_X28_Y81_N53
\DATA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[3]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(3));

-- Location: IOOBUF_X26_Y81_N42
\DATA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[4]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(4));

-- Location: IOOBUF_X58_Y81_N93
\DATA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[5]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(5));

-- Location: IOOBUF_X52_Y81_N53
\DATA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[6]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(6));

-- Location: IOOBUF_X36_Y81_N2
\DATA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[7]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(7));

-- Location: IOOBUF_X30_Y81_N53
\DATA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[8]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(8));

-- Location: IOOBUF_X54_Y81_N2
\DATA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[9]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(9));

-- Location: IOOBUF_X40_Y81_N53
\DATA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[10]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(10));

-- Location: IOOBUF_X62_Y81_N2
\DATA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[11]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(11));

-- Location: IOOBUF_X50_Y81_N93
\DATA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[12]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(12));

-- Location: IOOBUF_X26_Y81_N93
\DATA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[13]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(13));

-- Location: IOOBUF_X40_Y81_N36
\DATA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[14]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(14));

-- Location: IOOBUF_X56_Y81_N19
\DATA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[15]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(15));

-- Location: IOOBUF_X70_Y81_N2
\DATA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[16]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(16));

-- Location: IOOBUF_X32_Y81_N19
\DATA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[17]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(17));

-- Location: IOOBUF_X38_Y81_N36
\DATA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[18]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(18));

-- Location: IOOBUF_X58_Y81_N76
\DATA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[19]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(19));

-- Location: IOOBUF_X56_Y81_N53
\DATA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[20]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(20));

-- Location: IOOBUF_X50_Y81_N76
\DATA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[21]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(21));

-- Location: IOOBUF_X66_Y81_N93
\DATA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[22]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(22));

-- Location: IOOBUF_X52_Y81_N19
\DATA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[23]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(23));

-- Location: IOOBUF_X62_Y81_N53
\DATA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[24]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(24));

-- Location: IOOBUF_X60_Y81_N36
\DATA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[25]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(25));

-- Location: IOOBUF_X30_Y81_N19
\DATA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[26]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(26));

-- Location: IOOBUF_X36_Y81_N36
\DATA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN2[27]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(27));

-- Location: IOOBUF_X54_Y81_N36
\DATA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN1[0]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(28));

-- Location: IOOBUF_X64_Y81_N53
\DATA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN1[1]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(29));

-- Location: IOOBUF_X34_Y81_N42
\DATA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN1[2]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(30));

-- Location: IOOBUF_X72_Y81_N36
\DATA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_IN1[3]~input_o\,
	devoe => ww_devoe,
	o => ww_DATA_OUT(31));

-- Location: IOIBUF_X60_Y81_N52
\DATA_IN2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(0),
	o => \DATA_IN2[0]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\DATA_IN2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(1),
	o => \DATA_IN2[1]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\DATA_IN2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(2),
	o => \DATA_IN2[2]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\DATA_IN2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(3),
	o => \DATA_IN2[3]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\DATA_IN2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(4),
	o => \DATA_IN2[4]~input_o\);

-- Location: IOIBUF_X58_Y81_N58
\DATA_IN2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(5),
	o => \DATA_IN2[5]~input_o\);

-- Location: IOIBUF_X52_Y81_N35
\DATA_IN2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(6),
	o => \DATA_IN2[6]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\DATA_IN2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(7),
	o => \DATA_IN2[7]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\DATA_IN2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(8),
	o => \DATA_IN2[8]~input_o\);

-- Location: IOIBUF_X54_Y81_N18
\DATA_IN2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(9),
	o => \DATA_IN2[9]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\DATA_IN2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(10),
	o => \DATA_IN2[10]~input_o\);

-- Location: IOIBUF_X62_Y81_N18
\DATA_IN2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(11),
	o => \DATA_IN2[11]~input_o\);

-- Location: IOIBUF_X50_Y81_N58
\DATA_IN2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(12),
	o => \DATA_IN2[12]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\DATA_IN2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(13),
	o => \DATA_IN2[13]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\DATA_IN2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(14),
	o => \DATA_IN2[14]~input_o\);

-- Location: IOIBUF_X56_Y81_N35
\DATA_IN2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(15),
	o => \DATA_IN2[15]~input_o\);

-- Location: IOIBUF_X70_Y81_N18
\DATA_IN2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(16),
	o => \DATA_IN2[16]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\DATA_IN2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(17),
	o => \DATA_IN2[17]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\DATA_IN2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(18),
	o => \DATA_IN2[18]~input_o\);

-- Location: IOIBUF_X58_Y81_N41
\DATA_IN2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(19),
	o => \DATA_IN2[19]~input_o\);

-- Location: IOIBUF_X56_Y81_N1
\DATA_IN2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(20),
	o => \DATA_IN2[20]~input_o\);

-- Location: IOIBUF_X50_Y81_N41
\DATA_IN2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(21),
	o => \DATA_IN2[21]~input_o\);

-- Location: IOIBUF_X66_Y81_N58
\DATA_IN2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(22),
	o => \DATA_IN2[22]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\DATA_IN2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(23),
	o => \DATA_IN2[23]~input_o\);

-- Location: IOIBUF_X62_Y81_N35
\DATA_IN2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(24),
	o => \DATA_IN2[24]~input_o\);

-- Location: IOIBUF_X60_Y81_N18
\DATA_IN2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(25),
	o => \DATA_IN2[25]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\DATA_IN2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(26),
	o => \DATA_IN2[26]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\DATA_IN2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN2(27),
	o => \DATA_IN2[27]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\DATA_IN1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN1(0),
	o => \DATA_IN1[0]~input_o\);

-- Location: IOIBUF_X64_Y81_N35
\DATA_IN1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN1(1),
	o => \DATA_IN1[1]~input_o\);

-- Location: IOIBUF_X34_Y81_N58
\DATA_IN1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN1(2),
	o => \DATA_IN1[2]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\DATA_IN1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN1(3),
	o => \DATA_IN1[3]~input_o\);

-- Location: LABCELL_X22_Y51_N3
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


