library ieee;
use ieee.std_logic_1164.all;

entity s1113341_lab08_1 is
    Port ( clrn: in std_logic;
           clk : in std_logic;
           Ldn, Sh : in std_logic;
           Di  : in std_logic;
           D3, D2, D1, D0   : in std_logic;
           Q3, Q2, Q1, Q0   : out std_logic
          );
end s1113341_lab08_1;

architecture arch of s1113341_lab08_1 is
	signal bufferQ : std_logic_vector(3 downto 0) := "0000";
begin
    process(clk, clrn)
    begin
        if clrn = '0' then
            bufferQ(3) <= '0';
            bufferQ(2) <= '0';
            bufferQ(1) <= '0';
            bufferQ(0) <= '0';
        elsif rising_edge(clk) then
            if Ldn = '1' then
                bufferQ(3) <= D3;
                bufferQ(2) <= D2;
                bufferQ(1) <= D1;
                bufferQ(0) <= D0;  
            elsif Sh = '1' then
				for i in 0 to 2 loop
					bufferQ(i) <= bufferQ(i+1);
                end loop;
                bufferQ(3) <= Di;
            end if;
        end if;
    end process;

	Q3 <= bufferQ(3);
	Q2 <= bufferQ(2);
	Q1 <= bufferQ(1);
	Q0 <= bufferQ(0);
end arch;