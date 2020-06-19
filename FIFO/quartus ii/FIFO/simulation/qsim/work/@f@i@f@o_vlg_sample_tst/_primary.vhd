library verilog;
use verilog.vl_types.all;
entity FIFO_vlg_sample_tst is
    port(
        FIFO_IN         : in     vl_logic_vector(7 downto 0);
        RD_EN           : in     vl_logic;
        RST_B           : in     vl_logic;
        SYSCLK          : in     vl_logic;
        WR_EN           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FIFO_vlg_sample_tst;
