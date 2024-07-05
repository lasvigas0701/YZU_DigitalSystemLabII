library ieee;
use ieee.std_logic_1164.all;

entity s1113341_lab05_bonus is
    port(
        preset  : in std_logic;
        clear   : in std_logic;
        sin     : in std_logic;
        clk     : in std_logic;
        q		: out std_logic_vector(3 downto 0));
end s1113341_lab05_bonus;

architecture behavioral of s1113341_lab05_bonus is
    signal j, k : std_logic_vector(3 downto 0);
    signal q_reg : std_logic_vector(3 downto 0);
begin
    process(clk, preset, clear)
    begin
        if preset = '0' then
            q_reg <= (others => '1');
        elsif clear = '0' then
            q_reg <= (others => '0');
        elsif rising_edge(clk) then
			q_reg(0) <= sin;
            for i in 1 to 3 loop
                q_reg(i) <= q_reg(i-1);
            end loop;
        end if;
    end process;

    q(0) <= q_reg(0);
    q(1) <= q_reg(1);
    q(2) <= q_reg(2);
    q(3) <= q_reg(3);
end behavioral;