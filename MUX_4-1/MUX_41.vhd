library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_41 is
	 Port ( A : in STD_LOGIC;
	        B : in STD_LOGIC;
			  C : in STD_LOGIC;
	        D : in STD_LOGIC;
			  S : in STD_LOGIC_VECTOR (1 downto 0);
			  Y : out STD_LOGIC);
end MUX_41;

architecture behavioral of MUX_41 is

component MUX_21 is
	 Port ( A : in STD_LOGIC;
	        B : in STD_LOGIC;
			  S : in STD_LOGIC;
			  Y : out STD_LOGIC);
end component;

signal t1, t2: STD_LOGIC;

begin

U1: MUX_21 port map (A, B, S(0), t2);
U2: MUX_21 port map(C, D, S(0), t1);
U3: MUX_21 port map (t2, t1, S(1), Y);

end behavioral;