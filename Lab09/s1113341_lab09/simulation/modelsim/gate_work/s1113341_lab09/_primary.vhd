library verilog;
use verilog.vl_types.all;
entity s1113341_lab09 is
    port(
        clk             : in     vl_logic;
        clrn            : in     vl_logic;
        en              : in     vl_logic;
        load            : in     vl_logic;
        Da              : in     vl_logic_vector(3 downto 0);
        Db              : in     vl_logic_vector(2 downto 0);
        Co              : out    vl_logic;
        qa              : out    vl_logic_vector(3 downto 0);
        qb              : out    vl_logic_vector(2 downto 0)
    );
end s1113341_lab09;
