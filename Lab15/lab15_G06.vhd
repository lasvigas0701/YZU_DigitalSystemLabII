library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lab15_G06 is
    port (
        clk : in std_logic;
        led : out std_logic_vector(2 downto 0);
        hex0 : out std_logic_vector(6 downto 0)
    );
end lab15_G06;

architecture Behavioral of lab15_G06 is
    type state_type is (GREEN, YELLOW, RED);
    signal state : state_type := GREEN;
    signal counter : integer := 7;
    signal clk_div : integer := 0;
    signal one_sec_pulse : std_logic := '0';

    -- 七段顯示器的數字編碼
    function to_7segment(input: integer) return std_logic_vector is
        variable segments : std_logic_vector(6 downto 0);
    begin
        case input is
            when 0 => segments := "1000000";
            when 1 => segments := "1111001";
            when 2 => segments := "0100100";
            when 3 => segments := "0110000";
            when 4 => segments := "0011001";
            when 5 => segments := "0010010";
            when 6 => segments := "0000010";
            when 7 => segments := "1111000";
            when 8 => segments := "0000000";
            when 9 => segments := "0010000";
            when others => segments := "1111111"; -- 全熄
        end case;
        return segments;
    end to_7segment;

begin
    process (clk)
    begin
        if rising_edge(clk) then
            -- 產生1秒的脈衝
            if clk_div = 50000000 then
                one_sec_pulse <= '1';
                clk_div <= 0;
            else
                one_sec_pulse <= '0';
                clk_div <= clk_div + 1;
            end if;

            if one_sec_pulse = '1' then
                case state is
                    when GREEN =>
                        if counter > 3 then
                            counter <= counter - 1;
                        else
                            state <= YELLOW;
                            counter <= counter - 1;
                        end if;
                    when YELLOW =>
                        if counter > 1 then
                            counter <= counter - 1;
                        else
                            state <= RED;
                            counter <= 5;
                        end if;
                    when RED =>
                        if counter > 1 then
                            counter <= counter - 1;
                        else
                            state <= GREEN;
                            counter <= 7;
                        end if;
                end case;
            end if;
        end if;
    end process;

    -- 控制LED和七段顯示器
    process (state, counter)
    begin
        case state is
            when GREEN =>
                led <= "001"; -- 綠燈
            when YELLOW =>
                led <= "010"; -- 黃燈
            when RED =>
                led <= "100"; -- 紅燈
            when others =>
                led <= "000"; -- 所有燈熄滅
        end case;

        -- 更新七段顯示器
        hex0 <= to_7segment(counter);
    end process;
end Behavioral;
