library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab14_G06_bonus is
    Port ( clk  : in STD_LOGIC;
           btn2 : in STD_LOGIC;
           btn1 : in STD_LOGIC;
           btn0 : in STD_LOGIC;
           hex0 : out STD_LOGIC_VECTOR(7 downto 0);
           hex1 : out STD_LOGIC_VECTOR(7 downto 0));
end lab14_G06_bonus;

architecture arch of lab14_G06_bonus is
    signal count : INTEGER range 0 to 99 := 99;
    signal btn2_reg, btn1_reg, btn0_reg : STD_LOGIC;
    signal btn2_edge, btn1_edge, btn0_edge : STD_LOGIC;

    function decode(digit : integer) return STD_LOGIC_VECTOR is
    begin
        case digit is
            when 0 => return "11000000"; -- 0
            when 1 => return "11111001"; -- 1
            when 2 => return "10100100"; -- 2
            when 3 => return "10110000"; -- 3
            when 4 => return "10011001"; -- 4
            when 5 => return "10010010"; -- 5
            when 6 => return "10000010"; -- 6
            when 7 => return "11111000"; -- 7
            when 8 => return "10000000"; -- 8
            when 9 => return "10010000"; -- 9
            when others => return "11111111";
        end case;
    end function decode;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            btn2_reg <= btn2;
            btn1_reg <= btn1;
            btn0_reg <= btn0;
            
            btn2_edge <= btn2 and not btn2_reg;
            btn1_edge <= btn1 and not btn1_reg;
            btn0_edge <= btn0 and not btn0_reg;
            
            if btn2_edge = '1' then
                if count = 99 then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            elsif btn1_edge = '1' then
                if count = 0 then
                    count <= 99;
                else
                    count <= count - 1;
                end if;
            elsif btn0_edge = '1' then
                count <= 0;
            end if;
        end if;
    end process;

    hex0 <= decode(count mod 10);
    hex1 <= decode(count / 10);

end arch;
