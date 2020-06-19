library verilog;
use verilog.vl_types.all;
entity APB_Slave_vlg_sample_tst is
    port(
        PADDR           : in     vl_logic_vector(4 downto 0);
        PENABLE         : in     vl_logic;
        PSEL            : in     vl_logic;
        PWDATA          : in     vl_logic_vector(31 downto 0);
        PWRITE          : in     vl_logic;
        RST_B           : in     vl_logic;
        SYSCLK          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end APB_Slave_vlg_sample_tst;
