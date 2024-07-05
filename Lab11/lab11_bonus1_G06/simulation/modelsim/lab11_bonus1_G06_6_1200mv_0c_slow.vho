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

-- DATE "05/17/2024 11:23:33"

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

ENTITY 	lab11_bonus1_G06 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	led : OUT std_logic
	);
END lab11_bonus1_G06;

-- Design Ports Information
-- led	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab11_bonus1_G06 IS
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
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_count[5]~21_combout\ : std_logic;
SIGNAL \duty[2]~17_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \clk_count~0_combout\ : std_logic;
SIGNAL \clk_count~1_combout\ : std_logic;
SIGNAL \clk_count~2_combout\ : std_logic;
SIGNAL \clk_count~3_combout\ : std_logic;
SIGNAL \clk_count~4_combout\ : std_logic;
SIGNAL \clk_count~5_combout\ : std_logic;
SIGNAL \clk_count~6_combout\ : std_logic;
SIGNAL \clk_count~7_combout\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \pwm_count[0]~11_combout\ : std_logic;
SIGNAL \pwm_count[4]~19_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \pwm_count[0]~12\ : std_logic;
SIGNAL \pwm_count[1]~13_combout\ : std_logic;
SIGNAL \pwm_count[1]~14\ : std_logic;
SIGNAL \pwm_count[2]~16\ : std_logic;
SIGNAL \pwm_count[3]~17_combout\ : std_logic;
SIGNAL \pwm_count[3]~18\ : std_logic;
SIGNAL \pwm_count[4]~20\ : std_logic;
SIGNAL \pwm_count[5]~22\ : std_logic;
SIGNAL \pwm_count[6]~23_combout\ : std_logic;
SIGNAL \pwm_count[6]~24\ : std_logic;
SIGNAL \pwm_count[7]~25_combout\ : std_logic;
SIGNAL \pwm_count[7]~26\ : std_logic;
SIGNAL \pwm_count[8]~27_combout\ : std_logic;
SIGNAL \pwm_count[8]~28\ : std_logic;
SIGNAL \pwm_count[9]~29_combout\ : std_logic;
SIGNAL \pwm_count[9]~30\ : std_logic;
SIGNAL \pwm_count[10]~31_combout\ : std_logic;
SIGNAL \duty[0]~13_combout\ : std_logic;
SIGNAL \duty[7]~27_combout\ : std_logic;
SIGNAL \duty[8]~29_combout\ : std_logic;
SIGNAL \rising~2_combout\ : std_logic;
SIGNAL \duty[1]~15_combout\ : std_logic;
SIGNAL \duty[5]~23_combout\ : std_logic;
SIGNAL \rising~1_combout\ : std_logic;
SIGNAL \rising~0_combout\ : std_logic;
SIGNAL \duty[10]~35_combout\ : std_logic;
SIGNAL \duty[0]~14\ : std_logic;
SIGNAL \duty[1]~16\ : std_logic;
SIGNAL \duty[2]~18\ : std_logic;
SIGNAL \duty[3]~20\ : std_logic;
SIGNAL \duty[4]~21_combout\ : std_logic;
SIGNAL \duty[4]~22\ : std_logic;
SIGNAL \duty[5]~24\ : std_logic;
SIGNAL \duty[6]~26\ : std_logic;
SIGNAL \duty[7]~28\ : std_logic;
SIGNAL \duty[8]~30\ : std_logic;
SIGNAL \duty[9]~32\ : std_logic;
SIGNAL \duty[10]~33_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \duty[3]~19_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \rising~3_combout\ : std_logic;
SIGNAL \rising~4_combout\ : std_logic;
SIGNAL \rising~q\ : std_logic;
SIGNAL \duty[9]~31_combout\ : std_logic;
SIGNAL \duty[6]~25_combout\ : std_logic;
SIGNAL \pwm_count[2]~15_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~19_cout\ : std_logic;
SIGNAL \LessThan3~20_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(30 DOWNTO 0);
SIGNAL duty : std_logic_vector(10 DOWNTO 0);
SIGNAL pwm_count : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X28_Y22_N13
\pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[5]~21_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(5));

-- Location: FF_X28_Y18_N13
\duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[2]~17_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(2));

-- Location: LCCOMB_X28_Y22_N12
\pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[5]~21_combout\ = (pwm_count(5) & (!\pwm_count[4]~20\)) # (!pwm_count(5) & ((\pwm_count[4]~20\) # (GND)))
-- \pwm_count[5]~22\ = CARRY((!\pwm_count[4]~20\) # (!pwm_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datad => VCC,
	cin => \pwm_count[4]~20\,
	combout => \pwm_count[5]~21_combout\,
	cout => \pwm_count[5]~22\);

-- Location: LCCOMB_X28_Y18_N12
\duty[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[2]~17_combout\ = ((duty(2) $ (\rising~q\ $ (!\duty[1]~16\)))) # (GND)
-- \duty[2]~18\ = CARRY((duty(2) & ((\rising~q\) # (!\duty[1]~16\))) # (!duty(2) & (\rising~q\ & !\duty[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[1]~16\,
	combout => \duty[2]~17_combout\,
	cout => \duty[2]~18\);

-- Location: LCCOMB_X3_Y3_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_count(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X3_Y3_N4
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_count(1) & (!\Add0~1\)) # (!clk_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X3_Y3_N6
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_count(2) & (\Add0~3\ $ (GND))) # (!clk_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X3_Y3_N8
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_count(3) & (!\Add0~5\)) # (!clk_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X3_Y3_N10
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_count(4) & (\Add0~7\ $ (GND))) # (!clk_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X3_Y3_N12
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_count(5) & (!\Add0~9\)) # (!clk_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X3_Y3_N14
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_count(6) & (\Add0~11\ $ (GND))) # (!clk_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y3_N16
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_count(7) & (!\Add0~13\)) # (!clk_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X3_Y3_N18
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_count(8) & (\Add0~15\ $ (GND))) # (!clk_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y3_N20
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_count(9) & (!\Add0~17\)) # (!clk_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X3_Y3_N22
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_count(10) & (\Add0~19\ $ (GND))) # (!clk_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X3_Y3_N24
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_count(11) & (!\Add0~21\)) # (!clk_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X3_Y3_N26
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_count(12) & (\Add0~23\ $ (GND))) # (!clk_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X3_Y3_N28
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_count(13) & (!\Add0~25\)) # (!clk_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X3_Y3_N30
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_count(14) & (\Add0~27\ $ (GND))) # (!clk_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X3_Y2_N0
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_count(15) & (!\Add0~29\)) # (!clk_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X3_Y2_N2
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_count(16) & (\Add0~31\ $ (GND))) # (!clk_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X3_Y2_N4
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_count(17) & (!\Add0~33\)) # (!clk_count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X3_Y2_N6
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_count(18) & (\Add0~35\ $ (GND))) # (!clk_count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X3_Y2_N8
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_count(19) & (!\Add0~37\)) # (!clk_count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X3_Y2_N10
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_count(20) & (\Add0~39\ $ (GND))) # (!clk_count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X3_Y2_N12
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_count(21) & (!\Add0~41\)) # (!clk_count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X3_Y2_N14
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_count(22) & (\Add0~43\ $ (GND))) # (!clk_count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X3_Y2_N16
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_count(23) & (!\Add0~45\)) # (!clk_count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X3_Y2_N18
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_count(24) & (\Add0~47\ $ (GND))) # (!clk_count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X3_Y2_N20
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (clk_count(25) & (!\Add0~49\)) # (!clk_count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X3_Y2_N22
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (clk_count(26) & (\Add0~51\ $ (GND))) # (!clk_count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((clk_count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X3_Y2_N24
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (clk_count(27) & (!\Add0~53\)) # (!clk_count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X3_Y2_N26
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (clk_count(28) & (\Add0~55\ $ (GND))) # (!clk_count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((clk_count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X3_Y2_N28
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (clk_count(29) & (!\Add0~57\)) # (!clk_count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X3_Y2_N30
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = clk_count(30) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(30),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X28_Y19_N0
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!pwm_count(0)) # (!pwm_count(2))) # (!pwm_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(1),
	datac => pwm_count(2),
	datad => pwm_count(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y19_N2
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((!pwm_count(5)) # (!pwm_count(8))) # (!pwm_count(7))) # (!pwm_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => pwm_count(7),
	datac => pwm_count(8),
	datad => pwm_count(5),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X28_Y18_N30
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\rising~q\) # (\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising~q\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~1_combout\);

-- Location: FF_X2_Y3_N3
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: FF_X3_Y3_N5
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: FF_X3_Y3_N7
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: FF_X3_Y3_N9
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X2_Y3_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_count(2) & (!clk_count(0) & (!clk_count(3) & !clk_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datab => clk_count(0),
	datac => clk_count(3),
	datad => clk_count(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X2_Y3_N7
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: FF_X3_Y3_N11
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: FF_X3_Y3_N13
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: FF_X3_Y3_N17
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X2_Y3_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_count(6) & (!clk_count(5) & (!clk_count(4) & !clk_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	datab => clk_count(5),
	datac => clk_count(4),
	datad => clk_count(7),
	combout => \Equal0~1_combout\);

-- Location: FF_X2_Y3_N19
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: FF_X3_Y3_N19
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: FF_X3_Y3_N23
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: FF_X3_Y3_N25
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X2_Y3_N28
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_count(9) & (!clk_count(10) & (!clk_count(11) & !clk_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datab => clk_count(10),
	datac => clk_count(11),
	datad => clk_count(8),
	combout => \Equal0~2_combout\);

-- Location: FF_X2_Y3_N23
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: FF_X3_Y3_N27
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: FF_X3_Y3_N29
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: FF_X3_Y2_N1
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X2_Y3_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_count(14) & (!clk_count(13) & (!clk_count(15) & !clk_count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datab => clk_count(13),
	datac => clk_count(15),
	datad => clk_count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y3_N26
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X2_Y2_N17
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: FF_X2_Y2_N3
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: FF_X2_Y2_N13
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: FF_X2_Y2_N7
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X2_Y2_N0
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clk_count(18) & (clk_count(16) & (clk_count(17) & clk_count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datab => clk_count(16),
	datac => clk_count(17),
	datad => clk_count(19),
	combout => \Equal0~5_combout\);

-- Location: FF_X3_Y2_N11
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: FF_X3_Y2_N13
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: FF_X3_Y2_N15
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: FF_X3_Y2_N17
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X2_Y3_N12
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_count(23) & (!clk_count(22) & (!clk_count(21) & !clk_count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datab => clk_count(22),
	datac => clk_count(21),
	datad => clk_count(20),
	combout => \Equal0~6_combout\);

-- Location: FF_X3_Y2_N19
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: FF_X3_Y2_N21
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: FF_X3_Y2_N23
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: FF_X3_Y2_N25
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: LCCOMB_X2_Y3_N30
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!clk_count(26) & (!clk_count(27) & (!clk_count(25) & !clk_count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(26),
	datab => clk_count(27),
	datac => clk_count(25),
	datad => clk_count(24),
	combout => \Equal0~7_combout\);

-- Location: FF_X3_Y2_N27
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: FF_X3_Y2_N29
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: FF_X3_Y2_N31
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: LCCOMB_X2_Y3_N16
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (!clk_count(29) & (!clk_count(30) & !clk_count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => clk_count(29),
	datac => clk_count(30),
	datad => clk_count(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X2_Y3_N10
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X2_Y3_N2
\clk_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~0_combout\ = (!\Equal0~9_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~0_combout\,
	combout => \clk_count~0_combout\);

-- Location: LCCOMB_X2_Y3_N6
\clk_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~1_combout\ = (\Add0~12_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_count~1_combout\);

-- Location: LCCOMB_X2_Y3_N18
\clk_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~2_combout\ = (\Add0~18_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_count~2_combout\);

-- Location: LCCOMB_X2_Y3_N22
\clk_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~3_combout\ = (\Add0~28_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~9_combout\,
	combout => \clk_count~3_combout\);

-- Location: LCCOMB_X2_Y2_N16
\clk_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~4_combout\ = (!\Equal0~9_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~32_combout\,
	combout => \clk_count~4_combout\);

-- Location: LCCOMB_X2_Y2_N2
\clk_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~5_combout\ = (!\Equal0~9_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~34_combout\,
	combout => \clk_count~5_combout\);

-- Location: LCCOMB_X2_Y2_N12
\clk_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~6_combout\ = (!\Equal0~9_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~36_combout\,
	combout => \clk_count~6_combout\);

-- Location: LCCOMB_X2_Y2_N6
\clk_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~7_combout\ = (!\Equal0~9_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~38_combout\,
	combout => \clk_count~7_combout\);

-- Location: IOOBUF_X0_Y20_N2
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~reg0_q\,
	devoe => ww_devoe,
	o => \led~output_o\);

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

-- Location: IOIBUF_X30_Y0_N29
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X28_Y22_N2
\pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[0]~11_combout\ = pwm_count(0) $ (VCC)
-- \pwm_count[0]~12\ = CARRY(pwm_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(0),
	datad => VCC,
	combout => \pwm_count[0]~11_combout\,
	cout => \pwm_count[0]~12\);

-- Location: LCCOMB_X28_Y22_N10
\pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[4]~19_combout\ = (pwm_count(4) & (\pwm_count[3]~18\ $ (GND))) # (!pwm_count(4) & (!\pwm_count[3]~18\ & VCC))
-- \pwm_count[4]~20\ = CARRY((pwm_count(4) & !\pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(4),
	datad => VCC,
	cin => \pwm_count[3]~18\,
	combout => \pwm_count[4]~19_combout\,
	cout => \pwm_count[4]~20\);

-- Location: FF_X28_Y22_N11
\pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[4]~19_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(4));

-- Location: LCCOMB_X28_Y22_N0
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan2~0_combout\ & (!pwm_count(3) & !pwm_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => pwm_count(3),
	datad => pwm_count(4),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y22_N24
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (pwm_count(10)) # ((!\LessThan2~2_combout\ & (!\LessThan2~1_combout\ & pwm_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~1_combout\,
	datac => pwm_count(10),
	datad => pwm_count(9),
	combout => \LessThan2~3_combout\);

-- Location: FF_X28_Y22_N3
\pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[0]~11_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(0));

-- Location: LCCOMB_X28_Y22_N4
\pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[1]~13_combout\ = (pwm_count(1) & (!\pwm_count[0]~12\)) # (!pwm_count(1) & ((\pwm_count[0]~12\) # (GND)))
-- \pwm_count[1]~14\ = CARRY((!\pwm_count[0]~12\) # (!pwm_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(1),
	datad => VCC,
	cin => \pwm_count[0]~12\,
	combout => \pwm_count[1]~13_combout\,
	cout => \pwm_count[1]~14\);

-- Location: FF_X28_Y22_N5
\pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[1]~13_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(1));

-- Location: LCCOMB_X28_Y22_N6
\pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[2]~15_combout\ = (pwm_count(2) & (\pwm_count[1]~14\ $ (GND))) # (!pwm_count(2) & (!\pwm_count[1]~14\ & VCC))
-- \pwm_count[2]~16\ = CARRY((pwm_count(2) & !\pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datad => VCC,
	cin => \pwm_count[1]~14\,
	combout => \pwm_count[2]~15_combout\,
	cout => \pwm_count[2]~16\);

-- Location: LCCOMB_X28_Y22_N8
\pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[3]~17_combout\ = (pwm_count(3) & (!\pwm_count[2]~16\)) # (!pwm_count(3) & ((\pwm_count[2]~16\) # (GND)))
-- \pwm_count[3]~18\ = CARRY((!\pwm_count[2]~16\) # (!pwm_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(3),
	datad => VCC,
	cin => \pwm_count[2]~16\,
	combout => \pwm_count[3]~17_combout\,
	cout => \pwm_count[3]~18\);

-- Location: FF_X28_Y22_N9
\pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[3]~17_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(3));

-- Location: LCCOMB_X28_Y22_N14
\pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[6]~23_combout\ = (pwm_count(6) & (\pwm_count[5]~22\ $ (GND))) # (!pwm_count(6) & (!\pwm_count[5]~22\ & VCC))
-- \pwm_count[6]~24\ = CARRY((pwm_count(6) & !\pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(6),
	datad => VCC,
	cin => \pwm_count[5]~22\,
	combout => \pwm_count[6]~23_combout\,
	cout => \pwm_count[6]~24\);

-- Location: FF_X28_Y22_N15
\pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[6]~23_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(6));

-- Location: LCCOMB_X28_Y22_N16
\pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[7]~25_combout\ = (pwm_count(7) & (!\pwm_count[6]~24\)) # (!pwm_count(7) & ((\pwm_count[6]~24\) # (GND)))
-- \pwm_count[7]~26\ = CARRY((!\pwm_count[6]~24\) # (!pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(7),
	datad => VCC,
	cin => \pwm_count[6]~24\,
	combout => \pwm_count[7]~25_combout\,
	cout => \pwm_count[7]~26\);

-- Location: FF_X28_Y22_N17
\pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[7]~25_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(7));

-- Location: LCCOMB_X28_Y22_N18
\pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[8]~27_combout\ = (pwm_count(8) & (\pwm_count[7]~26\ $ (GND))) # (!pwm_count(8) & (!\pwm_count[7]~26\ & VCC))
-- \pwm_count[8]~28\ = CARRY((pwm_count(8) & !\pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(8),
	datad => VCC,
	cin => \pwm_count[7]~26\,
	combout => \pwm_count[8]~27_combout\,
	cout => \pwm_count[8]~28\);

-- Location: FF_X28_Y22_N19
\pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[8]~27_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(8));

-- Location: LCCOMB_X28_Y22_N20
\pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[9]~29_combout\ = (pwm_count(9) & (!\pwm_count[8]~28\)) # (!pwm_count(9) & ((\pwm_count[8]~28\) # (GND)))
-- \pwm_count[9]~30\ = CARRY((!\pwm_count[8]~28\) # (!pwm_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(9),
	datad => VCC,
	cin => \pwm_count[8]~28\,
	combout => \pwm_count[9]~29_combout\,
	cout => \pwm_count[9]~30\);

-- Location: FF_X28_Y22_N21
\pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[9]~29_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(9));

-- Location: LCCOMB_X28_Y22_N22
\pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[10]~31_combout\ = pwm_count(10) $ (!\pwm_count[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(10),
	cin => \pwm_count[9]~30\,
	combout => \pwm_count[10]~31_combout\);

-- Location: FF_X28_Y22_N23
\pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[10]~31_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(10));

-- Location: LCCOMB_X28_Y18_N8
\duty[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[0]~13_combout\ = (\Add1~1_combout\ & (duty(0) $ (VCC))) # (!\Add1~1_combout\ & (duty(0) & VCC))
-- \duty[0]~14\ = CARRY((\Add1~1_combout\ & duty(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => duty(0),
	datad => VCC,
	combout => \duty[0]~13_combout\,
	cout => \duty[0]~14\);

-- Location: LCCOMB_X28_Y18_N22
\duty[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[7]~27_combout\ = (duty(7) & ((\rising~q\ & (\duty[6]~26\ & VCC)) # (!\rising~q\ & (!\duty[6]~26\)))) # (!duty(7) & ((\rising~q\ & (!\duty[6]~26\)) # (!\rising~q\ & ((\duty[6]~26\) # (GND)))))
-- \duty[7]~28\ = CARRY((duty(7) & (!\rising~q\ & !\duty[6]~26\)) # (!duty(7) & ((!\duty[6]~26\) # (!\rising~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[6]~26\,
	combout => \duty[7]~27_combout\,
	cout => \duty[7]~28\);

-- Location: FF_X28_Y18_N23
\duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[7]~27_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(7));

-- Location: LCCOMB_X28_Y18_N24
\duty[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[8]~29_combout\ = ((duty(8) $ (\rising~q\ $ (!\duty[7]~28\)))) # (GND)
-- \duty[8]~30\ = CARRY((duty(8) & ((\rising~q\) # (!\duty[7]~28\))) # (!duty(8) & (\rising~q\ & !\duty[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[7]~28\,
	combout => \duty[8]~29_combout\,
	cout => \duty[8]~30\);

-- Location: FF_X28_Y18_N25
\duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[8]~29_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(8));

-- Location: LCCOMB_X28_Y19_N30
\rising~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rising~2_combout\ = (!duty(6) & (!duty(7) & (!duty(9) & !duty(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(6),
	datab => duty(7),
	datac => duty(9),
	datad => duty(8),
	combout => \rising~2_combout\);

-- Location: LCCOMB_X28_Y18_N10
\duty[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[1]~15_combout\ = (duty(1) & ((\rising~q\ & (\duty[0]~14\ & VCC)) # (!\rising~q\ & (!\duty[0]~14\)))) # (!duty(1) & ((\rising~q\ & (!\duty[0]~14\)) # (!\rising~q\ & ((\duty[0]~14\) # (GND)))))
-- \duty[1]~16\ = CARRY((duty(1) & (!\rising~q\ & !\duty[0]~14\)) # (!duty(1) & ((!\duty[0]~14\) # (!\rising~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(1),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[0]~14\,
	combout => \duty[1]~15_combout\,
	cout => \duty[1]~16\);

-- Location: FF_X28_Y18_N11
\duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[1]~15_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(1));

-- Location: LCCOMB_X28_Y18_N18
\duty[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[5]~23_combout\ = (duty(5) & ((\rising~q\ & (\duty[4]~22\ & VCC)) # (!\rising~q\ & (!\duty[4]~22\)))) # (!duty(5) & ((\rising~q\ & (!\duty[4]~22\)) # (!\rising~q\ & ((\duty[4]~22\) # (GND)))))
-- \duty[5]~24\ = CARRY((duty(5) & (!\rising~q\ & !\duty[4]~22\)) # (!duty(5) & ((!\duty[4]~22\) # (!\rising~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(5),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[4]~22\,
	combout => \duty[5]~23_combout\,
	cout => \duty[5]~24\);

-- Location: FF_X28_Y18_N19
\duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[5]~23_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(5));

-- Location: LCCOMB_X28_Y19_N28
\rising~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rising~1_combout\ = (!duty(2) & (!duty(0) & (!duty(1) & !duty(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => duty(0),
	datac => duty(1),
	datad => duty(5),
	combout => \rising~1_combout\);

-- Location: LCCOMB_X28_Y19_N4
\rising~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rising~0_combout\ = (!duty(3) & (!duty(4) & (\rising~q\ & !duty(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => duty(4),
	datac => \rising~q\,
	datad => duty(10),
	combout => \rising~0_combout\);

-- Location: LCCOMB_X2_Y3_N14
\duty[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~35_combout\ = (\Equal0~9_combout\ & (((!\rising~0_combout\) # (!\rising~1_combout\)) # (!\rising~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \rising~2_combout\,
	datac => \rising~1_combout\,
	datad => \rising~0_combout\,
	combout => \duty[10]~35_combout\);

-- Location: FF_X28_Y18_N9
\duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[0]~13_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(0));

-- Location: LCCOMB_X28_Y18_N14
\duty[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[3]~19_combout\ = (duty(3) & ((\rising~q\ & (\duty[2]~18\ & VCC)) # (!\rising~q\ & (!\duty[2]~18\)))) # (!duty(3) & ((\rising~q\ & (!\duty[2]~18\)) # (!\rising~q\ & ((\duty[2]~18\) # (GND)))))
-- \duty[3]~20\ = CARRY((duty(3) & (!\rising~q\ & !\duty[2]~18\)) # (!duty(3) & ((!\duty[2]~18\) # (!\rising~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[2]~18\,
	combout => \duty[3]~19_combout\,
	cout => \duty[3]~20\);

-- Location: LCCOMB_X28_Y18_N16
\duty[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[4]~21_combout\ = ((\rising~q\ $ (duty(4) $ (!\duty[3]~20\)))) # (GND)
-- \duty[4]~22\ = CARRY((\rising~q\ & ((duty(4)) # (!\duty[3]~20\))) # (!\rising~q\ & (duty(4) & !\duty[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rising~q\,
	datab => duty(4),
	datad => VCC,
	cin => \duty[3]~20\,
	combout => \duty[4]~21_combout\,
	cout => \duty[4]~22\);

-- Location: FF_X28_Y18_N17
\duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[4]~21_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(4));

-- Location: LCCOMB_X28_Y18_N20
\duty[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[6]~25_combout\ = ((duty(6) $ (\rising~q\ $ (!\duty[5]~24\)))) # (GND)
-- \duty[6]~26\ = CARRY((duty(6) & ((\rising~q\) # (!\duty[5]~24\))) # (!duty(6) & (\rising~q\ & !\duty[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(6),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[5]~24\,
	combout => \duty[6]~25_combout\,
	cout => \duty[6]~26\);

-- Location: LCCOMB_X28_Y18_N26
\duty[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[9]~31_combout\ = (duty(9) & ((\rising~q\ & (\duty[8]~30\ & VCC)) # (!\rising~q\ & (!\duty[8]~30\)))) # (!duty(9) & ((\rising~q\ & (!\duty[8]~30\)) # (!\rising~q\ & ((\duty[8]~30\) # (GND)))))
-- \duty[9]~32\ = CARRY((duty(9) & (!\rising~q\ & !\duty[8]~30\)) # (!duty(9) & ((!\duty[8]~30\) # (!\rising~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(9),
	datab => \rising~q\,
	datad => VCC,
	cin => \duty[8]~30\,
	combout => \duty[9]~31_combout\,
	cout => \duty[9]~32\);

-- Location: LCCOMB_X28_Y18_N28
\duty[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~33_combout\ = \rising~q\ $ (\duty[9]~32\ $ (!duty(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rising~q\,
	datad => duty(10),
	cin => \duty[9]~32\,
	combout => \duty[10]~33_combout\);

-- Location: FF_X28_Y18_N29
\duty[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[10]~33_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(10));

-- Location: LCCOMB_X28_Y18_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!duty(5)) # (!duty(7))) # (!duty(8))) # (!duty(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(6),
	datab => duty(8),
	datac => duty(7),
	datad => duty(5),
	combout => \LessThan0~2_combout\);

-- Location: FF_X28_Y18_N15
\duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[3]~19_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(3));

-- Location: LCCOMB_X28_Y18_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!duty(3) & !duty(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => duty(3),
	datad => duty(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y18_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & (((!duty(1)) # (!duty(0))) # (!duty(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => \LessThan0~0_combout\,
	datac => duty(0),
	datad => duty(1),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y18_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!duty(10) & (((\LessThan0~2_combout\) # (\LessThan0~1_combout\)) # (!duty(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(9),
	datab => duty(10),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y3_N20
\rising~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rising~3_combout\ = (\rising~1_combout\ & (\rising~2_combout\ & \rising~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rising~1_combout\,
	datab => \rising~2_combout\,
	datad => \rising~0_combout\,
	combout => \rising~3_combout\);

-- Location: LCCOMB_X2_Y3_N0
\rising~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rising~4_combout\ = (\Equal0~9_combout\ & (!\rising~3_combout\ & ((\rising~q\) # (!\LessThan0~3_combout\)))) # (!\Equal0~9_combout\ & (((\rising~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \LessThan0~3_combout\,
	datac => \rising~q\,
	datad => \rising~3_combout\,
	combout => \rising~4_combout\);

-- Location: FF_X2_Y3_N1
rising : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rising~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rising~q\);

-- Location: FF_X28_Y18_N27
\duty[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[9]~31_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(9));

-- Location: FF_X28_Y18_N21
\duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[6]~25_combout\,
	ena => \duty[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(6));

-- Location: FF_X28_Y22_N7
\pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[2]~15_combout\,
	sclr => \LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(2));

-- Location: LCCOMB_X28_Y19_N6
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((duty(0) & !pwm_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => pwm_count(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X28_Y19_N8
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((duty(1) & (pwm_count(1) & !\LessThan3~1_cout\)) # (!duty(1) & ((pwm_count(1)) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X28_Y19_N10
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((duty(2) & ((!\LessThan3~3_cout\) # (!pwm_count(2)))) # (!duty(2) & (!pwm_count(2) & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X28_Y19_N12
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((duty(3) & (pwm_count(3) & !\LessThan3~5_cout\)) # (!duty(3) & ((pwm_count(3)) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X28_Y19_N14
\LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((duty(4) & ((!\LessThan3~7_cout\) # (!pwm_count(4)))) # (!duty(4) & (!pwm_count(4) & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(4),
	datab => pwm_count(4),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X28_Y19_N16
\LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((pwm_count(5) & ((!\LessThan3~9_cout\) # (!duty(5)))) # (!pwm_count(5) & (!duty(5) & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => duty(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X28_Y19_N18
\LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((pwm_count(6) & (duty(6) & !\LessThan3~11_cout\)) # (!pwm_count(6) & ((duty(6)) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => duty(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X28_Y19_N20
\LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((duty(7) & (pwm_count(7) & !\LessThan3~13_cout\)) # (!duty(7) & ((pwm_count(7)) # (!\LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => pwm_count(7),
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X28_Y19_N22
\LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((pwm_count(8) & (duty(8) & !\LessThan3~15_cout\)) # (!pwm_count(8) & ((duty(8)) # (!\LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(8),
	datab => duty(8),
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X28_Y19_N24
\LessThan3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~19_cout\ = CARRY((pwm_count(9) & ((!\LessThan3~17_cout\) # (!duty(9)))) # (!pwm_count(9) & (!duty(9) & !\LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(9),
	datab => duty(9),
	datad => VCC,
	cin => \LessThan3~17_cout\,
	cout => \LessThan3~19_cout\);

-- Location: LCCOMB_X28_Y19_N26
\LessThan3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~20_combout\ = (duty(10) & ((!pwm_count(10)) # (!\LessThan3~19_cout\))) # (!duty(10) & (!\LessThan3~19_cout\ & !pwm_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(10),
	datad => pwm_count(10),
	cin => \LessThan3~19_cout\,
	combout => \LessThan3~20_combout\);

-- Location: LCCOMB_X31_Y15_N0
\led~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\enable~input_o\ & \LessThan3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \LessThan3~20_combout\,
	combout => \led~0_combout\);

-- Location: FF_X31_Y15_N1
\led~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led~reg0_q\);

ww_led <= \led~output_o\;
END structure;


