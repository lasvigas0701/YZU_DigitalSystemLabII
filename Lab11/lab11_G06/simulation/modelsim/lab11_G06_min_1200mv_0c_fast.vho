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

-- DATE "05/17/2024 10:54:23"

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

ENTITY 	lab11_G06 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	duty : IN IEEE.NUMERIC_STD.unsigned(2 DOWNTO 0);
	led : OUT std_logic
	);
END lab11_G06;

-- Design Ports Information
-- led	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab11_G06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_duty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[11]~43_combout\ : std_logic;
SIGNAL \count[13]~47_combout\ : std_logic;
SIGNAL \count[15]~18_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \count[0]~20_combout\ : std_logic;
SIGNAL \count[2]~25\ : std_logic;
SIGNAL \count[3]~26_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[3]~27\ : std_logic;
SIGNAL \count[4]~28_combout\ : std_logic;
SIGNAL \count[4]~29\ : std_logic;
SIGNAL \count[5]~32\ : std_logic;
SIGNAL \count[6]~34\ : std_logic;
SIGNAL \count[7]~35_combout\ : std_logic;
SIGNAL \count[7]~36\ : std_logic;
SIGNAL \count[8]~37_combout\ : std_logic;
SIGNAL \count[8]~38\ : std_logic;
SIGNAL \count[9]~39_combout\ : std_logic;
SIGNAL \count[9]~40\ : std_logic;
SIGNAL \count[10]~41_combout\ : std_logic;
SIGNAL \count[10]~42\ : std_logic;
SIGNAL \count[11]~44\ : std_logic;
SIGNAL \count[12]~45_combout\ : std_logic;
SIGNAL \count[12]~46\ : std_logic;
SIGNAL \count[13]~48\ : std_logic;
SIGNAL \count[14]~49_combout\ : std_logic;
SIGNAL \count[14]~50\ : std_logic;
SIGNAL \count[15]~51_combout\ : std_logic;
SIGNAL \count[15]~17_combout\ : std_logic;
SIGNAL \count[5]~31_combout\ : std_logic;
SIGNAL \count[6]~33_combout\ : std_logic;
SIGNAL \count[15]~16_combout\ : std_logic;
SIGNAL \count[15]~19_combout\ : std_logic;
SIGNAL \count[15]~30_combout\ : std_logic;
SIGNAL \count[0]~21\ : std_logic;
SIGNAL \count[1]~22_combout\ : std_logic;
SIGNAL \count[1]~23\ : std_logic;
SIGNAL \count[2]~24_combout\ : std_logic;
SIGNAL \pwm_out~0_combout\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_out~3_combout\ : std_logic;
SIGNAL \pwm_out~q\ : std_logic;
SIGNAL count : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_duty <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(duty);
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X2_Y25_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~43_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: FF_X2_Y25_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~47_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X2_Y25_N22
\count[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~43_combout\ = (count(11) & (!\count[10]~42\)) # (!count(11) & ((\count[10]~42\) # (GND)))
-- \count[11]~44\ = CARRY((!\count[10]~42\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~42\,
	combout => \count[11]~43_combout\,
	cout => \count[11]~44\);

-- Location: LCCOMB_X2_Y25_N26
\count[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~47_combout\ = (count(13) & (!\count[12]~46\)) # (!count(13) & ((\count[12]~46\) # (GND)))
-- \count[13]~48\ = CARRY((!\count[12]~46\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~46\,
	combout => \count[13]~47_combout\,
	cout => \count[13]~48\);

-- Location: LCCOMB_X1_Y25_N30
\count[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~18_combout\ = (!count(13) & (!count(11) & (!count(12) & !count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(11),
	datac => count(12),
	datad => count(14),
	combout => \count[15]~18_combout\);

-- Location: IOIBUF_X0_Y24_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_out~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X0_Y25_N22
\duty[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\duty[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: LCCOMB_X2_Y25_N0
\count[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~20_combout\ = count(0) $ (VCC)
-- \count[0]~21\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~20_combout\,
	cout => \count[0]~21\);

-- Location: LCCOMB_X2_Y25_N4
\count[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~24_combout\ = (count(2) & (\count[1]~23\ $ (GND))) # (!count(2) & (!\count[1]~23\ & VCC))
-- \count[2]~25\ = CARRY((count(2) & !\count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~23\,
	combout => \count[2]~24_combout\,
	cout => \count[2]~25\);

-- Location: LCCOMB_X2_Y25_N6
\count[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~26_combout\ = (count(3) & (!\count[2]~25\)) # (!count(3) & ((\count[2]~25\) # (GND)))
-- \count[3]~27\ = CARRY((!\count[2]~25\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~25\,
	combout => \count[3]~26_combout\,
	cout => \count[3]~27\);

-- Location: FF_X2_Y25_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~26_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y25_N8
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!count(1) & (!count(0) & !count(2)))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(2),
	datad => count(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y25_N8
\count[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~28_combout\ = (count(4) & (\count[3]~27\ $ (GND))) # (!count(4) & (!\count[3]~27\ & VCC))
-- \count[4]~29\ = CARRY((count(4) & !\count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~27\,
	combout => \count[4]~28_combout\,
	cout => \count[4]~29\);

-- Location: FF_X2_Y25_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~28_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X2_Y25_N10
\count[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~31_combout\ = (count(5) & (!\count[4]~29\)) # (!count(5) & ((\count[4]~29\) # (GND)))
-- \count[5]~32\ = CARRY((!\count[4]~29\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~29\,
	combout => \count[5]~31_combout\,
	cout => \count[5]~32\);

-- Location: LCCOMB_X2_Y25_N12
\count[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~33_combout\ = (count(6) & (\count[5]~32\ $ (GND))) # (!count(6) & (!\count[5]~32\ & VCC))
-- \count[6]~34\ = CARRY((count(6) & !\count[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~32\,
	combout => \count[6]~33_combout\,
	cout => \count[6]~34\);

-- Location: LCCOMB_X2_Y25_N14
\count[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~35_combout\ = (count(7) & (!\count[6]~34\)) # (!count(7) & ((\count[6]~34\) # (GND)))
-- \count[7]~36\ = CARRY((!\count[6]~34\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~34\,
	combout => \count[7]~35_combout\,
	cout => \count[7]~36\);

-- Location: FF_X2_Y25_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~35_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X2_Y25_N16
\count[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~37_combout\ = (count(8) & (\count[7]~36\ $ (GND))) # (!count(8) & (!\count[7]~36\ & VCC))
-- \count[8]~38\ = CARRY((count(8) & !\count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~36\,
	combout => \count[8]~37_combout\,
	cout => \count[8]~38\);

-- Location: FF_X2_Y25_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~37_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X2_Y25_N18
\count[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~39_combout\ = (count(9) & (!\count[8]~38\)) # (!count(9) & ((\count[8]~38\) # (GND)))
-- \count[9]~40\ = CARRY((!\count[8]~38\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~38\,
	combout => \count[9]~39_combout\,
	cout => \count[9]~40\);

-- Location: FF_X2_Y25_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~39_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X2_Y25_N20
\count[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~41_combout\ = (count(10) & (\count[9]~40\ $ (GND))) # (!count(10) & (!\count[9]~40\ & VCC))
-- \count[10]~42\ = CARRY((count(10) & !\count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~40\,
	combout => \count[10]~41_combout\,
	cout => \count[10]~42\);

-- Location: FF_X2_Y25_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~41_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X2_Y25_N24
\count[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~45_combout\ = (count(12) & (\count[11]~44\ $ (GND))) # (!count(12) & (!\count[11]~44\ & VCC))
-- \count[12]~46\ = CARRY((count(12) & !\count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~44\,
	combout => \count[12]~45_combout\,
	cout => \count[12]~46\);

-- Location: FF_X2_Y25_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~45_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X2_Y25_N28
\count[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~49_combout\ = (count(14) & (\count[13]~48\ $ (GND))) # (!count(14) & (!\count[13]~48\ & VCC))
-- \count[14]~50\ = CARRY((count(14) & !\count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~48\,
	combout => \count[14]~49_combout\,
	cout => \count[14]~50\);

-- Location: FF_X2_Y25_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~49_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X2_Y25_N30
\count[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~51_combout\ = count(15) $ (\count[14]~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	cin => \count[14]~50\,
	combout => \count[15]~51_combout\);

-- Location: FF_X2_Y25_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~51_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X1_Y25_N4
\count[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~17_combout\ = (!count(8) & (!count(9) & (!count(10) & !count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(10),
	datad => count(7),
	combout => \count[15]~17_combout\);

-- Location: FF_X2_Y25_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~31_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X2_Y25_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~33_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X1_Y25_N10
\count[15]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~16_combout\ = (\enable~input_o\ & (!count(5) & (!count(6) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => count(5),
	datac => count(6),
	datad => count(4),
	combout => \count[15]~16_combout\);

-- Location: LCCOMB_X1_Y25_N16
\count[15]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~19_combout\ = (\count[15]~18_combout\ & (!count(15) & (\count[15]~17_combout\ & \count[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[15]~18_combout\,
	datab => count(15),
	datac => \count[15]~17_combout\,
	datad => \count[15]~16_combout\,
	combout => \count[15]~19_combout\);

-- Location: LCCOMB_X1_Y25_N2
\count[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~30_combout\ = (!\count[15]~19_combout\) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \count[15]~19_combout\,
	combout => \count[15]~30_combout\);

-- Location: FF_X2_Y25_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~20_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X2_Y25_N2
\count[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~22_combout\ = (count(1) & (!\count[0]~21\)) # (!count(1) & ((\count[0]~21\) # (GND)))
-- \count[1]~23\ = CARRY((!\count[0]~21\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~21\,
	combout => \count[1]~22_combout\,
	cout => \count[1]~23\);

-- Location: FF_X2_Y25_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~22_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: FF_X2_Y25_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~24_combout\,
	sclr => \count[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y25_N26
\pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out~0_combout\ = (\duty[2]~input_o\ & (((!count(1) & \duty[1]~input_o\)) # (!count(2)))) # (!\duty[2]~input_o\ & (!count(1) & (\duty[1]~input_o\ & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \duty[1]~input_o\,
	datac => \duty[2]~input_o\,
	datad => count(2),
	combout => \pwm_out~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\duty[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out~1_combout\ = (\duty[2]~input_o\ & (((\duty[0]~input_o\) # (!count(0))))) # (!\duty[2]~input_o\ & (!count(2) & (!count(0) & \duty[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \duty[2]~input_o\,
	datac => count(0),
	datad => \duty[0]~input_o\,
	combout => \pwm_out~1_combout\);

-- Location: LCCOMB_X1_Y25_N22
\pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out~2_combout\ = (\pwm_out~0_combout\) # ((\pwm_out~1_combout\ & ((\duty[1]~input_o\) # (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \duty[1]~input_o\,
	datac => \pwm_out~0_combout\,
	datad => \pwm_out~1_combout\,
	combout => \pwm_out~2_combout\);

-- Location: LCCOMB_X1_Y25_N24
\pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out~3_combout\ = (!count(3) & (\pwm_out~2_combout\ & \count[15]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datac => \pwm_out~2_combout\,
	datad => \count[15]~19_combout\,
	combout => \pwm_out~3_combout\);

-- Location: FF_X1_Y25_N25
pwm_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_out~q\);

ww_led <= \led~output_o\;
END structure;


