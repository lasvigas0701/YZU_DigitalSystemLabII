library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s1113341_lab07 is
    port(
        A, B: in std_logic_vector(3 downto 0);
        sel: in std_logic_vector(1 downto 0);
        aluo: out std_logic_vector(4 downto 0)
    );
end s1113341_lab07;

architecture arch of s1113341_lab07 is
    signal tmp: signed(4 downto 0);
begin
    process(sel)
    begin
        case sel is
            when "00" =>
                tmp <= signed("0" & A) or signed("0" & B);
            when "01" =>
                tmp <= signed("0" & A) and signed("0" & B);
            when "10" =>
                tmp <= signed("0" & A) - signed("0" & B);
            when "11" =>
                tmp <= signed("0" & A) + signed("0" & B);
            when others =>
                tmp <= (others => '0');
        end case;
        
        aluo <= std_logic_vector(tmp);
    end process;
end arch;