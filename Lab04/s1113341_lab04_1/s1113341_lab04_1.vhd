Library IEEE;
use IEEE.std_logic_1164.all;

Entity s1113341_lab04_1 is
	Port( A, B, C, D: in std_logic;
		  y: out std_logic);
		
end s1113341_lab04_1;

Architecture arch of s1113341_lab04_1 is
Begin
	y <= (not A and not C) or (not B and D) or (not C and not D) or (A and B and C);
end arch;