-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/05/2022 12:04:34"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
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

ENTITY 	b16_en IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	en : IN std_logic_vector(15 DOWNTO 0);
	f : OUT std_logic_vector(15 DOWNTO 0)
	);
END b16_en;

-- Design Ports Information
-- f[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[9]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[10]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[12]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[9]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[10]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[11]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[14]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[15]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF b16_en IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_en : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \en[0]~input_o\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \en[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \f~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \en[2]~input_o\ : std_logic;
SIGNAL \f~2_combout\ : std_logic;
SIGNAL \en[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \f~3_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \en[4]~input_o\ : std_logic;
SIGNAL \f~4_combout\ : std_logic;
SIGNAL \en[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \f~5_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \en[6]~input_o\ : std_logic;
SIGNAL \f~6_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \en[7]~input_o\ : std_logic;
SIGNAL \f~7_combout\ : std_logic;
SIGNAL \en[8]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \f~8_combout\ : std_logic;
SIGNAL \en[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \f~9_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \en[10]~input_o\ : std_logic;
SIGNAL \f~10_combout\ : std_logic;
SIGNAL \en[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \f~11_combout\ : std_logic;
SIGNAL \en[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \f~12_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \en[13]~input_o\ : std_logic;
SIGNAL \f~13_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \en[14]~input_o\ : std_logic;
SIGNAL \f~14_combout\ : std_logic;
SIGNAL \en[15]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \f~15_combout\ : std_logic;
SIGNAL \ALT_INV_en[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_en[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_en <= en;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_en[15]~input_o\ <= NOT \en[15]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_en[14]~input_o\ <= NOT \en[14]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_en[13]~input_o\ <= NOT \en[13]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_en[12]~input_o\ <= NOT \en[12]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_en[11]~input_o\ <= NOT \en[11]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_en[10]~input_o\ <= NOT \en[10]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_en[9]~input_o\ <= NOT \en[9]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_en[8]~input_o\ <= NOT \en[8]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_en[7]~input_o\ <= NOT \en[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_en[6]~input_o\ <= NOT \en[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_en[5]~input_o\ <= NOT \en[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_en[4]~input_o\ <= NOT \en[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_en[3]~input_o\ <= NOT \en[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_en[2]~input_o\ <= NOT \en[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_en[1]~input_o\ <= NOT \en[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_en[0]~input_o\ <= NOT \en[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;

-- Location: IOOBUF_X22_Y45_N2
\f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~0_combout\,
	devoe => ww_devoe,
	o => ww_f(0));

-- Location: IOOBUF_X18_Y45_N53
\f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~1_combout\,
	devoe => ww_devoe,
	o => ww_f(1));

-- Location: IOOBUF_X20_Y45_N36
\f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~2_combout\,
	devoe => ww_devoe,
	o => ww_f(2));

-- Location: IOOBUF_X36_Y45_N36
\f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~3_combout\,
	devoe => ww_devoe,
	o => ww_f(3));

-- Location: IOOBUF_X18_Y45_N19
\f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~4_combout\,
	devoe => ww_devoe,
	o => ww_f(4));

-- Location: IOOBUF_X32_Y45_N93
\f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~5_combout\,
	devoe => ww_devoe,
	o => ww_f(5));

-- Location: IOOBUF_X20_Y45_N2
\f[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~6_combout\,
	devoe => ww_devoe,
	o => ww_f(6));

-- Location: IOOBUF_X38_Y45_N2
\f[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~7_combout\,
	devoe => ww_devoe,
	o => ww_f(7));

-- Location: IOOBUF_X32_Y45_N42
\f[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~8_combout\,
	devoe => ww_devoe,
	o => ww_f(8));

-- Location: IOOBUF_X0_Y20_N56
\f[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~9_combout\,
	devoe => ww_devoe,
	o => ww_f(9));

-- Location: IOOBUF_X0_Y18_N79
\f[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~10_combout\,
	devoe => ww_devoe,
	o => ww_f(10));

-- Location: IOOBUF_X11_Y0_N53
\f[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~11_combout\,
	devoe => ww_devoe,
	o => ww_f(11));

-- Location: IOOBUF_X34_Y45_N36
\f[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~12_combout\,
	devoe => ww_devoe,
	o => ww_f(12));

-- Location: IOOBUF_X18_Y45_N36
\f[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~13_combout\,
	devoe => ww_devoe,
	o => ww_f(13));

-- Location: IOOBUF_X0_Y18_N62
\f[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~14_combout\,
	devoe => ww_devoe,
	o => ww_f(14));

-- Location: IOOBUF_X0_Y19_N5
\f[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~15_combout\,
	devoe => ww_devoe,
	o => ww_f(15));

-- Location: IOIBUF_X32_Y45_N58
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X34_Y45_N52
\en[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(0),
	o => \en[0]~input_o\);

-- Location: MLABCELL_X28_Y44_N0
\f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~0_combout\ = ( \a[0]~input_o\ & ( \en[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_en[0]~input_o\,
	combout => \f~0_combout\);

-- Location: IOIBUF_X0_Y20_N4
\en[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(1),
	o => \en[1]~input_o\);

-- Location: IOIBUF_X22_Y45_N52
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: MLABCELL_X18_Y44_N30
\f~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~1_combout\ = ( \en[1]~input_o\ & ( \a[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_en[1]~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \f~1_combout\);

-- Location: IOIBUF_X16_Y45_N75
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X16_Y45_N92
\en[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(2),
	o => \en[2]~input_o\);

-- Location: LABCELL_X16_Y44_N3
\f~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~2_combout\ = ( \en[2]~input_o\ & ( \a[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_en[2]~input_o\,
	combout => \f~2_combout\);

-- Location: IOIBUF_X34_Y45_N18
\en[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(3),
	o => \en[3]~input_o\);

-- Location: IOIBUF_X36_Y45_N52
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X35_Y44_N30
\f~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~3_combout\ = ( \a[3]~input_o\ & ( \en[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_en[3]~input_o\,
	datae => \ALT_INV_a[3]~input_o\,
	combout => \f~3_combout\);

-- Location: IOIBUF_X18_Y45_N1
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N55
\en[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(4),
	o => \en[4]~input_o\);

-- Location: LABCELL_X16_Y44_N36
\f~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~4_combout\ = ( \en[4]~input_o\ & ( \a[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[4]~input_o\,
	datae => \ALT_INV_en[4]~input_o\,
	combout => \f~4_combout\);

-- Location: IOIBUF_X22_Y45_N18
\en[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(5),
	o => \en[5]~input_o\);

-- Location: IOIBUF_X22_Y45_N35
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: MLABCELL_X28_Y44_N6
\f~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~5_combout\ = ( \a[5]~input_o\ & ( \en[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_en[5]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \f~5_combout\);

-- Location: IOIBUF_X20_Y45_N18
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X20_Y45_N52
\en[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(6),
	o => \en[6]~input_o\);

-- Location: LABCELL_X20_Y44_N33
\f~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~6_combout\ = ( \en[6]~input_o\ & ( \a[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_en[6]~input_o\,
	combout => \f~6_combout\);

-- Location: IOIBUF_X36_Y45_N1
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X38_Y45_N52
\en[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(7),
	o => \en[7]~input_o\);

-- Location: MLABCELL_X37_Y44_N30
\f~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~7_combout\ = ( \en[7]~input_o\ & ( \a[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[7]~input_o\,
	datae => \ALT_INV_en[7]~input_o\,
	combout => \f~7_combout\);

-- Location: IOIBUF_X32_Y45_N75
\en[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(8),
	o => \en[8]~input_o\);

-- Location: IOIBUF_X34_Y45_N1
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LABCELL_X29_Y44_N33
\f~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~8_combout\ = ( \a[8]~input_o\ & ( \en[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_en[8]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \f~8_combout\);

-- Location: IOIBUF_X0_Y21_N38
\en[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(9),
	o => \en[9]~input_o\);

-- Location: IOIBUF_X16_Y45_N41
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LABCELL_X16_Y44_N12
\f~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~9_combout\ = ( \a[9]~input_o\ & ( \en[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_en[9]~input_o\,
	datae => \ALT_INV_a[9]~input_o\,
	combout => \f~9_combout\);

-- Location: IOIBUF_X0_Y20_N38
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X0_Y18_N95
\en[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(10),
	o => \en[10]~input_o\);

-- Location: LABCELL_X1_Y18_N0
\f~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~10_combout\ = ( \en[10]~input_o\ & ( \a[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[10]~input_o\,
	datae => \ALT_INV_en[10]~input_o\,
	combout => \f~10_combout\);

-- Location: IOIBUF_X12_Y0_N1
\en[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(11),
	o => \en[11]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LABCELL_X12_Y1_N0
\f~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~11_combout\ = ( \a[11]~input_o\ & ( \en[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_en[11]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \f~11_combout\);

-- Location: IOIBUF_X36_Y45_N18
\en[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(12),
	o => \en[12]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LABCELL_X35_Y44_N9
\f~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~12_combout\ = ( \a[12]~input_o\ & ( \en[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en[12]~input_o\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \f~12_combout\);

-- Location: IOIBUF_X0_Y20_N21
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X16_Y45_N58
\en[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(13),
	o => \en[13]~input_o\);

-- Location: LABCELL_X16_Y44_N51
\f~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~13_combout\ = ( \en[13]~input_o\ & ( \a[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_en[13]~input_o\,
	combout => \f~13_combout\);

-- Location: IOIBUF_X0_Y19_N55
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\en[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(14),
	o => \en[14]~input_o\);

-- Location: LABCELL_X1_Y19_N30
\f~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~14_combout\ = ( \en[14]~input_o\ & ( \a[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[14]~input_o\,
	datae => \ALT_INV_en[14]~input_o\,
	combout => \f~14_combout\);

-- Location: IOIBUF_X0_Y18_N44
\en[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en(15),
	o => \en[15]~input_o\);

-- Location: IOIBUF_X0_Y19_N38
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LABCELL_X1_Y19_N36
\f~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~15_combout\ = ( \en[15]~input_o\ & ( \a[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_en[15]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \f~15_combout\);

-- Location: MLABCELL_X13_Y40_N0
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


