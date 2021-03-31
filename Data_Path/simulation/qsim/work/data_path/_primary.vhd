library verilog;
use verilog.vl_types.all;
entity data_path is
    port(
        from_memory     : in     vl_logic_vector(7 downto 0);
        Bus1_Sel        : in     vl_logic_vector(1 downto 0);
        Bus2_Sel        : in     vl_logic_vector(1 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        IR_Load         : in     vl_logic;
        MAR_Load        : in     vl_logic;
        PC_Load         : in     vl_logic;
        PC_Inc          : in     vl_logic;
        A_Load          : in     vl_logic;
        B_Load          : in     vl_logic;
        CCR_Load        : in     vl_logic;
        ALU_Sel         : in     vl_logic_vector(2 downto 0);
        to_memory       : out    vl_logic_vector(7 downto 0);
        address         : out    vl_logic_vector(7 downto 0);
        IR              : out    vl_logic_vector(7 downto 0);
        CCR_Result      : out    vl_logic_vector(3 downto 0)
    );
end data_path;
