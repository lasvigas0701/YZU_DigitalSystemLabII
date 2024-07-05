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

-- DATE "03/08/2024 10:20:28"

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

ENTITY 	s1113341_lab03 IS
    PORT (
	S0 : OUT std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	M : IN std_logic;
	S1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	S2 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S3 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	C : OUT std_logic;
	V : OUT std_logic
	);
END s1113341_lab03;

-- Design Ports Information
-- S0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1113341_lab03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst1|inst4~0_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst4~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst4~0_combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst5|inst5~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;

BEGIN

S0 <= ww_S0;
ww_A0 <= A0;
ww_B0 <= B0;
ww_M <= M;
S1 <= ww_S1;
ww_A1 <= A1;
ww_B1 <= B1;
S2 <= ww_S2;
ww_A2 <= A2;
ww_B2 <= B2;
S3 <= ww_S3;
ww_A3 <= A3;
ww_B3 <= B3;
C <= ww_C;
V <= ww_V;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~0_combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst4~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst4~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst5~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X1_Y20_N16
\inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4~0_combout\ = \A0~input_o\ $ (\B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0~input_o\,
	datad => \B0~input_o\,
	combout => \inst1|inst4~0_combout\);

-- Location: IOIBUF_X0_Y21_N1
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X41_Y21_N22
\M~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X1_Y20_N26
\inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = (\B0~input_o\ & (\A0~input_o\)) # (!\B0~input_o\ & ((\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \M~input_o\,
	combout => \inst1|inst5~0_combout\);

-- Location: LCCOMB_X1_Y20_N28
\inst|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4~combout\ = \A1~input_o\ $ (\B1~input_o\ $ (\inst1|inst5~0_combout\ $ (\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B1~input_o\,
	datac => \inst1|inst5~0_combout\,
	datad => \M~input_o\,
	combout => \inst|inst4~combout\);

-- Location: IOIBUF_X0_Y13_N22
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X1_Y20_N6
\inst|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5~0_combout\ = (\A1~input_o\ & ((\inst1|inst5~0_combout\) # (\B1~input_o\ $ (\M~input_o\)))) # (!\A1~input_o\ & (\inst1|inst5~0_combout\ & (\B1~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B1~input_o\,
	datac => \inst1|inst5~0_combout\,
	datad => \M~input_o\,
	combout => \inst|inst5~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\inst5|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst4~0_combout\ = \B2~input_o\ $ (\M~input_o\ $ (\A2~input_o\ $ (\inst|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \M~input_o\,
	datac => \A2~input_o\,
	datad => \inst|inst5~0_combout\,
	combout => \inst5|inst4~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X1_Y20_N2
\inst5|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst5~0_combout\ = (\A2~input_o\ & ((\inst|inst5~0_combout\) # (\B2~input_o\ $ (\M~input_o\)))) # (!\A2~input_o\ & (\inst|inst5~0_combout\ & (\B2~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \M~input_o\,
	datac => \A2~input_o\,
	datad => \inst|inst5~0_combout\,
	combout => \inst5|inst5~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X1_Y20_N12
\inst6|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst4~0_combout\ = \A3~input_o\ $ (\inst5|inst5~0_combout\ $ (\B3~input_o\ $ (\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst5|inst5~0_combout\,
	datac => \B3~input_o\,
	datad => \M~input_o\,
	combout => \inst6|inst4~0_combout\);

-- Location: LCCOMB_X1_Y20_N14
\inst6|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|inst5~0_combout\ = (\A3~input_o\ & ((\inst5|inst5~0_combout\) # (\B3~input_o\ $ (\M~input_o\)))) # (!\A3~input_o\ & (\inst5|inst5~0_combout\ & (\B3~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst5|inst5~0_combout\,
	datac => \B3~input_o\,
	datad => \M~input_o\,
	combout => \inst6|inst5~0_combout\);

-- Location: LCCOMB_X1_Y20_N24
inst8 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\A3~input_o\ & (!\inst5|inst5~0_combout\ & (\B3~input_o\ $ (\M~input_o\)))) # (!\A3~input_o\ & (\inst5|inst5~0_combout\ & (\B3~input_o\ $ (!\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst5|inst5~0_combout\,
	datac => \B3~input_o\,
	datad => \M~input_o\,
	combout => \inst8~combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;
END structure;


