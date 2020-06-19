library verilog;
use verilog.vl_types.all;
entity Sequence_Detector is
    port(
        RST_B           : in     vl_logic;
        SYSCLK          : in     vl_logic;
        IN_VALID        : in     vl_logic;
        MODE            : in     vl_logic_vector(1 downto 0);
        DATA_IN         : in     vl_logic_vector(3 downto 0);
        OUT_VALID       : out    vl_logic;
        DATA_OUT        : out    vl_logic_vector(3 downto 0);
        counter         : out    vl_logic_vector(2 downto 0);
        counter_ns      : out    vl_logic_vector(2 downto 0);
        fsm_cs          : out    vl_logic_vector(2 downto 0);
        fsm_ns          : out    vl_logic_vector(2 downto 0);
        data_cs         : out    vl_logic_vector(3 downto 0);
        data_pre        : out    vl_logic_vector(3 downto 0);
        mode_cs         : out    vl_logic_vector(1 downto 0);
        mode_pre        : out    vl_logic_vector(1 downto 0)
    );
end Sequence_Detector;
