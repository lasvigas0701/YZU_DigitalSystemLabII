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

-- DATE "03/08/2024 15:29:28"

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

ENTITY 	s1113341_lab03_bonus IS
    PORT (
	C0 : OUT std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	C1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	\0\ : IN std_logic;
	C6 : OUT std_logic;
	A2 : IN std_logic;
	C5 : OUT std_logic;
	C4 : OUT std_logic;
	C3 : OUT std_logic;
	C2 : OUT std_logic
	);
END s1113341_lab03_bonus;

-- Design Ports Information
-- C0	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C6	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C5	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 0	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1113341_lab03_bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL \ww_0\ : std_logic;
SIGNAL ww_C6 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_C5 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL \inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \C0~output_o\ : std_logic;
SIGNAL \C1~output_o\ : std_logic;
SIGNAL \C6~output_o\ : std_logic;
SIGNAL \C5~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst|inst1|inst4~0_combout\ : std_logic;
SIGNAL \0~input_o\ : std_logic;
SIGNAL \inst|inst1|inst5~1_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst|inst5|inst4~4_combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst9|inst|inst5~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst9|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst9|inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst6|inst4~combout\ : std_logic;
SIGNAL \inst9|inst5|inst4~combout\ : std_logic;
SIGNAL \inst|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst9|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst4~2_combout\ : std_logic;
SIGNAL \inst9|inst1|inst2~combout\ : std_logic;

BEGIN

C0 <= ww_C0;
ww_A0 <= A0;
ww_B0 <= B0;
C1 <= ww_C1;
ww_A1 <= A1;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
\ww_0\ <= \0\;
C6 <= ww_C6;
ww_A2 <= A2;
C5 <= ww_C5;
C4 <= ww_C4;
C3 <= ww_C3;
C2 <= ww_C2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X2_Y20_N22
\inst|inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5~0_combout\ = (\A0~input_o\ & (\B0~input_o\ & (\A1~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst|inst1|inst5~0_combout\);

-- Location: LCCOMB_X2_Y20_N18
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\A0~input_o\ & \B2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0~input_o\,
	datad => \B2~input_o\,
	combout => \inst5~combout\);

-- Location: IOIBUF_X0_Y21_N8
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOOBUF_X0_Y13_N2
\C0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => \C0~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\C1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst4~0_combout\,
	devoe => ww_devoe,
	o => \C1~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\C6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|inst5~0_combout\,
	devoe => ww_devoe,
	o => \C6~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\C5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|inst4~combout\,
	devoe => ww_devoe,
	o => \C5~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\C4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|inst4~combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\C3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst|inst4~2_combout\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\C2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|inst2~combout\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOIBUF_X0_Y20_N1
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X2_Y20_N16
inst7 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\B0~input_o\ & \A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	combout => \inst7~combout\);

-- Location: IOIBUF_X0_Y23_N1
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X2_Y20_N2
\inst|inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst4~0_combout\ = (\A0~input_o\ & (\B1~input_o\ $ (((\B0~input_o\ & \A1~input_o\))))) # (!\A0~input_o\ & (\B0~input_o\ & (\A1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \A1~input_o\,
	datad => \B1~input_o\,
	combout => \inst|inst1|inst4~0_combout\);

-- Location: IOIBUF_X0_Y24_N22
\0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_0\,
	o => \0~input_o\);

-- Location: LCCOMB_X2_Y20_N8
\inst|inst1|inst5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5~1_combout\ = (\inst|inst1|inst5~0_combout\) # ((\0~input_o\ & ((!\B0~input_o\) # (!\A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst5~0_combout\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \0~input_o\,
	combout => \inst|inst1|inst5~1_combout\);

-- Location: LCCOMB_X2_Y20_N4
inst1 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\B1~input_o\ & \A1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datac => \A1~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X2_Y20_N20
\inst|inst|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5~0_combout\ = (\inst5~combout\ & ((\inst|inst1|inst5~1_combout\) # (\inst1~combout\ $ (\0~input_o\)))) # (!\inst5~combout\ & (\inst|inst1|inst5~1_combout\ & (\inst1~combout\ $ (\0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~combout\,
	datab => \inst|inst1|inst5~1_combout\,
	datac => \inst1~combout\,
	datad => \0~input_o\,
	combout => \inst|inst|inst5~0_combout\);

-- Location: LCCOMB_X4_Y24_N4
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\B3~input_o\ & \A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datac => \A0~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X2_Y20_N28
\inst|inst5|inst4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst4~4_combout\ = \inst|inst|inst5~0_combout\ $ (\inst4~combout\ $ (((\B2~input_o\ & \A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \inst|inst|inst5~0_combout\,
	datac => \A1~input_o\,
	datad => \inst4~combout\,
	combout => \inst|inst5|inst4~4_combout\);

-- Location: IOIBUF_X0_Y21_N15
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X2_Y20_N12
inst12 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (\A2~input_o\ & \B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2~input_o\,
	datad => \B1~input_o\,
	combout => \inst12~combout\);

-- Location: LCCOMB_X2_Y20_N6
\inst9|inst|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst5~0_combout\ = (\inst|inst5|inst4~4_combout\ & ((\inst12~combout\ & ((!\0~input_o\))) # (!\inst12~combout\ & (\inst9|inst1|inst5~0_combout\)))) # (!\inst|inst5|inst4~4_combout\ & ((\inst12~combout\ & (\inst9|inst1|inst5~0_combout\)) # 
-- (!\inst12~combout\ & ((\0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|inst5~0_combout\,
	datab => \inst|inst5|inst4~4_combout\,
	datac => \0~input_o\,
	datad => \inst12~combout\,
	combout => \inst9|inst|inst5~0_combout\);

-- Location: IOIBUF_X0_Y21_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X2_Y20_N30
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\B2~input_o\ & \A1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datac => \A1~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X2_Y20_N24
\inst|inst5|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5|inst5~0_combout\ = (\inst4~combout\ & ((\inst|inst|inst5~0_combout\) # (\0~input_o\ $ (\inst2~combout\)))) # (!\inst4~combout\ & (\inst|inst|inst5~0_combout\ & (\0~input_o\ $ (\inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~combout\,
	datab => \0~input_o\,
	datac => \inst2~combout\,
	datad => \inst|inst|inst5~0_combout\,
	combout => \inst|inst5|inst5~0_combout\);

-- Location: LCCOMB_X4_Y24_N22
\inst|inst6|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst4~0_combout\ = \inst|inst5|inst5~0_combout\ $ (((\A1~input_o\ & \B3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datac => \B3~input_o\,
	datad => \inst|inst5|inst5~0_combout\,
	combout => \inst|inst6|inst4~0_combout\);

-- Location: LCCOMB_X4_Y24_N10
inst11 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (\B2~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datad => \A2~input_o\,
	combout => \inst11~combout\);

-- Location: LCCOMB_X4_Y24_N24
\inst9|inst5|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst5|inst5~0_combout\ = (\inst9|inst|inst5~0_combout\ & ((\inst|inst6|inst4~0_combout\) # (\0~input_o\ $ (\inst11~combout\)))) # (!\inst9|inst|inst5~0_combout\ & (\inst|inst6|inst4~0_combout\ & (\0~input_o\ $ (\inst11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \inst9|inst|inst5~0_combout\,
	datac => \inst|inst6|inst4~0_combout\,
	datad => \inst11~combout\,
	combout => \inst9|inst5|inst5~0_combout\);

-- Location: LCCOMB_X4_Y24_N2
\inst|inst6|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst5~0_combout\ = (\B3~input_o\ & ((\A1~input_o\ & (\inst|inst5|inst5~0_combout\)) # (!\A1~input_o\ & ((\0~input_o\))))) # (!\B3~input_o\ & (((\0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \inst|inst5|inst5~0_combout\,
	datac => \0~input_o\,
	datad => \A1~input_o\,
	combout => \inst|inst6|inst5~0_combout\);

-- Location: LCCOMB_X4_Y24_N0
inst10 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\B3~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B3~input_o\,
	datad => \A2~input_o\,
	combout => \inst10~combout\);

-- Location: LCCOMB_X4_Y24_N28
\inst9|inst6|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst6|inst5~0_combout\ = (\inst9|inst5|inst5~0_combout\ & ((\inst|inst6|inst5~0_combout\) # (\0~input_o\ $ (\inst10~combout\)))) # (!\inst9|inst5|inst5~0_combout\ & (\inst|inst6|inst5~0_combout\ & (\0~input_o\ $ (\inst10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|inst5~0_combout\,
	datab => \inst|inst6|inst5~0_combout\,
	datac => \0~input_o\,
	datad => \inst10~combout\,
	combout => \inst9|inst6|inst5~0_combout\);

-- Location: LCCOMB_X4_Y24_N6
\inst9|inst6|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst6|inst4~combout\ = \inst9|inst5|inst5~0_combout\ $ (\inst|inst6|inst5~0_combout\ $ (\0~input_o\ $ (\inst10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|inst5~0_combout\,
	datab => \inst|inst6|inst5~0_combout\,
	datac => \0~input_o\,
	datad => \inst10~combout\,
	combout => \inst9|inst6|inst4~combout\);

-- Location: LCCOMB_X4_Y24_N16
\inst9|inst5|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst5|inst4~combout\ = \0~input_o\ $ (\inst9|inst|inst5~0_combout\ $ (\inst|inst6|inst4~0_combout\ $ (\inst11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \inst9|inst|inst5~0_combout\,
	datac => \inst|inst6|inst4~0_combout\,
	datad => \inst11~combout\,
	combout => \inst9|inst5|inst4~combout\);

-- Location: LCCOMB_X2_Y20_N0
\inst|inst|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst4~0_combout\ = \inst5~combout\ $ (\inst|inst1|inst5~1_combout\ $ (\inst1~combout\ $ (\0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~combout\,
	datab => \inst|inst1|inst5~1_combout\,
	datac => \inst1~combout\,
	datad => \0~input_o\,
	combout => \inst|inst|inst4~0_combout\);

-- Location: LCCOMB_X2_Y20_N10
\inst9|inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst5~0_combout\ = (\A2~input_o\ & ((\B0~input_o\ & ((\inst|inst|inst4~0_combout\))) # (!\B0~input_o\ & (\0~input_o\)))) # (!\A2~input_o\ & (\0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \0~input_o\,
	datac => \B0~input_o\,
	datad => \inst|inst|inst4~0_combout\,
	combout => \inst9|inst1|inst5~0_combout\);

-- Location: LCCOMB_X2_Y20_N14
\inst9|inst|inst4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst4~2_combout\ = \inst|inst5|inst4~4_combout\ $ (\inst9|inst1|inst5~0_combout\ $ (((\B1~input_o\ & \A2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~input_o\,
	datab => \inst|inst5|inst4~4_combout\,
	datac => \A2~input_o\,
	datad => \inst9|inst1|inst5~0_combout\,
	combout => \inst9|inst|inst4~2_combout\);

-- Location: LCCOMB_X2_Y20_N26
\inst9|inst1|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst2~combout\ = \inst|inst|inst4~0_combout\ $ (((\B0~input_o\ & \A2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~input_o\,
	datac => \A2~input_o\,
	datad => \inst|inst|inst4~0_combout\,
	combout => \inst9|inst1|inst2~combout\);

ww_C0 <= \C0~output_o\;

ww_C1 <= \C1~output_o\;

ww_C6 <= \C6~output_o\;

ww_C5 <= \C5~output_o\;

ww_C4 <= \C4~output_o\;

ww_C3 <= \C3~output_o\;

ww_C2 <= \C2~output_o\;
END structure;


