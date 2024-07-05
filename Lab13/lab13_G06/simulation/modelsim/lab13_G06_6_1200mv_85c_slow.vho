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

-- DATE "05/31/2024 11:40:10"

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

ENTITY 	lab13_G06 IS
    PORT (
	clk : IN std_logic;
	hex0 : OUT std_logic_vector(7 DOWNTO 0);
	hex1 : OUT std_logic_vector(7 DOWNTO 0);
	hex2 : OUT std_logic_vector(7 DOWNTO 0);
	hex3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab13_G06;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab13_G06 IS
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
SIGNAL ww_hex0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \slow_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \slow_clk~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \slow_clk~0_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \slow_clk~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \slow_clk~feeder_combout\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[7]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[7]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex2[7]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex3[7]~output_o\ : std_logic;
SIGNAL \sec_units[0]~3_combout\ : std_logic;
SIGNAL \sec_units~0_combout\ : std_logic;
SIGNAL \sec_units[2]~1_combout\ : std_logic;
SIGNAL \sec_units~2_combout\ : std_logic;
SIGNAL \WideOr27~0_combout\ : std_logic;
SIGNAL \WideOr26~0_combout\ : std_logic;
SIGNAL \WideOr25~0_combout\ : std_logic;
SIGNAL \WideOr24~0_combout\ : std_logic;
SIGNAL \WideOr23~0_combout\ : std_logic;
SIGNAL \WideOr22~0_combout\ : std_logic;
SIGNAL \WideOr21~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sec_tens[0]~4_combout\ : std_logic;
SIGNAL \sec_tens~0_combout\ : std_logic;
SIGNAL \sec_tens~1_combout\ : std_logic;
SIGNAL \sec_tens[3]~2_combout\ : std_logic;
SIGNAL \sec_tens[3]~3_combout\ : std_logic;
SIGNAL \WideOr20~0_combout\ : std_logic;
SIGNAL \WideOr19~0_combout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \min_units[0]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \min_units[3]~0_combout\ : std_logic;
SIGNAL \min_units[2]~2_combout\ : std_logic;
SIGNAL \min_units~1_combout\ : std_logic;
SIGNAL \min_units~3_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \min_tens[0]~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \min_tens[0]~0_combout\ : std_logic;
SIGNAL \min_tens~2_combout\ : std_logic;
SIGNAL \min_tens~1_combout\ : std_logic;
SIGNAL \min_tens[3]~3_combout\ : std_logic;
SIGNAL \min_tens[3]~4_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(24 DOWNTO 0);
SIGNAL min_tens : std_logic_vector(3 DOWNTO 0);
SIGNAL min_units : std_logic_vector(3 DOWNTO 0);
SIGNAL sec_tens : std_logic_vector(3 DOWNTO 0);
SIGNAL sec_units : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_WideOr21~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr14~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\slow_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slow_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr21~0_combout\ <= NOT \WideOr21~0_combout\;
\ALT_INV_WideOr14~0_combout\ <= NOT \WideOr14~0_combout\;
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;

-- Location: LCCOMB_X35_Y27_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X35_Y27_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X35_Y27_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X35_Y27_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X35_Y27_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X35_Y27_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X35_Y27_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X35_Y27_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X35_Y27_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X35_Y27_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X35_Y27_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X35_Y27_N30
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X35_Y26_N0
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X35_Y26_N2
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X35_Y26_N4
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X35_Y26_N6
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X35_Y26_N8
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X35_Y26_N10
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X35_Y26_N12
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X35_Y26_N14
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X35_Y26_N16
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X35_Y26_N18
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X35_Y26_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X35_Y26_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X35_Y26_N24
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: FF_X33_Y26_N19
slow_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clk~q\);

-- Location: FF_X35_Y27_N9
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: FF_X35_Y27_N11
\count[1]\ : dffeas
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
	q => count(1));

-- Location: FF_X35_Y27_N13
\count[2]\ : dffeas
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
	q => count(2));

-- Location: FF_X35_Y27_N15
\count[3]\ : dffeas
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
	q => count(3));

-- Location: LCCOMB_X30_Y27_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(0) & (count(1) & (count(3) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Equal0~0_combout\);

-- Location: FF_X35_Y27_N17
\count[4]\ : dffeas
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
	q => count(4));

-- Location: FF_X35_Y27_N19
\count[5]\ : dffeas
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
	q => count(5));

-- Location: FF_X33_Y26_N1
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X35_Y27_N23
\count[7]\ : dffeas
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
	q => count(7));

-- Location: LCCOMB_X35_Y27_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(6) & (count(5) & (!count(7) & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(5),
	datac => count(7),
	datad => count(4),
	combout => \Equal0~1_combout\);

-- Location: FF_X33_Y26_N11
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: FF_X35_Y27_N25
\count[8]\ : dffeas
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
	q => count(8));

-- Location: FF_X35_Y27_N27
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: FF_X35_Y27_N29
\count[10]\ : dffeas
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
	q => count(10));

-- Location: LCCOMB_X35_Y27_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(8) & (!count(10) & (!count(9) & count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(10),
	datac => count(9),
	datad => count(11),
	combout => \Equal0~2_combout\);

-- Location: FF_X33_Y26_N15
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: FF_X33_Y26_N31
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: FF_X33_Y26_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: FF_X35_Y26_N7
\count[15]\ : dffeas
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
	q => count(15));

-- Location: LCCOMB_X33_Y26_N4
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(13) & (count(14) & (count(12) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => count(12),
	datad => count(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X35_Y27_N4
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X33_Y26_N23
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: FF_X33_Y26_N27
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: FF_X33_Y26_N21
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: FF_X35_Y26_N11
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X33_Y26_N2
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(16) & (count(19) & (count(18) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(19),
	datac => count(18),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: FF_X35_Y26_N27
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: FF_X33_Y26_N13
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: FF_X35_Y26_N29
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: FF_X35_Y26_N31
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: FF_X35_Y26_N23
\count[23]\ : dffeas
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
	q => count(23));

-- Location: LCCOMB_X33_Y26_N6
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count(20) & (count(21) & (count(22) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(21),
	datac => count(22),
	datad => count(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X35_Y27_N6
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (count(24) & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => count(24),
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X33_Y26_N24
\slow_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk~0_combout\ = \slow_clk~q\ $ (\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slow_clk~q\,
	datad => \Equal0~7_combout\,
	combout => \slow_clk~0_combout\);

-- Location: LCCOMB_X33_Y26_N0
\count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\Equal0~7_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~12_combout\,
	combout => \count~0_combout\);

-- Location: LCCOMB_X33_Y26_N10
\count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!\Equal0~7_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~22_combout\,
	combout => \count~1_combout\);

-- Location: LCCOMB_X33_Y26_N14
\count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \count~2_combout\);

-- Location: LCCOMB_X33_Y26_N30
\count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~26_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datad => \Equal0~7_combout\,
	combout => \count~3_combout\);

-- Location: LCCOMB_X33_Y26_N28
\count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal0~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~28_combout\,
	combout => \count~4_combout\);

-- Location: LCCOMB_X33_Y26_N22
\count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (!\Equal0~7_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~32_combout\,
	combout => \count~5_combout\);

-- Location: LCCOMB_X33_Y26_N26
\count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (!\Equal0~7_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~36_combout\,
	combout => \count~6_combout\);

-- Location: LCCOMB_X33_Y26_N20
\count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~38_combout\,
	combout => \count~7_combout\);

-- Location: LCCOMB_X35_Y26_N26
\count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \count~8_combout\);

-- Location: LCCOMB_X33_Y26_N12
\count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \count~9_combout\);

-- Location: LCCOMB_X35_Y26_N28
\count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \count~10_combout\);

-- Location: LCCOMB_X35_Y26_N30
\count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \count~11_combout\);

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

-- Location: CLKCTRL_G0
\slow_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slow_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slow_clk~clkctrl_outclk\);

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

-- Location: LCCOMB_X33_Y26_N18
\slow_clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slow_clk~feeder_combout\ = \slow_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \slow_clk~0_combout\,
	combout => \slow_clk~feeder_combout\);

-- Location: IOOBUF_X21_Y29_N23
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr27~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr26~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr25~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr24~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr23~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr22~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr21~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\hex0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex0[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr20~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr19~0_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr18~0_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr17~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr15~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr14~0_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\hex1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr13~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr12~0_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr11~0_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\hex2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex2[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\hex3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex3[7]~output_o\);

-- Location: LCCOMB_X32_Y28_N16
\sec_units[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_units[0]~3_combout\ = !sec_units(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec_units(0),
	combout => \sec_units[0]~3_combout\);

-- Location: FF_X32_Y28_N17
\sec_units[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_units[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_units(0));

-- Location: LCCOMB_X32_Y28_N2
\sec_units~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_units~0_combout\ = (sec_units(0) & (((sec_units(1))))) # (!sec_units(0) & (((sec_units(3) & sec_units(2))) # (!sec_units(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(3),
	datab => sec_units(0),
	datac => sec_units(1),
	datad => sec_units(2),
	combout => \sec_units~0_combout\);

-- Location: FF_X32_Y28_N3
\sec_units[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_units~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_units(1));

-- Location: LCCOMB_X32_Y28_N12
\sec_units[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_units[2]~1_combout\ = sec_units(2) $ (((!sec_units(0) & !sec_units(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec_units(0),
	datac => sec_units(2),
	datad => sec_units(1),
	combout => \sec_units[2]~1_combout\);

-- Location: FF_X32_Y28_N13
\sec_units[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_units[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_units(2));

-- Location: LCCOMB_X32_Y28_N30
\sec_units~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_units~2_combout\ = (sec_units(1) & (sec_units(3) & ((sec_units(0)) # (!sec_units(2))))) # (!sec_units(1) & (sec_units(3) $ (((!sec_units(0) & !sec_units(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(1),
	datab => sec_units(0),
	datac => sec_units(3),
	datad => sec_units(2),
	combout => \sec_units~2_combout\);

-- Location: FF_X32_Y28_N31
\sec_units[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_units~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_units(3));

-- Location: LCCOMB_X30_Y28_N24
\WideOr27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr27~0_combout\ = (sec_units(1) & (sec_units(2) $ (((sec_units(3)) # (sec_units(0)))))) # (!sec_units(1) & (((sec_units(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr27~0_combout\);

-- Location: LCCOMB_X30_Y28_N10
\WideOr26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr26~0_combout\ = (sec_units(2) & (sec_units(3) & ((!sec_units(1))))) # (!sec_units(2) & ((sec_units(3)) # (sec_units(0) $ (sec_units(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr26~0_combout\);

-- Location: LCCOMB_X30_Y28_N4
\WideOr25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr25~0_combout\ = (sec_units(2) & (!sec_units(1) & ((sec_units(3)) # (sec_units(0))))) # (!sec_units(2) & (sec_units(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr25~0_combout\);

-- Location: LCCOMB_X30_Y28_N6
\WideOr24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr24~0_combout\ = (sec_units(2) & ((sec_units(1) & ((!sec_units(0)))) # (!sec_units(1) & (sec_units(3))))) # (!sec_units(2) & ((sec_units(3)) # (sec_units(0) $ (!sec_units(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr24~0_combout\);

-- Location: LCCOMB_X30_Y28_N16
\WideOr23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr23~0_combout\ = ((sec_units(1) & (!sec_units(2))) # (!sec_units(1) & ((sec_units(3))))) # (!sec_units(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr23~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\WideOr22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr22~0_combout\ = (sec_units(2) & (((!sec_units(3) & !sec_units(0))) # (!sec_units(1)))) # (!sec_units(2) & (sec_units(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr22~0_combout\);

-- Location: LCCOMB_X30_Y28_N12
\WideOr21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr21~0_combout\ = (sec_units(2) & (sec_units(3) $ (((!sec_units(1)))))) # (!sec_units(2) & (!sec_units(3) & ((sec_units(0)) # (sec_units(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(3),
	datac => sec_units(0),
	datad => sec_units(1),
	combout => \WideOr21~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (sec_units(2) & (sec_units(1) & (sec_units(3) & !sec_units(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_units(2),
	datab => sec_units(1),
	datac => sec_units(3),
	datad => sec_units(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X33_Y28_N24
\sec_tens[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tens[0]~4_combout\ = !sec_tens(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec_tens(0),
	combout => \sec_tens[0]~4_combout\);

-- Location: FF_X33_Y28_N25
\sec_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_tens[0]~4_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_tens(0));

-- Location: LCCOMB_X33_Y28_N10
\sec_tens~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tens~0_combout\ = (sec_tens(0) & (((sec_tens(1))))) # (!sec_tens(0) & (!sec_tens(1) & ((sec_tens(3)) # (sec_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(0),
	datac => sec_tens(1),
	datad => sec_tens(2),
	combout => \sec_tens~0_combout\);

-- Location: FF_X33_Y28_N11
\sec_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_tens~0_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_tens(1));

-- Location: LCCOMB_X33_Y28_N4
\sec_tens~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tens~1_combout\ = (sec_tens(0) & (((sec_tens(2))))) # (!sec_tens(0) & ((sec_tens(2) & ((!sec_tens(1)))) # (!sec_tens(2) & ((sec_tens(1)) # (!sec_tens(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(0),
	datac => sec_tens(2),
	datad => sec_tens(1),
	combout => \sec_tens~1_combout\);

-- Location: FF_X33_Y28_N5
\sec_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_tens~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_tens(2));

-- Location: LCCOMB_X33_Y28_N28
\sec_tens[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tens[3]~2_combout\ = (sec_tens(1) & (!sec_tens(2) & !sec_tens(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(1),
	datab => sec_tens(2),
	datac => sec_tens(0),
	combout => \sec_tens[3]~2_combout\);

-- Location: LCCOMB_X32_Y28_N8
\sec_tens[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_tens[3]~3_combout\ = sec_tens(3) $ (((\Equal1~0_combout\ & \sec_tens[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => sec_tens(3),
	datad => \sec_tens[3]~2_combout\,
	combout => \sec_tens[3]~3_combout\);

-- Location: FF_X32_Y28_N9
\sec_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \sec_tens[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec_tens(3));

-- Location: LCCOMB_X33_Y28_N22
\WideOr20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr20~0_combout\ = (sec_tens(1) & (sec_tens(3))) # (!sec_tens(1) & (sec_tens(2) $ (((sec_tens(3)) # (sec_tens(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr20~0_combout\);

-- Location: LCCOMB_X33_Y28_N16
\WideOr19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr19~0_combout\ = (sec_tens(3) & ((sec_tens(1)) # ((!sec_tens(2))))) # (!sec_tens(3) & (!sec_tens(2) & (sec_tens(1) $ (!sec_tens(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr19~0_combout\);

-- Location: LCCOMB_X33_Y28_N26
\WideOr18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (sec_tens(2) & (sec_tens(1) & ((sec_tens(3)) # (sec_tens(0))))) # (!sec_tens(2) & (sec_tens(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X33_Y28_N12
\WideOr17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (sec_tens(0) & ((sec_tens(1) & (sec_tens(3))) # (!sec_tens(1) & ((!sec_tens(2)))))) # (!sec_tens(0) & ((sec_tens(3)) # (sec_tens(1) $ (sec_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr17~0_combout\);

-- Location: LCCOMB_X33_Y28_N30
\WideOr16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = ((sec_tens(1) & (sec_tens(3))) # (!sec_tens(1) & ((!sec_tens(2))))) # (!sec_tens(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X33_Y28_N8
\WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (sec_tens(2) & ((sec_tens(1)) # ((!sec_tens(3) & !sec_tens(0))))) # (!sec_tens(2) & (sec_tens(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr15~0_combout\);

-- Location: LCCOMB_X33_Y28_N2
\WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (sec_tens(1) & (!sec_tens(3) & ((sec_tens(0)) # (sec_tens(2))))) # (!sec_tens(1) & (sec_tens(3) $ (((!sec_tens(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(1),
	datac => sec_tens(0),
	datad => sec_tens(2),
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X31_Y27_N24
\min_units[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_units[0]~4_combout\ = !min_units(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_units(0),
	combout => \min_units[0]~4_combout\);

-- Location: LCCOMB_X32_Y28_N6
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!sec_tens(3) & (!sec_tens(0) & (!sec_tens(1) & !sec_tens(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec_tens(3),
	datab => sec_tens(0),
	datac => sec_tens(1),
	datad => sec_tens(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y28_N0
\min_units[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_units[3]~0_combout\ = (\Equal1~0_combout\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \min_units[3]~0_combout\);

-- Location: FF_X31_Y27_N25
\min_units[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_units[0]~4_combout\,
	ena => \min_units[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_units(0));

-- Location: LCCOMB_X32_Y28_N26
\min_units[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_units[2]~2_combout\ = min_units(2) $ (((min_units(0) & (\min_units[3]~0_combout\ & min_units(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(0),
	datab => \min_units[3]~0_combout\,
	datac => min_units(2),
	datad => min_units(1),
	combout => \min_units[2]~2_combout\);

-- Location: FF_X32_Y28_N27
\min_units[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_units[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_units(2));

-- Location: LCCOMB_X31_Y27_N10
\min_units~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_units~1_combout\ = (min_units(0) & (!min_units(1) & ((min_units(3)) # (min_units(2))))) # (!min_units(0) & (((min_units(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(3),
	datab => min_units(0),
	datac => min_units(1),
	datad => min_units(2),
	combout => \min_units~1_combout\);

-- Location: FF_X31_Y27_N11
\min_units[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_units~1_combout\,
	ena => \min_units[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_units(1));

-- Location: LCCOMB_X31_Y27_N12
\min_units~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_units~3_combout\ = (min_units(1) & (min_units(3) $ (((min_units(0) & min_units(2)))))) # (!min_units(1) & ((min_units(3)) # ((min_units(0) & !min_units(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(0),
	datac => min_units(3),
	datad => min_units(2),
	combout => \min_units~3_combout\);

-- Location: FF_X31_Y27_N13
\min_units[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_units~3_combout\,
	ena => \min_units[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_units(3));

-- Location: LCCOMB_X31_Y27_N14
\WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (min_units(1) & (((!min_units(3))))) # (!min_units(1) & (min_units(2) $ (((min_units(0) & min_units(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X31_Y27_N0
\WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (min_units(2) & ((min_units(1) $ (min_units(0))) # (!min_units(3)))) # (!min_units(2) & (min_units(1) & ((!min_units(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X31_Y27_N18
\WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (min_units(2) & (((!min_units(3))))) # (!min_units(2) & (min_units(1) & ((!min_units(3)) # (!min_units(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X31_Y27_N4
\WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (min_units(2) & ((min_units(1) $ (!min_units(0))) # (!min_units(3)))) # (!min_units(2) & ((min_units(1) & ((!min_units(3)))) # (!min_units(1) & (min_units(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X31_Y27_N22
\WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (min_units(0)) # ((min_units(1) & ((!min_units(3)))) # (!min_units(1) & (min_units(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X31_Y27_N8
\WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (min_units(2) & (((!min_units(3))))) # (!min_units(2) & ((min_units(1)) # ((min_units(0) & min_units(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X31_Y27_N2
\WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (min_units(1) & (min_units(3) & ((!min_units(0)) # (!min_units(2))))) # (!min_units(1) & (min_units(2) $ (((!min_units(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(1),
	datab => min_units(2),
	datac => min_units(0),
	datad => min_units(3),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\min_tens[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tens[0]~5_combout\ = !min_tens(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_tens(0),
	combout => \min_tens[0]~5_combout\);

-- Location: LCCOMB_X32_Y28_N18
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!min_units(2) & (min_units(0) & (!min_units(3) & !min_units(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_units(2),
	datab => min_units(0),
	datac => min_units(3),
	datad => min_units(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\min_tens[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tens[0]~0_combout\ = (\Equal1~0_combout\ & (\Equal2~0_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \min_tens[0]~0_combout\);

-- Location: FF_X32_Y28_N29
\min_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_tens[0]~5_combout\,
	ena => \min_tens[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_tens(0));

-- Location: LCCOMB_X32_Y28_N24
\min_tens~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tens~2_combout\ = (min_tens(1) & ((min_tens(2) $ (!min_tens(0))))) # (!min_tens(1) & ((min_tens(2)) # ((!min_tens(3) & !min_tens(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(3),
	datab => min_tens(1),
	datac => min_tens(2),
	datad => min_tens(0),
	combout => \min_tens~2_combout\);

-- Location: FF_X32_Y28_N25
\min_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_tens~2_combout\,
	ena => \min_tens[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_tens(2));

-- Location: LCCOMB_X32_Y28_N22
\min_tens~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tens~1_combout\ = (min_tens(0) & (((min_tens(1))))) # (!min_tens(0) & (!min_tens(1) & ((min_tens(3)) # (min_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(3),
	datab => min_tens(0),
	datac => min_tens(1),
	datad => min_tens(2),
	combout => \min_tens~1_combout\);

-- Location: FF_X32_Y28_N23
\min_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_tens~1_combout\,
	ena => \min_tens[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_tens(1));

-- Location: LCCOMB_X32_Y28_N14
\min_tens[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tens[3]~3_combout\ = (!min_tens(0) & (min_tens(1) & !min_tens(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_tens(0),
	datac => min_tens(1),
	datad => min_tens(2),
	combout => \min_tens[3]~3_combout\);

-- Location: LCCOMB_X32_Y28_N10
\min_tens[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_tens[3]~4_combout\ = min_tens(3) $ (((\Equal3~0_combout\ & (\min_tens[3]~3_combout\ & \min_units[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \min_tens[3]~3_combout\,
	datac => min_tens(3),
	datad => \min_units[3]~0_combout\,
	combout => \min_tens[3]~4_combout\);

-- Location: FF_X32_Y28_N11
\min_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \min_tens[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_tens(3));

-- Location: LCCOMB_X35_Y28_N0
\WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (min_tens(1) & (((min_tens(3))))) # (!min_tens(1) & (min_tens(2) $ (((min_tens(0)) # (min_tens(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X35_Y28_N10
\WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (min_tens(3) & (((min_tens(1)) # (!min_tens(2))))) # (!min_tens(3) & (!min_tens(2) & (min_tens(0) $ (!min_tens(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X35_Y28_N28
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (min_tens(2) & (min_tens(1) & ((min_tens(0)) # (min_tens(3))))) # (!min_tens(2) & (((min_tens(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X35_Y28_N30
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (min_tens(0) & ((min_tens(1) & (min_tens(3))) # (!min_tens(1) & ((!min_tens(2)))))) # (!min_tens(0) & ((min_tens(3)) # (min_tens(1) $ (min_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y28_N16
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ((min_tens(1) & (min_tens(3))) # (!min_tens(1) & ((!min_tens(2))))) # (!min_tens(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y28_N26
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (min_tens(2) & ((min_tens(1)) # ((!min_tens(0) & !min_tens(3))))) # (!min_tens(2) & (((min_tens(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X35_Y28_N4
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (min_tens(1) & (!min_tens(3) & ((min_tens(0)) # (min_tens(2))))) # (!min_tens(1) & ((min_tens(3) $ (!min_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_tens(0),
	datab => min_tens(1),
	datac => min_tens(3),
	datad => min_tens(2),
	combout => \WideOr0~0_combout\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(7) <= \hex0[7]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(7) <= \hex1[7]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex2(7) <= \hex2[7]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex3(7) <= \hex3[7]~output_o\;
END structure;


