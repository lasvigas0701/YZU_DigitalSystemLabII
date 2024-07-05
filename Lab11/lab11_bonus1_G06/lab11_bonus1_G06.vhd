library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab11_bonus1_G06 is
    Port ( clk : in STD_LOGIC;
           enable : in STD_LOGIC;
           led : out STD_LOGIC);
end lab11_bonus1_G06;

architecture arch of lab11_bonus1_G06 is
    signal clk_count: STD_LOGIC_VECTOR(30 downto 0) := (others => '0');
    signal pwm_count: STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal duty: STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
    signal rising: STD_LOGIC := '1'; 
begin
    process(clk)
    begin
        if rising_edge(clk) then
            clk_count <= clk_count + 1;
            if clk_count = 1000000 then 
                clk_count <= (others => '0');
                
              
                if rising = '1' then
                    if duty < "1111100111" then
                        duty <= duty + 1;
                    else
                        rising <= '0'; 
                    end if;
                else
                    if duty > "0000000000" then
                        duty <= duty - 1;
                    else
                        rising <= '1'; 
                    end if;
                end if;
            end if;

            if pwm_count < "1111100111" then
                pwm_count <= pwm_count + 1;
            else
                pwm_count <= (others => '0');
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                if pwm_count < duty then
                    led <= '1';
                else
                    led <= '0';
                end if;
            else
                led <= '0';
            end if;
        end if;
    end process;
end arch;
