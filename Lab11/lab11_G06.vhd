library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab11_G06 is
    Port (
        clk     : in std_logic;
        enable  : in std_logic;
        duty    : in unsigned(2 downto 0);
        led     : out std_logic
    );
end lab11_G06;

architecture arch of lab11_G06 is
    signal count : unsigned(15 downto 0) := (others => '0');
    signal pwm_out : std_logic;
    constant period : unsigned(15 downto 0) := to_unsigned(10, 16);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                if count < period - 1 then
                    count <= count + 1;
                else
                    count <= (others => '0');
                end if;

                if count < period * duty / 8 then
                    pwm_out <= '1';
                else
                    pwm_out <= '0';
                end if;
            else
                pwm_out <= '0';
                count <= (others => '0');
            end if;
        end if;
    end process;

    led <= pwm_out;

end arch;
