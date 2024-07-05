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

-- DATE "05/24/2024 12:05:51"

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

ENTITY 	lab12_G06 IS
    PORT (
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	LED_data : IN std_logic_vector(4 DOWNTO 0);
	LEDs : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab12_G06;

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab12_G06 IS
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
SIGNAL ww_LED_data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(9 DOWNTO 0);
SIGNAL \new_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[6]~44_combout\ : std_logic;
SIGNAL \counter[13]~58_combout\ : std_logic;
SIGNAL \counter[19]~70_combout\ : std_logic;
SIGNAL \counter[22]~76_combout\ : std_logic;
SIGNAL \counter[27]~86_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
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
SIGNAL \counter[0]~32_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \counter[21]~74_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \counter[15]~62_combout\ : std_logic;
SIGNAL \counter[11]~54_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \counter[5]~42_combout\ : std_logic;
SIGNAL \counter[3]~38_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
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
SIGNAL \counter[27]~87\ : std_logic;
SIGNAL \counter[28]~88_combout\ : std_logic;
SIGNAL \counter[28]~89\ : std_logic;
SIGNAL \counter[29]~90_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \counter[29]~91\ : std_logic;
SIGNAL \counter[30]~92_combout\ : std_logic;
SIGNAL \counter[30]~93\ : std_logic;
SIGNAL \counter[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \new_clk~0_combout\ : std_logic;
SIGNAL \new_clk~feeder_combout\ : std_logic;
SIGNAL \new_clk~q\ : std_logic;
SIGNAL \new_clk~clkctrl_outclk\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \current_state[2]~2_combout\ : std_logic;
SIGNAL \LED_data[2]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \current_state[1]~1_combout\ : std_logic;
SIGNAL \LED_data[1]~input_o\ : std_logic;
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

BEGIN

ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_LED_data <= LED_data;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\new_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \new_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X38_Y13_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[27]~86_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: FF_X38_Y13_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~76_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: FF_X38_Y13_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~70_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: FF_X38_Y14_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~58_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: FF_X38_Y14_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~44_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X38_Y14_N12
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

-- Location: LCCOMB_X38_Y14_N26
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

-- Location: LCCOMB_X38_Y13_N6
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

-- Location: LCCOMB_X38_Y13_N12
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

-- Location: LCCOMB_X38_Y13_N22
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

-- Location: LCCOMB_X37_Y13_N30
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(19)) # (!counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(20),
	datad => counter(19),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y13_N26
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!counter(11) & (!counter(14) & (!counter(7) & !counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(14),
	datac => counter(7),
	datad => counter(13),
	combout => \LessThan0~9_combout\);

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

-- Location: LCCOMB_X38_Y14_N0
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

-- Location: LCCOMB_X37_Y13_N8
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!counter(17) & (!counter(16) & !counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datac => counter(16),
	datad => counter(18),
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X38_Y13_N10
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

-- Location: FF_X38_Y13_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~74_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X37_Y13_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counter(22) & (!counter(21) & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datac => counter(21),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y14_N30
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

-- Location: FF_X38_Y14_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~62_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X38_Y14_N22
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

-- Location: FF_X38_Y14_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~54_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X37_Y13_N2
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (counter(12) & ((counter(11)) # ((counter(9) & counter(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(12),
	datac => counter(10),
	datad => counter(11),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y13_N14
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!counter(13) & (!counter(14) & !\LessThan0~5_combout\))) # (!counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(14),
	datac => counter(15),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X38_Y14_N10
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

-- Location: FF_X38_Y14_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~42_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X38_Y14_N6
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

-- Location: FF_X38_Y14_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~38_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X37_Y13_N20
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (((!counter(0)) # (!counter(3))) # (!counter(1))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(3),
	datad => counter(0),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X37_Y13_N18
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((\LessThan0~7_combout\) # (!counter(5))) # (!counter(4))) # (!counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(4),
	datac => counter(5),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X37_Y13_N6
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~6_combout\) # ((\LessThan0~9_combout\ & (!counter(8) & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => counter(8),
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X37_Y13_N12
\LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (\LessThan0~3_combout\ & ((\LessThan0~4_combout\) # ((\LessThan0~11_combout\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~11_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~10_combout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X37_Y13_N0
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = (!counter(31) & (!\LessThan0~12_combout\ & ((counter(23)) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => \LessThan0~1_combout\,
	datac => counter(23),
	datad => \LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: FF_X38_Y14_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~32_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X38_Y14_N2
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

-- Location: FF_X38_Y14_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~34_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X38_Y14_N4
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

-- Location: FF_X38_Y14_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~36_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X38_Y14_N8
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

-- Location: FF_X38_Y14_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~40_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X38_Y14_N14
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

-- Location: FF_X38_Y14_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~46_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X38_Y14_N16
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

-- Location: FF_X38_Y14_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~48_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X38_Y14_N18
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

-- Location: FF_X38_Y14_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~50_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X38_Y14_N20
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

-- Location: FF_X38_Y14_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~52_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X38_Y14_N24
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

-- Location: FF_X38_Y14_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~56_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X38_Y14_N28
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

-- Location: FF_X38_Y14_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~60_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X38_Y13_N0
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

-- Location: FF_X38_Y13_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~64_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X38_Y13_N2
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

-- Location: FF_X38_Y13_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~66_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X38_Y13_N4
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

-- Location: FF_X38_Y13_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~68_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X38_Y13_N8
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

-- Location: FF_X38_Y13_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~72_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X38_Y13_N14
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

-- Location: FF_X38_Y13_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~78_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X38_Y13_N16
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

-- Location: FF_X38_Y13_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~80_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X38_Y13_N18
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

-- Location: FF_X38_Y13_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~82_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X38_Y13_N20
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

-- Location: FF_X38_Y13_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[26]~84_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X38_Y13_N24
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

-- Location: FF_X38_Y13_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[28]~88_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X38_Y13_N26
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

-- Location: FF_X38_Y13_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[29]~90_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X37_Y13_N16
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(27) & (!counter(24) & (!counter(26) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datab => counter(24),
	datac => counter(26),
	datad => counter(25),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y13_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(30) & (!counter(28) & (!counter(29) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datab => counter(28),
	datac => counter(29),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y13_N28
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

-- Location: FF_X38_Y13_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[30]~92_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X38_Y13_N30
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

-- Location: FF_X38_Y13_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[31]~94_combout\,
	sclr => \LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X37_Y13_N22
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter(31)) # ((!counter(23) & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => \LessThan0~1_combout\,
	datad => counter(31),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y13_N24
\new_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_clk~0_combout\ = \new_clk~q\ $ (((!\LessThan0~2_combout\ & !\LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_clk~q\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~12_combout\,
	combout => \new_clk~0_combout\);

-- Location: LCCOMB_X37_Y13_N10
\new_clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_clk~feeder_combout\ = \new_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \new_clk~0_combout\,
	combout => \new_clk~feeder_combout\);

-- Location: FF_X37_Y13_N11
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

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X1_Y25_N28
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

-- Location: LCCOMB_X1_Y25_N12
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\pb2~input_o\ & !\pb1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datad => \pb1~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X1_Y25_N30
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (!\pb1~input_o\) # (!\pb2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datad => \pb1~input_o\,
	combout => \process_1~1_combout\);

-- Location: FF_X1_Y25_N29
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

-- Location: LCCOMB_X1_Y25_N18
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

-- Location: FF_X1_Y25_N19
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

-- Location: LCCOMB_X1_Y25_N6
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

-- Location: FF_X1_Y25_N7
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

-- Location: LCCOMB_X1_Y25_N0
\current_state[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[4]~4_combout\ = (\pb1~input_o\ & (current_state(5))) # (!\pb1~input_o\ & ((current_state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_state(5),
	datab => \pb1~input_o\,
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

-- Location: FF_X1_Y25_N1
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

-- Location: LCCOMB_X1_Y25_N26
\current_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~5_combout\ = (\pb1~input_o\ & (((current_state(6))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((current_state(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \pb1~input_o\,
	datac => current_state(6),
	datad => current_state(4),
	combout => \current_state~5_combout\);

-- Location: FF_X1_Y25_N27
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

-- Location: LCCOMB_X1_Y25_N4
\current_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~6_combout\ = (\pb1~input_o\ & (((current_state(7))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (current_state(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \pb1~input_o\,
	datac => current_state(5),
	datad => current_state(7),
	combout => \current_state~6_combout\);

-- Location: FF_X1_Y25_N5
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

-- Location: LCCOMB_X1_Y25_N22
\current_state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~7_combout\ = (\pb1~input_o\ & (((current_state(8))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (current_state(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \pb1~input_o\,
	datac => current_state(6),
	datad => current_state(8),
	combout => \current_state~7_combout\);

-- Location: FF_X1_Y25_N23
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

-- Location: LCCOMB_X1_Y25_N16
\current_state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~8_combout\ = (\pb1~input_o\ & (((current_state(9))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (current_state(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \pb1~input_o\,
	datac => current_state(7),
	datad => current_state(9),
	combout => \current_state~8_combout\);

-- Location: FF_X1_Y25_N17
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

-- Location: LCCOMB_X1_Y25_N10
\current_state~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state~9_combout\ = (\pb1~input_o\ & (((current_state(0))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((current_state(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => current_state(0),
	datac => \pb1~input_o\,
	datad => current_state(8),
	combout => \current_state~9_combout\);

-- Location: FF_X1_Y25_N11
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

-- Location: LCCOMB_X1_Y25_N24
\current_state[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state[0]~0_combout\ = (\pb1~input_o\ & (current_state(1))) # (!\pb1~input_o\ & ((current_state(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => current_state(1),
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

-- Location: FF_X1_Y25_N25
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


