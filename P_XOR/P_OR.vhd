library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P_OR is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end P_OR;

architecture behavioral of P_OR is
	begin
		S <= A or B;
	end behavioral;