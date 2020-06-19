library verilog;
use verilog.vl_types.all;
entity APB_Slave is
    port(
        SYSCLK          : in     vl_logic;
        RST_B           : in     vl_logic;
        PSEL            : in     vl_logic;
        PWRITE          : in     vl_logic;
        PENABLE         : in     vl_logic;
        PADDR           : in     vl_logic_vector(4 downto 0);
        PWDATA          : in     vl_logic_vector(31 downto 0);
        INT_B           : out    vl_logic;
        PRDATA          : out    vl_logic_vector(31 downto 0);
        EX_TO           : out    vl_logic_vector(31 downto 0);
        EX_CON          : out    vl_logic_vector(31 downto 0);
        CNT_START       : out    vl_logic;
        COUNT           : out    vl_logic_vector(31 downto 0);
        EX_CON_NS       : out    vl_logic_vector(31 downto 0);
        EX_TO_NS        : out    vl_logic_vector(31 downto 0);
        COUNT_NS        : out    vl_logic_vector(31 downto 0);
        fsm_cs          : out    vl_logic_vector(2 downto 0);
        fsm_ns          : out    vl_logic_vector(2 downto 0)
    );
end APB_Slave;
