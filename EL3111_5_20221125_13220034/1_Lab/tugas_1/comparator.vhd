-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 		: 4
-- Percobaan 	: TP
-- Tanggal 		: 11 November 2022
-- Kelompok 	: 10
-- Rombongan 	: B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File 	: comparator.vhd
-- Deskripsi 	: comparator

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY comparator IS
    PORT (
        D_1 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        D_2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        EQ : OUT STD_LOGIC -- Hasil Perbandingan EQ
    );
END comparator;

ARCHITECTURE behavioral OF comparator IS
    BEGIN
    PROCESS (D_1,D_2)
        BEGIN
        IF (D_1 = D_2) THEN
            EQ <= '1';
        ELSE 
            EQ <= '0';
        END IF;
    END PROCESS;
END behavioral;