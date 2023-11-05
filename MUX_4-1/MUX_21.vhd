library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_21 is
	 Port ( A : in STD_LOGIC;
	        B : in STD_LOGIC;
			  S : in STD_LOGIC;
			  Y : out STD_LOGIC);
end MUX_21;

architecture behavioral of MUX_21 is

begin

Y <= ((not S) and A) or (S and B);

end behavioral;