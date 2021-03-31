library verilog;
use verilog.vl_types.all;
entity data_path_vlg_sample_tst is
    port(
        A_Load          : in     vl_logic;
        ALU_Sel         : in     vl_logic_vector(2 downto 0);
        B_Load          : in     vl_logic;
        Bus1_Sel        : in     vl_logic_vector(1 downto 0);
        Bus2_Sel        : in     vl_logic_vector(1 downto 0);
        CCR_Load        : in     vl_logic;
        clock           : in     vl_logic;
        from_memory     : in     vl_logic_vector(7 downto 0);
        IR_Load         : in     vl_logic;
        MAR_Load        : in     vl_logic;
        PC_Inc          : in     vl_logic;
        PC_Load         : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end data_path_vlg_sample_tst;
