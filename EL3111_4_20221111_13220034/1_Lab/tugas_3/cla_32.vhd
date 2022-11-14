-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: 3
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: cla_32.vhd
-- Deskripsi 	: Carry Look Ahead Adder 32 bit

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY cla_32 IS
	PORT (
		OPRND_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Operand 1
		OPRND_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0); -- Operand 2
		C_IN : IN STD_LOGIC; -- Carry In
		RESULT : OUT STD_LOGIC_VECTOR (31 DOWNTO 0); -- Result
		C_OUT : OUT STD_LOGIC -- Overflow
	);
END cla_32;

ARCHITECTURE behavior OF cla_32 IS
	SIGNAL SUM  :    STD_LOGIC_VECTOR(31 DOWNTO 0); -- Sum
	SIGNAL G    :    STD_LOGIC_VECTOR(31 DOWNTO 0); --generate
	SIGNAL P   	:    STD_LOGIC_VECTOR(31 DOWNTO 0);	--propagate
	SIGNAL C 	:    STD_LOGIC_VECTOR(31 DOWNTO 1); --carry
	
	BEGIN
	SUM	<= OPRND_1 XOR OPRND_2;
	G 	<= OPRND_1 AND OPRND_2;
	P 	<= OPRND_1 OR OPRND_2;
	PROCESS (OPRND_1, OPRND_2, C_IN)
		BEGIN
		C(1) <= G(0) OR (P(0) AND C_IN);	
				FOR i IN 1 TO 30 LOOP
					C(i+1) <= G(i) OR (P(i) AND C(i));
				END LOOP;
			C_OUT <= G(31) OR (P(31) AND C(31));
			RESULT(0) <= SUM(0) XOR C_IN;
			RESULT(31 DOWNTO 1) <= SUM(31 DOWNTO 1) XOR C(31 DOWNTO 1);
	END PROCESS;
END behavior;
