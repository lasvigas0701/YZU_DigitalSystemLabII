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

-- DATE "06/14/2024 10:31:16"

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

ENTITY 	lab12_G06_bonus IS
    PORT (
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	BUTTON : IN std_logic_vector(1 DOWNTO 0);
	LED_data : IN std_logic_vector(4 DOWNTO 0);
	LEDs : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab12_G06_bonus;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab12_G06_bonus IS
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
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_BUTTON : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LED_data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(9 DOWNTO 0);
SIGNAL \new_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \counter[13]~58_combout\ : std_logic;
SIGNAL \counter[15]~62_combout\ : std_logic;
SIGNAL \counter[21]~74_combout\ : std_logic;
SIGNAL \counter[22]~76_combout\ : std_logic;
SIGNAL \counter[27]~87\ : std_logic;
SIGNAL \counter[28]~88_combout\ : std_logic;
SIGNAL \counter[28]~89\ : std_logic;
SIGNAL \counter[29]~90_combout\ : std_logic;
SIGNAL \counter[29]~91\ : std_logic;
SIGNAL \counter[30]~92_combout\ : std_logic;
SIGNAL \counter[30]~93\ : std_logic;
SIGNAL \counter[31]~94_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \divisor[9]~8_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \LEDs[8]~output_o\ : std_logic;
SIGNAL \LEDs[9]~output_o\ : std_logic;
SIGNAL \BUTTON[1]~input_o\ : std_logic;
SIGNAL \button1_last_state~q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \divisor[12]~6_combout\ : std_logic;
SIGNAL \BUTTON[0]~input_o\ : std_logic;
SIGNAL \button0_last_state~q\ : std_logic;
SIGNAL \divisor[26]~0_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \divisor[26]~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \divisor[15]~5_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \divisor[19]~4_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \divisor[20]~3_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \divisor[23]~2_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \divisor[7]~9_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \divisor[10]~7_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter[0]~32_combout\ : std_logic;
SIGNAL \counter[0]~33\ : std_logic;
SIGNAL \counter[1]~34_combout\ : std_logic;
SIGNAL \counter[1]~35\ : std_logic;
SIGNAL \counter[2]~36_combout\ : std_logic;
SIGNAL \counter[2]~37\ : std_logic;
SIGNAL \counter[3]~39\ : std_logic;
SIGNAL \counter[4]~40_combout\ : std_logic;
SIGNAL \counter[4]~41\ : std_logic;
SIGNAL \counter[5]~43\ : std_logic;
SIGNAL \counter[6]~45\ : std_logic;
SIGNAL \counter[7]~46_combout\ : std_logic;
SIGNAL \counter[7]~47\ : std_logic;
SIGNAL \counter[8]~48_combout\ : std_logic;
SIGNAL \counter[8]~49\ : std_logic;
SIGNAL \counter[9]~50_combout\ : std_logic;
SIGNAL \counter[9]~51\ : std_logic;
SIGNAL \counter[10]~52_combout\ : std_logic;
SIGNAL \counter[10]~53\ : std_logic;
SIGNAL \counter[11]~55\ : std_logic;
SIGNAL \counter[12]~56_combout\ : std_logic;
SIGNAL \counter[12]~57\ : std_logic;
SIGNAL \counter[13]~59\ : std_logic;
SIGNAL \counter[14]~60_combout\ : std_logic;
SIGNAL \counter[14]~61\ : std_logic;
SIGNAL \counter[15]~63\ : std_logic;
SIGNAL \counter[16]~64_combout\ : std_logic;
SIGNAL \counter[16]~65\ : std_logic;
SIGNAL \counter[17]~66_combout\ : std_logic;
SIGNAL \counter[17]~67\ : std_logic;
SIGNAL \counter[18]~68_combout\ : std_logic;
SIGNAL \counter[18]~69\ : std_logic;
SIGNAL \counter[19]~71\ : std_logic;
SIGNAL \counter[20]~72_combout\ : std_logic;
SIGNAL \counter[20]~73\ : std_logic;
SIGNAL \counter[21]~75\ : std_logic;
SIGNAL \counter[22]~77\ : std_logic;
SIGNAL \counter[23]~78_combout\ : std_logic;
SIGNAL \counter[23]~79\ : std_logic;
SIGNAL \counter[24]~80_combout\ : std_logic;
SIGNAL \counter[24]~81\ : std_logic;
SIGNAL \counter[25]~82_combout\ : std_logic;
SIGNAL \counter[25]~83\ : std_logic;
SIGNAL \counter[26]~84_combout\ : std_logic;
SIGNAL \counter[26]~85\ : std_logic;
SIGNAL \counter[27]~86_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter[19]~70_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter[11]~54_combout\ : std_logic;
SIGNAL \counter[6]~44_combout\ : std_logic;
SIGNAL \counter[5]~42_combout\ : std_logic;
SIGNAL \counter[3]~38_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~54_combout\ : std_logic;
SIGNAL \new_clk~0_combout\ : std_logic;
SIGNAL \new_clk~feeder_combout\ : std_logic;
SIGNAL \new_clk~q\ : std_logic;
SIGNAL \new_clk~clkctrl_outclk\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \current_state[1]~1_combout\ : std_logic;
SIGNAL \LED_data[1]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \current_state[2]~2_combout\ : std_logic;
SIGNAL \LED_data[2]~input_o\ : std_logic;
SIGNAL \current_state[3]~3_combout\ : std_logic;
SIGNAL \LED_data[3]~input_o\ : std_logic;
SIGNAL \current_state[4]~4_combout\ : std_logic;
SIGNAL \LED_data[4]~input_o\ : std_logic;
SIGNAL \current_state~5_combout\ : std_logic;
SIGNAL \current_state~6_combout\ : std_logic;
SIGNAL \current_state~7_combout\ : std_logic;
SIGNAL \current_state~8_combout\ : std_logic;
SIGNAL \current_state~9_combout\ : std_logic;
SIGNAL \current_state[0]~0_combout\ : std_logic;
SIGNAL \LED_data[0]~input_o\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL current_state : std_logic_vector(9 DOWNTO 0);
SIGNAL divisor : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~54_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_BUTTON <= BUTTON;
ww_LED_data <= LED_data;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\new_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \new_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~54_combout\ <= NOT \LessThan0~54_combout\;

-- Location: LCCOMB_X14_Y3_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (divisor(7) & (!\Add0~1_cout\)) # (!divisor(7) & (\Add0~1_cout\ & VCC))
-- \Add0~3\ = CARRY((divisor(7) & !\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(7),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X14_Y3_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (divisor(8) & ((GND) # (!\Add0~3\))) # (!divisor(8) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((divisor(8)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(8),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X14_Y3_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (divisor(9) & (!\Add0~5\)) # (!divisor(9) & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((divisor(9) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(9),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X14_Y3_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (divisor(10) & (\Add0~7\ $ (GND))) # (!divisor(10) & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!divisor(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(10),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X14_Y3_N16
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (divisor(11) & (\Add0~9\ & VCC)) # (!divisor(11) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!divisor(11) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(11),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X14_Y3_N26
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (divisor(16) & ((GND) # (!\Add0~19\))) # (!divisor(16) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((divisor(16)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(16),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X14_Y3_N30
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (divisor(18) & ((GND) # (!\Add0~23\))) # (!divisor(18) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((divisor(18)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(18),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X14_Y2_N0
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (divisor(19) & (!\Add0~25\)) # (!divisor(19) & (\Add0~25\ & VCC))
-- \Add0~27\ = CARRY((divisor(19) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(19),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X14_Y2_N2
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (divisor(20) & (\Add0~27\ $ (GND))) # (!divisor(20) & ((GND) # (!\Add0~27\)))
-- \Add0~29\ = CARRY((!\Add0~27\) # (!divisor(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(20),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X14_Y2_N8
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (divisor(23) & (!\Add0~33\)) # (!divisor(23) & (\Add0~33\ & VCC))
-- \Add0~35\ = CARRY((divisor(23) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(23),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X14_Y2_N10
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (divisor(24) & ((GND) # (!\Add0~35\))) # (!divisor(24) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((divisor(24)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(24),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X14_Y2_N12
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (divisor(25) & (\Add0~37\ & VCC)) # (!divisor(25) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!divisor(25) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(25),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X14_Y2_N14
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (divisor(26) & ((GND) # (!\Add0~39\))) # (!divisor(26) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((divisor(26)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(26),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X14_Y2_N16
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (divisor(27) & (\Add0~41\ & VCC)) # (!divisor(27) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!divisor(27) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(27),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X16_Y2_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[31]~94_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: FF_X16_Y2_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[30]~92_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: FF_X16_Y2_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[29]~90_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: FF_X16_Y2_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[28]~88_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: FF_X16_Y2_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~76_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: FF_X16_Y2_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~74_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: FF_X16_Y3_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~62_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X16_Y3_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~58_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X5_Y3_N6
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = divisor(6) $ (VCC)
-- \Add2~3\ = CARRY(divisor(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(6),
	datad => VCC,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X5_Y3_N12
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (divisor(9) & ((\Add2~1_combout\ & (!\Add2~7\)) # (!\Add2~1_combout\ & ((\Add2~7\) # (GND))))) # (!divisor(9) & ((\Add2~1_combout\ & (\Add2~7\ & VCC)) # (!\Add2~1_combout\ & (!\Add2~7\))))
-- \Add2~9\ = CARRY((divisor(9) & ((!\Add2~7\) # (!\Add2~1_combout\))) # (!divisor(9) & (!\Add2~1_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(9),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X5_Y2_N10
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = ((divisor(24) $ (\Add2~1_combout\ $ (\Add2~37\)))) # (GND)
-- \Add2~39\ = CARRY((divisor(24) & ((!\Add2~37\) # (!\Add2~1_combout\))) # (!divisor(24) & (!\Add2~1_combout\ & !\Add2~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(24),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X16_Y3_N26
\counter[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[13]~58_combout\ = (counter(13) & (!\counter[12]~57\)) # (!counter(13) & ((\counter[12]~57\) # (GND)))
-- \counter[13]~59\ = CARRY((!\counter[12]~57\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~57\,
	combout => \counter[13]~58_combout\,
	cout => \counter[13]~59\);

-- Location: LCCOMB_X16_Y3_N30
\counter[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[15]~62_combout\ = (counter(15) & (!\counter[14]~61\)) # (!counter(15) & ((\counter[14]~61\) # (GND)))
-- \counter[15]~63\ = CARRY((!\counter[14]~61\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~61\,
	combout => \counter[15]~62_combout\,
	cout => \counter[15]~63\);

-- Location: LCCOMB_X16_Y2_N10
\counter[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[21]~74_combout\ = (counter(21) & (!\counter[20]~73\)) # (!counter(21) & ((\counter[20]~73\) # (GND)))
-- \counter[21]~75\ = CARRY((!\counter[20]~73\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~73\,
	combout => \counter[21]~74_combout\,
	cout => \counter[21]~75\);

-- Location: LCCOMB_X16_Y2_N12
\counter[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[22]~76_combout\ = (counter(22) & (\counter[21]~75\ $ (GND))) # (!counter(22) & (!\counter[21]~75\ & VCC))
-- \counter[22]~77\ = CARRY((counter(22) & !\counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \counter[21]~75\,
	combout => \counter[22]~76_combout\,
	cout => \counter[22]~77\);

-- Location: LCCOMB_X16_Y2_N22
\counter[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[27]~86_combout\ = (counter(27) & (!\counter[26]~85\)) # (!counter(27) & ((\counter[26]~85\) # (GND)))
-- \counter[27]~87\ = CARRY((!\counter[26]~85\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~85\,
	combout => \counter[27]~86_combout\,
	cout => \counter[27]~87\);

-- Location: LCCOMB_X16_Y2_N24
\counter[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[28]~88_combout\ = (counter(28) & (\counter[27]~87\ $ (GND))) # (!counter(28) & (!\counter[27]~87\ & VCC))
-- \counter[28]~89\ = CARRY((counter(28) & !\counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~87\,
	combout => \counter[28]~88_combout\,
	cout => \counter[28]~89\);

-- Location: LCCOMB_X16_Y2_N26
\counter[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[29]~90_combout\ = (counter(29) & (!\counter[28]~89\)) # (!counter(29) & ((\counter[28]~89\) # (GND)))
-- \counter[29]~91\ = CARRY((!\counter[28]~89\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~89\,
	combout => \counter[29]~90_combout\,
	cout => \counter[29]~91\);

-- Location: LCCOMB_X16_Y2_N28
\counter[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[30]~92_combout\ = (counter(30) & (\counter[29]~91\ $ (GND))) # (!counter(30) & (!\counter[29]~91\ & VCC))
-- \counter[30]~93\ = CARRY((counter(30) & !\counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~91\,
	combout => \counter[30]~92_combout\,
	cout => \counter[30]~93\);

-- Location: LCCOMB_X16_Y2_N30
\counter[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[31]~94_combout\ = counter(31) $ (\counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~93\,
	combout => \counter[31]~94_combout\);

-- Location: FF_X5_Y2_N11
\divisor[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(24));

-- Location: FF_X3_Y4_N29
\divisor[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[9]~8_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(9));

-- Location: FF_X5_Y3_N7
\divisor[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(6));

-- Location: LCCOMB_X3_Y4_N18
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!divisor(19) & (divisor(18) & (divisor(16) & divisor(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(19),
	datab => divisor(18),
	datac => divisor(16),
	datad => divisor(17),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X3_Y4_N22
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!divisor(30) & (\LessThan1~0_combout\ & !divisor(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => divisor(30),
	datac => \LessThan1~0_combout\,
	datad => divisor(24),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y4_N8
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (divisor(15)) # (((divisor(12)) # (!divisor(13))) # (!divisor(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(15),
	datab => divisor(14),
	datac => divisor(13),
	datad => divisor(12),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y4_N2
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!divisor(8) & (divisor(7) & (divisor(10) & !divisor(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(8),
	datab => divisor(7),
	datac => divisor(10),
	datad => divisor(11),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X3_Y4_N12
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!divisor(16) & ((\LessThan1~2_combout\) # ((divisor(9) & \LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(16),
	datab => divisor(9),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X3_Y4_N14
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!divisor(18) & ((\LessThan1~4_combout\) # (!divisor(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => divisor(17),
	datac => divisor(18),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X3_Y4_N24
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (((divisor(19)) # (divisor(20))) # (!divisor(21))) # (!divisor(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(22),
	datab => divisor(21),
	datac => divisor(19),
	datad => divisor(20),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X3_Y4_N10
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan1~1_combout\ & ((divisor(23)) # ((\LessThan1~5_combout\) # (\LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => divisor(23),
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X3_Y4_N28
\divisor[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[9]~8_combout\ = !\Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~8_combout\,
	combout => \divisor[9]~8_combout\);

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

-- Location: IOOBUF_X0_Y20_N9
\LEDs[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(0),
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDs[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(1),
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDs[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(2),
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDs[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(3),
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDs[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(4),
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDs[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(5),
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDs[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(6),
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDs[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(7),
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDs[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(8),
	devoe => ww_devoe,
	o => \LEDs[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDs[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_state(9),
	devoe => ww_devoe,
	o => \LEDs[9]~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(1),
	o => \BUTTON[1]~input_o\);

-- Location: FF_X5_Y3_N1
button1_last_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BUTTON[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button1_last_state~q\);

-- Location: LCCOMB_X5_Y3_N8
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (divisor(7) & ((\Add2~1_combout\ & ((\Add2~3\) # (GND))) # (!\Add2~1_combout\ & (!\Add2~3\)))) # (!divisor(7) & ((\Add2~1_combout\ & (!\Add2~3\)) # (!\Add2~1_combout\ & (\Add2~3\ & VCC))))
-- \Add2~5\ = CARRY((divisor(7) & ((\Add2~1_combout\) # (!\Add2~3\))) # (!divisor(7) & (\Add2~1_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(7),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X5_Y3_N10
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = ((divisor(8) $ (\Add2~1_combout\ $ (\Add2~5\)))) # (GND)
-- \Add2~7\ = CARRY((divisor(8) & ((!\Add2~5\) # (!\Add2~1_combout\))) # (!divisor(8) & (!\Add2~1_combout\ & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(8),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X5_Y3_N14
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = ((divisor(10) $ (\Add2~1_combout\ $ (!\Add2~9\)))) # (GND)
-- \Add2~11\ = CARRY((divisor(10) & (!\Add2~1_combout\ & !\Add2~9\)) # (!divisor(10) & ((!\Add2~9\) # (!\Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(10),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X5_Y3_N16
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (divisor(11) & ((\Add2~1_combout\ & (!\Add2~11\)) # (!\Add2~1_combout\ & (\Add2~11\ & VCC)))) # (!divisor(11) & ((\Add2~1_combout\ & ((\Add2~11\) # (GND))) # (!\Add2~1_combout\ & (!\Add2~11\))))
-- \Add2~13\ = CARRY((divisor(11) & (\Add2~1_combout\ & !\Add2~11\)) # (!divisor(11) & ((\Add2~1_combout\) # (!\Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(11),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X5_Y3_N18
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = ((\Add2~1_combout\ $ (divisor(12) $ (!\Add2~13\)))) # (GND)
-- \Add2~15\ = CARRY((\Add2~1_combout\ & (!divisor(12) & !\Add2~13\)) # (!\Add2~1_combout\ & ((!\Add2~13\) # (!divisor(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(12),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X14_Y3_N0
\divisor[12]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[12]~6_combout\ = !\Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \divisor[12]~6_combout\);

-- Location: IOIBUF_X0_Y21_N8
\BUTTON[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(0),
	o => \BUTTON[0]~input_o\);

-- Location: FF_X3_Y4_N21
button0_last_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button0_last_state~q\);

-- Location: LCCOMB_X3_Y4_N20
\divisor[26]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[26]~0_combout\ = (\button0_last_state~q\) # (!\BUTTON[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON[0]~input_o\,
	datac => \button0_last_state~q\,
	combout => \divisor[26]~0_combout\);

-- Location: LCCOMB_X5_Y2_N12
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (divisor(25) & ((\Add2~1_combout\ & (!\Add2~39\)) # (!\Add2~1_combout\ & (\Add2~39\ & VCC)))) # (!divisor(25) & ((\Add2~1_combout\ & ((\Add2~39\) # (GND))) # (!\Add2~1_combout\ & (!\Add2~39\))))
-- \Add2~41\ = CARRY((divisor(25) & (\Add2~1_combout\ & !\Add2~39\)) # (!divisor(25) & ((\Add2~1_combout\) # (!\Add2~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(25),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X5_Y2_N14
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = ((divisor(26) $ (\Add2~1_combout\ $ (\Add2~41\)))) # (GND)
-- \Add2~43\ = CARRY((divisor(26) & ((!\Add2~41\) # (!\Add2~1_combout\))) # (!divisor(26) & (!\Add2~1_combout\ & !\Add2~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(26),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X5_Y2_N16
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (divisor(27) & ((\Add2~1_combout\ & (!\Add2~43\)) # (!\Add2~1_combout\ & (\Add2~43\ & VCC)))) # (!divisor(27) & ((\Add2~1_combout\ & ((\Add2~43\) # (GND))) # (!\Add2~1_combout\ & (!\Add2~43\))))
-- \Add2~45\ = CARRY((divisor(27) & (\Add2~1_combout\ & !\Add2~43\)) # (!divisor(27) & ((\Add2~1_combout\) # (!\Add2~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(27),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X5_Y2_N18
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = ((divisor(28) $ (\Add2~1_combout\ $ (\Add2~45\)))) # (GND)
-- \Add2~47\ = CARRY((divisor(28) & ((!\Add2~45\) # (!\Add2~1_combout\))) # (!divisor(28) & (!\Add2~1_combout\ & !\Add2~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(28),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X5_Y2_N19
\divisor[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(28));

-- Location: FF_X5_Y2_N15
\divisor[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(26));

-- Location: LCCOMB_X5_Y2_N20
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\Add2~1_combout\ & ((divisor(29) & (!\Add2~47\)) # (!divisor(29) & ((\Add2~47\) # (GND))))) # (!\Add2~1_combout\ & ((divisor(29) & (\Add2~47\ & VCC)) # (!divisor(29) & (!\Add2~47\))))
-- \Add2~49\ = CARRY((\Add2~1_combout\ & ((!\Add2~47\) # (!divisor(29)))) # (!\Add2~1_combout\ & (!divisor(29) & !\Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(29),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X5_Y2_N21
\divisor[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(29));

-- Location: LCCOMB_X5_Y2_N28
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!divisor(27) & (!divisor(28) & (!divisor(26) & !divisor(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(27),
	datab => divisor(28),
	datac => divisor(26),
	datad => divisor(29),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X5_Y2_N22
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = ((\Add2~1_combout\ $ (divisor(30) $ (\Add2~49\)))) # (GND)
-- \Add2~51\ = CARRY((\Add2~1_combout\ & (divisor(30) & !\Add2~49\)) # (!\Add2~1_combout\ & ((divisor(30)) # (!\Add2~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(30),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X5_Y2_N23
\divisor[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(30));

-- Location: LCCOMB_X3_Y4_N4
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (divisor(31)) # ((\LessThan1~0_combout\ & (!divisor(30) & !divisor(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(31),
	datab => \LessThan1~0_combout\,
	datac => divisor(30),
	datad => divisor(25),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X3_Y4_N30
\divisor[26]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[26]~1_combout\ = ((!\divisor[26]~0_combout\ & ((\LessThan1~7_combout\) # (\LessThan1~8_combout\)))) # (!\Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => \divisor[26]~0_combout\,
	datac => \LessThan1~8_combout\,
	datad => \Add2~1_combout\,
	combout => \divisor[26]~1_combout\);

-- Location: FF_X14_Y3_N1
\divisor[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[12]~6_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(12));

-- Location: LCCOMB_X5_Y3_N20
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add2~1_combout\ & ((divisor(13) & (!\Add2~15\)) # (!divisor(13) & ((\Add2~15\) # (GND))))) # (!\Add2~1_combout\ & ((divisor(13) & (\Add2~15\ & VCC)) # (!divisor(13) & (!\Add2~15\))))
-- \Add2~17\ = CARRY((\Add2~1_combout\ & ((!\Add2~15\) # (!divisor(13)))) # (!\Add2~1_combout\ & (!divisor(13) & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(13),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X5_Y3_N21
\divisor[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(13));

-- Location: LCCOMB_X5_Y3_N22
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = ((divisor(14) $ (\Add2~1_combout\ $ (!\Add2~17\)))) # (GND)
-- \Add2~19\ = CARRY((divisor(14) & ((\Add2~1_combout\) # (!\Add2~17\))) # (!divisor(14) & (\Add2~1_combout\ & !\Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(14),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X5_Y3_N24
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add2~1_combout\ & ((divisor(15) & ((\Add2~19\) # (GND))) # (!divisor(15) & (!\Add2~19\)))) # (!\Add2~1_combout\ & ((divisor(15) & (!\Add2~19\)) # (!divisor(15) & (\Add2~19\ & VCC))))
-- \Add2~21\ = CARRY((\Add2~1_combout\ & ((divisor(15)) # (!\Add2~19\))) # (!\Add2~1_combout\ & (divisor(15) & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(15),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X11_Y4_N16
\divisor[15]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[15]~5_combout\ = !\Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \divisor[15]~5_combout\);

-- Location: FF_X11_Y4_N17
\divisor[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[15]~5_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(15));

-- Location: LCCOMB_X5_Y3_N26
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = ((\Add2~1_combout\ $ (divisor(16) $ (!\Add2~21\)))) # (GND)
-- \Add2~23\ = CARRY((\Add2~1_combout\ & ((divisor(16)) # (!\Add2~21\))) # (!\Add2~1_combout\ & (divisor(16) & !\Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(16),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X5_Y3_N27
\divisor[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(16));

-- Location: LCCOMB_X5_Y3_N28
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add2~1_combout\ & ((divisor(17) & (\Add2~23\ & VCC)) # (!divisor(17) & (!\Add2~23\)))) # (!\Add2~1_combout\ & ((divisor(17) & (!\Add2~23\)) # (!divisor(17) & ((\Add2~23\) # (GND)))))
-- \Add2~25\ = CARRY((\Add2~1_combout\ & (!divisor(17) & !\Add2~23\)) # (!\Add2~1_combout\ & ((!\Add2~23\) # (!divisor(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(17),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X5_Y3_N29
\divisor[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(17));

-- Location: LCCOMB_X5_Y3_N30
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = ((\Add2~1_combout\ $ (divisor(18) $ (!\Add2~25\)))) # (GND)
-- \Add2~27\ = CARRY((\Add2~1_combout\ & ((divisor(18)) # (!\Add2~25\))) # (!\Add2~1_combout\ & (divisor(18) & !\Add2~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(18),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X5_Y3_N31
\divisor[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(18));

-- Location: LCCOMB_X5_Y2_N0
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add2~1_combout\ & ((divisor(19) & (!\Add2~27\)) # (!divisor(19) & (\Add2~27\ & VCC)))) # (!\Add2~1_combout\ & ((divisor(19) & ((\Add2~27\) # (GND))) # (!divisor(19) & (!\Add2~27\))))
-- \Add2~29\ = CARRY((\Add2~1_combout\ & (divisor(19) & !\Add2~27\)) # (!\Add2~1_combout\ & ((divisor(19)) # (!\Add2~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(19),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X3_Y4_N26
\divisor[19]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[19]~4_combout\ = !\Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~28_combout\,
	combout => \divisor[19]~4_combout\);

-- Location: FF_X3_Y4_N27
\divisor[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[19]~4_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(19));

-- Location: LCCOMB_X5_Y2_N2
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = ((\Add2~1_combout\ $ (divisor(20) $ (!\Add2~29\)))) # (GND)
-- \Add2~31\ = CARRY((\Add2~1_combout\ & (!divisor(20) & !\Add2~29\)) # (!\Add2~1_combout\ & ((!\Add2~29\) # (!divisor(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(20),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X3_Y4_N16
\divisor[20]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[20]~3_combout\ = !\Add2~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~30_combout\,
	combout => \divisor[20]~3_combout\);

-- Location: FF_X3_Y4_N17
\divisor[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[20]~3_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(20));

-- Location: LCCOMB_X5_Y2_N4
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Add2~1_combout\ & ((divisor(21) & (!\Add2~31\)) # (!divisor(21) & ((\Add2~31\) # (GND))))) # (!\Add2~1_combout\ & ((divisor(21) & (\Add2~31\ & VCC)) # (!divisor(21) & (!\Add2~31\))))
-- \Add2~33\ = CARRY((\Add2~1_combout\ & ((!\Add2~31\) # (!divisor(21)))) # (!\Add2~1_combout\ & (!divisor(21) & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(21),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X5_Y2_N5
\divisor[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(21));

-- Location: LCCOMB_X5_Y2_N6
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = ((divisor(22) $ (\Add2~1_combout\ $ (\Add2~33\)))) # (GND)
-- \Add2~35\ = CARRY((divisor(22) & ((!\Add2~33\) # (!\Add2~1_combout\))) # (!divisor(22) & (!\Add2~1_combout\ & !\Add2~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(22),
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X5_Y2_N8
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\Add2~1_combout\ & ((divisor(23) & ((\Add2~35\) # (GND))) # (!divisor(23) & (!\Add2~35\)))) # (!\Add2~1_combout\ & ((divisor(23) & (!\Add2~35\)) # (!divisor(23) & (\Add2~35\ & VCC))))
-- \Add2~37\ = CARRY((\Add2~1_combout\ & ((divisor(23)) # (!\Add2~35\))) # (!\Add2~1_combout\ & (divisor(23) & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => divisor(23),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X5_Y2_N26
\divisor[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[23]~2_combout\ = !\Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~36_combout\,
	combout => \divisor[23]~2_combout\);

-- Location: FF_X5_Y2_N27
\divisor[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[23]~2_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(23));

-- Location: FF_X5_Y2_N13
\divisor[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(25));

-- Location: FF_X5_Y2_N7
\divisor[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(22));

-- Location: LCCOMB_X3_Y4_N6
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((divisor(22)) # ((divisor(21)) # (!divisor(23)))) # (!divisor(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(20),
	datab => divisor(22),
	datac => divisor(23),
	datad => divisor(21),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X5_Y2_N30
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (divisor(24)) # (((divisor(30)) # (\LessThan2~0_combout\)) # (!\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(24),
	datab => \LessThan1~0_combout\,
	datac => divisor(30),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X11_Y4_N26
\divisor[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[7]~9_combout\ = !\Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~4_combout\,
	combout => \divisor[7]~9_combout\);

-- Location: FF_X11_Y4_N27
\divisor[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[7]~9_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(7));

-- Location: FF_X5_Y3_N23
\divisor[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(14));

-- Location: FF_X5_Y3_N11
\divisor[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(8));

-- Location: LCCOMB_X3_Y4_N0
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!divisor(9) & (divisor(14) & ((divisor(8)) # (!divisor(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(9),
	datab => divisor(7),
	datac => divisor(14),
	datad => divisor(8),
	combout => \LessThan2~2_combout\);

-- Location: FF_X5_Y3_N17
\divisor[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(11));

-- Location: LCCOMB_X14_Y3_N2
\divisor[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divisor[10]~7_combout\ = !\Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \divisor[10]~7_combout\);

-- Location: FF_X14_Y3_N3
\divisor[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divisor[10]~7_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(10));

-- Location: LCCOMB_X14_Y3_N4
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ((divisor(11)) # ((divisor(13)) # (!divisor(10)))) # (!divisor(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(12),
	datab => divisor(11),
	datac => divisor(10),
	datad => divisor(13),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X5_Y3_N2
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ((\LessThan2~2_combout\) # ((divisor(14) & \LessThan2~3_combout\))) # (!divisor(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(14),
	datab => divisor(15),
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X5_Y3_N4
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (divisor(25)) # ((\LessThan2~1_combout\) # ((\LessThan2~5_combout\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => divisor(25),
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X5_Y3_N0
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (divisor(31)) # (((\button1_last_state~q\) # (!\LessThan2~6_combout\)) # (!\BUTTON[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(31),
	datab => \BUTTON[1]~input_o\,
	datac => \button1_last_state~q\,
	datad => \LessThan2~6_combout\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X5_Y2_N24
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = divisor(31) $ (\Add2~51\ $ (!\Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(31),
	datad => \Add2~1_combout\,
	cin => \Add2~51\,
	combout => \Add2~52_combout\);

-- Location: FF_X5_Y2_N25
\divisor[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(31));

-- Location: FF_X5_Y2_N17
\divisor[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	ena => \divisor[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => divisor(27));

-- Location: LCCOMB_X14_Y3_N6
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(divisor(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => divisor(6),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X14_Y3_N18
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (divisor(12) & (\Add0~11\ $ (GND))) # (!divisor(12) & ((GND) # (!\Add0~11\)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!divisor(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(12),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X14_Y3_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (divisor(13) & (\Add0~13\ & VCC)) # (!divisor(13) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!divisor(13) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(13),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X14_Y3_N22
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (divisor(14) & ((GND) # (!\Add0~15\))) # (!divisor(14) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((divisor(14)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(14),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X14_Y3_N24
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (divisor(15) & (!\Add0~17\)) # (!divisor(15) & (\Add0~17\ & VCC))
-- \Add0~19\ = CARRY((divisor(15) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(15),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X14_Y3_N28
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (divisor(17) & (\Add0~21\ & VCC)) # (!divisor(17) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!divisor(17) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => divisor(17),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X14_Y2_N4
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (divisor(21) & (\Add0~29\ & VCC)) # (!divisor(21) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!divisor(21) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(21),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X14_Y2_N6
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (divisor(22) & ((GND) # (!\Add0~31\))) # (!divisor(22) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((divisor(22)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(22),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X14_Y2_N18
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (divisor(28) & ((GND) # (!\Add0~43\))) # (!divisor(28) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((divisor(28)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(28),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X14_Y2_N20
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (divisor(29) & (\Add0~45\ & VCC)) # (!divisor(29) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!divisor(29) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(29),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X14_Y2_N22
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (divisor(30) & ((GND) # (!\Add0~47\))) # (!divisor(30) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((divisor(30)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(30),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X14_Y2_N24
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (!divisor(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => divisor(31),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X16_Y3_N0
\counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~32_combout\ = counter(0) $ (VCC)
-- \counter[0]~33\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~32_combout\,
	cout => \counter[0]~33\);

-- Location: FF_X16_Y3_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~32_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X16_Y3_N2
\counter[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~34_combout\ = (counter(1) & (!\counter[0]~33\)) # (!counter(1) & ((\counter[0]~33\) # (GND)))
-- \counter[1]~35\ = CARRY((!\counter[0]~33\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~33\,
	combout => \counter[1]~34_combout\,
	cout => \counter[1]~35\);

-- Location: FF_X16_Y3_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~34_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X16_Y3_N4
\counter[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[2]~36_combout\ = (counter(2) & (\counter[1]~35\ $ (GND))) # (!counter(2) & (!\counter[1]~35\ & VCC))
-- \counter[2]~37\ = CARRY((counter(2) & !\counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~35\,
	combout => \counter[2]~36_combout\,
	cout => \counter[2]~37\);

-- Location: FF_X16_Y3_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~36_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X16_Y3_N6
\counter[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[3]~38_combout\ = (counter(3) & (!\counter[2]~37\)) # (!counter(3) & ((\counter[2]~37\) # (GND)))
-- \counter[3]~39\ = CARRY((!\counter[2]~37\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~37\,
	combout => \counter[3]~38_combout\,
	cout => \counter[3]~39\);

-- Location: LCCOMB_X16_Y3_N8
\counter[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[4]~40_combout\ = (counter(4) & (\counter[3]~39\ $ (GND))) # (!counter(4) & (!\counter[3]~39\ & VCC))
-- \counter[4]~41\ = CARRY((counter(4) & !\counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~39\,
	combout => \counter[4]~40_combout\,
	cout => \counter[4]~41\);

-- Location: FF_X16_Y3_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~40_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X16_Y3_N10
\counter[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[5]~42_combout\ = (counter(5) & (!\counter[4]~41\)) # (!counter(5) & ((\counter[4]~41\) # (GND)))
-- \counter[5]~43\ = CARRY((!\counter[4]~41\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~41\,
	combout => \counter[5]~42_combout\,
	cout => \counter[5]~43\);

-- Location: LCCOMB_X16_Y3_N12
\counter[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[6]~44_combout\ = (counter(6) & (\counter[5]~43\ $ (GND))) # (!counter(6) & (!\counter[5]~43\ & VCC))
-- \counter[6]~45\ = CARRY((counter(6) & !\counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~43\,
	combout => \counter[6]~44_combout\,
	cout => \counter[6]~45\);

-- Location: LCCOMB_X16_Y3_N14
\counter[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[7]~46_combout\ = (counter(7) & (!\counter[6]~45\)) # (!counter(7) & ((\counter[6]~45\) # (GND)))
-- \counter[7]~47\ = CARRY((!\counter[6]~45\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~45\,
	combout => \counter[7]~46_combout\,
	cout => \counter[7]~47\);

-- Location: FF_X16_Y3_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~46_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X16_Y3_N16
\counter[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[8]~48_combout\ = (counter(8) & (\counter[7]~47\ $ (GND))) # (!counter(8) & (!\counter[7]~47\ & VCC))
-- \counter[8]~49\ = CARRY((counter(8) & !\counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~47\,
	combout => \counter[8]~48_combout\,
	cout => \counter[8]~49\);

-- Location: FF_X16_Y3_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~48_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X16_Y3_N18
\counter[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[9]~50_combout\ = (counter(9) & (!\counter[8]~49\)) # (!counter(9) & ((\counter[8]~49\) # (GND)))
-- \counter[9]~51\ = CARRY((!\counter[8]~49\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~49\,
	combout => \counter[9]~50_combout\,
	cout => \counter[9]~51\);

-- Location: FF_X16_Y3_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~50_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X16_Y3_N20
\counter[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[10]~52_combout\ = (counter(10) & (\counter[9]~51\ $ (GND))) # (!counter(10) & (!\counter[9]~51\ & VCC))
-- \counter[10]~53\ = CARRY((counter(10) & !\counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~51\,
	combout => \counter[10]~52_combout\,
	cout => \counter[10]~53\);

-- Location: FF_X16_Y3_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~52_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X16_Y3_N22
\counter[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[11]~54_combout\ = (counter(11) & (!\counter[10]~53\)) # (!counter(11) & ((\counter[10]~53\) # (GND)))
-- \counter[11]~55\ = CARRY((!\counter[10]~53\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~53\,
	combout => \counter[11]~54_combout\,
	cout => \counter[11]~55\);

-- Location: LCCOMB_X16_Y3_N24
\counter[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[12]~56_combout\ = (counter(12) & (\counter[11]~55\ $ (GND))) # (!counter(12) & (!\counter[11]~55\ & VCC))
-- \counter[12]~57\ = CARRY((counter(12) & !\counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~55\,
	combout => \counter[12]~56_combout\,
	cout => \counter[12]~57\);

-- Location: FF_X16_Y3_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~56_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X16_Y3_N28
\counter[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[14]~60_combout\ = (counter(14) & (\counter[13]~59\ $ (GND))) # (!counter(14) & (!\counter[13]~59\ & VCC))
-- \counter[14]~61\ = CARRY((counter(14) & !\counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~59\,
	combout => \counter[14]~60_combout\,
	cout => \counter[14]~61\);

-- Location: FF_X16_Y3_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~60_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X16_Y2_N0
\counter[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[16]~64_combout\ = (counter(16) & (\counter[15]~63\ $ (GND))) # (!counter(16) & (!\counter[15]~63\ & VCC))
-- \counter[16]~65\ = CARRY((counter(16) & !\counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~63\,
	combout => \counter[16]~64_combout\,
	cout => \counter[16]~65\);

-- Location: FF_X16_Y2_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~64_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X16_Y2_N2
\counter[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[17]~66_combout\ = (counter(17) & (!\counter[16]~65\)) # (!counter(17) & ((\counter[16]~65\) # (GND)))
-- \counter[17]~67\ = CARRY((!\counter[16]~65\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~65\,
	combout => \counter[17]~66_combout\,
	cout => \counter[17]~67\);

-- Location: FF_X16_Y2_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~66_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X16_Y2_N4
\counter[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[18]~68_combout\ = (counter(18) & (\counter[17]~67\ $ (GND))) # (!counter(18) & (!\counter[17]~67\ & VCC))
-- \counter[18]~69\ = CARRY((counter(18) & !\counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~67\,
	combout => \counter[18]~68_combout\,
	cout => \counter[18]~69\);

-- Location: FF_X16_Y2_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~68_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X16_Y2_N6
\counter[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[19]~70_combout\ = (counter(19) & (!\counter[18]~69\)) # (!counter(19) & ((\counter[18]~69\) # (GND)))
-- \counter[19]~71\ = CARRY((!\counter[18]~69\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~69\,
	combout => \counter[19]~70_combout\,
	cout => \counter[19]~71\);

-- Location: LCCOMB_X16_Y2_N8
\counter[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[20]~72_combout\ = (counter(20) & (\counter[19]~71\ $ (GND))) # (!counter(20) & (!\counter[19]~71\ & VCC))
-- \counter[20]~73\ = CARRY((counter(20) & !\counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~71\,
	combout => \counter[20]~72_combout\,
	cout => \counter[20]~73\);

-- Location: FF_X16_Y2_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~72_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X16_Y2_N14
\counter[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[23]~78_combout\ = (counter(23) & (!\counter[22]~77\)) # (!counter(23) & ((\counter[22]~77\) # (GND)))
-- \counter[23]~79\ = CARRY((!\counter[22]~77\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~77\,
	combout => \counter[23]~78_combout\,
	cout => \counter[23]~79\);

-- Location: FF_X16_Y2_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~78_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X16_Y2_N16
\counter[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[24]~80_combout\ = (counter(24) & (\counter[23]~79\ $ (GND))) # (!counter(24) & (!\counter[23]~79\ & VCC))
-- \counter[24]~81\ = CARRY((counter(24) & !\counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~79\,
	combout => \counter[24]~80_combout\,
	cout => \counter[24]~81\);

-- Location: FF_X16_Y2_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~80_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X16_Y2_N18
\counter[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[25]~82_combout\ = (counter(25) & (!\counter[24]~81\)) # (!counter(25) & ((\counter[24]~81\) # (GND)))
-- \counter[25]~83\ = CARRY((!\counter[24]~81\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~81\,
	combout => \counter[25]~82_combout\,
	cout => \counter[25]~83\);

-- Location: FF_X16_Y2_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~82_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X16_Y2_N20
\counter[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[26]~84_combout\ = (counter(26) & (\counter[25]~83\ $ (GND))) # (!counter(26) & (!\counter[25]~83\ & VCC))
-- \counter[26]~85\ = CARRY((counter(26) & !\counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~83\,
	combout => \counter[26]~84_combout\,
	cout => \counter[26]~85\);

-- Location: FF_X16_Y2_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[26]~84_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: FF_X16_Y2_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[27]~86_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: FF_X16_Y2_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~70_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: FF_X16_Y3_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~54_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X16_Y3_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~44_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X16_Y3_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~42_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X16_Y3_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~38_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X15_Y3_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!counter(1)) # (!counter(0))) # (!counter(3))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(0),
	datad => counter(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y3_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((\LessThan0~0_combout\) # (!counter(4))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datac => counter(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y3_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY(\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~1_combout\,
	datad => VCC,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X15_Y3_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((divisor(6) & ((counter(6)) # (!\LessThan0~3_cout\))) # (!divisor(6) & (counter(6) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => divisor(6),
	datab => counter(6),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X15_Y3_N10
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Add0~2_combout\ & ((!\LessThan0~5_cout\) # (!counter(7)))) # (!\Add0~2_combout\ & (!counter(7) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => counter(7),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X15_Y3_N12
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Add0~4_combout\ & (counter(8) & !\LessThan0~7_cout\)) # (!\Add0~4_combout\ & ((counter(8)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => counter(8),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X15_Y3_N14
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Add0~6_combout\ & ((!\LessThan0~9_cout\) # (!counter(9)))) # (!\Add0~6_combout\ & (!counter(9) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => counter(9),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X15_Y3_N16
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\Add0~8_combout\ & (counter(10) & !\LessThan0~11_cout\)) # (!\Add0~8_combout\ & ((counter(10)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => counter(10),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X15_Y3_N18
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\Add0~10_combout\ & ((!\LessThan0~13_cout\) # (!counter(11)))) # (!\Add0~10_combout\ & (!counter(11) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => counter(11),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X15_Y3_N20
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((counter(12) & ((!\LessThan0~15_cout\) # (!\Add0~12_combout\))) # (!counter(12) & (!\Add0~12_combout\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X15_Y3_N22
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((counter(13) & (\Add0~14_combout\ & !\LessThan0~17_cout\)) # (!counter(13) & ((\Add0~14_combout\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X15_Y3_N24
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((counter(14) & ((!\LessThan0~19_cout\) # (!\Add0~16_combout\))) # (!counter(14) & (!\Add0~16_combout\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X15_Y3_N26
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((counter(15) & (\Add0~18_combout\ & !\LessThan0~21_cout\)) # (!counter(15) & ((\Add0~18_combout\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X15_Y3_N28
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\Add0~20_combout\ & (counter(16) & !\LessThan0~23_cout\)) # (!\Add0~20_combout\ & ((counter(16)) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => counter(16),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X15_Y3_N30
\LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((counter(17) & (\Add0~22_combout\ & !\LessThan0~25_cout\)) # (!counter(17) & ((\Add0~22_combout\) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X15_Y2_N0
\LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\Add0~24_combout\ & (counter(18) & !\LessThan0~27_cout\)) # (!\Add0~24_combout\ & ((counter(18)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => counter(18),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X15_Y2_N2
\LessThan0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\Add0~26_combout\ & ((!\LessThan0~29_cout\) # (!counter(19)))) # (!\Add0~26_combout\ & (!counter(19) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => counter(19),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X15_Y2_N4
\LessThan0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\Add0~28_combout\ & (counter(20) & !\LessThan0~31_cout\)) # (!\Add0~28_combout\ & ((counter(20)) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => counter(20),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X15_Y2_N6
\LessThan0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((counter(21) & (\Add0~30_combout\ & !\LessThan0~33_cout\)) # (!counter(21) & ((\Add0~30_combout\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X15_Y2_N8
\LessThan0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((counter(22) & ((!\LessThan0~35_cout\) # (!\Add0~32_combout\))) # (!counter(22) & (!\Add0~32_combout\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X15_Y2_N10
\LessThan0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\Add0~34_combout\ & ((!\LessThan0~37_cout\) # (!counter(23)))) # (!\Add0~34_combout\ & (!counter(23) & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => counter(23),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X15_Y2_N12
\LessThan0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\Add0~36_combout\ & (counter(24) & !\LessThan0~39_cout\)) # (!\Add0~36_combout\ & ((counter(24)) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => counter(24),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X15_Y2_N14
\LessThan0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\Add0~38_combout\ & ((!\LessThan0~41_cout\) # (!counter(25)))) # (!\Add0~38_combout\ & (!counter(25) & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => counter(25),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X15_Y2_N16
\LessThan0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\Add0~40_combout\ & (counter(26) & !\LessThan0~43_cout\)) # (!\Add0~40_combout\ & ((counter(26)) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => counter(26),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X15_Y2_N18
\LessThan0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\Add0~42_combout\ & ((!\LessThan0~45_cout\) # (!counter(27)))) # (!\Add0~42_combout\ & (!counter(27) & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => counter(27),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X15_Y2_N20
\LessThan0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((counter(28) & ((!\LessThan0~47_cout\) # (!\Add0~44_combout\))) # (!counter(28) & (!\Add0~44_combout\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X15_Y2_N22
\LessThan0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((counter(29) & (\Add0~46_combout\ & !\LessThan0~49_cout\)) # (!counter(29) & ((\Add0~46_combout\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => \Add0~46_combout\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X15_Y2_N24
\LessThan0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((counter(30) & ((!\LessThan0~51_cout\) # (!\Add0~48_combout\))) # (!counter(30) & (!\Add0~48_combout\ & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X15_Y2_N26
\LessThan0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~54_combout\ = (counter(31) & ((!\Add0~50_combout\) # (!\LessThan0~53_cout\))) # (!counter(31) & (!\LessThan0~53_cout\ & !\Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datad => \Add0~50_combout\,
	cin => \LessThan0~53_cout\,
	combout => \LessThan0~54_combout\);

-- Location: LCCOMB_X15_Y2_N30
\new_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_clk~0_combout\ = \LessThan0~54_combout\ $ (!\new_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~54_combout\,
	datad => \new_clk~q\,
	combout => \new_clk~0_combout\);

-- Location: LCCOMB_X15_Y2_N28
\new_clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_clk~feeder_combout\ = \new_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_clk~0_combout\,
	combout => \new_clk~feeder_combout\);

-- Location: FF_X15_Y2_N29
new_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \new_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_clk~q\);

-- Location: CLKCTRL_G10
\new_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \new_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \new_clk~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y26_N1
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: LCCOMB_X1_Y27_N10
\current_state[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[1]~1_combout\ = (\pb1~input_o\ & (current_state(2))) # (!\pb1~input_o\ & ((current_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => current_state(2),
	datad => current_state(0),
	combout => \current_state[1]~1_combout\);

-- Location: IOIBUF_X0_Y27_N1
\LED_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(1),
	o => \LED_data[1]~input_o\);

-- Location: LCCOMB_X1_Y27_N12
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\pb2~input_o\ & !\pb1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb2~input_o\,
	datac => \pb1~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X1_Y27_N22
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (!\pb1~input_o\) # (!\pb2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb2~input_o\,
	datac => \pb1~input_o\,
	combout => \process_1~1_combout\);

-- Location: FF_X1_Y27_N11
\current_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state[1]~1_combout\,
	asdata => \LED_data[1]~input_o\,
	sload => \process_1~0_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(1));

-- Location: LCCOMB_X1_Y27_N28
\current_state[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[2]~2_combout\ = (\pb1~input_o\ & (current_state(3))) # (!\pb1~input_o\ & ((current_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_state(3),
	datab => \pb1~input_o\,
	datad => current_state(1),
	combout => \current_state[2]~2_combout\);

-- Location: IOIBUF_X0_Y25_N22
\LED_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(2),
	o => \LED_data[2]~input_o\);

-- Location: FF_X1_Y27_N29
\current_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state[2]~2_combout\,
	asdata => \LED_data[2]~input_o\,
	sload => \process_1~0_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(2));

-- Location: LCCOMB_X1_Y27_N6
\current_state[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[3]~3_combout\ = (\pb1~input_o\ & (current_state(4))) # (!\pb1~input_o\ & ((current_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => current_state(4),
	datad => current_state(2),
	combout => \current_state[3]~3_combout\);

-- Location: IOIBUF_X0_Y23_N8
\LED_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(3),
	o => \LED_data[3]~input_o\);

-- Location: FF_X1_Y27_N7
\current_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state[3]~3_combout\,
	asdata => \LED_data[3]~input_o\,
	sload => \process_1~0_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(3));

-- Location: LCCOMB_X1_Y27_N8
\current_state[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[4]~4_combout\ = (\pb1~input_o\ & (current_state(5))) # (!\pb1~input_o\ & ((current_state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => current_state(5),
	datad => current_state(3),
	combout => \current_state[4]~4_combout\);

-- Location: IOIBUF_X0_Y27_N22
\LED_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(4),
	o => \LED_data[4]~input_o\);

-- Location: FF_X1_Y27_N9
\current_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state[4]~4_combout\,
	asdata => \LED_data[4]~input_o\,
	sload => \process_1~0_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(4));

-- Location: LCCOMB_X1_Y27_N2
\current_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~5_combout\ = (\pb1~input_o\ & (((current_state(6))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (current_state(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => \pb2~input_o\,
	datac => current_state(4),
	datad => current_state(6),
	combout => \current_state~5_combout\);

-- Location: FF_X1_Y27_N3
\current_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state~5_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(5));

-- Location: LCCOMB_X1_Y27_N4
\current_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~6_combout\ = (\pb1~input_o\ & (((current_state(7))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((current_state(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => \pb2~input_o\,
	datac => current_state(7),
	datad => current_state(5),
	combout => \current_state~6_combout\);

-- Location: FF_X1_Y27_N5
\current_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state~6_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(6));

-- Location: LCCOMB_X1_Y27_N30
\current_state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~7_combout\ = (\pb1~input_o\ & (((current_state(8))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (current_state(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => \pb2~input_o\,
	datac => current_state(6),
	datad => current_state(8),
	combout => \current_state~7_combout\);

-- Location: FF_X1_Y27_N31
\current_state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state~7_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(7));

-- Location: LCCOMB_X1_Y27_N16
\current_state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~8_combout\ = (\pb1~input_o\ & (((current_state(9))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (current_state(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => \pb2~input_o\,
	datac => current_state(7),
	datad => current_state(9),
	combout => \current_state~8_combout\);

-- Location: FF_X1_Y27_N17
\current_state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state~8_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(8));

-- Location: LCCOMB_X1_Y27_N18
\current_state~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~9_combout\ = (\pb1~input_o\ & (((current_state(0))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((current_state(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => \pb2~input_o\,
	datac => current_state(0),
	datad => current_state(8),
	combout => \current_state~9_combout\);

-- Location: FF_X1_Y27_N19
\current_state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state~9_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(9));

-- Location: LCCOMB_X1_Y27_N24
\current_state[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[0]~0_combout\ = (\pb1~input_o\ & (current_state(1))) # (!\pb1~input_o\ & ((current_state(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_state(1),
	datab => \pb1~input_o\,
	datad => current_state(9),
	combout => \current_state[0]~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\LED_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(0),
	o => \LED_data[0]~input_o\);

-- Location: FF_X1_Y27_N25
\current_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_clk~clkctrl_outclk\,
	d => \current_state[0]~0_combout\,
	asdata => \LED_data[0]~input_o\,
	sload => \process_1~0_combout\,
	ena => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_state(0));

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_LEDs(8) <= \LEDs[8]~output_o\;

ww_LEDs(9) <= \LEDs[9]~output_o\;
END structure;


