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

-- DATE "12/06/2022 15:57:37"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testcontrolcircuit IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	fffa : OUT std_logic;
	fffb : OUT std_logic;
	fffc : OUT std_logic;
	fffd : OUT std_logic;
	fffe : OUT std_logic;
	ffff : OUT std_logic;
	fffg : OUT std_logic;
	fffh : OUT std_logic
	);
END testcontrolcircuit;

-- Design Ports Information
-- fffa	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fffb	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fffc	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fffd	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fffe	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ffff	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fffg	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fffh	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testcontrolcircuit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_fffa : std_logic;
SIGNAL ww_fffb : std_logic;
SIGNAL ww_fffc : std_logic;
SIGNAL ww_fffd : std_logic;
SIGNAL ww_fffe : std_logic;
SIGNAL ww_ffff : std_logic;
SIGNAL ww_fffg : std_logic;
SIGNAL ww_fffh : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \fffa~0_combout\ : std_logic;
SIGNAL \fffb~0_combout\ : std_logic;
SIGNAL \fffd~0_combout\ : std_logic;
SIGNAL \fffa~1_combout\ : std_logic;
SIGNAL \ffff~0_combout\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
fffa <= ww_fffa;
fffb <= ww_fffb;
fffc <= ww_fffc;
fffd <= ww_fffd;
fffe <= ww_fffe;
ffff <= ww_ffff;
fffg <= ww_fffg;
fffh <= ww_fffh;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X54_Y16_N22
\fffa~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fffa~0_combout\,
	devoe => ww_devoe,
	o => ww_fffa);

-- Location: IOOBUF_X54_Y17_N39
\fffb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fffb~0_combout\,
	devoe => ww_devoe,
	o => ww_fffb);

-- Location: IOOBUF_X54_Y15_N56
\fffc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fffa~0_combout\,
	devoe => ww_devoe,
	o => ww_fffc);

-- Location: IOOBUF_X54_Y18_N96
\fffd~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fffd~0_combout\,
	devoe => ww_devoe,
	o => ww_fffd);

-- Location: IOOBUF_X54_Y19_N39
\fffe~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fffa~1_combout\,
	devoe => ww_devoe,
	o => ww_fffe);

-- Location: IOOBUF_X54_Y18_N45
\ffff~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ffff~0_combout\,
	devoe => ww_devoe,
	o => ww_ffff);

-- Location: IOOBUF_X54_Y19_N56
\fffg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fffa~1_combout\,
	devoe => ww_devoe,
	o => ww_fffg);

-- Location: IOOBUF_X54_Y18_N79
\fffh~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ffff~0_combout\,
	devoe => ww_devoe,
	o => ww_fffh);

-- Location: IOIBUF_X54_Y19_N4
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X54_Y18_N61
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X54_Y17_N21
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X53_Y18_N0
\fffa~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fffa~0_combout\ = ( \b~input_o\ & ( (\d~input_o\ & \c~input_o\) ) ) # ( !\b~input_o\ & ( (!\d~input_o\ & (!\a~input_o\ $ (\c~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010000001010000010110000010100000100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d~input_o\,
	datab => \ALT_INV_a~input_o\,
	datac => \ALT_INV_c~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \fffa~0_combout\);

-- Location: LABCELL_X53_Y18_N9
\fffb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fffb~0_combout\ = ( \b~input_o\ & ( (\c~input_o\ & (\a~input_o\ & \d~input_o\)) ) ) # ( !\b~input_o\ & ( (!\c~input_o\ & (!\a~input_o\ & !\d~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000010110100000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~input_o\,
	datac => \ALT_INV_a~input_o\,
	datad => \ALT_INV_d~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \fffb~0_combout\);

-- Location: LABCELL_X53_Y18_N42
\fffd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fffd~0_combout\ = ( \b~input_o\ & ( (\d~input_o\ & \c~input_o\) ) ) # ( !\b~input_o\ & ( (!\d~input_o\ & (!\a~input_o\ & !\c~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000001010000010110000000100000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d~input_o\,
	datab => \ALT_INV_a~input_o\,
	datac => \ALT_INV_c~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \fffd~0_combout\);

-- Location: LABCELL_X53_Y18_N21
\fffa~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fffa~1_combout\ = ( \b~input_o\ & ( (\c~input_o\ & (\a~input_o\ & \d~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~input_o\,
	datac => \ALT_INV_a~input_o\,
	datad => \ALT_INV_d~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \fffa~1_combout\);

-- Location: LABCELL_X53_Y18_N54
\ffff~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ffff~0_combout\ = ( \b~input_o\ & ( (\d~input_o\ & \c~input_o\) ) ) # ( !\b~input_o\ & ( (!\d~input_o\ & (\a~input_o\ & \c~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000001010000010100000010000000100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d~input_o\,
	datab => \ALT_INV_a~input_o\,
	datac => \ALT_INV_c~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \ffff~0_combout\);

-- Location: LABCELL_X39_Y32_N3
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


