library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab14_G06 is
    Port ( btn2 : in STD_LOGIC;
           hex0 : out STD_LOGIC_VECTOR(7 downto 0);
           hex1 : out STD_LOGIC_VECTOR(7 downto 0));
end lab14_G06;

architecture arch of lab14_G06 is
    signal count : INTEGER range 0 to 99 := 0;

    function decode(digit : integer) return STD_LOGIC_VECTOR is
    begin
        case digit is
            when 0 => return "11000000";
            when 1 => return "11111001";
            when 2 => return "10100100";
            when 3 => return "10110000";
            when 4 => return "10011001";
            when 5 => return "10010010"; 
            when 6 => return "10000010"; 
            when 7 => return "11111000"; 
            when 8 => return "10000000";
            when 9 => return "10010000";
            when others => return "11111111";
        end case;
    end function decode;

begin
    process(btn2)
    begin
        if rising_edge(btn2) then
                if count = 99 then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
        end if;
    end process;

    hex0 <= decode(count mod 10);
    hex1 <= decode(count / 10);

end arch;