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

-- DATE "03/22/2024 18:47:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	s1113341_lab05_bonus IS
    PORT (
	preset : IN std_logic;
	clear : IN std_logic;
	sin : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END s1113341_lab05_bonus;

-- Design Ports Information
-- q[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1113341_lab05_bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_preset : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_sin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q_reg[0]~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \preset~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \q_reg[3]~1_combout\ : std_logic;
SIGNAL \q_reg[0]~latch_combout\ : std_logic;
SIGNAL \sin~input_o\ : std_logic;
SIGNAL \q_reg[0]~data_lut_combout\ : std_logic;
SIGNAL \q_reg[0]~clear_lut_combout\ : std_logic;
SIGNAL \q_reg[0]~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \q_reg[0]~_emulated_q\ : std_logic;
SIGNAL \q_reg[0]~head_lut_combout\ : std_logic;
SIGNAL \q_reg[1]~data_lut_combout\ : std_logic;
SIGNAL \q_reg[1]~_emulated_q\ : std_logic;
SIGNAL \q_reg[1]~head_lut_combout\ : std_logic;
SIGNAL \q_reg[2]~data_lut_combout\ : std_logic;
SIGNAL \q_reg[2]~_emulated_q\ : std_logic;
SIGNAL \q_reg[2]~head_lut_combout\ : std_logic;
SIGNAL \q_reg[3]~data_lut_combout\ : std_logic;
SIGNAL \q_reg[3]~_emulated_q\ : std_logic;
SIGNAL \q_reg[3]~head_lut_combout\ : std_logic;
SIGNAL \ALT_INV_q_reg[0]~clear_lutclkctrl_outclk\ : std_logic;

BEGIN

ww_preset <= preset;
ww_clear <= clear;
ww_sin <= sin;
ww_clk <= clk;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\q_reg[0]~clear_lutclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \q_reg[0]~clear_lut_combout\);
\ALT_INV_q_reg[0]~clear_lutclkctrl_outclk\ <= NOT \q_reg[0]~clear_lutclkctrl_outclk\;

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y4_N16
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_reg[0]~head_lut_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_reg[1]~head_lut_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_reg[2]~head_lut_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_reg[3]~head_lut_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\preset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset,
	o => \preset~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\q_reg[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[3]~1_combout\ = (\preset~input_o\ & !\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \preset~input_o\,
	datad => \clear~input_o\,
	combout => \q_reg[3]~1_combout\);

-- Location: LCCOMB_X1_Y4_N28
\q_reg[0]~latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[0]~latch_combout\ = (!\q_reg[3]~1_combout\ & ((\q_reg[0]~latch_combout\) # (!\preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \preset~input_o\,
	datac => \q_reg[3]~1_combout\,
	datad => \q_reg[0]~latch_combout\,
	combout => \q_reg[0]~latch_combout\);

-- Location: IOIBUF_X0_Y4_N8
\sin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin,
	o => \sin~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\q_reg[0]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[0]~data_lut_combout\ = \q_reg[0]~latch_combout\ $ (\sin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q_reg[0]~latch_combout\,
	datad => \sin~input_o\,
	combout => \q_reg[0]~data_lut_combout\);

-- Location: LCCOMB_X1_Y4_N0
\q_reg[0]~clear_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[0]~clear_lut_combout\ = (\q_reg[3]~1_combout\) # (!\preset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \preset~input_o\,
	datac => \q_reg[3]~1_combout\,
	combout => \q_reg[0]~clear_lut_combout\);

-- Location: CLKCTRL_G2
\q_reg[0]~clear_lutclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \q_reg[0]~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \q_reg[0]~clear_lutclkctrl_outclk\);

-- Location: FF_X1_Y4_N25
\q_reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \q_reg[0]~data_lut_combout\,
	clrn => \ALT_INV_q_reg[0]~clear_lutclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_reg[0]~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N24
\q_reg[0]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[0]~head_lut_combout\ = (!\q_reg[3]~1_combout\ & ((\q_reg[0]~_emulated_q\ $ (\q_reg[0]~latch_combout\)) # (!\preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_reg[3]~1_combout\,
	datab => \preset~input_o\,
	datac => \q_reg[0]~_emulated_q\,
	datad => \q_reg[0]~latch_combout\,
	combout => \q_reg[0]~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N18
\q_reg[1]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[1]~data_lut_combout\ = \q_reg[0]~latch_combout\ $ (\q_reg[0]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q_reg[0]~latch_combout\,
	datad => \q_reg[0]~head_lut_combout\,
	combout => \q_reg[1]~data_lut_combout\);

-- Location: FF_X1_Y4_N19
\q_reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q_reg[1]~data_lut_combout\,
	clrn => \ALT_INV_q_reg[0]~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_reg[1]~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N20
\q_reg[1]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[1]~head_lut_combout\ = (!\q_reg[3]~1_combout\ & ((\q_reg[0]~latch_combout\ $ (\q_reg[1]~_emulated_q\)) # (!\preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_reg[0]~latch_combout\,
	datab => \preset~input_o\,
	datac => \q_reg[3]~1_combout\,
	datad => \q_reg[1]~_emulated_q\,
	combout => \q_reg[1]~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N6
\q_reg[2]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[2]~data_lut_combout\ = \q_reg[0]~latch_combout\ $ (\q_reg[1]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q_reg[0]~latch_combout\,
	datad => \q_reg[1]~head_lut_combout\,
	combout => \q_reg[2]~data_lut_combout\);

-- Location: FF_X1_Y4_N7
\q_reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q_reg[2]~data_lut_combout\,
	clrn => \ALT_INV_q_reg[0]~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_reg[2]~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N16
\q_reg[2]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[2]~head_lut_combout\ = (!\q_reg[3]~1_combout\ & ((\q_reg[0]~latch_combout\ $ (\q_reg[2]~_emulated_q\)) # (!\preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_reg[0]~latch_combout\,
	datab => \preset~input_o\,
	datac => \q_reg[3]~1_combout\,
	datad => \q_reg[2]~_emulated_q\,
	combout => \q_reg[2]~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N2
\q_reg[3]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[3]~data_lut_combout\ = \q_reg[0]~latch_combout\ $ (\q_reg[2]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q_reg[0]~latch_combout\,
	datad => \q_reg[2]~head_lut_combout\,
	combout => \q_reg[3]~data_lut_combout\);

-- Location: FF_X1_Y4_N3
\q_reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q_reg[3]~data_lut_combout\,
	clrn => \ALT_INV_q_reg[0]~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_reg[3]~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N12
\q_reg[3]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q_reg[3]~head_lut_combout\ = (!\q_reg[3]~1_combout\ & ((\q_reg[0]~latch_combout\ $ (\q_reg[3]~_emulated_q\)) # (!\preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_reg[0]~latch_combout\,
	datab => \preset~input_o\,
	datac => \q_reg[3]~1_combout\,
	datad => \q_reg[3]~_emulated_q\,
	combout => \q_reg[3]~head_lut_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;
END structure;


