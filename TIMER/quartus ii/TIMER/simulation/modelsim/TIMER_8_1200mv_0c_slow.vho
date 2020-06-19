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

-- DATE "06/16/2020 21:10:32"

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

ENTITY 	TIMER IS
    PORT (
	SYSCLK : IN std_logic;
	RST_B : IN std_logic;
	TIME_MIN : IN std_logic_vector(2 DOWNTO 0);
	TIME_SEC : IN std_logic_vector(5 DOWNTO 0);
	START : IN std_logic;
	MINUTE : OUT std_logic_vector(2 DOWNTO 0);
	SECOND : OUT std_logic_vector(5 DOWNTO 0);
	TIME_UP : OUT std_logic
	);
END TIMER;

-- Design Ports Information
-- MINUTE[0]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MINUTE[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MINUTE[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECOND[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECOND[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECOND[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECOND[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECOND[4]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SECOND[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_UP	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_SEC[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_SEC[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_MIN[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_MIN[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_MIN[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_SEC[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_SEC[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_SEC[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME_SEC[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYSCLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_B	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TIMER IS
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
SIGNAL ww_TIME_MIN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_TIME_SEC : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_START : std_logic;
SIGNAL ww_MINUTE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SECOND : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_TIME_UP : std_logic;
SIGNAL \MINUTE_N[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYSCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MINUTE[0]~output_o\ : std_logic;
SIGNAL \MINUTE[1]~output_o\ : std_logic;
SIGNAL \MINUTE[2]~output_o\ : std_logic;
SIGNAL \SECOND[0]~output_o\ : std_logic;
SIGNAL \SECOND[1]~output_o\ : std_logic;
SIGNAL \SECOND[2]~output_o\ : std_logic;
SIGNAL \SECOND[3]~output_o\ : std_logic;
SIGNAL \SECOND[4]~output_o\ : std_logic;
SIGNAL \SECOND[5]~output_o\ : std_logic;
SIGNAL \TIME_UP~output_o\ : std_logic;
SIGNAL \SYSCLK~input_o\ : std_logic;
SIGNAL \SYSCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \SECOND[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RST_B~input_o\ : std_logic;
SIGNAL \RST_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \TIME_MIN[0]~input_o\ : std_logic;
SIGNAL \TIME_SEC[1]~input_o\ : std_logic;
SIGNAL \MINUTE_N[1]~2_combout\ : std_logic;
SIGNAL \MINUTE[1]~reg0_q\ : std_logic;
SIGNAL \always1~4_combout\ : std_logic;
SIGNAL \TIME_SEC[3]~input_o\ : std_logic;
SIGNAL \MINUTE_N[2]~3_combout\ : std_logic;
SIGNAL \MINUTE[2]~reg0_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \TIME_SEC[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \TIME_MIN[1]~input_o\ : std_logic;
SIGNAL \TIME_MIN[2]~input_o\ : std_logic;
SIGNAL \always1~5_combout\ : std_logic;
SIGNAL \always1~6_combout\ : std_logic;
SIGNAL \TIME_SEC[0]~input_o\ : std_logic;
SIGNAL \TIME_SEC[4]~input_o\ : std_logic;
SIGNAL \TIME_SEC[5]~input_o\ : std_logic;
SIGNAL \always1~3_combout\ : std_logic;
SIGNAL \always1~1_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \state_n.done~0_combout\ : std_logic;
SIGNAL \state.done~q\ : std_logic;
SIGNAL \always1~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.00~q\ : std_logic;
SIGNAL \TIME_UP~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.count~q\ : std_logic;
SIGNAL \SECOND[0]~reg0_q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \SECOND[1]~reg0_q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \SECOND_N~0_combout\ : std_logic;
SIGNAL \SECOND[2]~reg0_q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \SECOND_N~1_combout\ : std_logic;
SIGNAL \SECOND[3]~reg0_q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \SECOND_N~2_combout\ : std_logic;
SIGNAL \SECOND[4]~reg0_q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \SECOND_N~3_combout\ : std_logic;
SIGNAL \SECOND[5]~reg0_q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \MINUTE_N[1]~1_combout\ : std_logic;
SIGNAL \MINUTE_N[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \MINUTE_N[0]~0_combout\ : std_logic;
SIGNAL \MINUTE[0]~reg0_q\ : std_logic;
SIGNAL \TIME_UP_TEMP~q\ : std_logic;
SIGNAL \TIME_UP~0_combout\ : std_logic;
SIGNAL MINUTE_N : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_SYSCLK <= SYSCLK;
ww_RST_B <= RST_B;
ww_TIME_MIN <= TIME_MIN;
ww_TIME_SEC <= TIME_SEC;
ww_START <= START;
MINUTE <= ww_MINUTE;
SECOND <= ww_SECOND;
TIME_UP <= ww_TIME_UP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MINUTE_N[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MINUTE_N[1]~1_combout\);

\RST_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_B~input_o\);

\SYSCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SYSCLK~input_o\);

-- Location: IOOBUF_X1_Y24_N2
\MINUTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MINUTE[0]~reg0_q\,
	devoe => ww_devoe,
	o => \MINUTE[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\MINUTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MINUTE[1]~reg0_q\,
	devoe => ww_devoe,
	o => \MINUTE[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\MINUTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MINUTE[2]~reg0_q\,
	devoe => ww_devoe,
	o => \MINUTE[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\SECOND[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SECOND[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SECOND[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\SECOND[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SECOND[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SECOND[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\SECOND[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SECOND[2]~reg0_q\,
	devoe => ww_devoe,
	o => \SECOND[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\SECOND[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SECOND[3]~reg0_q\,
	devoe => ww_devoe,
	o => \SECOND[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\SECOND[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SECOND[4]~reg0_q\,
	devoe => ww_devoe,
	o => \SECOND[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\SECOND[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SECOND[5]~reg0_q\,
	devoe => ww_devoe,
	o => \SECOND[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\TIME_UP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TIME_UP~0_combout\,
	devoe => ww_devoe,
	o => \TIME_UP~output_o\);

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

-- Location: LCCOMB_X1_Y11_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \SECOND[0]~reg0_q\ $ (VCC)
-- \Add1~1\ = CARRY(\SECOND[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[0]~reg0_q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X1_Y11_N30
\SECOND[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SECOND[0]~reg0feeder_combout\ = \Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	combout => \SECOND[0]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\RST_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_B,
	o => \RST_B~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X1_Y0_N15
\TIME_MIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_MIN(0),
	o => \TIME_MIN[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\TIME_SEC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_SEC(1),
	o => \TIME_SEC[1]~input_o\);

-- Location: LCCOMB_X2_Y11_N0
\MINUTE_N[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MINUTE_N[1]~2_combout\ = \MINUTE[1]~reg0_q\ $ (((\MINUTE[0]~reg0_q\ & \state.count~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MINUTE[0]~reg0_q\,
	datac => \MINUTE[1]~reg0_q\,
	datad => \state.count~q\,
	combout => \MINUTE_N[1]~2_combout\);

-- Location: LCCOMB_X2_Y11_N14
\MINUTE_N[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- MINUTE_N(1) = (GLOBAL(\MINUTE_N[1]~1clkctrl_outclk\) & ((\MINUTE_N[1]~2_combout\))) # (!GLOBAL(\MINUTE_N[1]~1clkctrl_outclk\) & (MINUTE_N(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MINUTE_N(1),
	datac => \MINUTE_N[1]~1clkctrl_outclk\,
	datad => \MINUTE_N[1]~2_combout\,
	combout => MINUTE_N(1));

-- Location: FF_X2_Y11_N15
\MINUTE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => MINUTE_N(1),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MINUTE[1]~reg0_q\);

-- Location: LCCOMB_X2_Y11_N22
\always1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~4_combout\ = (\TIME_MIN[0]~input_o\ & (\MINUTE[0]~reg0_q\ & (\TIME_SEC[1]~input_o\ $ (\MINUTE[1]~reg0_q\)))) # (!\TIME_MIN[0]~input_o\ & (!\MINUTE[0]~reg0_q\ & (\TIME_SEC[1]~input_o\ $ (!\MINUTE[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_MIN[0]~input_o\,
	datab => \TIME_SEC[1]~input_o\,
	datac => \MINUTE[1]~reg0_q\,
	datad => \MINUTE[0]~reg0_q\,
	combout => \always1~4_combout\);

-- Location: IOIBUF_X0_Y9_N8
\TIME_SEC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_SEC(3),
	o => \TIME_SEC[3]~input_o\);

-- Location: LCCOMB_X2_Y11_N6
\MINUTE_N[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MINUTE_N[2]~3_combout\ = \MINUTE[2]~reg0_q\ $ (((\state.count~q\ & (\MINUTE[1]~reg0_q\ & \MINUTE[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.count~q\,
	datab => \MINUTE[1]~reg0_q\,
	datac => \MINUTE[2]~reg0_q\,
	datad => \MINUTE[0]~reg0_q\,
	combout => \MINUTE_N[2]~3_combout\);

-- Location: LCCOMB_X2_Y11_N4
\MINUTE_N[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- MINUTE_N(2) = (GLOBAL(\MINUTE_N[1]~1clkctrl_outclk\) & ((\MINUTE_N[2]~3_combout\))) # (!GLOBAL(\MINUTE_N[1]~1clkctrl_outclk\) & (MINUTE_N(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MINUTE_N(2),
	datac => \MINUTE_N[1]~1clkctrl_outclk\,
	datad => \MINUTE_N[2]~3_combout\,
	combout => MINUTE_N(2));

-- Location: FF_X2_Y11_N5
\MINUTE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => MINUTE_N(2),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MINUTE[2]~reg0_q\);

-- Location: LCCOMB_X2_Y11_N16
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = \TIME_SEC[3]~input_o\ $ (((\MINUTE[2]~reg0_q\ & (\MINUTE[1]~reg0_q\ & \MINUTE[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_SEC[3]~input_o\,
	datab => \MINUTE[2]~reg0_q\,
	datac => \MINUTE[1]~reg0_q\,
	datad => \MINUTE[0]~reg0_q\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X0_Y18_N15
\TIME_SEC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_SEC(2),
	o => \TIME_SEC[2]~input_o\);

-- Location: LCCOMB_X2_Y11_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = \TIME_SEC[2]~input_o\ $ (\MINUTE[2]~reg0_q\ $ (((\MINUTE[1]~reg0_q\ & \MINUTE[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_SEC[2]~input_o\,
	datab => \MINUTE[1]~reg0_q\,
	datac => \MINUTE[2]~reg0_q\,
	datad => \MINUTE[0]~reg0_q\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X5_Y24_N8
\TIME_MIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_MIN(1),
	o => \TIME_MIN[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\TIME_MIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_MIN(2),
	o => \TIME_MIN[2]~input_o\);

-- Location: LCCOMB_X2_Y11_N24
\always1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~5_combout\ = (\TIME_MIN[1]~input_o\ & (\MINUTE[1]~reg0_q\ & (\TIME_MIN[2]~input_o\ $ (!\MINUTE[2]~reg0_q\)))) # (!\TIME_MIN[1]~input_o\ & (!\MINUTE[1]~reg0_q\ & (\TIME_MIN[2]~input_o\ $ (!\MINUTE[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_MIN[1]~input_o\,
	datab => \TIME_MIN[2]~input_o\,
	datac => \MINUTE[2]~reg0_q\,
	datad => \MINUTE[1]~reg0_q\,
	combout => \always1~5_combout\);

-- Location: LCCOMB_X2_Y11_N26
\always1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~6_combout\ = (\always1~4_combout\ & (!\Equal1~1_combout\ & (!\Equal1~0_combout\ & \always1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~4_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \always1~5_combout\,
	combout => \always1~6_combout\);

-- Location: IOIBUF_X0_Y5_N15
\TIME_SEC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_SEC(0),
	o => \TIME_SEC[0]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\TIME_SEC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_SEC(4),
	o => \TIME_SEC[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\TIME_SEC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TIME_SEC(5),
	o => \TIME_SEC[5]~input_o\);

-- Location: LCCOMB_X2_Y11_N20
\always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~3_combout\ = (!\TIME_SEC[4]~input_o\ & (!\TIME_SEC[5]~input_o\ & (\TIME_SEC[0]~input_o\ $ (\MINUTE[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_SEC[0]~input_o\,
	datab => \TIME_SEC[4]~input_o\,
	datac => \TIME_SEC[5]~input_o\,
	datad => \MINUTE[0]~reg0_q\,
	combout => \always1~3_combout\);

-- Location: LCCOMB_X2_Y11_N12
\always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = (!\TIME_SEC[2]~input_o\ & (!\TIME_SEC[1]~input_o\ & (!\TIME_MIN[2]~input_o\ & !\TIME_SEC[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_SEC[2]~input_o\,
	datab => \TIME_SEC[1]~input_o\,
	datac => \TIME_MIN[2]~input_o\,
	datad => \TIME_SEC[0]~input_o\,
	combout => \always1~1_combout\);

-- Location: LCCOMB_X2_Y11_N30
\always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (!\TIME_MIN[0]~input_o\ & (!\TIME_SEC[4]~input_o\ & (!\TIME_SEC[5]~input_o\ & !\TIME_MIN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIME_MIN[0]~input_o\,
	datab => \TIME_SEC[4]~input_o\,
	datac => \TIME_SEC[5]~input_o\,
	datad => \TIME_MIN[1]~input_o\,
	combout => \always1~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\START~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: LCCOMB_X2_Y11_N28
\state_n.done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_n.done~0_combout\ = (\state.count~q\ & (\always1~6_combout\ & \always1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.count~q\,
	datac => \always1~6_combout\,
	datad => \always1~3_combout\,
	combout => \state_n.done~0_combout\);

-- Location: FF_X2_Y11_N29
\state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \state_n.done~0_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.done~q\);

-- Location: LCCOMB_X3_Y11_N2
\always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~2_combout\ = (\always1~1_combout\ & (!\TIME_SEC[3]~input_o\ & \always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~1_combout\,
	datac => \TIME_SEC[3]~input_o\,
	datad => \always1~0_combout\,
	combout => \always1~2_combout\);

-- Location: LCCOMB_X3_Y11_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.done~q\ & ((\state.00~q\) # ((\START~input_o\ & !\always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \START~input_o\,
	datac => \state.00~q\,
	datad => \always1~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X3_Y11_N13
\state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.00~q\);

-- Location: LCCOMB_X3_Y11_N18
\TIME_UP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TIME_UP~1_combout\ = (\START~input_o\ & !\state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datad => \state.00~q\,
	combout => \TIME_UP~1_combout\);

-- Location: LCCOMB_X3_Y11_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\TIME_UP~1_combout\ & (((\TIME_SEC[3]~input_o\) # (!\always1~0_combout\)) # (!\always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~1_combout\,
	datab => \always1~0_combout\,
	datac => \TIME_SEC[3]~input_o\,
	datad => \TIME_UP~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X2_Y11_N18
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\state.count~q\ & ((!\always1~3_combout\) # (!\always1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~6_combout\,
	datab => \always1~3_combout\,
	datac => \state.count~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X2_Y11_N19
\state.count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => \Selector1~1_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.count~q\);

-- Location: FF_X1_Y11_N31
\SECOND[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \SECOND[0]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \state.count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SECOND[0]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SECOND[1]~reg0_q\ & (!\Add1~1\)) # (!\SECOND[1]~reg0_q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\SECOND[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SECOND[1]~reg0_q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X1_Y11_N17
\SECOND[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => \Add1~2_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \state.count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SECOND[1]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N18
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\SECOND[2]~reg0_q\ & (\Add1~3\ $ (GND))) # (!\SECOND[2]~reg0_q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\SECOND[2]~reg0_q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[2]~reg0_q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X1_Y11_N10
\SECOND_N~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SECOND_N~0_combout\ = (\Add1~4_combout\ & (((!\Equal2~0_combout\) # (!\SECOND[0]~reg0_q\)) # (!\SECOND[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[1]~reg0_q\,
	datab => \Add1~4_combout\,
	datac => \SECOND[0]~reg0_q\,
	datad => \Equal2~0_combout\,
	combout => \SECOND_N~0_combout\);

-- Location: FF_X1_Y11_N11
\SECOND[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => \SECOND_N~0_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \state.count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SECOND[2]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N20
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SECOND[3]~reg0_q\ & (!\Add1~5\)) # (!\SECOND[3]~reg0_q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\SECOND[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SECOND[3]~reg0_q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X1_Y11_N4
\SECOND_N~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SECOND_N~1_combout\ = (\Add1~6_combout\ & (((!\Equal2~0_combout\) # (!\SECOND[0]~reg0_q\)) # (!\SECOND[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[1]~reg0_q\,
	datab => \Add1~6_combout\,
	datac => \SECOND[0]~reg0_q\,
	datad => \Equal2~0_combout\,
	combout => \SECOND_N~1_combout\);

-- Location: FF_X1_Y11_N5
\SECOND[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => \SECOND_N~1_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \state.count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SECOND[3]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N22
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\SECOND[4]~reg0_q\ & (\Add1~7\ $ (GND))) # (!\SECOND[4]~reg0_q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\SECOND[4]~reg0_q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[4]~reg0_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X1_Y11_N26
\SECOND_N~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SECOND_N~2_combout\ = (\Add1~8_combout\ & (((!\Equal2~0_combout\) # (!\SECOND[1]~reg0_q\)) # (!\SECOND[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[0]~reg0_q\,
	datab => \SECOND[1]~reg0_q\,
	datac => \Add1~8_combout\,
	datad => \Equal2~0_combout\,
	combout => \SECOND_N~2_combout\);

-- Location: FF_X1_Y11_N27
\SECOND[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => \SECOND_N~2_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \state.count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SECOND[4]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N24
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (\SECOND[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SECOND[5]~reg0_q\,
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X1_Y11_N6
\SECOND_N~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SECOND_N~3_combout\ = (\Add1~10_combout\ & (((!\Equal2~0_combout\) # (!\SECOND[0]~reg0_q\)) # (!\SECOND[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[1]~reg0_q\,
	datab => \Add1~10_combout\,
	datac => \SECOND[0]~reg0_q\,
	datad => \Equal2~0_combout\,
	combout => \SECOND_N~3_combout\);

-- Location: FF_X1_Y11_N7
\SECOND[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~input_o\,
	d => \SECOND_N~3_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \state.count~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SECOND[5]~reg0_q\);

-- Location: LCCOMB_X1_Y11_N8
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\SECOND[5]~reg0_q\ & (\SECOND[4]~reg0_q\ & (\SECOND[3]~reg0_q\ & !\SECOND[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[5]~reg0_q\,
	datab => \SECOND[4]~reg0_q\,
	datac => \SECOND[3]~reg0_q\,
	datad => \SECOND[2]~reg0_q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\MINUTE_N[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MINUTE_N[1]~1_combout\ = ((\SECOND[0]~reg0_q\ & (\SECOND[1]~reg0_q\ & \Equal2~0_combout\))) # (!\state.count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SECOND[0]~reg0_q\,
	datab => \SECOND[1]~reg0_q\,
	datac => \Equal2~0_combout\,
	datad => \state.count~q\,
	combout => \MINUTE_N[1]~1_combout\);

-- Location: CLKCTRL_G3
\MINUTE_N[1]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MINUTE_N[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MINUTE_N[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N10
\MINUTE_N[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MINUTE_N[0]~0_combout\ = \state.count~q\ $ (\MINUTE[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.count~q\,
	datad => \MINUTE[0]~reg0_q\,
	combout => \MINUTE_N[0]~0_combout\);

-- Location: LCCOMB_X2_Y11_N2
\MINUTE_N[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- MINUTE_N(0) = (GLOBAL(\MINUTE_N[1]~1clkctrl_outclk\) & ((\MINUTE_N[0]~0_combout\))) # (!GLOBAL(\MINUTE_N[1]~1clkctrl_outclk\) & (MINUTE_N(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MINUTE_N(0),
	datac => \MINUTE_N[1]~1clkctrl_outclk\,
	datad => \MINUTE_N[0]~0_combout\,
	combout => MINUTE_N(0));

-- Location: FF_X2_Y11_N3
\MINUTE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => MINUTE_N(0),
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MINUTE[0]~reg0_q\);

-- Location: FF_X3_Y11_N1
TIME_UP_TEMP : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \state.done~q\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIME_UP_TEMP~q\);

-- Location: LCCOMB_X3_Y11_N0
\TIME_UP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TIME_UP~0_combout\ = (\TIME_UP_TEMP~q\) # ((\START~input_o\ & (!\state.00~q\ & \always1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \state.00~q\,
	datac => \TIME_UP_TEMP~q\,
	datad => \always1~2_combout\,
	combout => \TIME_UP~0_combout\);

ww_MINUTE(0) <= \MINUTE[0]~output_o\;

ww_MINUTE(1) <= \MINUTE[1]~output_o\;

ww_MINUTE(2) <= \MINUTE[2]~output_o\;

ww_SECOND(0) <= \SECOND[0]~output_o\;

ww_SECOND(1) <= \SECOND[1]~output_o\;

ww_SECOND(2) <= \SECOND[2]~output_o\;

ww_SECOND(3) <= \SECOND[3]~output_o\;

ww_SECOND(4) <= \SECOND[4]~output_o\;

ww_SECOND(5) <= \SECOND[5]~output_o\;

ww_TIME_UP <= \TIME_UP~output_o\;
END structure;


