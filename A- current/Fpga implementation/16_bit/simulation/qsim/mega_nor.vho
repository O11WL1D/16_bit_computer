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

-- DATE "10/13/2022 14:29:50"

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

ENTITY 	mega_nor IS
    PORT (
	aa : IN std_logic_vector(15 DOWNTO 0);
	af : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END mega_nor;

-- Design Ports Information
-- af[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[10]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[13]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[14]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- af[15]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[9]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[11]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[12]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aa[15]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mega_nor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_af : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \aa[0]~input_o\ : std_logic;
SIGNAL \aa[1]~input_o\ : std_logic;
SIGNAL \af~0_combout\ : std_logic;
SIGNAL \aa[3]~input_o\ : std_logic;
SIGNAL \aa[2]~input_o\ : std_logic;
SIGNAL \af~1_combout\ : std_logic;
SIGNAL \aa[4]~input_o\ : std_logic;
SIGNAL \aa[5]~input_o\ : std_logic;
SIGNAL \af~2_combout\ : std_logic;
SIGNAL \aa[6]~input_o\ : std_logic;
SIGNAL \aa[7]~input_o\ : std_logic;
SIGNAL \af~3_combout\ : std_logic;
SIGNAL \aa[8]~input_o\ : std_logic;
SIGNAL \aa[9]~input_o\ : std_logic;
SIGNAL \af~4_combout\ : std_logic;
SIGNAL \aa[10]~input_o\ : std_logic;
SIGNAL \aa[11]~input_o\ : std_logic;
SIGNAL \af~5_combout\ : std_logic;
SIGNAL \aa[12]~input_o\ : std_logic;
SIGNAL \aa[13]~input_o\ : std_logic;
SIGNAL \af~6_combout\ : std_logic;
SIGNAL \aa[15]~input_o\ : std_logic;
SIGNAL \aa[14]~input_o\ : std_logic;
SIGNAL \af~7_combout\ : std_logic;
SIGNAL \p~0_combout\ : std_logic;
SIGNAL \p~1_combout\ : std_logic;
SIGNAL \ALT_INV_aa[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_aa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_p~0_combout\ : std_logic;
SIGNAL \ALT_INV_af~7_combout\ : std_logic;
SIGNAL \ALT_INV_af~6_combout\ : std_logic;
SIGNAL \ALT_INV_af~5_combout\ : std_logic;
SIGNAL \ALT_INV_af~4_combout\ : std_logic;
SIGNAL \ALT_INV_af~3_combout\ : std_logic;
SIGNAL \ALT_INV_af~2_combout\ : std_logic;
SIGNAL \ALT_INV_af~1_combout\ : std_logic;
SIGNAL \ALT_INV_af~0_combout\ : std_logic;

BEGIN

ww_aa <= aa;
af <= ww_af;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_aa[15]~input_o\ <= NOT \aa[15]~input_o\;
\ALT_INV_aa[14]~input_o\ <= NOT \aa[14]~input_o\;
\ALT_INV_aa[13]~input_o\ <= NOT \aa[13]~input_o\;
\ALT_INV_aa[12]~input_o\ <= NOT \aa[12]~input_o\;
\ALT_INV_aa[11]~input_o\ <= NOT \aa[11]~input_o\;
\ALT_INV_aa[10]~input_o\ <= NOT \aa[10]~input_o\;
\ALT_INV_aa[9]~input_o\ <= NOT \aa[9]~input_o\;
\ALT_INV_aa[8]~input_o\ <= NOT \aa[8]~input_o\;
\ALT_INV_aa[7]~input_o\ <= NOT \aa[7]~input_o\;
\ALT_INV_aa[6]~input_o\ <= NOT \aa[6]~input_o\;
\ALT_INV_aa[5]~input_o\ <= NOT \aa[5]~input_o\;
\ALT_INV_aa[4]~input_o\ <= NOT \aa[4]~input_o\;
\ALT_INV_aa[3]~input_o\ <= NOT \aa[3]~input_o\;
\ALT_INV_aa[2]~input_o\ <= NOT \aa[2]~input_o\;
\ALT_INV_aa[1]~input_o\ <= NOT \aa[1]~input_o\;
\ALT_INV_aa[0]~input_o\ <= NOT \aa[0]~input_o\;
\ALT_INV_p~0_combout\ <= NOT \p~0_combout\;
\ALT_INV_af~7_combout\ <= NOT \af~7_combout\;
\ALT_INV_af~6_combout\ <= NOT \af~6_combout\;
\ALT_INV_af~5_combout\ <= NOT \af~5_combout\;
\ALT_INV_af~4_combout\ <= NOT \af~4_combout\;
\ALT_INV_af~3_combout\ <= NOT \af~3_combout\;
\ALT_INV_af~2_combout\ <= NOT \af~2_combout\;
\ALT_INV_af~1_combout\ <= NOT \af~1_combout\;
\ALT_INV_af~0_combout\ <= NOT \af~0_combout\;

-- Location: IOOBUF_X54_Y14_N96
\af[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~0_combout\,
	devoe => ww_devoe,
	o => ww_af(0));

-- Location: IOOBUF_X54_Y15_N56
\af[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~1_combout\,
	devoe => ww_devoe,
	o => ww_af(1));

-- Location: IOOBUF_X54_Y15_N5
\af[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~2_combout\,
	devoe => ww_devoe,
	o => ww_af(2));

-- Location: IOOBUF_X54_Y19_N56
\af[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~3_combout\,
	devoe => ww_devoe,
	o => ww_af(3));

-- Location: IOOBUF_X54_Y18_N96
\af[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~4_combout\,
	devoe => ww_devoe,
	o => ww_af(4));

-- Location: IOOBUF_X54_Y17_N39
\af[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~5_combout\,
	devoe => ww_devoe,
	o => ww_af(5));

-- Location: IOOBUF_X54_Y17_N56
\af[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~6_combout\,
	devoe => ww_devoe,
	o => ww_af(6));

-- Location: IOOBUF_X54_Y14_N62
\af[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_af~7_combout\,
	devoe => ww_devoe,
	o => ww_af(7));

-- Location: IOOBUF_X24_Y0_N53
\af[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(8));

-- Location: IOOBUF_X33_Y0_N76
\af[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(9));

-- Location: IOOBUF_X8_Y45_N42
\af[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(10));

-- Location: IOOBUF_X43_Y0_N2
\af[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(11));

-- Location: IOOBUF_X38_Y45_N36
\af[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(12));

-- Location: IOOBUF_X0_Y19_N39
\af[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(13));

-- Location: IOOBUF_X50_Y0_N36
\af[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_af(14));

-- Location: IOOBUF_X54_Y14_N79
\af[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p~1_combout\,
	devoe => ww_devoe,
	o => ww_af(15));

-- Location: IOIBUF_X54_Y16_N38
\aa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(0),
	o => \aa[0]~input_o\);

-- Location: IOIBUF_X54_Y20_N55
\aa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(1),
	o => \aa[1]~input_o\);

-- Location: LABCELL_X53_Y16_N30
\af~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~0_combout\ = ( \aa[1]~input_o\ ) # ( !\aa[1]~input_o\ & ( \aa[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aa[0]~input_o\,
	dataf => \ALT_INV_aa[1]~input_o\,
	combout => \af~0_combout\);

-- Location: IOIBUF_X54_Y16_N21
\aa[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(3),
	o => \aa[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\aa[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(2),
	o => \aa[2]~input_o\);

-- Location: LABCELL_X53_Y16_N6
\af~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~1_combout\ = ( \aa[2]~input_o\ ) # ( !\aa[2]~input_o\ & ( \aa[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aa[3]~input_o\,
	datae => \ALT_INV_aa[2]~input_o\,
	combout => \af~1_combout\);

-- Location: IOIBUF_X54_Y14_N44
\aa[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(4),
	o => \aa[4]~input_o\);

-- Location: IOIBUF_X54_Y15_N38
\aa[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(5),
	o => \aa[5]~input_o\);

-- Location: LABCELL_X53_Y15_N0
\af~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~2_combout\ = ( \aa[4]~input_o\ & ( \aa[5]~input_o\ ) ) # ( !\aa[4]~input_o\ & ( \aa[5]~input_o\ ) ) # ( \aa[4]~input_o\ & ( !\aa[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_aa[4]~input_o\,
	dataf => \ALT_INV_aa[5]~input_o\,
	combout => \af~2_combout\);

-- Location: IOIBUF_X54_Y18_N61
\aa[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(6),
	o => \aa[6]~input_o\);

-- Location: IOIBUF_X54_Y18_N78
\aa[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(7),
	o => \aa[7]~input_o\);

-- Location: LABCELL_X53_Y18_N33
\af~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~3_combout\ = ( \aa[6]~input_o\ & ( \aa[7]~input_o\ ) ) # ( !\aa[6]~input_o\ & ( \aa[7]~input_o\ ) ) # ( \aa[6]~input_o\ & ( !\aa[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_aa[6]~input_o\,
	dataf => \ALT_INV_aa[7]~input_o\,
	combout => \af~3_combout\);

-- Location: IOIBUF_X54_Y18_N44
\aa[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(8),
	o => \aa[8]~input_o\);

-- Location: IOIBUF_X54_Y15_N21
\aa[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(9),
	o => \aa[9]~input_o\);

-- Location: LABCELL_X53_Y18_N39
\af~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~4_combout\ = ( \aa[9]~input_o\ ) # ( !\aa[9]~input_o\ & ( \aa[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_aa[8]~input_o\,
	datae => \ALT_INV_aa[9]~input_o\,
	combout => \af~4_combout\);

-- Location: IOIBUF_X54_Y19_N4
\aa[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(10),
	o => \aa[10]~input_o\);

-- Location: IOIBUF_X54_Y19_N38
\aa[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(11),
	o => \aa[11]~input_o\);

-- Location: LABCELL_X53_Y19_N30
\af~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~5_combout\ = ( \aa[10]~input_o\ & ( \aa[11]~input_o\ ) ) # ( !\aa[10]~input_o\ & ( \aa[11]~input_o\ ) ) # ( \aa[10]~input_o\ & ( !\aa[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_aa[10]~input_o\,
	dataf => \ALT_INV_aa[11]~input_o\,
	combout => \af~5_combout\);

-- Location: IOIBUF_X54_Y17_N21
\aa[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(12),
	o => \aa[12]~input_o\);

-- Location: IOIBUF_X54_Y17_N4
\aa[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(13),
	o => \aa[13]~input_o\);

-- Location: LABCELL_X53_Y17_N0
\af~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~6_combout\ = ( \aa[13]~input_o\ ) # ( !\aa[13]~input_o\ & ( \aa[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_aa[12]~input_o\,
	datae => \ALT_INV_aa[13]~input_o\,
	combout => \af~6_combout\);

-- Location: IOIBUF_X54_Y16_N55
\aa[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(15),
	o => \aa[15]~input_o\);

-- Location: IOIBUF_X54_Y16_N4
\aa[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aa(14),
	o => \aa[14]~input_o\);

-- Location: LABCELL_X53_Y16_N15
\af~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \af~7_combout\ = ( \aa[14]~input_o\ ) # ( !\aa[14]~input_o\ & ( \aa[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[15]~input_o\,
	datae => \ALT_INV_aa[14]~input_o\,
	combout => \af~7_combout\);

-- Location: LABCELL_X53_Y16_N18
\p~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p~0_combout\ = ( !\aa[2]~input_o\ & ( !\aa[1]~input_o\ & ( (!\aa[5]~input_o\ & (!\aa[3]~input_o\ & (!\aa[4]~input_o\ & !\aa[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_aa[5]~input_o\,
	datab => \ALT_INV_aa[3]~input_o\,
	datac => \ALT_INV_aa[4]~input_o\,
	datad => \ALT_INV_aa[0]~input_o\,
	datae => \ALT_INV_aa[2]~input_o\,
	dataf => \ALT_INV_aa[1]~input_o\,
	combout => \p~0_combout\);

-- Location: LABCELL_X53_Y16_N24
\p~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \p~1_combout\ = ( !\af~6_combout\ & ( !\af~5_combout\ & ( (!\af~4_combout\ & (!\af~7_combout\ & (!\af~3_combout\ & \p~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_af~4_combout\,
	datab => \ALT_INV_af~7_combout\,
	datac => \ALT_INV_af~3_combout\,
	datad => \ALT_INV_p~0_combout\,
	datae => \ALT_INV_af~6_combout\,
	dataf => \ALT_INV_af~5_combout\,
	combout => \p~1_combout\);

-- Location: LABCELL_X21_Y7_N3
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


