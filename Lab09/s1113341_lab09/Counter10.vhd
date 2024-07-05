library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter10 is
    port(
        clk, clrn, en, load: in std_logic;
        Da: in std_logic_vector(3 downto 0);
        Qa: out std_logic_vector(3 downto 0);
        carry_out: out std_logic -- Output carry signal when reaching 10
    );
end entity Counter10;

architecture arch of Counter10 is
    signal temp_Qa: unsigned(3 downto 0);
begin
    process(clk, clrn)
    begin
        if clrn = '1' then
            temp_Qa <= "0000";
        elsif rising_edge(clk) then
            if en = '1' then
                if load = '1' then
                    temp_Qa <= unsigned(Da);
                else
                    if temp_Qa = 9 then
                        temp_Qa <= "0000";
                        carry_out <= '1';
                    else
                        temp_Qa <= temp_Qa + 1;
                    end if;
                end if;
            end if;
         carry_out <= '0';
        end if;
    end process;

    Qa <= std_logic_vector(temp_Qa);
end architecture arch;
