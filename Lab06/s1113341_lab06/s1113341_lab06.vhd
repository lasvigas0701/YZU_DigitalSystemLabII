library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s1113341_lab06 is
    port (
        CLK, RESET: in std_logic;
        Din: in std_logic;
        Qout: out std_logic
    );
end entity s1113341_lab06;

architecture arch of s1113341_lab06 is
    type state_type is (S0, S1, S2, S3);
    signal current_state, next_state: state_type;
    signal output_signal: std_logic_vector(1 downto 0);

begin
    process (CLK, RESET)
    begin
        if RESET = '1' then
            current_state <= S0;
        elsif rising_edge(CLK) then
            current_state <= next_state;
        end if;
    end process;

    process (current_state, Din)
    begin
        case current_state is
            when S0 =>
                if Din = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;
                Qout <= '0';
            when S1 =>
                if Din = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;
                Qout <= '1';
            when S2 =>
                if Din = '1' then
                    next_state <= S3;
                else
                    next_state <= S2;
                end if;
                Qout <= '1';
            when S3 =>
				if Din = '1' then
                    next_state <= S1;
                else
                    next_state <= S3;
                end if;
                Qout <= '0';
        end case;
    end process;

end architecture arch;