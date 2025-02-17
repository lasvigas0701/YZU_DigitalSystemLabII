library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab12_G06_bonus is
    Port (
        clk       : in  STD_LOGIC; -- ������J
        pb1       : in  STD_LOGIC; -- �������s
        pb2       : in  STD_LOGIC; -- �k�����s
        BUTTON    : in  STD_LOGIC_VECTOR (1 downto 0); -- �վ�t�׫��s
        LED_data  : in  STD_LOGIC_VECTOR (4 downto 0); -- ��J LED ���
        LEDs      : out STD_LOGIC_VECTOR (9 downto 0) -- LED ��X
    );
end lab12_G06_bonus;

architecture arch of lab12_G06_bonus is
    signal current_state : STD_LOGIC_VECTOR (9 downto 0);
    signal new_clk : std_logic := '0';
    signal counter : integer := 0;
    signal divisor  : integer := 10000000; -- ��l���W��
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
                -- ����
                current_state <= current_state(0) & current_state(9 downto 1);
            elsif pb2 = '1' then
                -- �k��
                current_state <= current_state(8 downto 0) & current_state(9);
            end if;
        end if;
    end process;

    process (clk)
        variable button0_last_state : std_logic := '0';
        variable button1_last_state : std_logic := '0';
    begin
        if rising_edge(clk) then
            if BUTTON(0) = '1' and button0_last_state = '0' then
                if divisor < 50000000 then 
                    divisor <= divisor + 1000000;
                end if;
            end if;
            button0_last_state := BUTTON(0);

            if BUTTON(1) = '1' and button1_last_state = '0' then
                if divisor > 1000000 then
                    divisor <= divisor - 1000000;
                end if;
            end if;
            button1_last_state := BUTTON(1);
        end if;
    end process;

    LEDs <= current_state;

end arch;