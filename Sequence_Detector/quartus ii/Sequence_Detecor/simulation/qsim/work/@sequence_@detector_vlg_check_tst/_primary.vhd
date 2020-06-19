library verilog;
use verilog.vl_types.all;
entity Sequence_Detector_vlg_check_tst is
    port(
        DATA_OUT        : in     vl_logic_vector(3 downto 0);
        OUT_VALID       : in     vl_logic;
        counter         : in     vl_logic_vector(2 downto 0);
        counter_ns      : in     vl_logic_vector(2 downto 0);
        data_cs         : in     vl_logic_vector(3 downto 0);
        data_pre        : in     vl_logic_vector(3 downto 0);
        fsm_cs          : in     vl_logic_vector(2 downto 0);
        fsm_ns          : in     vl_logic_vector(2 downto 0);
        mode_cs         : in     vl_logic_vector(1 downto 0);
        mode_pre        : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end Sequence_Detector_vlg_check_tst;
