library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P_XOR is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end P_XOR;

architecture behavioral of P_XOR is

component P_NOT is
	port(
			A : in STD_LOGIC;
			B : out STD_LOGIC
			);
end component;

component P_AND is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end component;
	
component P_OR is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end component;

signal S1, S2, S3, S4: STD_LOGIC;

	begin
		G1: P_NOT port map(A, S1);
		G2: P_NOT port map(B, S2);
		G3: P_AND port map(S1, B, S3);
		G4: P_AND port map(A, S2, S4);
		G5: P_OR port map(S3, S4, S);
	end behavioral;