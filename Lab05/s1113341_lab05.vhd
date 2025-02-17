library IEEE;
use IEEE.std_logic_1164.all;

entity s1113341_lab05 is
	port ( ck : in std_logic;
		   din : in std_logic;
		   reset : in std_logic;
		   q: out std_logic_vector(7 downto 0));
end s1113341_lab05;

architecture arch of s1113341_lab05 is
	signal temp : std_logic_vector (7 downto 0);
begin
	process (ck, reset)
	begin
		if reset = '1' then
			temp <= (others => '0');
		elsif rising_edge (ck) then
			temp(0) <= din;
			for i in 1 to 7 loop
				temp(i) <= temp(i-1);
			end loop;
		end if;
	end process;
	
	q <= temp;
end arch;
