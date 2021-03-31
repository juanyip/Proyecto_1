library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Sel             : in     vl_logic_vector(2 downto 0);
        Result          : out    vl_logic_vector(7 downto 0);
        NZVC            : out    vl_logic_vector(3 downto 0)
    );
end alu;
