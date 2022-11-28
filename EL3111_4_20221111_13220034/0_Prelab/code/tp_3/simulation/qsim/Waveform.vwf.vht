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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/25/2022 15:15:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_4to1_5bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_4to1_5bit_vhd_vec_tst IS
END mux_4to1_5bit_vhd_vec_tst;
ARCHITECTURE mux_4to1_5bit_arch OF mux_4to1_5bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL D2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL D3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL D4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT mux_4to1_5bit
	PORT (
	D1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	D2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	D3 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	D4 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_4to1_5bit
	PORT MAP (
-- list connections between master ports and signals
	D1 => D1,
	D2 => D2,
	D3 => D3,
	D4 => D4,
	S => S,
	Y => Y
	);
-- D1[4]
t_prcs_D1_4: PROCESS
BEGIN
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 40000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 30000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 50000 ps;
	D1(4) <= '1';
	WAIT FOR 30000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 50000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 30000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 30000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 30000 ps;
	D1(4) <= '1';
	WAIT FOR 50000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 50000 ps;
	D1(4) <= '1';
	WAIT FOR 40000 ps;
	D1(4) <= '0';
	WAIT FOR 30000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 20000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 20000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 10000 ps;
	D1(4) <= '0';
	WAIT FOR 10000 ps;
	D1(4) <= '1';
	WAIT FOR 50000 ps;
	D1(4) <= '0';
	WAIT FOR 20000 ps;
	D1(4) <= '1';
	WAIT FOR 20000 ps;
	D1(4) <= '0';
	WAIT FOR 20000 ps;
	D1(4) <= '1';
WAIT;
END PROCESS t_prcs_D1_4;
-- D1[3]
t_prcs_D1_3: PROCESS
BEGIN
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 40000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 30000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 30000 ps;
	D1(3) <= '0';
	WAIT FOR 30000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 30000 ps;
	D1(3) <= '0';
	WAIT FOR 30000 ps;
	D1(3) <= '1';
	WAIT FOR 30000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 70000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 50000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 20000 ps;
	D1(3) <= '0';
	WAIT FOR 40000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 30000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 30000 ps;
	D1(3) <= '1';
	WAIT FOR 20000 ps;
	D1(3) <= '0';
	WAIT FOR 10000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 30000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 30000 ps;
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
WAIT;
END PROCESS t_prcs_D1_3;
-- D1[2]
t_prcs_D1_2: PROCESS
BEGIN
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 20000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 30000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 30000 ps;
	D1(2) <= '1';
	WAIT FOR 20000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 40000 ps;
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 30000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 70000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 20000 ps;
	D1(2) <= '0';
	WAIT FOR 40000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 50000 ps;
	D1(2) <= '1';
	WAIT FOR 60000 ps;
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 50000 ps;
	D1(2) <= '0';
	WAIT FOR 30000 ps;
	D1(2) <= '1';
	WAIT FOR 20000 ps;
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 40000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
	WAIT FOR 10000 ps;
	D1(2) <= '1';
WAIT;
END PROCESS t_prcs_D1_2;
-- D1[1]
t_prcs_D1_1: PROCESS
BEGIN
	D1(1) <= '0';
	WAIT FOR 40000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 30000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 40000 ps;
	D1(1) <= '0';
	WAIT FOR 30000 ps;
	D1(1) <= '1';
	WAIT FOR 10000 ps;
	D1(1) <= '0';
	WAIT FOR 50000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 30000 ps;
	D1(1) <= '0';
	WAIT FOR 40000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 10000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 10000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 20000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 40000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 20000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 40000 ps;
	D1(1) <= '1';
	WAIT FOR 50000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 30000 ps;
	D1(1) <= '1';
	WAIT FOR 20000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 30000 ps;
	D1(1) <= '0';
	WAIT FOR 10000 ps;
	D1(1) <= '1';
	WAIT FOR 10000 ps;
	D1(1) <= '0';
	WAIT FOR 40000 ps;
	D1(1) <= '1';
	WAIT FOR 30000 ps;
	D1(1) <= '0';
	WAIT FOR 20000 ps;
	D1(1) <= '1';
	WAIT FOR 10000 ps;
	D1(1) <= '0';
WAIT;
END PROCESS t_prcs_D1_1;
-- D1[0]
t_prcs_D1_0: PROCESS
BEGIN
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 20000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 40000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 20000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 30000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 30000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 90000 ps;
	D1(0) <= '0';
	WAIT FOR 30000 ps;
	D1(0) <= '1';
	WAIT FOR 20000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 20000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 30000 ps;
	D1(0) <= '0';
	WAIT FOR 30000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 20000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 40000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 30000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 30000 ps;
	D1(0) <= '0';
	WAIT FOR 10000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
	WAIT FOR 30000 ps;
	D1(0) <= '1';
	WAIT FOR 20000 ps;
	D1(0) <= '0';
WAIT;
END PROCESS t_prcs_D1_0;
-- D2[4]
t_prcs_D2_4: PROCESS
BEGIN
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 30000 ps;
	D2(4) <= '0';
	WAIT FOR 30000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 30000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 20000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 90000 ps;
	D2(4) <= '0';
	WAIT FOR 40000 ps;
	D2(4) <= '1';
	WAIT FOR 20000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 20000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 30000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 20000 ps;
	D2(4) <= '0';
	WAIT FOR 80000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 40000 ps;
	D2(4) <= '1';
	WAIT FOR 20000 ps;
	D2(4) <= '0';
	WAIT FOR 50000 ps;
	D2(4) <= '1';
	WAIT FOR 30000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 20000 ps;
	D2(4) <= '1';
	WAIT FOR 40000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
	WAIT FOR 10000 ps;
	D2(4) <= '0';
	WAIT FOR 10000 ps;
	D2(4) <= '1';
WAIT;
END PROCESS t_prcs_D2_4;
-- D2[3]
t_prcs_D2_3: PROCESS
BEGIN
	D2(3) <= '0';
	WAIT FOR 40000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 20000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 30000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 20000 ps;
	D2(3) <= '0';
	WAIT FOR 30000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 40000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 20000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 30000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 20000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 40000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 40000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 20000 ps;
	D2(3) <= '0';
	WAIT FOR 50000 ps;
	D2(3) <= '1';
	WAIT FOR 80000 ps;
	D2(3) <= '0';
	WAIT FOR 20000 ps;
	D2(3) <= '1';
	WAIT FOR 40000 ps;
	D2(3) <= '0';
	WAIT FOR 30000 ps;
	D2(3) <= '1';
	WAIT FOR 20000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 30000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 40000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 50000 ps;
	D2(3) <= '0';
	WAIT FOR 10000 ps;
	D2(3) <= '1';
	WAIT FOR 50000 ps;
	D2(3) <= '0';
	WAIT FOR 20000 ps;
	D2(3) <= '1';
	WAIT FOR 10000 ps;
	D2(3) <= '0';
WAIT;
END PROCESS t_prcs_D2_3;
-- D2[2]
t_prcs_D2_2: PROCESS
BEGIN
	D2(2) <= '1';
	WAIT FOR 70000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 70000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
	WAIT FOR 40000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 20000 ps;
	D2(2) <= '0';
	WAIT FOR 30000 ps;
	D2(2) <= '1';
	WAIT FOR 40000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 20000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 20000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 30000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 60000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 40000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 20000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 20000 ps;
	D2(2) <= '0';
	WAIT FOR 60000 ps;
	D2(2) <= '1';
	WAIT FOR 20000 ps;
	D2(2) <= '0';
	WAIT FOR 10000 ps;
	D2(2) <= '1';
	WAIT FOR 30000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
	WAIT FOR 10000 ps;
	D2(2) <= '0';
	WAIT FOR 20000 ps;
	D2(2) <= '1';
WAIT;
END PROCESS t_prcs_D2_2;
-- D2[1]
t_prcs_D2_1: PROCESS
BEGIN
	D2(1) <= '0';
	WAIT FOR 30000 ps;
	D2(1) <= '1';
	WAIT FOR 30000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 30000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 30000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 40000 ps;
	D2(1) <= '0';
	WAIT FOR 40000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 40000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 30000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 30000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 30000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 20000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 40000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 10000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 30000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
WAIT;
END PROCESS t_prcs_D2_1;
-- D2[0]
t_prcs_D2_0: PROCESS
BEGIN
	D2(0) <= '1';
	WAIT FOR 30000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 30000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 30000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 20000 ps;
	D2(0) <= '0';
	WAIT FOR 50000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 40000 ps;
	D2(0) <= '0';
	WAIT FOR 30000 ps;
	D2(0) <= '1';
	WAIT FOR 20000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 30000 ps;
	D2(0) <= '0';
	WAIT FOR 50000 ps;
	D2(0) <= '1';
	WAIT FOR 70000 ps;
	D2(0) <= '0';
	WAIT FOR 30000 ps;
	D2(0) <= '1';
	WAIT FOR 20000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 20000 ps;
	D2(0) <= '0';
	WAIT FOR 30000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 20000 ps;
	D2(0) <= '1';
	WAIT FOR 20000 ps;
	D2(0) <= '0';
	WAIT FOR 40000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
	WAIT FOR 10000 ps;
	D2(0) <= '1';
	WAIT FOR 10000 ps;
	D2(0) <= '0';
WAIT;
END PROCESS t_prcs_D2_0;
-- D3[4]
t_prcs_D3_4: PROCESS
BEGIN
	D3(4) <= '0';
	WAIT FOR 30000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 90000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 40000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 30000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 20000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 50000 ps;
	D3(4) <= '1';
	WAIT FOR 40000 ps;
	D3(4) <= '0';
	WAIT FOR 50000 ps;
	D3(4) <= '1';
	WAIT FOR 30000 ps;
	D3(4) <= '0';
	WAIT FOR 20000 ps;
	D3(4) <= '1';
	WAIT FOR 20000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 80000 ps;
	D3(4) <= '0';
	WAIT FOR 50000 ps;
	D3(4) <= '1';
	WAIT FOR 20000 ps;
	D3(4) <= '0';
	WAIT FOR 80000 ps;
	D3(4) <= '1';
	WAIT FOR 40000 ps;
	D3(4) <= '0';
	WAIT FOR 20000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 30000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 20000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 20000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
	WAIT FOR 10000 ps;
	D3(4) <= '0';
	WAIT FOR 10000 ps;
	D3(4) <= '1';
WAIT;
END PROCESS t_prcs_D3_4;
-- D3[3]
t_prcs_D3_3: PROCESS
BEGIN
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 80000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 40000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 70000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 30000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 40000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 30000 ps;
	D3(3) <= '1';
	WAIT FOR 110000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 20000 ps;
	D3(3) <= '0';
	WAIT FOR 30000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
	WAIT FOR 20000 ps;
	D3(3) <= '1';
	WAIT FOR 50000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 30000 ps;
	D3(3) <= '0';
	WAIT FOR 10000 ps;
	D3(3) <= '1';
	WAIT FOR 10000 ps;
	D3(3) <= '0';
WAIT;
END PROCESS t_prcs_D3_3;
-- D3[2]
t_prcs_D3_2: PROCESS
BEGIN
	D3(2) <= '1';
	WAIT FOR 20000 ps;
	D3(2) <= '0';
	WAIT FOR 40000 ps;
	D3(2) <= '1';
	WAIT FOR 50000 ps;
	D3(2) <= '0';
	WAIT FOR 20000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 20000 ps;
	D3(2) <= '1';
	WAIT FOR 20000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 40000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 30000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 40000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 20000 ps;
	D3(2) <= '0';
	WAIT FOR 20000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 20000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 30000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 20000 ps;
	D3(2) <= '0';
	WAIT FOR 30000 ps;
	D3(2) <= '1';
	WAIT FOR 40000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 80000 ps;
	D3(2) <= '1';
	WAIT FOR 20000 ps;
	D3(2) <= '0';
	WAIT FOR 20000 ps;
	D3(2) <= '1';
	WAIT FOR 30000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 30000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 30000 ps;
	D3(2) <= '0';
	WAIT FOR 60000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
	WAIT FOR 10000 ps;
	D3(2) <= '1';
	WAIT FOR 40000 ps;
	D3(2) <= '0';
	WAIT FOR 20000 ps;
	D3(2) <= '1';
	WAIT FOR 10000 ps;
	D3(2) <= '0';
WAIT;
END PROCESS t_prcs_D3_2;
-- D3[1]
t_prcs_D3_1: PROCESS
BEGIN
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 40000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 20000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 20000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 30000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 50000 ps;
	D3(1) <= '1';
	WAIT FOR 30000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 20000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 20000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 30000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 40000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 30000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 20000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 40000 ps;
	D3(1) <= '1';
	WAIT FOR 50000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 30000 ps;
	D3(1) <= '0';
	WAIT FOR 20000 ps;
	D3(1) <= '1';
	WAIT FOR 20000 ps;
	D3(1) <= '0';
	WAIT FOR 30000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 10000 ps;
	D3(1) <= '0';
	WAIT FOR 10000 ps;
	D3(1) <= '1';
	WAIT FOR 30000 ps;
	D3(1) <= '0';
WAIT;
END PROCESS t_prcs_D3_1;
-- D3[0]
t_prcs_D3_0: PROCESS
BEGIN
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 40000 ps;
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 30000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 30000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 30000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 40000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 30000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 40000 ps;
	D3(0) <= '0';
	WAIT FOR 40000 ps;
	D3(0) <= '1';
	WAIT FOR 60000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 20000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 20000 ps;
	D3(0) <= '1';
	WAIT FOR 30000 ps;
	D3(0) <= '0';
	WAIT FOR 10000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 40000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
	WAIT FOR 30000 ps;
	D3(0) <= '1';
	WAIT FOR 10000 ps;
	D3(0) <= '0';
WAIT;
END PROCESS t_prcs_D3_0;
-- D4[4]
t_prcs_D4_4: PROCESS
BEGIN
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 50000 ps;
	D4(4) <= '0';
	WAIT FOR 30000 ps;
	D4(4) <= '1';
	WAIT FOR 30000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 20000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 50000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 40000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 40000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 20000 ps;
	D4(4) <= '0';
	WAIT FOR 50000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 60000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 20000 ps;
	D4(4) <= '0';
	WAIT FOR 30000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 30000 ps;
	D4(4) <= '0';
	WAIT FOR 30000 ps;
	D4(4) <= '1';
	WAIT FOR 20000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 20000 ps;
	D4(4) <= '0';
	WAIT FOR 40000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 10000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
	WAIT FOR 10000 ps;
	D4(4) <= '0';
	WAIT FOR 20000 ps;
	D4(4) <= '1';
WAIT;
END PROCESS t_prcs_D4_4;
-- D4[3]
t_prcs_D4_3: PROCESS
BEGIN
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 50000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 80000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 30000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 40000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 50000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 30000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 20000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 30000 ps;
	D4(3) <= '1';
	WAIT FOR 20000 ps;
	D4(3) <= '0';
	WAIT FOR 30000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 10000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
	WAIT FOR 40000 ps;
	D4(3) <= '1';
	WAIT FOR 10000 ps;
	D4(3) <= '0';
WAIT;
END PROCESS t_prcs_D4_3;
-- D4[2]
t_prcs_D4_2: PROCESS
BEGIN
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 30000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 40000 ps;
	D4(2) <= '1';
	WAIT FOR 80000 ps;
	D4(2) <= '0';
	WAIT FOR 20000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 30000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 20000 ps;
	D4(2) <= '1';
	WAIT FOR 30000 ps;
	D4(2) <= '0';
	WAIT FOR 20000 ps;
	D4(2) <= '1';
	WAIT FOR 50000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 30000 ps;
	D4(2) <= '0';
	WAIT FOR 30000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 20000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 30000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 30000 ps;
	D4(2) <= '1';
	WAIT FOR 10000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 30000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 30000 ps;
	D4(2) <= '0';
	WAIT FOR 20000 ps;
	D4(2) <= '1';
	WAIT FOR 20000 ps;
	D4(2) <= '0';
	WAIT FOR 10000 ps;
	D4(2) <= '1';
	WAIT FOR 60000 ps;
	D4(2) <= '0';
WAIT;
END PROCESS t_prcs_D4_2;
-- D4[1]
t_prcs_D4_1: PROCESS
BEGIN
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 50000 ps;
	D4(1) <= '0';
	WAIT FOR 40000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 30000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 30000 ps;
	D4(1) <= '1';
	WAIT FOR 30000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 20000 ps;
	D4(1) <= '1';
	WAIT FOR 30000 ps;
	D4(1) <= '0';
	WAIT FOR 20000 ps;
	D4(1) <= '1';
	WAIT FOR 30000 ps;
	D4(1) <= '0';
	WAIT FOR 50000 ps;
	D4(1) <= '1';
	WAIT FOR 20000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 20000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 20000 ps;
	D4(1) <= '0';
	WAIT FOR 20000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 30000 ps;
	D4(1) <= '0';
	WAIT FOR 30000 ps;
	D4(1) <= '1';
	WAIT FOR 30000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 30000 ps;
	D4(1) <= '0';
	WAIT FOR 30000 ps;
	D4(1) <= '1';
	WAIT FOR 70000 ps;
	D4(1) <= '0';
	WAIT FOR 30000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 30000 ps;
	D4(1) <= '1';
	WAIT FOR 60000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 20000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
	WAIT FOR 10000 ps;
	D4(1) <= '0';
	WAIT FOR 10000 ps;
	D4(1) <= '1';
WAIT;
END PROCESS t_prcs_D4_1;
-- D4[0]
t_prcs_D4_0: PROCESS
BEGIN
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 20000 ps;
	D4(0) <= '0';
	WAIT FOR 20000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 20000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 20000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 20000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 20000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 40000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 20000 ps;
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 30000 ps;
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 30000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 20000 ps;
	D4(0) <= '1';
	WAIT FOR 30000 ps;
	D4(0) <= '0';
	WAIT FOR 20000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 10000 ps;
	D4(0) <= '0';
	WAIT FOR 10000 ps;
	D4(0) <= '1';
	WAIT FOR 20000 ps;
	D4(0) <= '0';
	WAIT FOR 20000 ps;
	D4(0) <= '1';
	WAIT FOR 30000 ps;
	D4(0) <= '0';
	WAIT FOR 60000 ps;
	D4(0) <= '1';
	WAIT FOR 70000 ps;
	D4(0) <= '0';
WAIT;
END PROCESS t_prcs_D4_0;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
LOOP
	S(1) <= '0';
	WAIT FOR 20000 ps;
	S(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
LOOP
	S(0) <= '0';
	WAIT FOR 10000 ps;
	S(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_0;
END mux_4to1_5bit_arch;