Library IEEE;
use IEEE.std_logic_1164.all;

Entity s1113341_lab04_2 is
	Port( A, B, C, D: in std_logic;
		  y: out std_logic);
		
end s1113341_lab04_2;

Architecture arch of s1113341_lab04_2 is
Begin
	y <= (not A or not B or C or not D) and (A or not B or not C) and (B or not C or D);
end arch;