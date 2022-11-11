library IEEE;
use IEEE.std_logic_1164.all;

ENTITY mux_2to1_32bit IS
	PORT (
		D1 : IN std_logic_vector (31 DOWNTO 0); -- Data Input 1 
		D2 : IN std_logic_vector (31 DOWNTO 0); -- Data Input 2 
		Y : OUT std_logic_vector (31 DOWNTO 0); -- Selected Data
		S : IN std_logic -- Selector
	);
END mux_2to1_32bit;

ARCHITECTURE Structural OF mux_2to1_32bit IS
	COMPONENT mux IS
		PORT (
			D1_in : IN std_logic_vector;
			D2_in : IN std_logic_vector;
			S_s : IN STD_LOGIC;
			Y_out : OUT std_logic_vector
		);
	END COMPONENT;

BEGIN
	mux0 : mux
	PORT MAP
		(
			D1_in => D1(3),
			D2_in => D2(3),
			S_s => S,
			Y_out => Y(3)
		);

	WITH S_s SELECT
    Y_out <= 	D1_in when '0',
				D2_in when others;

END Structural;