library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab10_G06 is
    Port ( SW : in  STD_LOGIC_VECTOR(9 downto 0);
           LED : out  STD_LOGIC_VECTOR(9 downto 0));
end lab10_G06;

architecture arch of lab10_G06 is
begin
    LED <= SW;
end arch;
