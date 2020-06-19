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

-- DATE "06/19/2020 16:29:10"

-- 
-- Device: Altera EP4CE6F17I8L Package FBGA256
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

ENTITY 	APB_Slave IS
    PORT (
	SYSCLK : IN std_logic;
	RST_B : IN std_logic;
	PSEL : IN std_logic;
	PWRITE : IN std_logic;
	PENABLE : IN std_logic;
	PADDR : IN std_logic_vector(4 DOWNTO 0);
	PWDATA : IN std_logic_vector(31 DOWNTO 0);
	INT_B : OUT std_logic;
	PRDATA : OUT std_logic_vector(31 DOWNTO 0);
	EX_TO : OUT std_logic_vector(31 DOWNTO 0);
	EX_CON : OUT std_logic_vector(31 DOWNTO 0);
	CNT_START : OUT std_logic;
	COUNT : OUT std_logic
	);
END APB_Slave;

-- Design Ports Information
-- PADDR[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PADDR[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PADDR[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PADDR[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT_B	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[9]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[13]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[14]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[17]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[18]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[19]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[20]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[21]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[22]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[23]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[24]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[26]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[27]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[28]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[29]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[30]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRDATA[31]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[6]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[16]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[17]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[18]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[22]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[23]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[24]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[25]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[26]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[27]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[28]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[29]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[30]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_TO[31]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[8]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[12]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[13]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[15]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[16]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[17]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[18]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[19]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[20]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[21]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[22]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[23]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[24]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[25]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[26]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[27]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[28]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[29]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[30]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_CON[31]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT_START	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYSCLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_B	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWRITE	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSEL	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PENABLE	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PADDR[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[12]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[13]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[16]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[17]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[18]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[19]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[20]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[21]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[22]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[23]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[24]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[25]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[26]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[28]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[30]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDATA[31]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF APB_Slave IS
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
SIGNAL ww_PSEL : std_logic;
SIGNAL ww_PWRITE : std_logic;
SIGNAL ww_PENABLE : std_logic;
SIGNAL ww_PADDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PWDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INT_B : std_logic;
SIGNAL ww_PRDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_EX_TO : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_EX_CON : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CNT_START : std_logic;
SIGNAL ww_COUNT : std_logic;
SIGNAL \RST_B~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYSCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PADDR[1]~input_o\ : std_logic;
SIGNAL \PADDR[2]~input_o\ : std_logic;
SIGNAL \PADDR[3]~input_o\ : std_logic;
SIGNAL \PADDR[4]~input_o\ : std_logic;
SIGNAL \INT_B~output_o\ : std_logic;
SIGNAL \PRDATA[0]~output_o\ : std_logic;
SIGNAL \PRDATA[1]~output_o\ : std_logic;
SIGNAL \PRDATA[2]~output_o\ : std_logic;
SIGNAL \PRDATA[3]~output_o\ : std_logic;
SIGNAL \PRDATA[4]~output_o\ : std_logic;
SIGNAL \PRDATA[5]~output_o\ : std_logic;
SIGNAL \PRDATA[6]~output_o\ : std_logic;
SIGNAL \PRDATA[7]~output_o\ : std_logic;
SIGNAL \PRDATA[8]~output_o\ : std_logic;
SIGNAL \PRDATA[9]~output_o\ : std_logic;
SIGNAL \PRDATA[10]~output_o\ : std_logic;
SIGNAL \PRDATA[11]~output_o\ : std_logic;
SIGNAL \PRDATA[12]~output_o\ : std_logic;
SIGNAL \PRDATA[13]~output_o\ : std_logic;
SIGNAL \PRDATA[14]~output_o\ : std_logic;
SIGNAL \PRDATA[15]~output_o\ : std_logic;
SIGNAL \PRDATA[16]~output_o\ : std_logic;
SIGNAL \PRDATA[17]~output_o\ : std_logic;
SIGNAL \PRDATA[18]~output_o\ : std_logic;
SIGNAL \PRDATA[19]~output_o\ : std_logic;
SIGNAL \PRDATA[20]~output_o\ : std_logic;
SIGNAL \PRDATA[21]~output_o\ : std_logic;
SIGNAL \PRDATA[22]~output_o\ : std_logic;
SIGNAL \PRDATA[23]~output_o\ : std_logic;
SIGNAL \PRDATA[24]~output_o\ : std_logic;
SIGNAL \PRDATA[25]~output_o\ : std_logic;
SIGNAL \PRDATA[26]~output_o\ : std_logic;
SIGNAL \PRDATA[27]~output_o\ : std_logic;
SIGNAL \PRDATA[28]~output_o\ : std_logic;
SIGNAL \PRDATA[29]~output_o\ : std_logic;
SIGNAL \PRDATA[30]~output_o\ : std_logic;
SIGNAL \PRDATA[31]~output_o\ : std_logic;
SIGNAL \EX_TO[0]~output_o\ : std_logic;
SIGNAL \EX_TO[1]~output_o\ : std_logic;
SIGNAL \EX_TO[2]~output_o\ : std_logic;
SIGNAL \EX_TO[3]~output_o\ : std_logic;
SIGNAL \EX_TO[4]~output_o\ : std_logic;
SIGNAL \EX_TO[5]~output_o\ : std_logic;
SIGNAL \EX_TO[6]~output_o\ : std_logic;
SIGNAL \EX_TO[7]~output_o\ : std_logic;
SIGNAL \EX_TO[8]~output_o\ : std_logic;
SIGNAL \EX_TO[9]~output_o\ : std_logic;
SIGNAL \EX_TO[10]~output_o\ : std_logic;
SIGNAL \EX_TO[11]~output_o\ : std_logic;
SIGNAL \EX_TO[12]~output_o\ : std_logic;
SIGNAL \EX_TO[13]~output_o\ : std_logic;
SIGNAL \EX_TO[14]~output_o\ : std_logic;
SIGNAL \EX_TO[15]~output_o\ : std_logic;
SIGNAL \EX_TO[16]~output_o\ : std_logic;
SIGNAL \EX_TO[17]~output_o\ : std_logic;
SIGNAL \EX_TO[18]~output_o\ : std_logic;
SIGNAL \EX_TO[19]~output_o\ : std_logic;
SIGNAL \EX_TO[20]~output_o\ : std_logic;
SIGNAL \EX_TO[21]~output_o\ : std_logic;
SIGNAL \EX_TO[22]~output_o\ : std_logic;
SIGNAL \EX_TO[23]~output_o\ : std_logic;
SIGNAL \EX_TO[24]~output_o\ : std_logic;
SIGNAL \EX_TO[25]~output_o\ : std_logic;
SIGNAL \EX_TO[26]~output_o\ : std_logic;
SIGNAL \EX_TO[27]~output_o\ : std_logic;
SIGNAL \EX_TO[28]~output_o\ : std_logic;
SIGNAL \EX_TO[29]~output_o\ : std_logic;
SIGNAL \EX_TO[30]~output_o\ : std_logic;
SIGNAL \EX_TO[31]~output_o\ : std_logic;
SIGNAL \EX_CON[0]~output_o\ : std_logic;
SIGNAL \EX_CON[1]~output_o\ : std_logic;
SIGNAL \EX_CON[2]~output_o\ : std_logic;
SIGNAL \EX_CON[3]~output_o\ : std_logic;
SIGNAL \EX_CON[4]~output_o\ : std_logic;
SIGNAL \EX_CON[5]~output_o\ : std_logic;
SIGNAL \EX_CON[6]~output_o\ : std_logic;
SIGNAL \EX_CON[7]~output_o\ : std_logic;
SIGNAL \EX_CON[8]~output_o\ : std_logic;
SIGNAL \EX_CON[9]~output_o\ : std_logic;
SIGNAL \EX_CON[10]~output_o\ : std_logic;
SIGNAL \EX_CON[11]~output_o\ : std_logic;
SIGNAL \EX_CON[12]~output_o\ : std_logic;
SIGNAL \EX_CON[13]~output_o\ : std_logic;
SIGNAL \EX_CON[14]~output_o\ : std_logic;
SIGNAL \EX_CON[15]~output_o\ : std_logic;
SIGNAL \EX_CON[16]~output_o\ : std_logic;
SIGNAL \EX_CON[17]~output_o\ : std_logic;
SIGNAL \EX_CON[18]~output_o\ : std_logic;
SIGNAL \EX_CON[19]~output_o\ : std_logic;
SIGNAL \EX_CON[20]~output_o\ : std_logic;
SIGNAL \EX_CON[21]~output_o\ : std_logic;
SIGNAL \EX_CON[22]~output_o\ : std_logic;
SIGNAL \EX_CON[23]~output_o\ : std_logic;
SIGNAL \EX_CON[24]~output_o\ : std_logic;
SIGNAL \EX_CON[25]~output_o\ : std_logic;
SIGNAL \EX_CON[26]~output_o\ : std_logic;
SIGNAL \EX_CON[27]~output_o\ : std_logic;
SIGNAL \EX_CON[28]~output_o\ : std_logic;
SIGNAL \EX_CON[29]~output_o\ : std_logic;
SIGNAL \EX_CON[30]~output_o\ : std_logic;
SIGNAL \EX_CON[31]~output_o\ : std_logic;
SIGNAL \CNT_START~output_o\ : std_logic;
SIGNAL \COUNT~output_o\ : std_logic;
SIGNAL \SYSCLK~input_o\ : std_logic;
SIGNAL \SYSCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PSEL~input_o\ : std_logic;
SIGNAL \PENABLE~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \RST_B~input_o\ : std_logic;
SIGNAL \RST_B~inputclkctrl_outclk\ : std_logic;
SIGNAL \fsm_cs.set~q\ : std_logic;
SIGNAL \PWDATA[1]~input_o\ : std_logic;
SIGNAL \EX_CON[1]~reg0feeder_combout\ : std_logic;
SIGNAL \PADDR[0]~input_o\ : std_logic;
SIGNAL \PWRITE~input_o\ : std_logic;
SIGNAL \always4~0_combout\ : std_logic;
SIGNAL \EX_CON[1]~reg0_q\ : std_logic;
SIGNAL \PWDATA[4]~input_o\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \EX_TO[4]~reg0_q\ : std_logic;
SIGNAL \PWDATA[3]~input_o\ : std_logic;
SIGNAL \EX_TO[3]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[3]~reg0_q\ : std_logic;
SIGNAL \PWDATA[2]~input_o\ : std_logic;
SIGNAL \EX_TO[2]~reg0_q\ : std_logic;
SIGNAL \PWDATA[5]~input_o\ : std_logic;
SIGNAL \EX_TO[5]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[5]~reg0_q\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \PWDATA[10]~input_o\ : std_logic;
SIGNAL \EX_TO[10]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[10]~reg0_q\ : std_logic;
SIGNAL \PWDATA[13]~input_o\ : std_logic;
SIGNAL \EX_TO[13]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[13]~reg0_q\ : std_logic;
SIGNAL \PWDATA[12]~input_o\ : std_logic;
SIGNAL \EX_TO[12]~reg0_q\ : std_logic;
SIGNAL \PWDATA[11]~input_o\ : std_logic;
SIGNAL \EX_TO[11]~reg0_q\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \PWDATA[6]~input_o\ : std_logic;
SIGNAL \EX_TO[6]~reg0_q\ : std_logic;
SIGNAL \PWDATA[8]~input_o\ : std_logic;
SIGNAL \EX_TO[8]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[8]~reg0_q\ : std_logic;
SIGNAL \PWDATA[9]~input_o\ : std_logic;
SIGNAL \EX_TO[9]~reg0_q\ : std_logic;
SIGNAL \PWDATA[7]~input_o\ : std_logic;
SIGNAL \EX_TO[7]~reg0_q\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \PWDATA[15]~input_o\ : std_logic;
SIGNAL \EX_TO[15]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[15]~reg0_q\ : std_logic;
SIGNAL \PWDATA[16]~input_o\ : std_logic;
SIGNAL \EX_TO[16]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[16]~reg0_q\ : std_logic;
SIGNAL \PWDATA[17]~input_o\ : std_logic;
SIGNAL \EX_TO[17]~reg0_q\ : std_logic;
SIGNAL \PWDATA[14]~input_o\ : std_logic;
SIGNAL \EX_TO[14]~reg0_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \EX_TO[1]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[1]~reg0_q\ : std_logic;
SIGNAL \PWDATA[22]~input_o\ : std_logic;
SIGNAL \EX_TO[22]~reg0_q\ : std_logic;
SIGNAL \PWDATA[23]~input_o\ : std_logic;
SIGNAL \EX_TO[23]~reg0_q\ : std_logic;
SIGNAL \PWDATA[25]~input_o\ : std_logic;
SIGNAL \EX_TO[25]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[25]~reg0_q\ : std_logic;
SIGNAL \PWDATA[24]~input_o\ : std_logic;
SIGNAL \EX_TO[24]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[24]~reg0_q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \PWDATA[27]~input_o\ : std_logic;
SIGNAL \EX_TO[27]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[27]~reg0_q\ : std_logic;
SIGNAL \PWDATA[29]~input_o\ : std_logic;
SIGNAL \EX_TO[29]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[29]~reg0_q\ : std_logic;
SIGNAL \PWDATA[26]~input_o\ : std_logic;
SIGNAL \EX_TO[26]~reg0_q\ : std_logic;
SIGNAL \PWDATA[28]~input_o\ : std_logic;
SIGNAL \EX_TO[28]~reg0_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \PWDATA[20]~input_o\ : std_logic;
SIGNAL \EX_TO[20]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[20]~reg0_q\ : std_logic;
SIGNAL \PWDATA[19]~input_o\ : std_logic;
SIGNAL \EX_TO[19]~reg0_q\ : std_logic;
SIGNAL \PWDATA[18]~input_o\ : std_logic;
SIGNAL \EX_TO[18]~reg0_q\ : std_logic;
SIGNAL \PWDATA[21]~input_o\ : std_logic;
SIGNAL \EX_TO[21]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[21]~reg0_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \COUNT_NS[0]~0_combout\ : std_logic;
SIGNAL \COUNT~reg0_q\ : std_logic;
SIGNAL \PWDATA[0]~input_o\ : std_logic;
SIGNAL \EX_TO[0]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[0]~reg0_q\ : std_logic;
SIGNAL \PWDATA[31]~input_o\ : std_logic;
SIGNAL \EX_TO[31]~reg0_q\ : std_logic;
SIGNAL \PWDATA[30]~input_o\ : std_logic;
SIGNAL \EX_TO[30]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_TO[30]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \fsm_cs.enable~q\ : std_logic;
SIGNAL \fsm_cs.done~3_combout\ : std_logic;
SIGNAL \fsm_cs.done~2_combout\ : std_logic;
SIGNAL \fsm_cs.done~q\ : std_logic;
SIGNAL \EX_CON[2]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[2]~reg0_q\ : std_logic;
SIGNAL \EX_CON[3]~reg0_q\ : std_logic;
SIGNAL \always6~0_combout\ : std_logic;
SIGNAL \EX_CON[0]~reg0_q\ : std_logic;
SIGNAL \EX_CON[4]~reg0_q\ : std_logic;
SIGNAL \EX_CON[5]~reg0_q\ : std_logic;
SIGNAL \EX_CON[6]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[6]~reg0_q\ : std_logic;
SIGNAL \EX_CON[7]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[7]~reg0_q\ : std_logic;
SIGNAL \EX_CON[8]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[8]~reg0_q\ : std_logic;
SIGNAL \EX_CON[9]~reg0_q\ : std_logic;
SIGNAL \EX_CON[10]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[10]~reg0_q\ : std_logic;
SIGNAL \EX_CON[11]~reg0_q\ : std_logic;
SIGNAL \EX_CON[12]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[12]~reg0_q\ : std_logic;
SIGNAL \EX_CON[13]~reg0_q\ : std_logic;
SIGNAL \EX_CON[14]~reg0_q\ : std_logic;
SIGNAL \EX_CON[15]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[15]~reg0_q\ : std_logic;
SIGNAL \EX_CON[16]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[16]~reg0_q\ : std_logic;
SIGNAL \EX_CON[17]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[17]~reg0_q\ : std_logic;
SIGNAL \EX_CON[18]~reg0_q\ : std_logic;
SIGNAL \EX_CON[19]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[19]~reg0_q\ : std_logic;
SIGNAL \EX_CON[20]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[20]~reg0_q\ : std_logic;
SIGNAL \EX_CON[21]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[21]~reg0_q\ : std_logic;
SIGNAL \EX_CON[22]~reg0_q\ : std_logic;
SIGNAL \EX_CON[23]~reg0_q\ : std_logic;
SIGNAL \EX_CON[24]~reg0_q\ : std_logic;
SIGNAL \EX_CON[25]~reg0_q\ : std_logic;
SIGNAL \EX_CON[26]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[26]~reg0_q\ : std_logic;
SIGNAL \EX_CON[27]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[27]~reg0_q\ : std_logic;
SIGNAL \EX_CON[28]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[28]~reg0_q\ : std_logic;
SIGNAL \EX_CON[29]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[29]~reg0_q\ : std_logic;
SIGNAL \EX_CON[30]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[30]~reg0_q\ : std_logic;
SIGNAL \EX_CON[31]~reg0feeder_combout\ : std_logic;
SIGNAL \EX_CON[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_always6~0_combout\ : std_logic;

BEGIN

ww_SYSCLK <= SYSCLK;
ww_RST_B <= RST_B;
ww_PSEL <= PSEL;
ww_PWRITE <= PWRITE;
ww_PENABLE <= PENABLE;
ww_PADDR <= PADDR;
ww_PWDATA <= PWDATA;
INT_B <= ww_INT_B;
PRDATA <= ww_PRDATA;
EX_TO <= ww_EX_TO;
EX_CON <= ww_EX_CON;
CNT_START <= ww_CNT_START;
COUNT <= ww_COUNT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST_B~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_B~input_o\);

\SYSCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SYSCLK~input_o\);
\ALT_INV_always6~0_combout\ <= NOT \always6~0_combout\;

-- Location: IOOBUF_X28_Y0_N23
\INT_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_always6~0_combout\,
	devoe => ww_devoe,
	o => \INT_B~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\PRDATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\PRDATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\PRDATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\PRDATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\PRDATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\PRDATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[5]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\PRDATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\PRDATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[7]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\PRDATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\PRDATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[9]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\PRDATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[10]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\PRDATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[11]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\PRDATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[12]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\PRDATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[13]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\PRDATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[14]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\PRDATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\PRDATA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[16]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\PRDATA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[17]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\PRDATA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[18]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\PRDATA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[19]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\PRDATA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[20]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\PRDATA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[21]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\PRDATA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[22]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\PRDATA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[23]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\PRDATA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[24]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\PRDATA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[25]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\PRDATA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[26]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\PRDATA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[27]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\PRDATA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[28]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\PRDATA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[29]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\PRDATA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[30]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\PRDATA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PRDATA[31]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\EX_TO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[0]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\EX_TO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[1]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\EX_TO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[2]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\EX_TO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[3]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\EX_TO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[4]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\EX_TO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[5]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\EX_TO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[6]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\EX_TO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[7]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\EX_TO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[8]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[8]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\EX_TO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[9]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[9]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\EX_TO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[10]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[10]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\EX_TO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[11]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\EX_TO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[12]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\EX_TO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[13]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\EX_TO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[14]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[14]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\EX_TO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[15]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\EX_TO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[16]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[16]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\EX_TO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[17]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[17]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\EX_TO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[18]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[18]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\EX_TO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[19]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\EX_TO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[20]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[20]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\EX_TO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[21]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[21]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\EX_TO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[22]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[22]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\EX_TO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[23]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\EX_TO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[24]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[24]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\EX_TO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[25]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[25]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\EX_TO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[26]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[26]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\EX_TO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[27]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[27]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\EX_TO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[28]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[28]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\EX_TO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[29]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[29]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\EX_TO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[30]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[30]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\EX_TO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_TO[31]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_TO[31]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\EX_CON[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[0]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\EX_CON[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[1]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\EX_CON[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[2]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\EX_CON[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[3]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\EX_CON[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[4]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\EX_CON[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[5]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\EX_CON[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[6]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\EX_CON[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[7]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\EX_CON[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[8]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\EX_CON[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[9]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\EX_CON[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[10]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\EX_CON[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[11]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\EX_CON[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[12]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[12]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\EX_CON[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[13]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[13]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\EX_CON[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[14]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\EX_CON[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[15]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[15]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\EX_CON[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[16]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\EX_CON[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[17]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\EX_CON[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[18]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[18]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\EX_CON[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[19]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[19]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\EX_CON[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[20]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[20]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\EX_CON[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[21]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[21]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\EX_CON[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[22]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[22]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\EX_CON[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[23]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[23]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\EX_CON[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[24]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[24]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\EX_CON[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[25]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[25]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\EX_CON[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[26]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[26]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\EX_CON[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[27]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[27]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\EX_CON[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[28]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[28]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\EX_CON[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[29]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[29]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\EX_CON[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[30]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[30]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\EX_CON[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[31]~reg0_q\,
	devoe => ww_devoe,
	o => \EX_CON[31]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\CNT_START~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_CON[1]~reg0_q\,
	devoe => ww_devoe,
	o => \CNT_START~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\COUNT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT~reg0_q\,
	devoe => ww_devoe,
	o => \COUNT~output_o\);

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

-- Location: IOIBUF_X30_Y0_N1
\PSEL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSEL,
	o => \PSEL~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\PENABLE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PENABLE,
	o => \PENABLE~input_o\);

-- Location: LCCOMB_X25_Y2_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\PSEL~input_o\ & (!\PENABLE~input_o\ & (!\fsm_cs.set~q\ & !\fsm_cs.done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PSEL~input_o\,
	datab => \PENABLE~input_o\,
	datac => \fsm_cs.set~q\,
	datad => \fsm_cs.done~q\,
	combout => \Selector1~0_combout\);

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

-- Location: FF_X25_Y2_N23
\fsm_cs.set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_cs.set~q\);

-- Location: IOIBUF_X34_Y2_N22
\PWDATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(1),
	o => \PWDATA[1]~input_o\);

-- Location: LCCOMB_X25_Y2_N24
\EX_CON[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[1]~reg0feeder_combout\ = \PWDATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[1]~input_o\,
	combout => \EX_CON[1]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y5_N22
\PADDR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PADDR(0),
	o => \PADDR[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\PWRITE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWRITE,
	o => \PWRITE~input_o\);

-- Location: LCCOMB_X25_Y2_N0
\always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always4~0_combout\ = (!\PADDR[0]~input_o\ & (\PENABLE~input_o\ & (\PSEL~input_o\ & \PWRITE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PADDR[0]~input_o\,
	datab => \PENABLE~input_o\,
	datac => \PSEL~input_o\,
	datad => \PWRITE~input_o\,
	combout => \always4~0_combout\);

-- Location: FF_X25_Y2_N25
\EX_CON[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[1]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[1]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N15
\PWDATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(4),
	o => \PWDATA[4]~input_o\);

-- Location: LCCOMB_X25_Y2_N28
\always3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~0_combout\ = (\PADDR[0]~input_o\ & (\PENABLE~input_o\ & (\PSEL~input_o\ & \PWRITE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PADDR[0]~input_o\,
	datab => \PENABLE~input_o\,
	datac => \PSEL~input_o\,
	datad => \PWRITE~input_o\,
	combout => \always3~0_combout\);

-- Location: FF_X24_Y2_N31
\EX_TO[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[4]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[4]~reg0_q\);

-- Location: IOIBUF_X0_Y8_N8
\PWDATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(3),
	o => \PWDATA[3]~input_o\);

-- Location: LCCOMB_X24_Y2_N28
\EX_TO[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[3]~reg0feeder_combout\ = \PWDATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[3]~input_o\,
	combout => \EX_TO[3]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N29
\EX_TO[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[3]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[3]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N15
\PWDATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(2),
	o => \PWDATA[2]~input_o\);

-- Location: FF_X24_Y2_N27
\EX_TO[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[2]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[2]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N8
\PWDATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(5),
	o => \PWDATA[5]~input_o\);

-- Location: LCCOMB_X24_Y2_N16
\EX_TO[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[5]~reg0feeder_combout\ = \PWDATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[5]~input_o\,
	combout => \EX_TO[5]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N17
\EX_TO[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[5]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[5]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\EX_TO[4]~reg0_q\ & (!\EX_TO[3]~reg0_q\ & (!\EX_TO[2]~reg0_q\ & !\EX_TO[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[4]~reg0_q\,
	datab => \EX_TO[3]~reg0_q\,
	datac => \EX_TO[2]~reg0_q\,
	datad => \EX_TO[5]~reg0_q\,
	combout => \Equal0~8_combout\);

-- Location: IOIBUF_X13_Y24_N15
\PWDATA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(10),
	o => \PWDATA[10]~input_o\);

-- Location: LCCOMB_X23_Y2_N10
\EX_TO[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[10]~reg0feeder_combout\ = \PWDATA[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[10]~input_o\,
	combout => \EX_TO[10]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N11
\EX_TO[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[10]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[10]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N15
\PWDATA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(13),
	o => \PWDATA[13]~input_o\);

-- Location: LCCOMB_X23_Y2_N28
\EX_TO[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[13]~reg0feeder_combout\ = \PWDATA[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[13]~input_o\,
	combout => \EX_TO[13]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N29
\EX_TO[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[13]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[13]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N15
\PWDATA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(12),
	o => \PWDATA[12]~input_o\);

-- Location: FF_X23_Y2_N7
\EX_TO[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[12]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[12]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N15
\PWDATA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(11),
	o => \PWDATA[11]~input_o\);

-- Location: FF_X23_Y2_N17
\EX_TO[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[11]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[11]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N6
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\EX_TO[10]~reg0_q\ & (!\EX_TO[13]~reg0_q\ & (!\EX_TO[12]~reg0_q\ & !\EX_TO[11]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[10]~reg0_q\,
	datab => \EX_TO[13]~reg0_q\,
	datac => \EX_TO[12]~reg0_q\,
	datad => \EX_TO[11]~reg0_q\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X11_Y0_N22
\PWDATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(6),
	o => \PWDATA[6]~input_o\);

-- Location: FF_X23_Y2_N23
\EX_TO[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[6]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[6]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N22
\PWDATA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(8),
	o => \PWDATA[8]~input_o\);

-- Location: LCCOMB_X23_Y2_N2
\EX_TO[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[8]~reg0feeder_combout\ = \PWDATA[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[8]~input_o\,
	combout => \EX_TO[8]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N3
\EX_TO[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[8]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[8]~reg0_q\);

-- Location: IOIBUF_X23_Y24_N22
\PWDATA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(9),
	o => \PWDATA[9]~input_o\);

-- Location: FF_X23_Y2_N5
\EX_TO[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[9]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[9]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N8
\PWDATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(7),
	o => \PWDATA[7]~input_o\);

-- Location: FF_X23_Y2_N25
\EX_TO[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[7]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[7]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\EX_TO[6]~reg0_q\ & (!\EX_TO[8]~reg0_q\ & (!\EX_TO[9]~reg0_q\ & !\EX_TO[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[6]~reg0_q\,
	datab => \EX_TO[8]~reg0_q\,
	datac => \EX_TO[9]~reg0_q\,
	datad => \EX_TO[7]~reg0_q\,
	combout => \Equal0~7_combout\);

-- Location: IOIBUF_X18_Y24_N8
\PWDATA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(15),
	o => \PWDATA[15]~input_o\);

-- Location: LCCOMB_X22_Y2_N30
\EX_TO[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[15]~reg0feeder_combout\ = \PWDATA[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[15]~input_o\,
	combout => \EX_TO[15]~reg0feeder_combout\);

-- Location: FF_X22_Y2_N31
\EX_TO[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[15]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[15]~reg0_q\);

-- Location: IOIBUF_X34_Y3_N22
\PWDATA[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(16),
	o => \PWDATA[16]~input_o\);

-- Location: LCCOMB_X22_Y2_N8
\EX_TO[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[16]~reg0feeder_combout\ = \PWDATA[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[16]~input_o\,
	combout => \EX_TO[16]~reg0feeder_combout\);

-- Location: FF_X22_Y2_N9
\EX_TO[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[16]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[16]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N15
\PWDATA[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(17),
	o => \PWDATA[17]~input_o\);

-- Location: FF_X22_Y2_N23
\EX_TO[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[17]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[17]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\PWDATA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(14),
	o => \PWDATA[14]~input_o\);

-- Location: FF_X22_Y2_N21
\EX_TO[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[14]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[14]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N24
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\EX_TO[15]~reg0_q\ & (!\EX_TO[16]~reg0_q\ & (!\EX_TO[17]~reg0_q\ & !\EX_TO[14]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[15]~reg0_q\,
	datab => \EX_TO[16]~reg0_q\,
	datac => \EX_TO[17]~reg0_q\,
	datad => \EX_TO[14]~reg0_q\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X24_Y2_N10
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X23_Y2_N12
\EX_TO[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[1]~reg0feeder_combout\ = \PWDATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[1]~input_o\,
	combout => \EX_TO[1]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N13
\EX_TO[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[1]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[1]~reg0_q\);

-- Location: IOIBUF_X34_Y7_N8
\PWDATA[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(22),
	o => \PWDATA[22]~input_o\);

-- Location: FF_X23_Y2_N31
\EX_TO[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[22]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[22]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N8
\PWDATA[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(23),
	o => \PWDATA[23]~input_o\);

-- Location: FF_X23_Y2_N21
\EX_TO[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[23]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[23]~reg0_q\);

-- Location: IOIBUF_X34_Y8_N8
\PWDATA[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(25),
	o => \PWDATA[25]~input_o\);

-- Location: LCCOMB_X23_Y2_N8
\EX_TO[25]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[25]~reg0feeder_combout\ = \PWDATA[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[25]~input_o\,
	combout => \EX_TO[25]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N9
\EX_TO[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[25]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[25]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N1
\PWDATA[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(24),
	o => \PWDATA[24]~input_o\);

-- Location: LCCOMB_X23_Y2_N18
\EX_TO[24]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[24]~reg0feeder_combout\ = \PWDATA[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[24]~input_o\,
	combout => \EX_TO[24]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N19
\EX_TO[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[24]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[24]~reg0_q\);

-- Location: LCCOMB_X23_Y2_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\EX_TO[22]~reg0_q\ & (!\EX_TO[23]~reg0_q\ & (!\EX_TO[25]~reg0_q\ & !\EX_TO[24]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[22]~reg0_q\,
	datab => \EX_TO[23]~reg0_q\,
	datac => \EX_TO[25]~reg0_q\,
	datad => \EX_TO[24]~reg0_q\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X34_Y4_N22
\PWDATA[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(27),
	o => \PWDATA[27]~input_o\);

-- Location: LCCOMB_X24_Y2_N12
\EX_TO[27]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[27]~reg0feeder_combout\ = \PWDATA[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[27]~input_o\,
	combout => \EX_TO[27]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N13
\EX_TO[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[27]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[27]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N22
\PWDATA[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(29),
	o => \PWDATA[29]~input_o\);

-- Location: LCCOMB_X24_Y2_N8
\EX_TO[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[29]~reg0feeder_combout\ = \PWDATA[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[29]~input_o\,
	combout => \EX_TO[29]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N9
\EX_TO[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[29]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[29]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N22
\PWDATA[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(26),
	o => \PWDATA[26]~input_o\);

-- Location: FF_X24_Y2_N19
\EX_TO[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[26]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[26]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N1
\PWDATA[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(28),
	o => \PWDATA[28]~input_o\);

-- Location: FF_X24_Y2_N3
\EX_TO[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[28]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[28]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\EX_TO[27]~reg0_q\ & (!\EX_TO[29]~reg0_q\ & (!\EX_TO[26]~reg0_q\ & !\EX_TO[28]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[27]~reg0_q\,
	datab => \EX_TO[29]~reg0_q\,
	datac => \EX_TO[26]~reg0_q\,
	datad => \EX_TO[28]~reg0_q\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X32_Y0_N15
\PWDATA[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(20),
	o => \PWDATA[20]~input_o\);

-- Location: LCCOMB_X24_Y2_N22
\EX_TO[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[20]~reg0feeder_combout\ = \PWDATA[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[20]~input_o\,
	combout => \EX_TO[20]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N23
\EX_TO[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[20]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[20]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N1
\PWDATA[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(19),
	o => \PWDATA[19]~input_o\);

-- Location: FF_X24_Y2_N5
\EX_TO[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[19]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[19]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N1
\PWDATA[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(18),
	o => \PWDATA[18]~input_o\);

-- Location: FF_X24_Y2_N15
\EX_TO[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[18]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[18]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N22
\PWDATA[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(21),
	o => \PWDATA[21]~input_o\);

-- Location: LCCOMB_X24_Y2_N0
\EX_TO[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[21]~reg0feeder_combout\ = \PWDATA[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[21]~input_o\,
	combout => \EX_TO[21]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N1
\EX_TO[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[21]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[21]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N14
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\EX_TO[20]~reg0_q\ & (!\EX_TO[19]~reg0_q\ & (!\EX_TO[18]~reg0_q\ & !\EX_TO[21]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_TO[20]~reg0_q\,
	datab => \EX_TO[19]~reg0_q\,
	datac => \EX_TO[18]~reg0_q\,
	datad => \EX_TO[21]~reg0_q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X25_Y2_N6
\COUNT_NS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT_NS[0]~0_combout\ = (\fsm_cs.enable~q\ & !\COUNT~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cs.enable~q\,
	datac => \COUNT~reg0_q\,
	combout => \COUNT_NS[0]~0_combout\);

-- Location: FF_X25_Y2_N7
\COUNT~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \COUNT_NS[0]~0_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT~reg0_q\);

-- Location: IOIBUF_X34_Y7_N15
\PWDATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(0),
	o => \PWDATA[0]~input_o\);

-- Location: LCCOMB_X24_Y2_N20
\EX_TO[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[0]~reg0feeder_combout\ = \PWDATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[0]~input_o\,
	combout => \EX_TO[0]~reg0feeder_combout\);

-- Location: FF_X24_Y2_N21
\EX_TO[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[0]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[0]~reg0_q\);

-- Location: IOIBUF_X34_Y4_N15
\PWDATA[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(31),
	o => \PWDATA[31]~input_o\);

-- Location: FF_X24_Y2_N7
\EX_TO[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[31]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[31]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N22
\PWDATA[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PWDATA(30),
	o => \PWDATA[30]~input_o\);

-- Location: LCCOMB_X23_Y2_N14
\EX_TO[30]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_TO[30]~reg0feeder_combout\ = \PWDATA[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[30]~input_o\,
	combout => \EX_TO[30]~reg0feeder_combout\);

-- Location: FF_X23_Y2_N15
\EX_TO[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_TO[30]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_TO[30]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\EX_TO[31]~reg0_q\ & (!\EX_TO[30]~reg0_q\ & (\COUNT~reg0_q\ $ (!\EX_TO[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT~reg0_q\,
	datab => \EX_TO[0]~reg0_q\,
	datac => \EX_TO[31]~reg0_q\,
	datad => \EX_TO[30]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y2_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X24_Y2_N2
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (!\EX_TO[1]~reg0_q\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \EX_TO[1]~reg0_q\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X25_Y2_N18
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\EX_CON[1]~reg0_q\ & (\fsm_cs.enable~q\ & !\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EX_CON[1]~reg0_q\,
	datac => \fsm_cs.enable~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X25_Y2_N26
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\PSEL~input_o\ & (\PENABLE~input_o\ & ((\fsm_cs.set~q\) # (\Selector2~0_combout\)))) # (!\PSEL~input_o\ & (((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cs.set~q\,
	datab => \PENABLE~input_o\,
	datac => \PSEL~input_o\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X25_Y2_N27
\fsm_cs.enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_cs.enable~q\);

-- Location: LCCOMB_X25_Y2_N12
\fsm_cs.done~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm_cs.done~3_combout\ = (\fsm_cs.enable~q\ & (!\EX_TO[1]~reg0_q\ & ((\PENABLE~input_o\) # (!\PSEL~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cs.enable~q\,
	datab => \PENABLE~input_o\,
	datac => \PSEL~input_o\,
	datad => \EX_TO[1]~reg0_q\,
	combout => \fsm_cs.done~3_combout\);

-- Location: LCCOMB_X25_Y2_N10
\fsm_cs.done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm_cs.done~2_combout\ = (\fsm_cs.done~q\) # ((\fsm_cs.done~3_combout\ & (\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cs.done~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \fsm_cs.done~q\,
	datad => \Equal0~9_combout\,
	combout => \fsm_cs.done~2_combout\);

-- Location: FF_X25_Y2_N11
\fsm_cs.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \fsm_cs.done~2_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm_cs.done~q\);

-- Location: LCCOMB_X25_Y2_N8
\EX_CON[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[2]~reg0feeder_combout\ = \PWDATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[2]~input_o\,
	combout => \EX_CON[2]~reg0feeder_combout\);

-- Location: FF_X25_Y2_N9
\EX_CON[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[2]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[2]~reg0_q\);

-- Location: FF_X25_Y2_N17
\EX_CON[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[3]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[3]~reg0_q\);

-- Location: LCCOMB_X25_Y2_N14
\always6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always6~0_combout\ = (\fsm_cs.done~q\ & (\EX_CON[2]~reg0_q\ & !\EX_CON[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_cs.done~q\,
	datac => \EX_CON[2]~reg0_q\,
	datad => \EX_CON[3]~reg0_q\,
	combout => \always6~0_combout\);

-- Location: FF_X31_Y2_N17
\EX_CON[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[0]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[0]~reg0_q\);

-- Location: FF_X25_Y2_N31
\EX_CON[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[4]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[4]~reg0_q\);

-- Location: FF_X31_Y2_N15
\EX_CON[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[5]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[5]~reg0_q\);

-- Location: LCCOMB_X14_Y2_N4
\EX_CON[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[6]~reg0feeder_combout\ = \PWDATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[6]~input_o\,
	combout => \EX_CON[6]~reg0feeder_combout\);

-- Location: FF_X14_Y2_N5
\EX_CON[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[6]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[6]~reg0_q\);

-- Location: LCCOMB_X14_Y2_N26
\EX_CON[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[7]~reg0feeder_combout\ = \PWDATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[7]~input_o\,
	combout => \EX_CON[7]~reg0feeder_combout\);

-- Location: FF_X14_Y2_N27
\EX_CON[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[7]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[7]~reg0_q\);

-- Location: LCCOMB_X14_Y2_N0
\EX_CON[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[8]~reg0feeder_combout\ = \PWDATA[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[8]~input_o\,
	combout => \EX_CON[8]~reg0feeder_combout\);

-- Location: FF_X14_Y2_N1
\EX_CON[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[8]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[8]~reg0_q\);

-- Location: FF_X14_Y2_N23
\EX_CON[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[9]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[9]~reg0_q\);

-- Location: LCCOMB_X11_Y2_N28
\EX_CON[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[10]~reg0feeder_combout\ = \PWDATA[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[10]~input_o\,
	combout => \EX_CON[10]~reg0feeder_combout\);

-- Location: FF_X11_Y2_N29
\EX_CON[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[10]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[10]~reg0_q\);

-- Location: FF_X11_Y2_N19
\EX_CON[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[11]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[11]~reg0_q\);

-- Location: LCCOMB_X11_Y2_N12
\EX_CON[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[12]~reg0feeder_combout\ = \PWDATA[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[12]~input_o\,
	combout => \EX_CON[12]~reg0feeder_combout\);

-- Location: FF_X11_Y2_N13
\EX_CON[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[12]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[12]~reg0_q\);

-- Location: FF_X11_Y2_N11
\EX_CON[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[13]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[13]~reg0_q\);

-- Location: FF_X25_Y2_N5
\EX_CON[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[14]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[14]~reg0_q\);

-- Location: LCCOMB_X11_Y2_N4
\EX_CON[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[15]~reg0feeder_combout\ = \PWDATA[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[15]~input_o\,
	combout => \EX_CON[15]~reg0feeder_combout\);

-- Location: FF_X11_Y2_N5
\EX_CON[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[15]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[15]~reg0_q\);

-- Location: LCCOMB_X31_Y2_N4
\EX_CON[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[16]~reg0feeder_combout\ = \PWDATA[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[16]~input_o\,
	combout => \EX_CON[16]~reg0feeder_combout\);

-- Location: FF_X31_Y2_N5
\EX_CON[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[16]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[16]~reg0_q\);

-- Location: LCCOMB_X11_Y2_N30
\EX_CON[17]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[17]~reg0feeder_combout\ = \PWDATA[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[17]~input_o\,
	combout => \EX_CON[17]~reg0feeder_combout\);

-- Location: FF_X11_Y2_N31
\EX_CON[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[17]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[17]~reg0_q\);

-- Location: FF_X25_Y2_N3
\EX_CON[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[18]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[18]~reg0_q\);

-- Location: LCCOMB_X25_Y2_N20
\EX_CON[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[19]~reg0feeder_combout\ = \PWDATA[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[19]~input_o\,
	combout => \EX_CON[19]~reg0feeder_combout\);

-- Location: FF_X25_Y2_N21
\EX_CON[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[19]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[19]~reg0_q\);

-- Location: LCCOMB_X31_Y2_N2
\EX_CON[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[20]~reg0feeder_combout\ = \PWDATA[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[20]~input_o\,
	combout => \EX_CON[20]~reg0feeder_combout\);

-- Location: FF_X31_Y2_N3
\EX_CON[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[20]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[20]~reg0_q\);

-- Location: LCCOMB_X11_Y2_N8
\EX_CON[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[21]~reg0feeder_combout\ = \PWDATA[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[21]~input_o\,
	combout => \EX_CON[21]~reg0feeder_combout\);

-- Location: FF_X11_Y2_N9
\EX_CON[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[21]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[21]~reg0_q\);

-- Location: FF_X31_Y2_N29
\EX_CON[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[22]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[22]~reg0_q\);

-- Location: FF_X31_Y2_N11
\EX_CON[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[23]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[23]~reg0_q\);

-- Location: FF_X31_Y2_N13
\EX_CON[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[24]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[24]~reg0_q\);

-- Location: FF_X31_Y2_N27
\EX_CON[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	asdata => \PWDATA[25]~input_o\,
	clrn => \RST_B~inputclkctrl_outclk\,
	sload => VCC,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[25]~reg0_q\);

-- Location: LCCOMB_X31_Y2_N20
\EX_CON[26]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[26]~reg0feeder_combout\ = \PWDATA[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[26]~input_o\,
	combout => \EX_CON[26]~reg0feeder_combout\);

-- Location: FF_X31_Y2_N21
\EX_CON[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[26]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[26]~reg0_q\);

-- Location: LCCOMB_X31_Y2_N18
\EX_CON[27]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[27]~reg0feeder_combout\ = \PWDATA[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[27]~input_o\,
	combout => \EX_CON[27]~reg0feeder_combout\);

-- Location: FF_X31_Y2_N19
\EX_CON[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[27]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[27]~reg0_q\);

-- Location: LCCOMB_X14_Y2_N12
\EX_CON[28]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[28]~reg0feeder_combout\ = \PWDATA[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[28]~input_o\,
	combout => \EX_CON[28]~reg0feeder_combout\);

-- Location: FF_X14_Y2_N13
\EX_CON[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[28]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[28]~reg0_q\);

-- Location: LCCOMB_X31_Y2_N24
\EX_CON[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[29]~reg0feeder_combout\ = \PWDATA[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[29]~input_o\,
	combout => \EX_CON[29]~reg0feeder_combout\);

-- Location: FF_X31_Y2_N25
\EX_CON[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[29]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[29]~reg0_q\);

-- Location: LCCOMB_X14_Y2_N10
\EX_CON[30]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[30]~reg0feeder_combout\ = \PWDATA[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[30]~input_o\,
	combout => \EX_CON[30]~reg0feeder_combout\);

-- Location: FF_X14_Y2_N11
\EX_CON[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[30]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[30]~reg0_q\);

-- Location: LCCOMB_X31_Y2_N22
\EX_CON[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_CON[31]~reg0feeder_combout\ = \PWDATA[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PWDATA[31]~input_o\,
	combout => \EX_CON[31]~reg0feeder_combout\);

-- Location: FF_X31_Y2_N23
\EX_CON[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYSCLK~inputclkctrl_outclk\,
	d => \EX_CON[31]~reg0feeder_combout\,
	clrn => \RST_B~inputclkctrl_outclk\,
	ena => \always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_CON[31]~reg0_q\);

-- Location: IOIBUF_X34_Y11_N1
\PADDR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PADDR(1),
	o => \PADDR[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\PADDR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PADDR(2),
	o => \PADDR[2]~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\PADDR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PADDR(3),
	o => \PADDR[3]~input_o\);

-- Location: IOIBUF_X5_Y24_N22
\PADDR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PADDR(4),
	o => \PADDR[4]~input_o\);

ww_INT_B <= \INT_B~output_o\;

ww_PRDATA(0) <= \PRDATA[0]~output_o\;

ww_PRDATA(1) <= \PRDATA[1]~output_o\;

ww_PRDATA(2) <= \PRDATA[2]~output_o\;

ww_PRDATA(3) <= \PRDATA[3]~output_o\;

ww_PRDATA(4) <= \PRDATA[4]~output_o\;

ww_PRDATA(5) <= \PRDATA[5]~output_o\;

ww_PRDATA(6) <= \PRDATA[6]~output_o\;

ww_PRDATA(7) <= \PRDATA[7]~output_o\;

ww_PRDATA(8) <= \PRDATA[8]~output_o\;

ww_PRDATA(9) <= \PRDATA[9]~output_o\;

ww_PRDATA(10) <= \PRDATA[10]~output_o\;

ww_PRDATA(11) <= \PRDATA[11]~output_o\;

ww_PRDATA(12) <= \PRDATA[12]~output_o\;

ww_PRDATA(13) <= \PRDATA[13]~output_o\;

ww_PRDATA(14) <= \PRDATA[14]~output_o\;

ww_PRDATA(15) <= \PRDATA[15]~output_o\;

ww_PRDATA(16) <= \PRDATA[16]~output_o\;

ww_PRDATA(17) <= \PRDATA[17]~output_o\;

ww_PRDATA(18) <= \PRDATA[18]~output_o\;

ww_PRDATA(19) <= \PRDATA[19]~output_o\;

ww_PRDATA(20) <= \PRDATA[20]~output_o\;

ww_PRDATA(21) <= \PRDATA[21]~output_o\;

ww_PRDATA(22) <= \PRDATA[22]~output_o\;

ww_PRDATA(23) <= \PRDATA[23]~output_o\;

ww_PRDATA(24) <= \PRDATA[24]~output_o\;

ww_PRDATA(25) <= \PRDATA[25]~output_o\;

ww_PRDATA(26) <= \PRDATA[26]~output_o\;

ww_PRDATA(27) <= \PRDATA[27]~output_o\;

ww_PRDATA(28) <= \PRDATA[28]~output_o\;

ww_PRDATA(29) <= \PRDATA[29]~output_o\;

ww_PRDATA(30) <= \PRDATA[30]~output_o\;

ww_PRDATA(31) <= \PRDATA[31]~output_o\;

ww_EX_TO(0) <= \EX_TO[0]~output_o\;

ww_EX_TO(1) <= \EX_TO[1]~output_o\;

ww_EX_TO(2) <= \EX_TO[2]~output_o\;

ww_EX_TO(3) <= \EX_TO[3]~output_o\;

ww_EX_TO(4) <= \EX_TO[4]~output_o\;

ww_EX_TO(5) <= \EX_TO[5]~output_o\;

ww_EX_TO(6) <= \EX_TO[6]~output_o\;

ww_EX_TO(7) <= \EX_TO[7]~output_o\;

ww_EX_TO(8) <= \EX_TO[8]~output_o\;

ww_EX_TO(9) <= \EX_TO[9]~output_o\;

ww_EX_TO(10) <= \EX_TO[10]~output_o\;

ww_EX_TO(11) <= \EX_TO[11]~output_o\;

ww_EX_TO(12) <= \EX_TO[12]~output_o\;

ww_EX_TO(13) <= \EX_TO[13]~output_o\;

ww_EX_TO(14) <= \EX_TO[14]~output_o\;

ww_EX_TO(15) <= \EX_TO[15]~output_o\;

ww_EX_TO(16) <= \EX_TO[16]~output_o\;

ww_EX_TO(17) <= \EX_TO[17]~output_o\;

ww_EX_TO(18) <= \EX_TO[18]~output_o\;

ww_EX_TO(19) <= \EX_TO[19]~output_o\;

ww_EX_TO(20) <= \EX_TO[20]~output_o\;

ww_EX_TO(21) <= \EX_TO[21]~output_o\;

ww_EX_TO(22) <= \EX_TO[22]~output_o\;

ww_EX_TO(23) <= \EX_TO[23]~output_o\;

ww_EX_TO(24) <= \EX_TO[24]~output_o\;

ww_EX_TO(25) <= \EX_TO[25]~output_o\;

ww_EX_TO(26) <= \EX_TO[26]~output_o\;

ww_EX_TO(27) <= \EX_TO[27]~output_o\;

ww_EX_TO(28) <= \EX_TO[28]~output_o\;

ww_EX_TO(29) <= \EX_TO[29]~output_o\;

ww_EX_TO(30) <= \EX_TO[30]~output_o\;

ww_EX_TO(31) <= \EX_TO[31]~output_o\;

ww_EX_CON(0) <= \EX_CON[0]~output_o\;

ww_EX_CON(1) <= \EX_CON[1]~output_o\;

ww_EX_CON(2) <= \EX_CON[2]~output_o\;

ww_EX_CON(3) <= \EX_CON[3]~output_o\;

ww_EX_CON(4) <= \EX_CON[4]~output_o\;

ww_EX_CON(5) <= \EX_CON[5]~output_o\;

ww_EX_CON(6) <= \EX_CON[6]~output_o\;

ww_EX_CON(7) <= \EX_CON[7]~output_o\;

ww_EX_CON(8) <= \EX_CON[8]~output_o\;

ww_EX_CON(9) <= \EX_CON[9]~output_o\;

ww_EX_CON(10) <= \EX_CON[10]~output_o\;

ww_EX_CON(11) <= \EX_CON[11]~output_o\;

ww_EX_CON(12) <= \EX_CON[12]~output_o\;

ww_EX_CON(13) <= \EX_CON[13]~output_o\;

ww_EX_CON(14) <= \EX_CON[14]~output_o\;

ww_EX_CON(15) <= \EX_CON[15]~output_o\;

ww_EX_CON(16) <= \EX_CON[16]~output_o\;

ww_EX_CON(17) <= \EX_CON[17]~output_o\;

ww_EX_CON(18) <= \EX_CON[18]~output_o\;

ww_EX_CON(19) <= \EX_CON[19]~output_o\;

ww_EX_CON(20) <= \EX_CON[20]~output_o\;

ww_EX_CON(21) <= \EX_CON[21]~output_o\;

ww_EX_CON(22) <= \EX_CON[22]~output_o\;

ww_EX_CON(23) <= \EX_CON[23]~output_o\;

ww_EX_CON(24) <= \EX_CON[24]~output_o\;

ww_EX_CON(25) <= \EX_CON[25]~output_o\;

ww_EX_CON(26) <= \EX_CON[26]~output_o\;

ww_EX_CON(27) <= \EX_CON[27]~output_o\;

ww_EX_CON(28) <= \EX_CON[28]~output_o\;

ww_EX_CON(29) <= \EX_CON[29]~output_o\;

ww_EX_CON(30) <= \EX_CON[30]~output_o\;

ww_EX_CON(31) <= \EX_CON[31]~output_o\;

ww_CNT_START <= \CNT_START~output_o\;

ww_COUNT <= \COUNT~output_o\;
END structure;


