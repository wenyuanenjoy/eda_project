library verilog;
use verilog.vl_types.all;
entity FIFO_vlg_check_tst is
    port(
        EMPTY           : in     vl_logic;
        FIFO_OUT        : in     vl_logic_vector(7 downto 0);
        FULL            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FIFO_vlg_check_tst;
