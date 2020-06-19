-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/18/2020 12:41:43"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FIFO IS
    PORT (
	SYSCLK : IN std_logic;
	RST_B : IN std_logic;
	WR_EN : IN std_logic;
	RD_EN : IN std_logic;
	FIFO_IN : IN std_logic_vector(7 DOWNTO 0);
	EMPTY : OUT std_logic;
	FULL : OUT std_logic;
	FIFO_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END FIFO;

-- Design Ports Information
-- EMPTY	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FULL	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYSCLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_B	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_EN	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_EN	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_IN[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FIFO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SYSCLK : std_logic;
SIGNAL ww_RST_B : std_logic;
SIGNAL ww_WR_EN : std_logic;
SIGNAL ww_RD_EN : std_logic;
SIGNAL ww_FIFO_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EMPTY : std_logic;
SIGNAL ww_FULL : std_logic;
SIGNAL ww_FIFO_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \always2~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYSCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \w_addr_ns[0]~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EMPTY~output_o\ : std_logic;
SIGNAL \FULL~output_o\ : std_logic;
SIGNAL \FIFO_OUT[0]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[1]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[2]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[3]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[4]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[5]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[6]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[7]~output_o\ : std_logic;
SIGNAL \SYSCLK~input_o\ : std_logic;
SIGNAL \SYSCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RD_EN~input_o\ : std_logic;
SIGNAL \WR_EN~input_o\ : std_logic;
SIGNAL \w_addr_ns[0]~6_combout\ : std_logic;
SIGNAL \w_addr_ns[0]~6clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[13]~10_combout\ : std_logic;
SIGNAL \w_addr_ns[1]~9_combout\ : std_logic;
SIGNAL \RST_B~input_o\ : std_logic;
SIGNAL \RST_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\ : std_logic;
SIGNAL \w_addr_ns[2]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[10]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[10]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \w_addr_ns[0]~8_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \r_addr_ns~8_combout\ : std_logic;
SIGNAL \r_addr_ns~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \r_addr_ns~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \r_addr_ns~7_combout\ : std_logic;
SIGNAL \r_addr_ns~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[13]~9_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \FULL$latch~combout\ : std_logic;
SIGNAL \always2~1_combout\ : std_logic;
SIGNAL \always2~1clkctrl_outclk\ : std_logic;
SIGNAL \r_addr_ns~10_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \EMPTY$latch~combout\ : std_logic;
SIGNAL \FIFO_IN[0]~input_o\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \mem~32_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \mem~16_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \mem~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \mem~8_combout\ : std_logic;
SIGNAL \mem~40_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \mem~24_combout\ : std_logic;
SIGNAL \mem~41_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~1_combout\ : std_logic;
SIGNAL \FIFO_OUT[0]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[1]~input_o\ : std_logic;
SIGNAL \mem~33_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~2_combout\ : std_logic;
SIGNAL \mem~17_combout\ : std_logic;
SIGNAL \mem~25_combout\ : std_logic;
SIGNAL \mem~1_combout\ : std_logic;
SIGNAL \mem~9_combout\ : std_logic;
SIGNAL \mem~42_combout\ : std_logic;
SIGNAL \mem~43_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~3_combout\ : std_logic;
SIGNAL \FIFO_OUT[1]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[2]~input_o\ : std_logic;
SIGNAL \mem~34_combout\ : std_logic;
SIGNAL \mem~2_combout\ : std_logic;
SIGNAL \mem~10_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~5_combout\ : std_logic;
SIGNAL \mem~26_combout\ : std_logic;
SIGNAL \mem~18_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~4_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~6_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~7_combout\ : std_logic;
SIGNAL \FIFO_OUT[2]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[3]~input_o\ : std_logic;
SIGNAL \mem~27_combout\ : std_logic;
SIGNAL \mem~3_combout\ : std_logic;
SIGNAL \mem~11_combout\ : std_logic;
SIGNAL \mem~44_combout\ : std_logic;
SIGNAL \mem~19_combout\ : std_logic;
SIGNAL \mem~45_combout\ : std_logic;
SIGNAL \mem~35_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~8_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~9_combout\ : std_logic;
SIGNAL \FIFO_OUT[3]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[4]~input_o\ : std_logic;
SIGNAL \mem~36_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~10_combout\ : std_logic;
SIGNAL \mem~12_combout\ : std_logic;
SIGNAL \mem~4_combout\ : std_logic;
SIGNAL \mem~20_combout\ : std_logic;
SIGNAL \mem~46_combout\ : std_logic;
SIGNAL \mem~28_combout\ : std_logic;
SIGNAL \mem~47_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~11_combout\ : std_logic;
SIGNAL \FIFO_OUT[4]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[5]~input_o\ : std_logic;
SIGNAL \mem~37_combout\ : std_logic;
SIGNAL \mem~13_combout\ : std_logic;
SIGNAL \mem~29_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~12_combout\ : std_logic;
SIGNAL \mem~5_combout\ : std_logic;
SIGNAL \mem~21_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~13_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~14_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~15_combout\ : std_logic;
SIGNAL \FIFO_OUT[5]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[6]~input_o\ : std_logic;
SIGNAL \mem~38_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~16_combout\ : std_logic;
SIGNAL \mem~30_combout\ : std_logic;
SIGNAL \mem~14_combout\ : std_logic;
SIGNAL \mem~6_combout\ : std_logic;
SIGNAL \mem~22_combout\ : std_logic;
SIGNAL \mem~48_combout\ : std_logic;
SIGNAL \mem~49_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~17_combout\ : std_logic;
SIGNAL \FIFO_OUT[6]~reg0_q\ : std_logic;
SIGNAL \FIFO_IN[7]~input_o\ : std_logic;
SIGNAL \mem~39_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~18_combout\ : std_logic;
SIGNAL \mem~23_combout\ : std_logic;
SIGNAL \mem~31_combout\ : std_logic;
SIGNAL \mem~7_combout\ : std_logic;
SIGNAL \mem~15_combout\ : std_logic;
SIGNAL \mem~50_combout\ : std_logic;
SIGNAL \mem~51_combout\ : std_logic;
SIGNAL \FIFO_OUT_NS~19_combout\ : std_logic;
SIGNAL \FIFO_OUT[7]~reg0_q\ : std_logic;
SIGNAL w_addr_ns : std_logic_vector(2 DOWNTO 0);
SIGNAL w_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL r_addr_ns : std_logic_vector(2 DOWNTO 0);
SIGNAL r_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL FIFO_OUT_NS : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_SYSCLK <= SYSCLK;
ww_RST_B <= RST_B;
ww_WR_EN <= WR_EN;
ww_RD_EN <= RD_EN;
ww_FIFO_IN <= FIFO_IN;
EMPTY <= ww_EMPTY;
FULL <= ww_FULL;
FIFO_OUT <= ww_FIFO_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\always2~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \always2~1_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\SYSCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SYSCLK~input_o\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\RST_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_B~input_o\);

\w_addr_ns[0]~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \w_addr_ns[0]~6_combout\);

-- Location: IOOBUF_X9_Y24_N9
\EMPTY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EMPTY$latch~combout\,
	devoe => ww_devoe,
	o => \EMPTY~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\FULL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FULL$latch~combout\,
	devoe => ww_devoe,
	o => \FULL~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\FIFO_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\FIFO_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\FIFO_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\FIFO_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\FIFO_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\FIFO_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\FIFO_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\FIFO_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FIFO_OUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \FIFO_OUT[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\SYSCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SYSCLK,
	o => \SYSCLK~input_o\);

-- Location: CLKCTRL_G2
\SYSCLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SYSCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SYSCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y0_N1
\RD_EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_EN,
	o => \RD_EN~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\WR_EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_EN,
	o => \WR_EN~input_o\);

-- Location: LCCOMB_X12_Y11_N28
\w_addr_ns[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_addr_ns[0]~6_combout\ = (\EMPTY$latch~combout\) # (((\WR_EN~input_o\ & !\FULL$latch~combout\)) # (!\RD_EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EMPTY$latch~combout\,
	datab => \RD_EN~input_o\,
	datac => \WR_EN~input_o\,
	datad => \FULL$latch~combout\,
	combout => \w_addr_ns[0]~6_combout\);

-- Location: CLKCTRL_G3
\w_addr_ns[0]~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \w_addr_ns[0]~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \w_addr_ns[0]~6clkctrl_outclk\);

-- Location: LCCOMB_X12_Y11_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (w_addr(0) & w_addr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datad => w_addr(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\Mod1|auto_generated|divider|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_1~0_combout\ = w_addr(1) $ (w_addr(0) $ (VCC))
-- \Mod1|auto_generated|divider|divider|op_1~1\ = CARRY(w_addr(1) $ (w_addr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(1),
	datab => w_addr(0),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X12_Y11_N18
\Mod1|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_1~2_combout\ = (\Mod1|auto_generated|divider|divider|op_1~1\ & ((w_addr(2) $ (\Add1~0_combout\)))) # (!\Mod1|auto_generated|divider|divider|op_1~1\ & (w_addr(2) $ ((!\Add1~0_combout\))))
-- \Mod1|auto_generated|divider|divider|op_1~3\ = CARRY((!\Mod1|auto_generated|divider|divider|op_1~1\ & (w_addr(2) $ (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(2),
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_1~1\,
	combout => \Mod1|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X12_Y11_N20
\Mod1|auto_generated|divider|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_1~4_combout\ = (\Mod1|auto_generated|divider|divider|op_1~3\ & (w_addr(2) & (\Add1~0_combout\ & VCC))) # (!\Mod1|auto_generated|divider|divider|op_1~3\ & ((((w_addr(2) & \Add1~0_combout\)))))
-- \Mod1|auto_generated|divider|divider|op_1~5\ = CARRY((w_addr(2) & (\Add1~0_combout\ & !\Mod1|auto_generated|divider|divider|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(2),
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_1~3\,
	combout => \Mod1|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X12_Y11_N22
\Mod1|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_1~6_combout\ = !\Mod1|auto_generated|divider|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_1~5\,
	combout => \Mod1|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X12_Y11_N14
\Mod1|auto_generated|divider|divider|StageOut[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\ = (!\Mod1|auto_generated|divider|divider|op_1~6_combout\ & \Mod1|auto_generated|divider|divider|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X12_Y11_N6
\Mod1|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\Mod1|auto_generated|divider|divider|op_1~6_combout\ & (w_addr(1) $ (w_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w_addr(1),
	datac => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => w_addr(0),
	combout => \Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X13_Y11_N2
\Mod1|auto_generated|divider|divider|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_2~1_cout\ = CARRY(!w_addr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datad => VCC,
	cout => \Mod1|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X13_Y11_N4
\Mod1|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_2~2_combout\ = (\Mod1|auto_generated|divider|divider|op_2~1_cout\ & (((\Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|op_2~1_cout\ & (!\Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\)))
-- \Mod1|auto_generated|divider|divider|op_2~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\ & !\Mod1|auto_generated|divider|divider|op_2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_2~1_cout\,
	combout => \Mod1|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X13_Y11_N12
\Mod1|auto_generated|divider|divider|StageOut[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[13]~10_combout\ = (\Mod1|auto_generated|divider|divider|op_2~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|op_2~8_combout\ & (((\Mod1|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datac => \Mod1|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[13]~10_combout\);

-- Location: LCCOMB_X13_Y11_N24
\w_addr_ns[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_addr_ns[1]~9_combout\ = (\WR_EN~input_o\ & ((\FULL$latch~combout\ & (w_addr(1))) # (!\FULL$latch~combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[13]~10_combout\))))) # (!\WR_EN~input_o\ & (w_addr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR_EN~input_o\,
	datab => w_addr(1),
	datac => \FULL$latch~combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[13]~10_combout\,
	combout => \w_addr_ns[1]~9_combout\);

-- Location: LCCOMB_X13_Y11_N18
\w_addr_ns[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- w_addr_ns(1) = (GLOBAL(\w_addr_ns[0]~6clkctrl_outclk\) & ((\w_addr_ns[1]~9_combout\))) # (!GLOBAL(\w_addr_ns[0]~6clkctrl_outclk\) & (w_addr_ns(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w_addr_ns(1),
	datac => \w_addr_ns[0]~6clkctrl_outclk\,
	datad => \w_addr_ns[1]~9_combout\,
	combout => w_addr_ns(1));

-- Location: IOIBUF_X34_Y12_N15
\RST_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_B,
	o => \RST_B~input_o\);

-- Location: CLKCTRL_G6
\RST_B~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_B~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_B~inputclkctrl_outclk\);

-- Location: FF_X13_Y11_N19
\w_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => w_addr_ns(1),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_addr(1));

-- Location: LCCOMB_X13_Y11_N14
\Mod1|auto_generated|divider|divider|StageOut[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\ = (\Mod1|auto_generated|divider|divider|op_1~6_combout\ & (w_addr(2) $ (((w_addr(1) & w_addr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(1),
	datab => w_addr(2),
	datac => w_addr(0),
	datad => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\);

-- Location: LCCOMB_X12_Y11_N30
\Mod1|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\Mod1|auto_generated|divider|divider|op_1~2_combout\ & !\Mod1|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|op_1~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X13_Y11_N6
\Mod1|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_2~4_combout\ = (\Mod1|auto_generated|divider|divider|op_2~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|op_2~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\)))))
-- \Mod1|auto_generated|divider|divider|op_2~5\ = CARRY((!\Mod1|auto_generated|divider|divider|op_2~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_2~3\,
	combout => \Mod1|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X13_Y11_N22
\Mod1|auto_generated|divider|divider|StageOut[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\ = (\Mod1|auto_generated|divider|divider|op_2~8_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|op_2~8_combout\ & (\Mod1|auto_generated|divider|divider|op_2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|op_2~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[9]~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\);

-- Location: LCCOMB_X13_Y11_N0
\w_addr_ns[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_addr_ns[2]~7_combout\ = (\WR_EN~input_o\ & ((\FULL$latch~combout\ & (w_addr(2))) # (!\FULL$latch~combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\))))) # (!\WR_EN~input_o\ & (w_addr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR_EN~input_o\,
	datab => w_addr(2),
	datac => \Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\,
	datad => \FULL$latch~combout\,
	combout => \w_addr_ns[2]~7_combout\);

-- Location: LCCOMB_X13_Y11_N28
\w_addr_ns[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- w_addr_ns(2) = (GLOBAL(\w_addr_ns[0]~6clkctrl_outclk\) & ((\w_addr_ns[2]~7_combout\))) # (!GLOBAL(\w_addr_ns[0]~6clkctrl_outclk\) & (w_addr_ns(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr_ns(2),
	datac => \w_addr_ns[0]~6clkctrl_outclk\,
	datad => \w_addr_ns[2]~7_combout\,
	combout => w_addr_ns(2));

-- Location: FF_X13_Y11_N29
\w_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => w_addr_ns(2),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_addr(2));

-- Location: LCCOMB_X12_Y11_N0
\Mod1|auto_generated|divider|divider|StageOut[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[10]~12_combout\ = (w_addr(2) & (w_addr(1) & (\Mod1|auto_generated|divider|divider|op_1~6_combout\ & w_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(2),
	datab => w_addr(1),
	datac => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => w_addr(0),
	combout => \Mod1|auto_generated|divider|divider|StageOut[10]~12_combout\);

-- Location: LCCOMB_X12_Y11_N24
\Mod1|auto_generated|divider|divider|StageOut[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[10]~7_combout\ = (!\Mod1|auto_generated|divider|divider|op_1~6_combout\ & \Mod1|auto_generated|divider|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_1~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[10]~7_combout\);

-- Location: LCCOMB_X13_Y11_N8
\Mod1|auto_generated|divider|divider|op_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_2~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[10]~12_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[10]~7_combout\ & !\Mod1|auto_generated|divider|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[10]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[10]~7_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_2~5\,
	cout => \Mod1|auto_generated|divider|divider|op_2~7_cout\);

-- Location: LCCOMB_X13_Y11_N10
\Mod1|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_2~8_combout\ = \Mod1|auto_generated|divider|divider|op_2~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_2~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X12_Y11_N2
\w_addr_ns[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_addr_ns[0]~8_combout\ = w_addr(0) $ (((!\FULL$latch~combout\ & (\Mod1|auto_generated|divider|divider|op_2~8_combout\ & \WR_EN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datab => \FULL$latch~combout\,
	datac => \Mod1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \WR_EN~input_o\,
	combout => \w_addr_ns[0]~8_combout\);

-- Location: LCCOMB_X12_Y11_N10
\w_addr_ns[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- w_addr_ns(0) = (GLOBAL(\w_addr_ns[0]~6clkctrl_outclk\) & ((\w_addr_ns[0]~8_combout\))) # (!GLOBAL(\w_addr_ns[0]~6clkctrl_outclk\) & (w_addr_ns(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr_ns(0),
	datac => \w_addr_ns[0]~6clkctrl_outclk\,
	datad => \w_addr_ns[0]~8_combout\,
	combout => w_addr_ns(0));

-- Location: FF_X12_Y11_N11
\w_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => w_addr_ns(0),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_addr(0));

-- Location: LCCOMB_X12_Y13_N30
\always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (\RD_EN~input_o\ & !\EMPTY$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RD_EN~input_o\,
	datad => \EMPTY$latch~combout\,
	combout => \always2~0_combout\);

-- Location: LCCOMB_X14_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\Mod0|auto_generated|divider|divider|op_1~6_combout\ & (r_addr(1) $ (r_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr(1),
	datac => r_addr(0),
	datad => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X13_Y13_N14
\Mod0|auto_generated|divider|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~0_combout\ = r_addr(1) $ (r_addr(0) $ (VCC))
-- \Mod0|auto_generated|divider|divider|op_1~1\ = CARRY(r_addr(1) $ (r_addr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(1),
	datab => r_addr(0),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X13_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\Mod0|auto_generated|divider|divider|op_1~0_combout\ & !\Mod0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X13_Y13_N16
\Mod0|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~2_combout\ = (\Mod0|auto_generated|divider|divider|op_1~1\ & ((\Add0~0_combout\ $ (r_addr(2))))) # (!\Mod0|auto_generated|divider|divider|op_1~1\ & (\Add0~0_combout\ $ ((!r_addr(2)))))
-- \Mod0|auto_generated|divider|divider|op_1~3\ = CARRY((!\Mod0|auto_generated|divider|divider|op_1~1\ & (\Add0~0_combout\ $ (!r_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_addr(2),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~1\,
	combout => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X13_Y13_N18
\Mod0|auto_generated|divider|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~4_combout\ = (\Mod0|auto_generated|divider|divider|op_1~3\ & (\Add0~0_combout\ & (r_addr(2) & VCC))) # (!\Mod0|auto_generated|divider|divider|op_1~3\ & ((((\Add0~0_combout\ & r_addr(2))))))
-- \Mod0|auto_generated|divider|divider|op_1~5\ = CARRY((\Add0~0_combout\ & (r_addr(2) & !\Mod0|auto_generated|divider|divider|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => r_addr(2),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~3\,
	combout => \Mod0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X13_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~6_combout\ & \Mod0|auto_generated|divider|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\);

-- Location: LCCOMB_X14_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~9_combout\ = (r_addr(2) & (r_addr(1) & (r_addr(0) & \Mod0|auto_generated|divider|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(1),
	datac => r_addr(0),
	datad => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~9_combout\);

-- Location: LCCOMB_X13_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\Mod0|auto_generated|divider|divider|op_1~2_combout\ & !\Mod0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X14_Y13_N20
\Mod0|auto_generated|divider|divider|StageOut[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\ = (\Mod0|auto_generated|divider|divider|op_1~6_combout\ & (r_addr(2) $ (((r_addr(1) & r_addr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(1),
	datac => r_addr(0),
	datad => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\);

-- Location: LCCOMB_X14_Y13_N6
\Mod0|auto_generated|divider|divider|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~1_cout\ = CARRY(!r_addr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datad => VCC,
	cout => \Mod0|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X14_Y13_N8
\Mod0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\Mod0|auto_generated|divider|divider|op_2~1_cout\ & (((\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~1_cout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\)))
-- \Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\ & !\Mod0|auto_generated|divider|divider|op_2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~1_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X14_Y13_N10
\Mod0|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\Mod0|auto_generated|divider|divider|op_2~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_2~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~8_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X14_Y13_N12
\Mod0|auto_generated|divider|divider|op_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[10]~9_combout\ & !\Mod0|auto_generated|divider|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~9_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~5\,
	cout => \Mod0|auto_generated|divider|divider|op_2~7_cout\);

-- Location: LCCOMB_X14_Y13_N14
\Mod0|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~8_combout\ = \Mod0|auto_generated|divider|divider|op_2~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_2~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X14_Y13_N16
\r_addr_ns~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr_ns~8_combout\ = (\Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~8_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \r_addr_ns~8_combout\);

-- Location: LCCOMB_X14_Y13_N24
\r_addr_ns~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr_ns~11_combout\ = (\RD_EN~input_o\ & ((\EMPTY$latch~combout\ & (r_addr(1))) # (!\EMPTY$latch~combout\ & ((\r_addr_ns~8_combout\))))) # (!\RD_EN~input_o\ & (((r_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_EN~input_o\,
	datab => \EMPTY$latch~combout\,
	datac => r_addr(1),
	datad => \r_addr_ns~8_combout\,
	combout => \r_addr_ns~11_combout\);

-- Location: LCCOMB_X13_Y13_N24
\r_addr_ns[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- r_addr_ns(1) = (GLOBAL(\always2~1clkctrl_outclk\) & (r_addr_ns(1))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\r_addr_ns~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr_ns(1),
	datac => \always2~1clkctrl_outclk\,
	datad => \r_addr_ns~11_combout\,
	combout => r_addr_ns(1));

-- Location: FF_X13_Y13_N25
\r_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => r_addr_ns(1),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(1));

-- Location: LCCOMB_X13_Y13_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (r_addr(0) & r_addr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(0),
	datad => r_addr(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X13_Y13_N20
\Mod0|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~6_combout\ = !\Mod0|auto_generated|divider|divider|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_1~5\,
	combout => \Mod0|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X13_Y13_N12
\r_addr_ns~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr_ns~6_combout\ = (\Mod0|auto_generated|divider|divider|op_1~6_combout\ & ((r_addr(2) $ (\Add0~0_combout\)))) # (!\Mod0|auto_generated|divider|divider|op_1~6_combout\ & (\Mod0|auto_generated|divider|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datac => r_addr(2),
	datad => \Add0~0_combout\,
	combout => \r_addr_ns~6_combout\);

-- Location: LCCOMB_X14_Y13_N30
\r_addr_ns~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr_ns~7_combout\ = (\always2~0_combout\ & ((\Mod0|auto_generated|divider|divider|op_2~8_combout\ & (\r_addr_ns~6_combout\)) # (!\Mod0|auto_generated|divider|divider|op_2~8_combout\ & ((\Mod0|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \r_addr_ns~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \r_addr_ns~7_combout\);

-- Location: LCCOMB_X14_Y13_N22
\r_addr_ns~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr_ns~9_combout\ = (\r_addr_ns~7_combout\) # ((r_addr(2) & ((\EMPTY$latch~combout\) # (!\RD_EN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_EN~input_o\,
	datab => \EMPTY$latch~combout\,
	datac => \r_addr_ns~7_combout\,
	datad => r_addr(2),
	combout => \r_addr_ns~9_combout\);

-- Location: LCCOMB_X14_Y13_N18
\r_addr_ns[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- r_addr_ns(2) = (GLOBAL(\always2~1clkctrl_outclk\) & (r_addr_ns(2))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\r_addr_ns~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr_ns(2),
	datac => \r_addr_ns~9_combout\,
	datad => \always2~1clkctrl_outclk\,
	combout => r_addr_ns(2));

-- Location: FF_X14_Y13_N19
\r_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => r_addr_ns(2),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(2));

-- Location: LCCOMB_X12_Y13_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_addr(2) & (w_addr(2) & (w_addr(1) $ (!r_addr(1))))) # (!r_addr(2) & (!w_addr(2) & (w_addr(1) $ (!r_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => w_addr(1),
	datac => w_addr(2),
	datad => r_addr(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y13_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (w_addr(0) $ (!r_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datac => r_addr(0),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X13_Y11_N30
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = w_addr(0) $ (r_addr(0) $ (\Mod1|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datac => r_addr(0),
	datad => \Mod1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X12_Y11_N26
\Mod1|auto_generated|divider|divider|StageOut[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[13]~9_combout\ = (\Mod1|auto_generated|divider|divider|op_1~6_combout\ & (w_addr(0) $ ((w_addr(1))))) # (!\Mod1|auto_generated|divider|divider|op_1~6_combout\ & 
-- (((\Mod1|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datab => w_addr(1),
	datac => \Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[13]~9_combout\);

-- Location: LCCOMB_X13_Y11_N20
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = r_addr(1) $ (((\Mod1|auto_generated|divider|divider|op_2~8_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[13]~9_combout\)) # (!\Mod1|auto_generated|divider|divider|op_2~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[13]~9_combout\,
	datab => r_addr(1),
	datac => \Mod1|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X13_Y11_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Equal1~0_combout\ & (!\Equal1~1_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\ $ (!r_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[14]~8_combout\,
	datab => r_addr(2),
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X13_Y11_N26
\FULL$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \FULL$latch~combout\ = (\Equal0~1_combout\ & (\FULL$latch~combout\)) # (!\Equal0~1_combout\ & ((\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL$latch~combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \FULL$latch~combout\);

-- Location: LCCOMB_X11_Y11_N20
\always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~1_combout\ = (!\FULL$latch~combout\ & \WR_EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FULL$latch~combout\,
	datad => \WR_EN~input_o\,
	combout => \always2~1_combout\);

-- Location: CLKCTRL_G4
\always2~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \always2~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \always2~1clkctrl_outclk\);

-- Location: LCCOMB_X13_Y13_N22
\r_addr_ns~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr_ns~10_combout\ = r_addr(0) $ (((\RD_EN~input_o\ & (\Mod0|auto_generated|divider|divider|op_2~8_combout\ & !\EMPTY$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_EN~input_o\,
	datab => r_addr(0),
	datac => \Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \EMPTY$latch~combout\,
	combout => \r_addr_ns~10_combout\);

-- Location: LCCOMB_X12_Y13_N6
\r_addr_ns[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- r_addr_ns(0) = (GLOBAL(\always2~1clkctrl_outclk\) & (r_addr_ns(0))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\r_addr_ns~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr_ns(0),
	datac => \always2~1clkctrl_outclk\,
	datad => \r_addr_ns~10_combout\,
	combout => r_addr_ns(0));

-- Location: FF_X12_Y13_N7
\r_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => r_addr_ns(0),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(0));

-- Location: LCCOMB_X12_Y13_N22
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\Equal1~2_combout\) # ((\Equal0~0_combout\ & (r_addr(0) $ (!w_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => \Equal1~2_combout\,
	datac => w_addr(0),
	datad => \Equal0~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X12_Y13_N18
\EMPTY$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \EMPTY$latch~combout\ = (\comb~0_combout\ & ((\Equal0~1_combout\) # (\EMPTY$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \EMPTY$latch~combout\,
	combout => \EMPTY$latch~combout\);

-- Location: IOIBUF_X18_Y24_N22
\FIFO_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(0),
	o => \FIFO_IN[0]~input_o\);

-- Location: LCCOMB_X11_Y11_N28
\rtl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (!w_addr(1) & (!w_addr(0) & (w_addr(2) & \always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(1),
	datab => w_addr(0),
	datac => w_addr(2),
	datad => \always2~1_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G1
\rtl~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X18_Y16_N28
\mem~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~32_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[0]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[0]~input_o\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \mem~32_combout\,
	combout => \mem~32_combout\);

-- Location: LCCOMB_X17_Y16_N30
\FIFO_OUT_NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~0_combout\ = (!r_addr(0) & (r_addr(2) & (!r_addr(1) & \mem~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => r_addr(2),
	datac => r_addr(1),
	datad => \mem~32_combout\,
	combout => \FIFO_OUT_NS~0_combout\);

-- Location: LCCOMB_X12_Y11_N12
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!w_addr(0) & (w_addr(1) & (!w_addr(2) & \always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datab => w_addr(1),
	datac => w_addr(2),
	datad => \always2~1_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G7
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X17_Y16_N12
\mem~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~16_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\FIFO_IN[0]~input_o\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\mem~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~16_combout\,
	datac => \FIFO_IN[0]~input_o\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \mem~16_combout\);

-- Location: LCCOMB_X11_Y11_N22
\rtl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!w_addr(1) & (!w_addr(0) & (!w_addr(2) & \always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(1),
	datab => w_addr(0),
	datac => w_addr(2),
	datad => \always2~1_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G0
\rtl~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X18_Y16_N10
\mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[0]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[0]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \mem~0_combout\,
	combout => \mem~0_combout\);

-- Location: LCCOMB_X12_Y11_N8
\rtl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (w_addr(0) & (!w_addr(1) & (!w_addr(2) & \always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(0),
	datab => w_addr(1),
	datac => w_addr(2),
	datad => \always2~1_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G5
\rtl~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X17_Y16_N18
\mem~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~8_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\FIFO_IN[0]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[0]~input_o\,
	datab => \mem~8_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \mem~8_combout\);

-- Location: LCCOMB_X17_Y16_N4
\mem~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~40_combout\ = (r_addr(0) & ((r_addr(1)) # ((\mem~8_combout\)))) # (!r_addr(0) & (!r_addr(1) & (\mem~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => r_addr(1),
	datac => \mem~0_combout\,
	datad => \mem~8_combout\,
	combout => \mem~40_combout\);

-- Location: LCCOMB_X11_Y11_N16
\rtl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (w_addr(1) & (w_addr(0) & (!w_addr(2) & \always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_addr(1),
	datab => w_addr(0),
	datac => w_addr(2),
	datad => \always2~1_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G8
\rtl~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X18_Y16_N24
\mem~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~24_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\FIFO_IN[0]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\mem~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[0]~input_o\,
	datab => \mem~24_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~24_combout\);

-- Location: LCCOMB_X17_Y16_N26
\mem~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~41_combout\ = (r_addr(1) & ((\mem~40_combout\ & ((\mem~24_combout\))) # (!\mem~40_combout\ & (\mem~16_combout\)))) # (!r_addr(1) & (((\mem~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~16_combout\,
	datab => r_addr(1),
	datac => \mem~40_combout\,
	datad => \mem~24_combout\,
	combout => \mem~41_combout\);

-- Location: LCCOMB_X17_Y16_N8
\FIFO_OUT_NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~1_combout\ = (\always2~0_combout\ & ((\FIFO_OUT_NS~0_combout\) # ((\mem~41_combout\ & !r_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_OUT_NS~0_combout\,
	datab => \always2~0_combout\,
	datac => \mem~41_combout\,
	datad => r_addr(2),
	combout => \FIFO_OUT_NS~1_combout\);

-- Location: LCCOMB_X17_Y16_N24
\FIFO_OUT_NS[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(0) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(0))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~1clkctrl_outclk\,
	datab => FIFO_OUT_NS(0),
	datac => \FIFO_OUT_NS~1_combout\,
	combout => FIFO_OUT_NS(0));

-- Location: FF_X17_Y16_N25
\FIFO_OUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(0),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[0]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\FIFO_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(1),
	o => \FIFO_IN[1]~input_o\);

-- Location: LCCOMB_X16_Y15_N14
\mem~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~33_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[1]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[1]~input_o\,
	datac => \mem~33_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \mem~33_combout\);

-- Location: LCCOMB_X17_Y16_N22
\FIFO_OUT_NS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~2_combout\ = (!r_addr(0) & (!r_addr(1) & (r_addr(2) & \mem~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => r_addr(1),
	datac => r_addr(2),
	datad => \mem~33_combout\,
	combout => \FIFO_OUT_NS~2_combout\);

-- Location: LCCOMB_X17_Y15_N30
\mem~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~17_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\FIFO_IN[1]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\mem~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[1]~input_o\,
	datac => \mem~17_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \mem~17_combout\);

-- Location: LCCOMB_X17_Y15_N26
\mem~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~25_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\FIFO_IN[1]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\mem~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[1]~input_o\,
	datac => \mem~25_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~25_combout\);

-- Location: LCCOMB_X17_Y15_N20
\mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[1]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[1]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \mem~1_combout\,
	combout => \mem~1_combout\);

-- Location: LCCOMB_X16_Y15_N20
\mem~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~9_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\FIFO_IN[1]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\mem~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[1]~input_o\,
	datab => \mem~9_combout\,
	datac => \rtl~1clkctrl_outclk\,
	combout => \mem~9_combout\);

-- Location: LCCOMB_X17_Y15_N12
\mem~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~42_combout\ = (r_addr(1) & (((r_addr(0))))) # (!r_addr(1) & ((r_addr(0) & ((\mem~9_combout\))) # (!r_addr(0) & (\mem~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(1),
	datab => \mem~1_combout\,
	datac => r_addr(0),
	datad => \mem~9_combout\,
	combout => \mem~42_combout\);

-- Location: LCCOMB_X17_Y15_N10
\mem~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~43_combout\ = (r_addr(1) & ((\mem~42_combout\ & ((\mem~25_combout\))) # (!\mem~42_combout\ & (\mem~17_combout\)))) # (!r_addr(1) & (((\mem~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~17_combout\,
	datab => r_addr(1),
	datac => \mem~25_combout\,
	datad => \mem~42_combout\,
	combout => \mem~43_combout\);

-- Location: LCCOMB_X17_Y16_N20
\FIFO_OUT_NS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~3_combout\ = (\always2~0_combout\ & ((\FIFO_OUT_NS~2_combout\) # ((!r_addr(2) & \mem~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => \always2~0_combout\,
	datac => \FIFO_OUT_NS~2_combout\,
	datad => \mem~43_combout\,
	combout => \FIFO_OUT_NS~3_combout\);

-- Location: LCCOMB_X17_Y16_N10
\FIFO_OUT_NS[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(1) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(1))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FIFO_OUT_NS(1),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~3_combout\,
	combout => FIFO_OUT_NS(1));

-- Location: FF_X17_Y16_N11
\FIFO_OUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(1),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[1]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N1
\FIFO_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(2),
	o => \FIFO_IN[2]~input_o\);

-- Location: LCCOMB_X12_Y12_N14
\mem~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~34_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[2]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[2]~input_o\,
	datac => \mem~34_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \mem~34_combout\);

-- Location: LCCOMB_X11_Y13_N14
\mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[2]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[2]~input_o\,
	datac => \mem~2_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \mem~2_combout\);

-- Location: LCCOMB_X11_Y13_N20
\mem~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~10_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\FIFO_IN[2]~input_o\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\mem~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~10_combout\,
	datac => \FIFO_IN[2]~input_o\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \mem~10_combout\);

-- Location: LCCOMB_X11_Y13_N2
\FIFO_OUT_NS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~5_combout\ = (r_addr(0) & ((r_addr(2)) # ((\mem~10_combout\)))) # (!r_addr(0) & (!r_addr(2) & (\mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => r_addr(2),
	datac => \mem~2_combout\,
	datad => \mem~10_combout\,
	combout => \FIFO_OUT_NS~5_combout\);

-- Location: LCCOMB_X12_Y12_N30
\mem~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~26_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\FIFO_IN[2]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\mem~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[2]~input_o\,
	datac => \mem~26_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~26_combout\);

-- Location: LCCOMB_X12_Y12_N28
\mem~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~18_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\FIFO_IN[2]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\mem~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[2]~input_o\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \mem~18_combout\,
	combout => \mem~18_combout\);

-- Location: LCCOMB_X12_Y12_N0
\FIFO_OUT_NS~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~4_combout\ = (r_addr(0) & (\mem~26_combout\)) # (!r_addr(0) & ((\mem~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datac => \mem~26_combout\,
	datad => \mem~18_combout\,
	combout => \FIFO_OUT_NS~4_combout\);

-- Location: LCCOMB_X11_Y13_N12
\FIFO_OUT_NS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~6_combout\ = (r_addr(1) & ((r_addr(2)) # ((\FIFO_OUT_NS~4_combout\)))) # (!r_addr(1) & (((\FIFO_OUT_NS~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(1),
	datac => \FIFO_OUT_NS~5_combout\,
	datad => \FIFO_OUT_NS~4_combout\,
	combout => \FIFO_OUT_NS~6_combout\);

-- Location: LCCOMB_X11_Y13_N18
\FIFO_OUT_NS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~7_combout\ = (\always2~0_combout\ & ((r_addr(2) & (\mem~34_combout\ & !\FIFO_OUT_NS~6_combout\)) # (!r_addr(2) & ((\FIFO_OUT_NS~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => \always2~0_combout\,
	datac => \mem~34_combout\,
	datad => \FIFO_OUT_NS~6_combout\,
	combout => \FIFO_OUT_NS~7_combout\);

-- Location: LCCOMB_X11_Y13_N28
\FIFO_OUT_NS[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(2) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(2))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FIFO_OUT_NS(2),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~7_combout\,
	combout => FIFO_OUT_NS(2));

-- Location: FF_X11_Y13_N29
\FIFO_OUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(2),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[2]~reg0_q\);

-- Location: IOIBUF_X16_Y24_N22
\FIFO_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(3),
	o => \FIFO_IN[3]~input_o\);

-- Location: LCCOMB_X16_Y18_N10
\mem~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~27_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\FIFO_IN[3]~input_o\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\mem~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~27_combout\,
	datab => \FIFO_IN[3]~input_o\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~27_combout\);

-- Location: LCCOMB_X16_Y18_N8
\mem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[3]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[3]~input_o\,
	datac => \mem~3_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \mem~3_combout\);

-- Location: LCCOMB_X17_Y18_N24
\mem~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~11_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\FIFO_IN[3]~input_o\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\mem~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~11_combout\,
	datac => \FIFO_IN[3]~input_o\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \mem~11_combout\);

-- Location: LCCOMB_X16_Y18_N2
\mem~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~44_combout\ = (r_addr(1) & (r_addr(0))) # (!r_addr(1) & ((r_addr(0) & ((\mem~11_combout\))) # (!r_addr(0) & (\mem~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(1),
	datab => r_addr(0),
	datac => \mem~3_combout\,
	datad => \mem~11_combout\,
	combout => \mem~44_combout\);

-- Location: LCCOMB_X16_Y17_N14
\mem~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~19_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\FIFO_IN[3]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[3]~input_o\,
	datac => \mem~19_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \mem~19_combout\);

-- Location: LCCOMB_X16_Y18_N12
\mem~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~45_combout\ = (r_addr(1) & ((\mem~44_combout\ & (\mem~27_combout\)) # (!\mem~44_combout\ & ((\mem~19_combout\))))) # (!r_addr(1) & (((\mem~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~27_combout\,
	datab => r_addr(1),
	datac => \mem~44_combout\,
	datad => \mem~19_combout\,
	combout => \mem~45_combout\);

-- Location: LCCOMB_X16_Y19_N0
\mem~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~35_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[3]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[3]~input_o\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \mem~35_combout\,
	combout => \mem~35_combout\);

-- Location: LCCOMB_X16_Y18_N28
\FIFO_OUT_NS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~8_combout\ = (!r_addr(1) & (!r_addr(0) & (r_addr(2) & \mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(1),
	datab => r_addr(0),
	datac => r_addr(2),
	datad => \mem~35_combout\,
	combout => \FIFO_OUT_NS~8_combout\);

-- Location: LCCOMB_X16_Y18_N18
\FIFO_OUT_NS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~9_combout\ = (\always2~0_combout\ & ((\FIFO_OUT_NS~8_combout\) # ((\mem~45_combout\ & !r_addr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~45_combout\,
	datab => \always2~0_combout\,
	datac => r_addr(2),
	datad => \FIFO_OUT_NS~8_combout\,
	combout => \FIFO_OUT_NS~9_combout\);

-- Location: LCCOMB_X16_Y18_N24
\FIFO_OUT_NS[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(3) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(3))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FIFO_OUT_NS(3),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~9_combout\,
	combout => FIFO_OUT_NS(3));

-- Location: FF_X16_Y18_N25
\FIFO_OUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(3),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[3]~reg0_q\);

-- Location: IOIBUF_X18_Y24_N15
\FIFO_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(4),
	o => \FIFO_IN[4]~input_o\);

-- Location: LCCOMB_X17_Y19_N2
\mem~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~36_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[4]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[4]~input_o\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \mem~36_combout\,
	combout => \mem~36_combout\);

-- Location: LCCOMB_X17_Y19_N20
\FIFO_OUT_NS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~10_combout\ = (r_addr(2) & (!r_addr(1) & (!r_addr(0) & \mem~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(1),
	datac => r_addr(0),
	datad => \mem~36_combout\,
	combout => \FIFO_OUT_NS~10_combout\);

-- Location: LCCOMB_X17_Y16_N16
\mem~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~12_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\FIFO_IN[4]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\mem~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[4]~input_o\,
	datab => \mem~12_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \mem~12_combout\);

-- Location: LCCOMB_X18_Y16_N30
\mem~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~4_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[4]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[4]~input_o\,
	datac => \mem~4_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \mem~4_combout\);

-- Location: LCCOMB_X17_Y16_N6
\mem~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~20_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & ((\FIFO_IN[4]~input_o\))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & (\mem~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~20_combout\,
	datac => \FIFO_IN[4]~input_o\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \mem~20_combout\);

-- Location: LCCOMB_X17_Y16_N14
\mem~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~46_combout\ = (r_addr(0) & (r_addr(1))) # (!r_addr(0) & ((r_addr(1) & ((\mem~20_combout\))) # (!r_addr(1) & (\mem~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => r_addr(1),
	datac => \mem~4_combout\,
	datad => \mem~20_combout\,
	combout => \mem~46_combout\);

-- Location: LCCOMB_X18_Y16_N4
\mem~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~28_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\FIFO_IN[4]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\mem~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[4]~input_o\,
	datac => \mem~28_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~28_combout\);

-- Location: LCCOMB_X17_Y16_N28
\mem~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~47_combout\ = (r_addr(0) & ((\mem~46_combout\ & ((\mem~28_combout\))) # (!\mem~46_combout\ & (\mem~12_combout\)))) # (!r_addr(0) & (((\mem~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => \mem~12_combout\,
	datac => \mem~46_combout\,
	datad => \mem~28_combout\,
	combout => \mem~47_combout\);

-- Location: LCCOMB_X17_Y16_N2
\FIFO_OUT_NS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~11_combout\ = (\always2~0_combout\ & ((\FIFO_OUT_NS~10_combout\) # ((!r_addr(2) & \mem~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => \always2~0_combout\,
	datac => \FIFO_OUT_NS~10_combout\,
	datad => \mem~47_combout\,
	combout => \FIFO_OUT_NS~11_combout\);

-- Location: LCCOMB_X17_Y16_N0
\FIFO_OUT_NS[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(4) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(4))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FIFO_OUT_NS(4),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~11_combout\,
	combout => FIFO_OUT_NS(4));

-- Location: FF_X17_Y16_N1
\FIFO_OUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(4),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[4]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N8
\FIFO_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(5),
	o => \FIFO_IN[5]~input_o\);

-- Location: LCCOMB_X17_Y17_N0
\mem~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~37_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\FIFO_IN[5]~input_o\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\mem~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~37_combout\,
	datac => \FIFO_IN[5]~input_o\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \mem~37_combout\);

-- Location: LCCOMB_X17_Y18_N10
\mem~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~13_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\FIFO_IN[5]~input_o\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\mem~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~13_combout\,
	datac => \FIFO_IN[5]~input_o\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \mem~13_combout\);

-- Location: LCCOMB_X17_Y18_N28
\mem~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~29_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\FIFO_IN[5]~input_o\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\mem~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~29_combout\,
	datac => \FIFO_IN[5]~input_o\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~29_combout\);

-- Location: LCCOMB_X17_Y18_N22
\FIFO_OUT_NS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~12_combout\ = (r_addr(1) & ((\mem~29_combout\))) # (!r_addr(1) & (\mem~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~13_combout\,
	datac => r_addr(1),
	datad => \mem~29_combout\,
	combout => \FIFO_OUT_NS~12_combout\);

-- Location: LCCOMB_X16_Y17_N22
\mem~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~5_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[5]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[5]~input_o\,
	datac => \mem~5_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \mem~5_combout\);

-- Location: LCCOMB_X16_Y17_N24
\mem~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~21_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\FIFO_IN[5]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\mem~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[5]~input_o\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \mem~21_combout\,
	combout => \mem~21_combout\);

-- Location: LCCOMB_X16_Y17_N0
\FIFO_OUT_NS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~13_combout\ = (r_addr(2) & (r_addr(1))) # (!r_addr(2) & ((r_addr(1) & ((\mem~21_combout\))) # (!r_addr(1) & (\mem~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(1),
	datac => \mem~5_combout\,
	datad => \mem~21_combout\,
	combout => \FIFO_OUT_NS~13_combout\);

-- Location: LCCOMB_X17_Y18_N20
\FIFO_OUT_NS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~14_combout\ = (r_addr(0) & ((r_addr(2)) # ((\FIFO_OUT_NS~12_combout\)))) # (!r_addr(0) & (((\FIFO_OUT_NS~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(0),
	datac => \FIFO_OUT_NS~12_combout\,
	datad => \FIFO_OUT_NS~13_combout\,
	combout => \FIFO_OUT_NS~14_combout\);

-- Location: LCCOMB_X17_Y18_N18
\FIFO_OUT_NS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~15_combout\ = (\always2~0_combout\ & ((r_addr(2) & (\mem~37_combout\ & !\FIFO_OUT_NS~14_combout\)) # (!r_addr(2) & ((\FIFO_OUT_NS~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \mem~37_combout\,
	datac => r_addr(2),
	datad => \FIFO_OUT_NS~14_combout\,
	combout => \FIFO_OUT_NS~15_combout\);

-- Location: LCCOMB_X17_Y18_N12
\FIFO_OUT_NS[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(5) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(5))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FIFO_OUT_NS(5),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~15_combout\,
	combout => FIFO_OUT_NS(5));

-- Location: FF_X17_Y18_N13
\FIFO_OUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(5),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[5]~reg0_q\);

-- Location: IOIBUF_X16_Y24_N15
\FIFO_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(6),
	o => \FIFO_IN[6]~input_o\);

-- Location: LCCOMB_X16_Y15_N22
\mem~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~38_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[6]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[6]~input_o\,
	datac => \mem~38_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \mem~38_combout\);

-- Location: LCCOMB_X16_Y18_N4
\FIFO_OUT_NS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~16_combout\ = (r_addr(2) & (!r_addr(1) & (\mem~38_combout\ & !r_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => r_addr(1),
	datac => \mem~38_combout\,
	datad => r_addr(0),
	combout => \FIFO_OUT_NS~16_combout\);

-- Location: LCCOMB_X17_Y15_N4
\mem~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~30_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\FIFO_IN[6]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\mem~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[6]~input_o\,
	datac => \mem~30_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \mem~30_combout\);

-- Location: LCCOMB_X16_Y15_N16
\mem~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~14_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\FIFO_IN[6]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\mem~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[6]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \mem~14_combout\,
	combout => \mem~14_combout\);

-- Location: LCCOMB_X17_Y15_N18
\mem~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~6_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[6]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[6]~input_o\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \mem~6_combout\,
	combout => \mem~6_combout\);

-- Location: LCCOMB_X17_Y15_N0
\mem~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~22_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\FIFO_IN[6]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\mem~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[6]~input_o\,
	datab => \mem~22_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \mem~22_combout\);

-- Location: LCCOMB_X17_Y15_N24
\mem~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~48_combout\ = (r_addr(1) & (((r_addr(0)) # (\mem~22_combout\)))) # (!r_addr(1) & (\mem~6_combout\ & (!r_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(1),
	datab => \mem~6_combout\,
	datac => r_addr(0),
	datad => \mem~22_combout\,
	combout => \mem~48_combout\);

-- Location: LCCOMB_X17_Y15_N2
\mem~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~49_combout\ = (r_addr(0) & ((\mem~48_combout\ & (\mem~30_combout\)) # (!\mem~48_combout\ & ((\mem~14_combout\))))) # (!r_addr(0) & (((\mem~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(0),
	datab => \mem~30_combout\,
	datac => \mem~14_combout\,
	datad => \mem~48_combout\,
	combout => \mem~49_combout\);

-- Location: LCCOMB_X16_Y18_N6
\FIFO_OUT_NS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~17_combout\ = (\always2~0_combout\ & ((\FIFO_OUT_NS~16_combout\) # ((!r_addr(2) & \mem~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => \always2~0_combout\,
	datac => \FIFO_OUT_NS~16_combout\,
	datad => \mem~49_combout\,
	combout => \FIFO_OUT_NS~17_combout\);

-- Location: LCCOMB_X16_Y18_N22
\FIFO_OUT_NS[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(6) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(6))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FIFO_OUT_NS(6),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~17_combout\,
	combout => FIFO_OUT_NS(6));

-- Location: FF_X16_Y18_N23
\FIFO_OUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(6),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[6]~reg0_q\);

-- Location: IOIBUF_X23_Y24_N1
\FIFO_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FIFO_IN(7),
	o => \FIFO_IN[7]~input_o\);

-- Location: LCCOMB_X16_Y15_N30
\mem~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~39_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\FIFO_IN[7]~input_o\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\mem~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[7]~input_o\,
	datac => \mem~39_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \mem~39_combout\);

-- Location: LCCOMB_X17_Y15_N8
\FIFO_OUT_NS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~18_combout\ = (!r_addr(1) & (r_addr(2) & (!r_addr(0) & \mem~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(1),
	datab => r_addr(2),
	datac => r_addr(0),
	datad => \mem~39_combout\,
	combout => \FIFO_OUT_NS~18_combout\);

-- Location: LCCOMB_X17_Y15_N22
\mem~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~23_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\FIFO_IN[7]~input_o\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\mem~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[7]~input_o\,
	datac => \mem~23_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \mem~23_combout\);

-- Location: LCCOMB_X17_Y15_N16
\mem~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~31_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\FIFO_IN[7]~input_o\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\mem~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[7]~input_o\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \mem~31_combout\,
	combout => \mem~31_combout\);

-- Location: LCCOMB_X16_Y15_N26
\mem~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~7_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\FIFO_IN[7]~input_o\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FIFO_IN[7]~input_o\,
	datac => \mem~7_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \mem~7_combout\);

-- Location: LCCOMB_X16_Y15_N28
\mem~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~15_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\FIFO_IN[7]~input_o\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\mem~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFO_IN[7]~input_o\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \mem~15_combout\,
	combout => \mem~15_combout\);

-- Location: LCCOMB_X16_Y15_N24
\mem~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~50_combout\ = (r_addr(0) & (((r_addr(1)) # (\mem~15_combout\)))) # (!r_addr(0) & (\mem~7_combout\ & (!r_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~7_combout\,
	datab => r_addr(0),
	datac => r_addr(1),
	datad => \mem~15_combout\,
	combout => \mem~50_combout\);

-- Location: LCCOMB_X17_Y15_N6
\mem~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~51_combout\ = (r_addr(1) & ((\mem~50_combout\ & ((\mem~31_combout\))) # (!\mem~50_combout\ & (\mem~23_combout\)))) # (!r_addr(1) & (((\mem~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~23_combout\,
	datab => \mem~31_combout\,
	datac => r_addr(1),
	datad => \mem~50_combout\,
	combout => \mem~51_combout\);

-- Location: LCCOMB_X17_Y15_N28
\FIFO_OUT_NS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FIFO_OUT_NS~19_combout\ = (\always2~0_combout\ & ((\FIFO_OUT_NS~18_combout\) # ((!r_addr(2) & \mem~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(2),
	datab => \always2~0_combout\,
	datac => \FIFO_OUT_NS~18_combout\,
	datad => \mem~51_combout\,
	combout => \FIFO_OUT_NS~19_combout\);

-- Location: LCCOMB_X18_Y15_N4
\FIFO_OUT_NS[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- FIFO_OUT_NS(7) = (GLOBAL(\always2~1clkctrl_outclk\) & (FIFO_OUT_NS(7))) # (!GLOBAL(\always2~1clkctrl_outclk\) & ((\FIFO_OUT_NS~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FIFO_OUT_NS(7),
	datac => \always2~1clkctrl_outclk\,
	datad => \FIFO_OUT_NS~19_combout\,
	combout => FIFO_OUT_NS(7));

-- Location: FF_X18_Y15_N5
\FIFO_OUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => FIFO_OUT_NS(7),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FIFO_OUT[7]~reg0_q\);

ww_EMPTY <= \EMPTY~output_o\;

ww_FULL <= \FULL~output_o\;

ww_FIFO_OUT(0) <= \FIFO_OUT[0]~output_o\;

ww_FIFO_OUT(1) <= \FIFO_OUT[1]~output_o\;

ww_FIFO_OUT(2) <= \FIFO_OUT[2]~output_o\;

ww_FIFO_OUT(3) <= \FIFO_OUT[3]~output_o\;

ww_FIFO_OUT(4) <= \FIFO_OUT[4]~output_o\;

ww_FIFO_OUT(5) <= \FIFO_OUT[5]~output_o\;

ww_FIFO_OUT(6) <= \FIFO_OUT[6]~output_o\;

ww_FIFO_OUT(7) <= \FIFO_OUT[7]~output_o\;
END structure;


