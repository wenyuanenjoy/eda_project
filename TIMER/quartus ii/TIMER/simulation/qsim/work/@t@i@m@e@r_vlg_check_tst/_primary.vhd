library verilog;
use verilog.vl_types.all;
entity TIMER_vlg_check_tst is
    port(
        MINUTE          : in     vl_logic_vector(2 downto 0);
        SECOND          : in     vl_logic_vector(5 downto 0);
        TIME_UP         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TIMER_vlg_check_tst;
