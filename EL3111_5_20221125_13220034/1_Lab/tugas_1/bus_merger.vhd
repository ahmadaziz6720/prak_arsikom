-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: TP
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: bus_merger.vhd
-- Deskripsi 	: Bus merger

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY bus_merger IS
    PORT (
        DATA_IN1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        DATA_IN2 : IN STD_LOGIC_VECTOR (27 DOWNTO 0);
        DATA_OUT : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
    );
END bus_merger;

ARCHITECTURE behavioral OF bus_merger IS
    BEGIN
    DATA_OUT(31 DOWNTO 28) <= DATA_IN1;
    DATA_OUT(27 DOWNTO 0) <= DATA_IN2;
END behavioral;