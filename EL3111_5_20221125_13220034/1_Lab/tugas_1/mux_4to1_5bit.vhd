-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: TP
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: mux_4to1_5bit.vhd
-- Deskripsi 	: Multiplexer 2 to 1 32 bit

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

ENTITY mux_4to1_5bit IS
 PORT (
  D1 : IN std_logic_vector  (4 DOWNTO 0); -- Data Input 1 
  D2 : IN std_logic_vector  (4 DOWNTO 0); -- Data Input 2 
  D3 : IN std_logic_vector  (4 DOWNTO 0); -- Data Input 3
  D4 : IN std_logic_vector  (4 DOWNTO 0); -- Data Input 4 
  S  : IN std_logic_vector  (1 downto 0); -- Selector
  Y  : OUT std_logic_vector (4 DOWNTO 0) -- Selected Data
 );
END mux_4to1_5bit;

ARCHITECTURE arch OF mux_4to1_5bit IS
BEGIN
		PROCESS (S,D1,D2,D3,D4)
		BEGIN
			IF (S = "00") THEN
				Y <= D1;
			ELSIF (S = "01") THEN
				Y <= D2;
			ELSIF (S="10") THEN
				Y <= D3;
			ELSIF (S="11") THEN
				Y <= D4;
			END IF;
		END PROCESS; 
END arch;