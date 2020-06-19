library verilog;
use verilog.vl_types.all;
entity APB_Slave_vlg_check_tst is
    port(
        CNT_START       : in     vl_logic;
        COUNT           : in     vl_logic_vector(31 downto 0);
        COUNT_NS        : in     vl_logic_vector(31 downto 0);
        EX_CON          : in     vl_logic_vector(31 downto 0);
        EX_CON_NS       : in     vl_logic_vector(31 downto 0);
        EX_TO           : in     vl_logic_vector(31 downto 0);
        EX_TO_NS        : in     vl_logic_vector(31 downto 0);
        INT_B           : in     vl_logic;
        PRDATA          : in     vl_logic_vector(31 downto 0);
        fsm_cs          : in     vl_logic_vector(2 downto 0);
        fsm_ns          : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end APB_Slave_vlg_check_tst;
