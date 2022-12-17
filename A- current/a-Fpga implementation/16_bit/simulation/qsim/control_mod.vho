-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/16/2022 17:29:13"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_mod IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	general : IN std_logic;
	ram_write_enable : OUT std_logic;
	progcountTOram : OUT std_logic;
	programcontincrement : OUT std_logic;
	programcontenable : OUT std_logic;
	state0 : OUT std_logic;
	state1 : OUT std_logic;
	state2 : OUT std_logic
	);
END control_mod;

-- Design Ports Information
-- ram_write_enable	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- progcountTOram	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- programcontincrement	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- programcontenable	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state0	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state1	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state2	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- general	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_mod IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_general : std_logic;
SIGNAL ww_ram_write_enable : std_logic;
SIGNAL ww_progcountTOram : std_logic;
SIGNAL ww_programcontincrement : std_logic;
SIGNAL ww_programcontenable : std_logic;
SIGNAL ww_state0 : std_logic;
SIGNAL ww_state1 : std_logic;
SIGNAL ww_state2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reg_fstate.wait0~1_combout\ : std_logic;
SIGNAL \general~input_o\ : std_logic;
SIGNAL \reg_fstate.wait0~0_combout\ : std_logic;
SIGNAL \fstate.wait0~q\ : std_logic;
SIGNAL \reg_fstate.i0m0~0_combout\ : std_logic;
SIGNAL \fstate.i0m0~q\ : std_logic;
SIGNAL \programcontincrement~0_combout\ : std_logic;
SIGNAL \fstate.i0m1~q\ : std_logic;
SIGNAL \ram_write_enable~0_combout\ : std_logic;
SIGNAL \ALT_INV_fstate.i0m1~q\ : std_logic;
SIGNAL \ALT_INV_fstate.i0m0~q\ : std_logic;
SIGNAL \ALT_INV_fstate.wait0~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_general~input_o\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_general <= general;
ram_write_enable <= ww_ram_write_enable;
progcountTOram <= ww_progcountTOram;
programcontincrement <= ww_programcontincrement;
programcontenable <= ww_programcontenable;
state0 <= ww_state0;
state1 <= ww_state1;
state2 <= ww_state2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_fstate.i0m1~q\ <= NOT \fstate.i0m1~q\;
\ALT_INV_fstate.i0m0~q\ <= NOT \fstate.i0m0~q\;
\ALT_INV_fstate.wait0~q\ <= NOT \fstate.wait0~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_general~input_o\ <= NOT \general~input_o\;

-- Location: IOOBUF_X54_Y18_N96
\ram_write_enable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_write_enable~0_combout\,
	devoe => ww_devoe,
	o => ww_ram_write_enable);

-- Location: IOOBUF_X54_Y18_N45
\progcountTOram~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_write_enable~0_combout\,
	devoe => ww_devoe,
	o => ww_progcountTOram);

-- Location: IOOBUF_X54_Y17_N39
\programcontincrement~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \programcontincrement~0_combout\,
	devoe => ww_devoe,
	o => ww_programcontincrement);

-- Location: IOOBUF_X54_Y17_N56
\programcontenable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \programcontincrement~0_combout\,
	devoe => ww_devoe,
	o => ww_programcontenable);

-- Location: IOOBUF_X54_Y17_N5
\state0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \programcontincrement~0_combout\,
	devoe => ww_devoe,
	o => ww_state0);

-- Location: IOOBUF_X54_Y18_N79
\state1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_write_enable~0_combout\,
	devoe => ww_devoe,
	o => ww_state1);

-- Location: IOOBUF_X10_Y0_N42
\state2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_state2);

-- Location: IOIBUF_X54_Y19_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X54_Y18_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X53_Y17_N48
\reg_fstate.wait0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.wait0~1_combout\ = ( !\fstate.i0m1~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_fstate.i0m1~q\,
	combout => \reg_fstate.wait0~1_combout\);

-- Location: IOIBUF_X54_Y17_N21
\general~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_general,
	o => \general~input_o\);

-- Location: LABCELL_X53_Y17_N21
\reg_fstate.wait0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.wait0~0_combout\ = (\general~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_general~input_o\,
	combout => \reg_fstate.wait0~0_combout\);

-- Location: FF_X53_Y17_N50
\fstate.wait0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.wait0~1_combout\,
	ena => \reg_fstate.wait0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.wait0~q\);

-- Location: LABCELL_X53_Y17_N15
\reg_fstate.i0m0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_fstate.i0m0~0_combout\ = ( !\fstate.wait0~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_fstate.wait0~q\,
	combout => \reg_fstate.i0m0~0_combout\);

-- Location: FF_X53_Y17_N17
\fstate.i0m0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \reg_fstate.i0m0~0_combout\,
	ena => \reg_fstate.wait0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.i0m0~q\);

-- Location: LABCELL_X53_Y17_N6
\programcontincrement~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \programcontincrement~0_combout\ = ( \fstate.i0m0~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_fstate.i0m0~q\,
	combout => \programcontincrement~0_combout\);

-- Location: FF_X53_Y17_N20
\fstate.i0m1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \programcontincrement~0_combout\,
	sload => VCC,
	ena => \reg_fstate.wait0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.i0m1~q\);

-- Location: LABCELL_X53_Y17_N18
\ram_write_enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram_write_enable~0_combout\ = (!\reset~input_o\ & \fstate.i0m1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_fstate.i0m1~q\,
	combout => \ram_write_enable~0_combout\);

-- Location: LABCELL_X41_Y4_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


