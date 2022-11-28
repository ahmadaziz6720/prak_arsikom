-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul : 4
-- Percobaan : 1
-- Tanggal : 28 Oktober 2022
-- Kelompok : 10
-- Rombongan : B
-- Nama (NIM) 1 : Gilbert Ng (13220032)
-- Nama (NIM) 2 : Ahmad Aziz (13220034)
-- Nama File : reg_file.vhd

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY reg_file IS
	PORT (
		clock : IN STD_LOGIC; -- clock
		WR_EN : IN STD_LOGIC; -- write enable
		ADDR_1 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Input 1
		ADDR_2 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Input 2
		ADDR_3 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Input 3
		WR_Data_3 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);-- write data
		RD_Data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);-- read data 1
		RD_Data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) -- read data 2
		);
END ENTITY;

ARCHITECTURE behavior OF reg_file IS
	TYPE ramtype IS ARRAY (31 DOWNTO 0) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL mem: ramtype;

	BEGIN
	PROCESS (clock, WR_EN, ADDR_1, ADDR_2, ADDR_3, mem)
		BEGIN
		IF (rising_edge(clock) AND WR_EN = '1') THEN
			mem(conv_integer(ADDR_3)) <= WR_Data_3;
		ELSIF (falling_edge(clock)) THEN
			RD_DATA_1 <= mem(conv_integer(ADDR_1));
			RD_DATA_2 <= mem(conv_integer(ADDR_2));
		END IF;
	END PROCESS;
END behavior;