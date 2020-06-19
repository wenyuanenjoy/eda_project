library verilog;
use verilog.vl_types.all;
entity TIMER_vlg_sample_tst is
    port(
        RST_B           : in     vl_logic;
        START           : in     vl_logic;
        SYSCLK          : in     vl_logic;
        TIME_MIN        : in     vl_logic_vector(2 downto 0);
        TIME_SEC        : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end TIMER_vlg_sample_tst;
