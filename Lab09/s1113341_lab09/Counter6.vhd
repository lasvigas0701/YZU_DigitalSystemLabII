library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter6 is
    port(
        clk, clrn, en, load, inc: in std_logic;
        Db: in std_logic_vector(2 downto 0); 
        Qb: out std_logic_vector(2 downto 0)
    );
end entity Counter6;

architecture arch of Counter6 is
    signal temp_Qb: unsigned(2 downto 0);
begin
    process(clk, clrn)
    begin
        if clrn = '1' then
            temp_Qb <= "000";
        elsif rising_edge(clk) then
            if en = '1' then
                if load = '1' then
                    temp_Qb <= unsigned(Db);
                elsif inc = '1' then
                    if temp_Qb = 5 then
                        temp_Qb <= "000";
                    else
                        temp_Qb <= temp_Qb + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    Qb <= std_logic_vector(temp_Qb);
end architecture arch;
