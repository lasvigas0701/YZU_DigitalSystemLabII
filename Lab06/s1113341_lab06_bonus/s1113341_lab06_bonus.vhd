library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s1113341_lab06_bonus is
    port (
        CLK, RESET: in std_logic;
        str_in: in std_logic;
        str_out: out std_logic_vector (2 downto 0);
        match: out std_logic
    );
end entity s1113341_lab06_bonus;

architecture arch of s1113341_lab06_bonus is
    signal str_out_tmp: std_logic_vector(2 downto 0);
    --type state_type is (S0, S1, S2, S3);
   -- signal state: state_type;

begin
    -- Next state logic and output logic
    process (RESET, str_in, str_out_tmp, CLK)
    begin
		if RESET = '1' then
            str_out_tmp <= "000";
		elsif rising_edge(CLK) then
			str_out_tmp(2) <= str_out_tmp(1);
			str_out_tmp(1) <= str_out_tmp(0);
			str_out_tmp(0) <= str_in;
		end if;
		
        if str_out_tmp = "110" then 
			match <= '1';
		else match <= '0';
		end if;
    end process;
    
    str_out(0) <= str_out_tmp(0);
    str_out(1) <= str_out_tmp(1);
    str_out(2) <= str_out_tmp(2);
end architecture arch;