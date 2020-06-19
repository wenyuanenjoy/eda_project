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

-- DATE "06/17/2020 12:32:37"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sequence_Detector IS
    PORT (
	RST_B : IN std_logic;
	SYSCLK : IN std_logic;
	IN_VALID : IN std_logic;
	MODE : IN std_logic_vector(1 DOWNTO 0);
	DATA_IN : IN std_logic_vector(3 DOWNTO 0);
	OUT_VALID : OUT std_logic;
	DATA_OUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END Sequence_Detector;

-- Design Ports Information
-- RST_B	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYSCLK	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_VALID	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_VALID	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sequence_Detector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST_B : std_logic;
SIGNAL ww_SYSCLK : std_logic;
SIGNAL ww_IN_VALID : std_logic;
SIGNAL ww_MODE : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DATA_IN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT_VALID : std_logic;
SIGNAL ww_DATA_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST_B~input_o\ : std_logic;
SIGNAL \SYSCLK~input_o\ : std_logic;
SIGNAL \IN_VALID~input_o\ : std_logic;
SIGNAL \MODE[0]~input_o\ : std_logic;
SIGNAL \MODE[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \OUT_VALID~output_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;

BEGIN

ww_RST_B <= RST_B;
ww_SYSCLK <= SYSCLK;
ww_IN_VALID <= IN_VALID;
ww_MODE <= MODE;
ww_DATA_IN <= DATA_IN;
OUT_VALID <= ww_OUT_VALID;
DATA_OUT <= ww_DATA_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N2
\OUT_VALID~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT_VALID~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\DATA_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\DATA_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\DATA_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DATA_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOIBUF_X1_Y0_N15
\RST_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_B,
	o => \RST_B~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\SYSCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SYSCLK,
	o => \SYSCLK~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\IN_VALID~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_VALID,
	o => \IN_VALID~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\MODE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(0),
	o => \MODE[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\MODE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(1),
	o => \MODE[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\DATA_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\DATA_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\DATA_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\DATA_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

ww_OUT_VALID <= \OUT_VALID~output_o\;

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;
END structure;


