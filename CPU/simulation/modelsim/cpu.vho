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

-- DATE "03/31/2021 07:50:57"

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

ENTITY 	cpu IS
    PORT (
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	to_memory : BUFFER std_logic_vector(7 DOWNTO 0);
	address : BUFFER std_logic_vector(7 DOWNTO 0);
	writen : BUFFER std_logic
	);
END cpu;

-- Design Ports Information
-- from_memory[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[1]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[4]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[6]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[4]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[7]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writen	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_writen : std_logic;
SIGNAL \U1|WideNor0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \from_memory[0]~input_o\ : std_logic;
SIGNAL \from_memory[1]~input_o\ : std_logic;
SIGNAL \from_memory[2]~input_o\ : std_logic;
SIGNAL \from_memory[3]~input_o\ : std_logic;
SIGNAL \from_memory[4]~input_o\ : std_logic;
SIGNAL \from_memory[5]~input_o\ : std_logic;
SIGNAL \from_memory[6]~input_o\ : std_logic;
SIGNAL \from_memory[7]~input_o\ : std_logic;
SIGNAL \to_memory[0]~output_o\ : std_logic;
SIGNAL \to_memory[1]~output_o\ : std_logic;
SIGNAL \to_memory[2]~output_o\ : std_logic;
SIGNAL \to_memory[3]~output_o\ : std_logic;
SIGNAL \to_memory[4]~output_o\ : std_logic;
SIGNAL \to_memory[5]~output_o\ : std_logic;
SIGNAL \to_memory[6]~output_o\ : std_logic;
SIGNAL \to_memory[7]~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \writen~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|comb~3_combout\ : std_logic;
SIGNAL \U1|next_state.S_FETCH_2_862~combout\ : std_logic;
SIGNAL \U1|current_state.S_FETCH_2~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|current_state.S_FETCH_2~q\ : std_logic;
SIGNAL \U1|comb~4_combout\ : std_logic;
SIGNAL \U1|next_state.S_DECODE_3_853~combout\ : std_logic;
SIGNAL \U1|current_state.S_DECODE_3~feeder_combout\ : std_logic;
SIGNAL \U1|current_state.S_DECODE_3~q\ : std_logic;
SIGNAL \U1|comb~2_combout\ : std_logic;
SIGNAL \U1|comb~1_combout\ : std_logic;
SIGNAL \U1|next_state.S_FETCH_0_880~combout\ : std_logic;
SIGNAL \U1|current_state.S_FETCH_0~0_combout\ : std_logic;
SIGNAL \U1|current_state.S_FETCH_0~q\ : std_logic;
SIGNAL \U1|comb~0_combout\ : std_logic;
SIGNAL \U1|next_state.S_FETCH_1_871~combout\ : std_logic;
SIGNAL \U1|current_state.S_FETCH_1~feeder_combout\ : std_logic;
SIGNAL \U1|current_state.S_FETCH_1~q\ : std_logic;
SIGNAL \U1|WideNor0~combout\ : std_logic;
SIGNAL \U1|WideNor0~clkctrl_outclk\ : std_logic;
SIGNAL \U1|PC_Inc~combout\ : std_logic;
SIGNAL \U2|PC_uns[0]~7_combout\ : std_logic;
SIGNAL \U2|PC_uns[1]~8_combout\ : std_logic;
SIGNAL \U2|PC_uns[1]~9\ : std_logic;
SIGNAL \U2|PC_uns[2]~10_combout\ : std_logic;
SIGNAL \U2|PC_uns[2]~11\ : std_logic;
SIGNAL \U2|PC_uns[3]~12_combout\ : std_logic;
SIGNAL \U2|PC_uns[3]~13\ : std_logic;
SIGNAL \U2|PC_uns[4]~14_combout\ : std_logic;
SIGNAL \U2|PC_uns[4]~15\ : std_logic;
SIGNAL \U2|PC_uns[5]~16_combout\ : std_logic;
SIGNAL \U2|PC_uns[5]~17\ : std_logic;
SIGNAL \U2|PC_uns[6]~18_combout\ : std_logic;
SIGNAL \U2|PC_uns[6]~19\ : std_logic;
SIGNAL \U2|PC_uns[7]~20_combout\ : std_logic;
SIGNAL \U2|MAR[1]~feeder_combout\ : std_logic;
SIGNAL \U2|MAR[2]~feeder_combout\ : std_logic;
SIGNAL \U2|MAR[3]~feeder_combout\ : std_logic;
SIGNAL \U2|MAR[4]~feeder_combout\ : std_logic;
SIGNAL \U2|MAR[5]~feeder_combout\ : std_logic;
SIGNAL \U2|MAR[6]~feeder_combout\ : std_logic;
SIGNAL \U2|MAR[7]~feeder_combout\ : std_logic;
SIGNAL \U1|Bus2_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|PC_uns\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|MAR\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_from_memory <= from_memory;
ww_clock <= clock;
ww_reset <= reset;
to_memory <= ww_to_memory;
address <= ww_address;
writen <= ww_writen;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|WideNor0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|WideNor0~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X25_Y0_N2
\to_memory[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(0),
	devoe => ww_devoe,
	o => \to_memory[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\to_memory[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(1),
	devoe => ww_devoe,
	o => \to_memory[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\to_memory[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(2),
	devoe => ww_devoe,
	o => \to_memory[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\to_memory[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(3),
	devoe => ww_devoe,
	o => \to_memory[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\to_memory[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(4),
	devoe => ww_devoe,
	o => \to_memory[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\to_memory[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(5),
	devoe => ww_devoe,
	o => \to_memory[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\to_memory[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(6),
	devoe => ww_devoe,
	o => \to_memory[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\to_memory[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC_uns\(7),
	devoe => ww_devoe,
	o => \to_memory[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\address[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\address[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MAR\(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: LCCOMB_X21_Y2_N28
\U1|comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|comb~3_combout\ = ((!\U1|current_state.S_FETCH_1~q\ & ((\U1|current_state.S_DECODE_3~q\) # (\U1|current_state.S_FETCH_2~q\)))) # (!\U1|current_state.S_FETCH_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datab => \U1|current_state.S_FETCH_0~q\,
	datac => \U1|current_state.S_DECODE_3~q\,
	datad => \U1|current_state.S_FETCH_2~q\,
	combout => \U1|comb~3_combout\);

-- Location: LCCOMB_X21_Y2_N18
\U1|next_state.S_FETCH_2_862\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|next_state.S_FETCH_2_862~combout\ = (!\U1|comb~3_combout\ & ((\U1|current_state.S_FETCH_1~q\) # (\U1|next_state.S_FETCH_2_862~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datab => \U1|comb~3_combout\,
	datad => \U1|next_state.S_FETCH_2_862~combout\,
	combout => \U1|next_state.S_FETCH_2_862~combout\);

-- Location: LCCOMB_X21_Y2_N10
\U1|current_state.S_FETCH_2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|current_state.S_FETCH_2~feeder_combout\ = \U1|next_state.S_FETCH_2_862~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|next_state.S_FETCH_2_862~combout\,
	combout => \U1|current_state.S_FETCH_2~feeder_combout\);

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

-- Location: FF_X21_Y2_N11
\U1|current_state.S_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U1|current_state.S_FETCH_2~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|current_state.S_FETCH_2~q\);

-- Location: LCCOMB_X21_Y2_N22
\U1|comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|comb~4_combout\ = (!\U1|current_state.S_FETCH_2~q\ & ((\U1|current_state.S_FETCH_1~q\) # ((\U1|current_state.S_DECODE_3~q\) # (!\U1|current_state.S_FETCH_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datab => \U1|current_state.S_FETCH_0~q\,
	datac => \U1|current_state.S_DECODE_3~q\,
	datad => \U1|current_state.S_FETCH_2~q\,
	combout => \U1|comb~4_combout\);

-- Location: LCCOMB_X21_Y2_N24
\U1|next_state.S_DECODE_3_853\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|next_state.S_DECODE_3_853~combout\ = (!\U1|comb~4_combout\ & ((\U1|current_state.S_FETCH_2~q\) # (\U1|next_state.S_DECODE_3_853~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_2~q\,
	datac => \U1|comb~4_combout\,
	datad => \U1|next_state.S_DECODE_3_853~combout\,
	combout => \U1|next_state.S_DECODE_3_853~combout\);

-- Location: LCCOMB_X21_Y2_N20
\U1|current_state.S_DECODE_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|current_state.S_DECODE_3~feeder_combout\ = \U1|next_state.S_DECODE_3_853~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|next_state.S_DECODE_3_853~combout\,
	combout => \U1|current_state.S_DECODE_3~feeder_combout\);

-- Location: FF_X21_Y2_N21
\U1|current_state.S_DECODE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U1|current_state.S_DECODE_3~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|current_state.S_DECODE_3~q\);

-- Location: LCCOMB_X21_Y2_N30
\U1|comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|comb~2_combout\ = (!\U1|current_state.S_FETCH_2~q\ & ((\U1|current_state.S_FETCH_1~q\ & (!\U1|current_state.S_FETCH_0~q\)) # (!\U1|current_state.S_FETCH_1~q\ & (\U1|current_state.S_FETCH_0~q\ & \U1|current_state.S_DECODE_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datab => \U1|current_state.S_FETCH_0~q\,
	datac => \U1|current_state.S_DECODE_3~q\,
	datad => \U1|current_state.S_FETCH_2~q\,
	combout => \U1|comb~2_combout\);

-- Location: LCCOMB_X21_Y2_N14
\U1|comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|comb~1_combout\ = (\U1|current_state.S_FETCH_2~q\) # (\U1|current_state.S_FETCH_1~q\ $ (!\U1|current_state.S_FETCH_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datac => \U1|current_state.S_FETCH_0~q\,
	datad => \U1|current_state.S_FETCH_2~q\,
	combout => \U1|comb~1_combout\);

-- Location: LCCOMB_X21_Y2_N16
\U1|next_state.S_FETCH_0_880\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|next_state.S_FETCH_0_880~combout\ = (!\U1|comb~1_combout\ & ((\U1|comb~2_combout\) # (\U1|next_state.S_FETCH_0_880~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|comb~2_combout\,
	datac => \U1|comb~1_combout\,
	datad => \U1|next_state.S_FETCH_0_880~combout\,
	combout => \U1|next_state.S_FETCH_0_880~combout\);

-- Location: LCCOMB_X21_Y2_N6
\U1|current_state.S_FETCH_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|current_state.S_FETCH_0~0_combout\ = !\U1|next_state.S_FETCH_0_880~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|next_state.S_FETCH_0_880~combout\,
	combout => \U1|current_state.S_FETCH_0~0_combout\);

-- Location: FF_X21_Y2_N7
\U1|current_state.S_FETCH_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U1|current_state.S_FETCH_0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|current_state.S_FETCH_0~q\);

-- Location: LCCOMB_X21_Y2_N26
\U1|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|comb~0_combout\ = (\U1|current_state.S_FETCH_0~q\ & ((\U1|current_state.S_FETCH_1~q\) # ((\U1|current_state.S_DECODE_3~q\) # (\U1|current_state.S_FETCH_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datab => \U1|current_state.S_FETCH_0~q\,
	datac => \U1|current_state.S_DECODE_3~q\,
	datad => \U1|current_state.S_FETCH_2~q\,
	combout => \U1|comb~0_combout\);

-- Location: LCCOMB_X22_Y2_N20
\U1|next_state.S_FETCH_1_871\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|next_state.S_FETCH_1_871~combout\ = (!\U1|comb~0_combout\ & ((\U1|next_state.S_FETCH_1_871~combout\) # (!\U1|current_state.S_FETCH_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|current_state.S_FETCH_0~q\,
	datac => \U1|comb~0_combout\,
	datad => \U1|next_state.S_FETCH_1_871~combout\,
	combout => \U1|next_state.S_FETCH_1_871~combout\);

-- Location: LCCOMB_X22_Y2_N6
\U1|current_state.S_FETCH_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|current_state.S_FETCH_1~feeder_combout\ = \U1|next_state.S_FETCH_1_871~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|next_state.S_FETCH_1_871~combout\,
	combout => \U1|current_state.S_FETCH_1~feeder_combout\);

-- Location: FF_X22_Y2_N7
\U1|current_state.S_FETCH_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \U1|current_state.S_FETCH_1~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|current_state.S_FETCH_1~q\);

-- Location: LCCOMB_X22_Y2_N28
\U1|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|WideNor0~combout\ = (\U1|current_state.S_FETCH_1~q\) # (!\U1|current_state.S_FETCH_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|current_state.S_FETCH_0~q\,
	datad => \U1|current_state.S_FETCH_1~q\,
	combout => \U1|WideNor0~combout\);

-- Location: CLKCTRL_G5
\U1|WideNor0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|WideNor0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|WideNor0~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y2_N10
\U1|PC_Inc\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|PC_Inc~combout\ = (GLOBAL(\U1|WideNor0~clkctrl_outclk\) & ((\U1|current_state.S_FETCH_1~q\))) # (!GLOBAL(\U1|WideNor0~clkctrl_outclk\) & (\U1|PC_Inc~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PC_Inc~combout\,
	datac => \U1|current_state.S_FETCH_1~q\,
	datad => \U1|WideNor0~clkctrl_outclk\,
	combout => \U1|PC_Inc~combout\);

-- Location: LCCOMB_X23_Y2_N0
\U2|PC_uns[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[0]~7_combout\ = \U2|PC_uns\(0) $ (\U1|PC_Inc~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|PC_uns\(0),
	datad => \U1|PC_Inc~combout\,
	combout => \U2|PC_uns[0]~7_combout\);

-- Location: FF_X23_Y2_N1
\U2|PC_uns[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[0]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(0));

-- Location: LCCOMB_X23_Y2_N12
\U2|PC_uns[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[1]~8_combout\ = (\U2|PC_uns\(1) & (\U2|PC_uns\(0) $ (VCC))) # (!\U2|PC_uns\(1) & (\U2|PC_uns\(0) & VCC))
-- \U2|PC_uns[1]~9\ = CARRY((\U2|PC_uns\(1) & \U2|PC_uns\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|PC_uns\(1),
	datab => \U2|PC_uns\(0),
	datad => VCC,
	combout => \U2|PC_uns[1]~8_combout\,
	cout => \U2|PC_uns[1]~9\);

-- Location: FF_X23_Y2_N13
\U2|PC_uns[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[1]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(1));

-- Location: LCCOMB_X23_Y2_N14
\U2|PC_uns[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[2]~10_combout\ = (\U2|PC_uns\(2) & (!\U2|PC_uns[1]~9\)) # (!\U2|PC_uns\(2) & ((\U2|PC_uns[1]~9\) # (GND)))
-- \U2|PC_uns[2]~11\ = CARRY((!\U2|PC_uns[1]~9\) # (!\U2|PC_uns\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|PC_uns\(2),
	datad => VCC,
	cin => \U2|PC_uns[1]~9\,
	combout => \U2|PC_uns[2]~10_combout\,
	cout => \U2|PC_uns[2]~11\);

-- Location: FF_X23_Y2_N15
\U2|PC_uns[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[2]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(2));

-- Location: LCCOMB_X23_Y2_N16
\U2|PC_uns[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[3]~12_combout\ = (\U2|PC_uns\(3) & (\U2|PC_uns[2]~11\ $ (GND))) # (!\U2|PC_uns\(3) & (!\U2|PC_uns[2]~11\ & VCC))
-- \U2|PC_uns[3]~13\ = CARRY((\U2|PC_uns\(3) & !\U2|PC_uns[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|PC_uns\(3),
	datad => VCC,
	cin => \U2|PC_uns[2]~11\,
	combout => \U2|PC_uns[3]~12_combout\,
	cout => \U2|PC_uns[3]~13\);

-- Location: FF_X23_Y2_N17
\U2|PC_uns[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[3]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(3));

-- Location: LCCOMB_X23_Y2_N18
\U2|PC_uns[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[4]~14_combout\ = (\U2|PC_uns\(4) & (!\U2|PC_uns[3]~13\)) # (!\U2|PC_uns\(4) & ((\U2|PC_uns[3]~13\) # (GND)))
-- \U2|PC_uns[4]~15\ = CARRY((!\U2|PC_uns[3]~13\) # (!\U2|PC_uns\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|PC_uns\(4),
	datad => VCC,
	cin => \U2|PC_uns[3]~13\,
	combout => \U2|PC_uns[4]~14_combout\,
	cout => \U2|PC_uns[4]~15\);

-- Location: FF_X23_Y2_N19
\U2|PC_uns[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[4]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(4));

-- Location: LCCOMB_X23_Y2_N20
\U2|PC_uns[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[5]~16_combout\ = (\U2|PC_uns\(5) & (\U2|PC_uns[4]~15\ $ (GND))) # (!\U2|PC_uns\(5) & (!\U2|PC_uns[4]~15\ & VCC))
-- \U2|PC_uns[5]~17\ = CARRY((\U2|PC_uns\(5) & !\U2|PC_uns[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|PC_uns\(5),
	datad => VCC,
	cin => \U2|PC_uns[4]~15\,
	combout => \U2|PC_uns[5]~16_combout\,
	cout => \U2|PC_uns[5]~17\);

-- Location: FF_X23_Y2_N21
\U2|PC_uns[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[5]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(5));

-- Location: LCCOMB_X23_Y2_N22
\U2|PC_uns[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[6]~18_combout\ = (\U2|PC_uns\(6) & (!\U2|PC_uns[5]~17\)) # (!\U2|PC_uns\(6) & ((\U2|PC_uns[5]~17\) # (GND)))
-- \U2|PC_uns[6]~19\ = CARRY((!\U2|PC_uns[5]~17\) # (!\U2|PC_uns\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|PC_uns\(6),
	datad => VCC,
	cin => \U2|PC_uns[5]~17\,
	combout => \U2|PC_uns[6]~18_combout\,
	cout => \U2|PC_uns[6]~19\);

-- Location: FF_X23_Y2_N23
\U2|PC_uns[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[6]~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(6));

-- Location: LCCOMB_X23_Y2_N24
\U2|PC_uns[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|PC_uns[7]~20_combout\ = \U2|PC_uns[6]~19\ $ (!\U2|PC_uns\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|PC_uns\(7),
	cin => \U2|PC_uns[6]~19\,
	combout => \U2|PC_uns[7]~20_combout\);

-- Location: FF_X23_Y2_N25
\U2|PC_uns[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|PC_uns[7]~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|PC_uns\(7));

-- Location: LCCOMB_X22_Y2_N18
\U1|Bus2_Sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Bus2_Sel\(0) = (GLOBAL(\U1|WideNor0~clkctrl_outclk\) & (!\U1|current_state.S_FETCH_1~q\)) # (!GLOBAL(\U1|WideNor0~clkctrl_outclk\) & ((\U1|Bus2_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|current_state.S_FETCH_1~q\,
	datab => \U1|Bus2_Sel\(0),
	datad => \U1|WideNor0~clkctrl_outclk\,
	combout => \U1|Bus2_Sel\(0));

-- Location: FF_X22_Y2_N19
\U2|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \U2|PC_uns\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(0));

-- Location: LCCOMB_X22_Y2_N30
\U2|MAR[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[1]~feeder_combout\ = \U2|PC_uns\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|PC_uns\(1),
	combout => \U2|MAR[1]~feeder_combout\);

-- Location: FF_X22_Y2_N31
\U2|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(1));

-- Location: LCCOMB_X22_Y2_N12
\U2|MAR[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[2]~feeder_combout\ = \U2|PC_uns\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|PC_uns\(2),
	combout => \U2|MAR[2]~feeder_combout\);

-- Location: FF_X22_Y2_N13
\U2|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(2));

-- Location: LCCOMB_X22_Y2_N22
\U2|MAR[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[3]~feeder_combout\ = \U2|PC_uns\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|PC_uns\(3),
	combout => \U2|MAR[3]~feeder_combout\);

-- Location: FF_X22_Y2_N23
\U2|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(3));

-- Location: LCCOMB_X22_Y2_N24
\U2|MAR[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[4]~feeder_combout\ = \U2|PC_uns\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|PC_uns\(4),
	combout => \U2|MAR[4]~feeder_combout\);

-- Location: FF_X22_Y2_N25
\U2|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(4));

-- Location: LCCOMB_X22_Y2_N26
\U2|MAR[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[5]~feeder_combout\ = \U2|PC_uns\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|PC_uns\(5),
	combout => \U2|MAR[5]~feeder_combout\);

-- Location: FF_X22_Y2_N27
\U2|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(5));

-- Location: LCCOMB_X22_Y2_N10
\U2|MAR[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[6]~feeder_combout\ = \U2|PC_uns\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|PC_uns\(6),
	combout => \U2|MAR[6]~feeder_combout\);

-- Location: FF_X22_Y2_N11
\U2|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(6));

-- Location: LCCOMB_X22_Y2_N16
\U2|MAR[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|MAR[7]~feeder_combout\ = \U2|PC_uns\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|PC_uns\(7),
	combout => \U2|MAR[7]~feeder_combout\);

-- Location: FF_X22_Y2_N17
\U2|MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U2|MAR[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Bus2_Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|MAR\(7));

-- Location: IOIBUF_X34_Y12_N8
\from_memory[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(0),
	o => \from_memory[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\from_memory[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(1),
	o => \from_memory[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\from_memory[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(2),
	o => \from_memory[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\from_memory[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(3),
	o => \from_memory[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\from_memory[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(4),
	o => \from_memory[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\from_memory[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(5),
	o => \from_memory[5]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\from_memory[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(6),
	o => \from_memory[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\from_memory[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(7),
	o => \from_memory[7]~input_o\);

ww_to_memory(0) <= \to_memory[0]~output_o\;

ww_to_memory(1) <= \to_memory[1]~output_o\;

ww_to_memory(2) <= \to_memory[2]~output_o\;

ww_to_memory(3) <= \to_memory[3]~output_o\;

ww_to_memory(4) <= \to_memory[4]~output_o\;

ww_to_memory(5) <= \to_memory[5]~output_o\;

ww_to_memory(6) <= \to_memory[6]~output_o\;

ww_to_memory(7) <= \to_memory[7]~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_writen <= \writen~output_o\;
END structure;


