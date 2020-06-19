library verilog;
use verilog.vl_types.all;
entity FIFO is
    port(
        SYSCLK          : in     vl_logic;
        RST_B           : in     vl_logic;
        WR_EN           : in     vl_logic;
        RD_EN           : in     vl_logic;
        FIFO_IN         : in     vl_logic_vector(7 downto 0);
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        FIFO_OUT        : out    vl_logic_vector(7 downto 0)
    );
end FIFO;
