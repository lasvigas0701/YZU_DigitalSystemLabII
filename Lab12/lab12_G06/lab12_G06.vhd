library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab12_G06 is
    Port (
        clk       : in  STD_LOGIC; -- 全局時鐘信號
        pb1       : in  STD_LOGIC; -- 控制資料右移
        pb2       : in  STD_LOGIC; -- 控制資料左移
        LED_data  : in  STD_LOGIC_VECTOR (4 downto 0); -- 導入 LED 的初始狀態
        LEDs      : out STD_LOGIC_VECTOR (9 downto 0) -- LED 輸出
    );
end lab12_G06;

architecture Behavioral of lab12_G06 is
    signal current_state : STD_LOGIC_VECTOR (9 downto 0);
	signal new_clk : std_logic := '0';
    signal counter : integer := 0;
    signal divisor  : integer := 10000000;
begin
	process (clk)
    begin
        if rising_edge(clk) then
            if counter >= divisor - 1 then
                counter <= 0;
                new_clk <= not new_clk;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    process(new_clk)
    begin
        if rising_edge(new_clk) then
            if (pb1 = '0' and pb2 = '0') then
                current_state <= "0000000000";
                current_state(4 downto 0) <= LED_data(4 downto 0);
            elsif (pb1 = '1' and pb2 = '1') then
				current_state <= current_state;
            elsif pb1 = '1' then
                -- 環形向右移位
                current_state <= current_state(0) & current_state(9 downto 1);
            elsif pb2 = '1' then
                -- 環形向左移位
                current_state <= current_state(8 downto 0) & current_state(9);
            end if;
        end if;
    end process;

    LEDs <= current_state; -- 將 current_state 映射到 LEDs 的低 5 位，高 5 位保持為 0

end Behavioral;
