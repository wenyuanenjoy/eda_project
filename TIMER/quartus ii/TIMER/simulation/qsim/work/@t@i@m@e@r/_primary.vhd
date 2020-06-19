library verilog;
use verilog.vl_types.all;
entity TIMER is
    port(
        SYSCLK          : in     vl_logic;
        RST_B           : in     vl_logic;
        TIME_MIN        : in     vl_logic_vector(2 downto 0);
        TIME_SEC        : in     vl_logic_vector(5 downto 0);
        START           : in     vl_logic;
        MINUTE          : out    vl_logic_vector(2 downto 0);
        SECOND          : out    vl_logic_vector(5 downto 0);
        TIME_UP         : out    vl_logic
    );
end TIMER;
