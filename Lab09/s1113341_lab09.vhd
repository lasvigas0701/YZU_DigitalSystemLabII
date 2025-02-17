library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s1113341_lab09 is
    port(
        clk, clrn, en, load: in std_logic;
        Da: in std_logic_vector(3 downto 0);
        Db: in std_logic_vector(2 downto 0);
        Co: out std_logic;
        qa: out std_logic_vector(3 downto 0);
        qb: out std_logic_vector(2 downto 0)
    );
end entity s1113341_lab09;

architecture arch of s1113341_lab09 is
    signal temp_Qa: std_logic_vector(3 downto 0);
    signal temp_Qb: std_logic_vector(2 downto 0);
    signal inc: std_logic;
    signal carry_out: std_logic;
component Counter6
	port(load, clk, en, clrn, inc : in std_logic;
		Db : in std_logic_vector(2 downto 0);
		Qb : out std_logic_vector(2 downto 0)
	);
end component;
component Counter10
	port(load, clk, en, clrn : in std_logic;
		Da : in std_logic_vector(3 downto 0);
		carry_out : out std_logic;
		Qa : out std_logic_vector(3 downto 0)
	);
end component;

begin
	inst3 : Counter10
	port map(load => load, clk => clk, en => en, clrn => clrn,
			Da => Da, carry_out => carry_out, Qa => temp_Qa);
	inst : Counter6
	port map(load => load, clk => clk, en => en, clrn => clrn,
			Db => Db, inc => inc, Qb => temp_Qb);
    process(temp_Qa, temp_Qb)
    begin
        if temp_Qa = "1001" and temp_Qb = "101" then
            inc <= '1';
        else
            inc <= '0';
        end if;
    end process;

    qa <= temp_Qa;
    qb <= temp_Qb;
    Co <= inc;
end architecture arch;
