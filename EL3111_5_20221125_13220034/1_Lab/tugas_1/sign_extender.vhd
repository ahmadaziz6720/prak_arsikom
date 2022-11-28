-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: 4
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: sign_extender.vhd
-- Deskripsi 	: Program sign extender pada arsitektur MIPS

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY sign_extender IS
	PORT (
		D_In :IN std_logic_vector (15 DOWNTO 0); -- Data Input 1 
		D_Out :OUT std_logic_vector (31 DOWNTO 0) -- Data Input 2
	);
END sign_extender;

ARCHITECTURE behavior OF sign_extender IS
	BEGIN
	PROCESS (D_in)
		BEGIN
		D_out(31 DOWNTO 16) <= "1111111111111111";
		D_out(15 DOWNTO 0) <= D_IN(15 DOWNTO 0);
	END PROCESS;
END behavior;
