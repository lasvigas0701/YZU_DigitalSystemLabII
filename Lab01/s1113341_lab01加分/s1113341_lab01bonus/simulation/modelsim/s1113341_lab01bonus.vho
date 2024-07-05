-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "02/23/2024 16:57:19"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	s1113341_lab01bonus IS
    PORT (
	F : OUT std_logic;
	A : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	B : IN std_logic
	);
END s1113341_lab01bonus;

-- Design Ports Information
-- F	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1113341_lab01bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_A <= A;
ww_D <= D;
ww_C <= C;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y26_N23
\F~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~0_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X0_Y26_N15
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X11_Y29_N22
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = ((!\D~input_o\ & ((\C~input_o\) # (!\A~input_o\)))) # (!\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \D~input_o\,
	datac => \A~input_o\,
	datad => \C~input_o\,
	combout => \inst6~0_combout\);

ww_F <= \F~output_o\;
END structure;


