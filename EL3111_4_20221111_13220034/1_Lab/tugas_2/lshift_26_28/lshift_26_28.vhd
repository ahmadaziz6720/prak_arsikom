-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: 2b
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: lshift_26_28.vhd
-- Deskripsi 	: Program untuk melakukan operasi shift left pada 26 bit dengan output 28 bit

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY lshift_26_28 IS
	PORT (
    	D_IN : IN STD_LOGIC_VECTOR (25 DOWNTO 0); -- Input 32-bit;
    	D_OUT : OUT STD_LOGIC_VECTOR (27 DOWNTO 0) -- Output 32-bit;
    );
END lshift_26_28;

ARCHITECTURE behavior OF lshift_26_28 IS
	BEGIN
	PROCESS (D_IN)
		BEGIN
		D_OUT(27 DOWNTO 2) <= D_IN(25 DOWNTO 0);
		D_OUT(1 DOWNTO 0) <= "00";
	END PROCESS;
END behavior;
