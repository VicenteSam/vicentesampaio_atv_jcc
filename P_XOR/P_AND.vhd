library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P_AND is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end P_AND;

architecture behavioral of P_AND is
	begin
		S <= A and B;
	end behavioral;