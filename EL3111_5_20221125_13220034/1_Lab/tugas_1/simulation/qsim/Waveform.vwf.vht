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
-- Generated on "11/29/2022 04:21:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          top_level_design
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY top_level_design_vhd_vec_tst IS
END top_level_design_vhd_vec_tst;
ARCHITECTURE top_level_design_arch OF top_level_design_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_result_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BranchResult : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL FUNCT_In_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL instr_15_11_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instr_20_16_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instr_25_21_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instr_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL leftshift28_out : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL leftshift32_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL OP_In_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PCin_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PCout_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pcplus4_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rd1_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rd2_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RDData_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL signALUctrl_out : STD_LOGIC;
SIGNAL signALUsrc_out : STD_LOGIC;
SIGNAL signBNE_out : STD_LOGIC;
SIGNAL signBranch_out : STD_LOGIC;
SIGNAL signextend_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL signJump_out : STD_LOGIC;
SIGNAL signMemRead_out : STD_LOGIC;
SIGNAL signMemToReg_out : STD_LOGIC;
SIGNAL signMemWrite_out : STD_LOGIC;
SIGNAL signRegdest_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL signRegwrite_out : STD_LOGIC;
SIGNAL WRData3_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT top_level_design
	PORT (
	ALU_result_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	BranchResult : BUFFER STD_LOGIC;
	clock : IN STD_LOGIC;
	FUNCT_In_out : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	instr_15_11_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	instr_20_16_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	instr_25_21_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	instr_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	leftshift28_out : BUFFER STD_LOGIC_VECTOR(27 DOWNTO 0);
	leftshift32_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	OP_In_out : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	PCin_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	PCout_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	pcplus4_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	rd1_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	rd2_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RDData_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	signALUctrl_out : BUFFER STD_LOGIC;
	signALUsrc_out : BUFFER STD_LOGIC;
	signBNE_out : BUFFER STD_LOGIC;
	signBranch_out : BUFFER STD_LOGIC;
	signextend_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	signJump_out : BUFFER STD_LOGIC;
	signMemRead_out : BUFFER STD_LOGIC;
	signMemToReg_out : BUFFER STD_LOGIC;
	signMemWrite_out : BUFFER STD_LOGIC;
	signRegdest_out : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	signRegwrite_out : BUFFER STD_LOGIC;
	WRData3_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : top_level_design
	PORT MAP (
-- list connections between master ports and signals
	ALU_result_out => ALU_result_out,
	BranchResult => BranchResult,
	clock => clock,
	FUNCT_In_out => FUNCT_In_out,
	instr_15_11_out => instr_15_11_out,
	instr_20_16_out => instr_20_16_out,
	instr_25_21_out => instr_25_21_out,
	instr_out => instr_out,
	leftshift28_out => leftshift28_out,
	leftshift32_out => leftshift32_out,
	OP_In_out => OP_In_out,
	PCin_out => PCin_out,
	PCout_out => PCout_out,
	pcplus4_out => pcplus4_out,
	rd1_out => rd1_out,
	rd2_out => rd2_out,
	RDData_out => RDData_out,
	reset => reset,
	signALUctrl_out => signALUctrl_out,
	signALUsrc_out => signALUsrc_out,
	signBNE_out => signBNE_out,
	signBranch_out => signBranch_out,
	signextend_out => signextend_out,
	signJump_out => signJump_out,
	signMemRead_out => signMemRead_out,
	signMemToReg_out => signMemToReg_out,
	signMemWrite_out => signMemWrite_out,
	signRegdest_out => signRegdest_out,
	signRegwrite_out => signRegwrite_out,
	WRData3_out => WRData3_out
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END top_level_design_arch;
