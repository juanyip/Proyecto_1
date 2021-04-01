library verilog;
use verilog.vl_types.all;
entity computer_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        port_in_00      : in     vl_logic_vector(7 downto 0);
        port_in_01      : in     vl_logic_vector(7 downto 0);
        port_in_02      : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end computer_vlg_sample_tst;
