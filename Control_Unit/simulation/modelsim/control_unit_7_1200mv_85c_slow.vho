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

-- DATE "03/30/2021 10:15:43"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
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

ENTITY 	control_unit IS
    PORT (
	IR : IN std_logic_vector(7 DOWNTO 0);
	CCR_Result : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	Bus1_Sel : OUT std_logic_vector(1 DOWNTO 0);
	Bus2_Sel : OUT std_logic_vector(1 DOWNTO 0);
	ALU_Sel : OUT std_logic_vector(2 DOWNTO 0);
	IR_Load : OUT std_logic;
	MAR_Load : OUT std_logic;
	PC_Load : OUT std_logic;
	PC_Inc : OUT std_logic;
	A_Load : OUT std_logic;
	B_Load : OUT std_logic;
	CCR_Load : OUT std_logic;
	writen : OUT std_logic
	);
END control_unit;

-- Design Ports Information
-- IR[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Result[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus1_Sel[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus2_Sel[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_Load	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_Load	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Load	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Inc	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_Load	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_Load	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCR_Load	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writen	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CCR_Result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Bus1_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Bus2_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IR_Load : std_logic;
SIGNAL ww_MAR_Load : std_logic;
SIGNAL ww_PC_Load : std_logic;
SIGNAL ww_PC_Inc : std_logic;
SIGNAL ww_A_Load : std_logic;
SIGNAL ww_B_Load : std_logic;
SIGNAL ww_CCR_Load : std_logic;
SIGNAL ww_writen : std_logic;
SIGNAL \WideNor0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \IR[2]~input_o\ : std_logic;
SIGNAL \IR[3]~input_o\ : std_logic;
SIGNAL \IR[4]~input_o\ : std_logic;
SIGNAL \IR[5]~input_o\ : std_logic;
SIGNAL \IR[6]~input_o\ : std_logic;
SIGNAL \IR[7]~input_o\ : std_logic;
SIGNAL \CCR_Result[0]~input_o\ : std_logic;
SIGNAL \CCR_Result[1]~input_o\ : std_logic;
SIGNAL \CCR_Result[2]~input_o\ : std_logic;
SIGNAL \CCR_Result[3]~input_o\ : std_logic;
SIGNAL \Bus1_Sel[0]~output_o\ : std_logic;
SIGNAL \Bus1_Sel[1]~output_o\ : std_logic;
SIGNAL \Bus2_Sel[0]~output_o\ : std_logic;
SIGNAL \Bus2_Sel[1]~output_o\ : std_logic;
SIGNAL \ALU_Sel[0]~output_o\ : std_logic;
SIGNAL \ALU_Sel[1]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~output_o\ : std_logic;
SIGNAL \IR_Load~output_o\ : std_logic;
SIGNAL \MAR_Load~output_o\ : std_logic;
SIGNAL \PC_Load~output_o\ : std_logic;
SIGNAL \PC_Inc~output_o\ : std_logic;
SIGNAL \A_Load~output_o\ : std_logic;
SIGNAL \B_Load~output_o\ : std_logic;
SIGNAL \CCR_Load~output_o\ : std_logic;
SIGNAL \writen~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \next_state.S_DECODE_3_853~combout\ : std_logic;
SIGNAL \current_state.S_DECODE_3~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.S_DECODE_3~q\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \next_state.S_FETCH_2_862~combout\ : std_logic;
SIGNAL \current_state.S_FETCH_2~q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \next_state.S_FETCH_0_880~combout\ : std_logic;
SIGNAL \current_state.S_FETCH_0~0_combout\ : std_logic;
SIGNAL \current_state.S_FETCH_0~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \next_state.S_FETCH_1_871~combout\ : std_logic;
SIGNAL \current_state.S_FETCH_1~feeder_combout\ : std_logic;
SIGNAL \current_state.S_FETCH_1~q\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \WideNor0~clkctrl_outclk\ : std_logic;
SIGNAL \Bus2_Sel[0]$latch~combout\ : std_logic;
SIGNAL \PC_Inc$latch~combout\ : std_logic;

BEGIN

ww_IR <= IR;
ww_CCR_Result <= CCR_Result;
ww_clock <= clock;
ww_reset <= reset;
Bus1_Sel <= ww_Bus1_Sel;
Bus2_Sel <= ww_Bus2_Sel;
ALU_Sel <= ww_ALU_Sel;
IR_Load <= ww_IR_Load;
MAR_Load <= ww_MAR_Load;
PC_Load <= ww_PC_Load;
PC_Inc <= ww_PC_Inc;
A_Load <= ww_A_Load;
B_Load <= ww_B_Load;
CCR_Load <= ww_CCR_Load;
writen <= ww_writen;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\WideNor0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideNor0~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X13_Y0_N2
\Bus1_Sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Bus1_Sel[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Bus1_Sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Bus1_Sel[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Bus2_Sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bus2_Sel[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Bus2_Sel[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\Bus2_Sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Bus2_Sel[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ALU_Sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Sel[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\ALU_Sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Sel[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\ALU_Sel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_Sel[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\IR_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IR_Load~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\MAR_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bus2_Sel[0]$latch~combout\,
	devoe => ww_devoe,
	o => \MAR_Load~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\PC_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_Load~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\PC_Inc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_Inc$latch~combout\,
	devoe => ww_devoe,
	o => \PC_Inc~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\A_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A_Load~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\B_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B_Load~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\CCR_Load~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CCR_Load~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\writen~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writen~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N22
\comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\current_state.S_FETCH_2~q\ & (((\current_state.S_DECODE_3~q\) # (\current_state.S_FETCH_1~q\)) # (!\current_state.S_FETCH_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_2~q\,
	datab => \current_state.S_FETCH_0~q\,
	datac => \current_state.S_DECODE_3~q\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X1_Y11_N6
\next_state.S_DECODE_3_853\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_DECODE_3_853~combout\ = (!\comb~4_combout\ & ((\current_state.S_FETCH_2~q\) # (\next_state.S_DECODE_3_853~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_2~q\,
	datac => \comb~4_combout\,
	datad => \next_state.S_DECODE_3_853~combout\,
	combout => \next_state.S_DECODE_3_853~combout\);

-- Location: LCCOMB_X1_Y11_N26
\current_state.S_DECODE_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.S_DECODE_3~feeder_combout\ = \next_state.S_DECODE_3_853~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.S_DECODE_3_853~combout\,
	combout => \current_state.S_DECODE_3~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y11_N27
\current_state.S_DECODE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \current_state.S_DECODE_3~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_DECODE_3~q\);

-- Location: LCCOMB_X1_Y11_N14
\comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ((!\current_state.S_FETCH_1~q\ & ((\current_state.S_FETCH_2~q\) # (\current_state.S_DECODE_3~q\)))) # (!\current_state.S_FETCH_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_2~q\,
	datab => \current_state.S_FETCH_0~q\,
	datac => \current_state.S_DECODE_3~q\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X1_Y11_N28
\next_state.S_FETCH_2_862\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_2_862~combout\ = (!\comb~3_combout\ & ((\current_state.S_FETCH_1~q\) # (\next_state.S_FETCH_2_862~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_1~q\,
	datac => \comb~3_combout\,
	datad => \next_state.S_FETCH_2_862~combout\,
	combout => \next_state.S_FETCH_2_862~combout\);

-- Location: FF_X1_Y11_N1
\current_state.S_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \next_state.S_FETCH_2_862~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_2~q\);

-- Location: LCCOMB_X1_Y11_N30
\comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\current_state.S_FETCH_2~q\ & ((\current_state.S_FETCH_0~q\ & (\current_state.S_DECODE_3~q\ & !\current_state.S_FETCH_1~q\)) # (!\current_state.S_FETCH_0~q\ & ((\current_state.S_FETCH_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_2~q\,
	datab => \current_state.S_FETCH_0~q\,
	datac => \current_state.S_DECODE_3~q\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X1_Y11_N20
\comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\current_state.S_FETCH_2~q\) # (\current_state.S_FETCH_0~q\ $ (!\current_state.S_FETCH_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_2~q\,
	datab => \current_state.S_FETCH_0~q\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X1_Y11_N2
\next_state.S_FETCH_0_880\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_0_880~combout\ = (!\comb~1_combout\ & ((\comb~2_combout\) # (\next_state.S_FETCH_0_880~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datac => \comb~1_combout\,
	datad => \next_state.S_FETCH_0_880~combout\,
	combout => \next_state.S_FETCH_0_880~combout\);

-- Location: LCCOMB_X1_Y11_N16
\current_state.S_FETCH_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.S_FETCH_0~0_combout\ = !\next_state.S_FETCH_0_880~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.S_FETCH_0_880~combout\,
	combout => \current_state.S_FETCH_0~0_combout\);

-- Location: FF_X1_Y11_N17
\current_state.S_FETCH_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \current_state.S_FETCH_0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_0~q\);

-- Location: LCCOMB_X1_Y11_N18
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\current_state.S_FETCH_0~q\ & ((\current_state.S_FETCH_2~q\) # ((\current_state.S_DECODE_3~q\) # (\current_state.S_FETCH_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S_FETCH_2~q\,
	datab => \current_state.S_FETCH_0~q\,
	datac => \current_state.S_DECODE_3~q\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\next_state.S_FETCH_1_871\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.S_FETCH_1_871~combout\ = (!\comb~0_combout\ & ((\next_state.S_FETCH_1_871~combout\) # (!\current_state.S_FETCH_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_FETCH_0~q\,
	datac => \comb~0_combout\,
	datad => \next_state.S_FETCH_1_871~combout\,
	combout => \next_state.S_FETCH_1_871~combout\);

-- Location: LCCOMB_X1_Y11_N8
\current_state.S_FETCH_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.S_FETCH_1~feeder_combout\ = \next_state.S_FETCH_1_871~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.S_FETCH_1_871~combout\,
	combout => \current_state.S_FETCH_1~feeder_combout\);

-- Location: FF_X1_Y11_N9
\current_state.S_FETCH_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \current_state.S_FETCH_1~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.S_FETCH_1~q\);

-- Location: LCCOMB_X1_Y11_N12
WideNor0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\current_state.S_FETCH_1~q\) # (!\current_state.S_FETCH_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.S_FETCH_1~q\,
	datad => \current_state.S_FETCH_0~q\,
	combout => \WideNor0~combout\);

-- Location: CLKCTRL_G1
\WideNor0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideNor0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideNor0~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N0
\Bus2_Sel[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bus2_Sel[0]$latch~combout\ = (GLOBAL(\WideNor0~clkctrl_outclk\) & ((!\current_state.S_FETCH_1~q\))) # (!GLOBAL(\WideNor0~clkctrl_outclk\) & (\Bus2_Sel[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~clkctrl_outclk\,
	datab => \Bus2_Sel[0]$latch~combout\,
	datad => \current_state.S_FETCH_1~q\,
	combout => \Bus2_Sel[0]$latch~combout\);

-- Location: LCCOMB_X1_Y11_N10
\PC_Inc$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC_Inc$latch~combout\ = (GLOBAL(\WideNor0~clkctrl_outclk\) & (\current_state.S_FETCH_1~q\)) # (!GLOBAL(\WideNor0~clkctrl_outclk\) & ((\PC_Inc$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.S_FETCH_1~q\,
	datac => \WideNor0~clkctrl_outclk\,
	datad => \PC_Inc$latch~combout\,
	combout => \PC_Inc$latch~combout\);

-- Location: IOIBUF_X5_Y0_N15
\IR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\IR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\IR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(2),
	o => \IR[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\IR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(3),
	o => \IR[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\IR[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(4),
	o => \IR[4]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\IR[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(5),
	o => \IR[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\IR[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(6),
	o => \IR[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\IR[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(7),
	o => \IR[7]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\CCR_Result[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(0),
	o => \CCR_Result[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\CCR_Result[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(1),
	o => \CCR_Result[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\CCR_Result[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(2),
	o => \CCR_Result[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\CCR_Result[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCR_Result(3),
	o => \CCR_Result[3]~input_o\);

ww_Bus1_Sel(0) <= \Bus1_Sel[0]~output_o\;

ww_Bus1_Sel(1) <= \Bus1_Sel[1]~output_o\;

ww_Bus2_Sel(0) <= \Bus2_Sel[0]~output_o\;

ww_Bus2_Sel(1) <= \Bus2_Sel[1]~output_o\;

ww_ALU_Sel(0) <= \ALU_Sel[0]~output_o\;

ww_ALU_Sel(1) <= \ALU_Sel[1]~output_o\;

ww_ALU_Sel(2) <= \ALU_Sel[2]~output_o\;

ww_IR_Load <= \IR_Load~output_o\;

ww_MAR_Load <= \MAR_Load~output_o\;

ww_PC_Load <= \PC_Load~output_o\;

ww_PC_Inc <= \PC_Inc~output_o\;

ww_A_Load <= \A_Load~output_o\;

ww_B_Load <= \B_Load~output_o\;

ww_CCR_Load <= \CCR_Load~output_o\;

ww_writen <= \writen~output_o\;
END structure;


