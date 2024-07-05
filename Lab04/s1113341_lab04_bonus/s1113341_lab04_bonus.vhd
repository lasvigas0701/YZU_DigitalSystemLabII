Library IEEE;
use IEEE.std_logic_1164.all;

Entity s1113341_lab04_bonus is
	Port( a0, a1, a2, a3, a4, a5, a6, a7, en: in std_logic;
		  y0, y1, y2: out std_logic);
		
end s1113341_lab04_bonus;

Architecture arch of s1113341_lab04_bonus is
Begin
	y0 <= en and (a1 or a3 or a5 or a7);
	y1 <= en and (a2 or a3 or a6 or a7);
	y2 <= en and (a4 or a5 or a6 or a7);
end arch;