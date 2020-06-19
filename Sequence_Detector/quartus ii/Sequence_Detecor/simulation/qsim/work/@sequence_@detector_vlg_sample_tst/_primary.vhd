library verilog;
use verilog.vl_types.all;
entity Sequence_Detector_vlg_sample_tst is
    port(
        DATA_IN         : in     vl_logic_vector(3 downto 0);
        IN_VALID        : in     vl_logic;
        MODE            : in     vl_logic_vector(1 downto 0);
        RST_B           : in     vl_logic;
        SYSCLK          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Sequence_Detector_vlg_sample_tst;
