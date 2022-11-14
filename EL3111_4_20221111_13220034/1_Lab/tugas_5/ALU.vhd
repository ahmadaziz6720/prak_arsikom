-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: 5
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: ALU.vhd
-- Deskripsi 	: Program Arithmetic Logic Unit

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY ALU IS
	PORT (
		OPRND_1 : IN std_logic_vector (31 DOWNTO 0); -- Data Input 1 
		OPRND_2 : IN std_logic_vector (31 DOWNTO 0); -- Data Input 2
		OP_SEL : IN std_logic; -- Operation Select
		RESULT : OUT std_logic_vector (31 DOWNTO 0) -- Data Output
	);
END ALU;

ARCHITECTURE behavioral OF ALU IS
	COMPONENT cla_32 IS
		PORT	(
		OPRND_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Operand 1
		OPRND_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0); -- Operand 2
		C_IN : IN STD_LOGIC; -- Carry In
		RESULT : OUT STD_LOGIC_VECTOR (31 DOWNTO 0); -- Result
		C_OUT : OUT STD_LOGIC -- Overflow
		);
	END COMPONENT;

	SIGNAL OPRND2_comp : STD_LOGIC_VECTOR (31 DOWNTO 0);

	BEGIN ADDER : cla_32
	PORT MAP(
		OPRND_1 => OPRND_1,
		OPRND_2 => OPRND2_comp,
		C_IN => OP_SEL,
		RESULT => RESULT
	);
	
	PROCESS (OP_SEL, OPRND_2)
		BEGIN
		IF OP_SEL = '0' THEN
			OPRND2_comp <= OPRND_2;
		ELSE
			OPRND2_comp <= not OPRND_2;
		END IF;
	END PROCESS;
END behavioral;
