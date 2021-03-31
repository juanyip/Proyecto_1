library verilog;
use verilog.vl_types.all;
entity data_path_vlg_check_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        CCR_Result      : in     vl_logic_vector(3 downto 0);
        IR              : in     vl_logic_vector(7 downto 0);
        to_memory       : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end data_path_vlg_check_tst;
