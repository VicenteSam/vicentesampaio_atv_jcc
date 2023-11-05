library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P_NOT is
	port(
			A : in STD_LOGIC;
			B : out STD_LOGIC
			);
end P_NOT;

architecture behavioral of P_NOT is
	begin
		B <= not A;
	end behavioral;
