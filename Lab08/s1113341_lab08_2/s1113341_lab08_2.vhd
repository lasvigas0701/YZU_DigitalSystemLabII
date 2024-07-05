library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s1113341_lab08_2 is
    port (
        clk,clrn   : in  std_logic;
        Q : out std_logic_vector(1 downto 0)
    );
end entity s1113341_lab08_2;

architecture arch of s1113341_lab08_2 is
    signal tmp_Q : std_logic_vector(1 downto 0) := "00";
begin
    process (clk, clrn)
    begin
		if clrn = '0' then
			tmp_Q <= "00";
		elsif rising_edge(clk) then
			tmp_Q <= std_logic_vector(unsigned(tmp_Q) + 1);
		end if;
    end process;
    
    Q <= tmp_Q;
end arch;
