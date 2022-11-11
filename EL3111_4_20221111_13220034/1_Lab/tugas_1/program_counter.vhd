-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul : 4
-- Percobaan : 1
-- Tanggal : 11 November 2022
-- Kelompok : 10
-- Rombongan : B
-- Nama (NIM) 1 : Ahmad Aziz (13220034)
-- Nama (NIM) 2 : 
-- Nama File : program_counter.vhd
-- Deskripsi : 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY program_counter IS
PORT (
		clk : IN STD_LOGIC;
		PC_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		PC_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END program_counter;

ARCHITECTURE behavior OF program_counter IS
	BEGIN
		PROCESS (clk,PC_in)
			BEGIN
			IF (rising_edge(clk)) THEN
				PC_out <= PC_in;
			END IF;
		END PROCESS;
END behavior;		