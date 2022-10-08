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

-- DATE "06/05/2022 01:18:32"

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

ENTITY 	adder IS
    PORT (
	over : OUT std_logic;
	sub : IN std_logic;
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	f : OUT std_logic_vector(15 DOWNTO 0)
	);
END adder;

-- Design Ports Information
-- over	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[15]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[14]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[13]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[12]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[10]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_over : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \wefgy|asdasd~combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \wefgy|asdasdd~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \dse|asdasd~combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \aasd|asdasdd~0_combout\ : std_logic;
SIGNAL \dse|asdasdd~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \dse|asdasdd~1_combout\ : std_logic;
SIGNAL \yd|asdasdd~0_combout\ : std_logic;
SIGNAL \wefgy|asdasdd~1_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \wghyy|asdasdd~0_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \atht|asdasdd~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \argsetr|daasassasasd~0_combout\ : std_logic;
SIGNAL \argsetr|1212~combout\ : std_logic;
SIGNAL \areaert|1212~0_combout\ : std_logic;
SIGNAL \areaert|1212~combout\ : std_logic;
SIGNAL \atht|1212~combout\ : std_logic;
SIGNAL \srgarh|1212~combout\ : std_logic;
SIGNAL \wghyy|1212~combout\ : std_logic;
SIGNAL \ergw|1212~combout\ : std_logic;
SIGNAL \egut|asdasdd~0_combout\ : std_logic;
SIGNAL \wefgy|1212~combout\ : std_logic;
SIGNAL \srgt|1212~combout\ : std_logic;
SIGNAL \egut|1212~combout\ : std_logic;
SIGNAL \dse|asdasdd~2_combout\ : std_logic;
SIGNAL \yd|1212~combout\ : std_logic;
SIGNAL \eg|1212~combout\ : std_logic;
SIGNAL \aa|asdasdd~0_combout\ : std_logic;
SIGNAL \dse|1212~combout\ : std_logic;
SIGNAL \av|1212~combout\ : std_logic;
SIGNAL \aa|1212~combout\ : std_logic;
SIGNAL \aasd|1212~combout\ : std_logic;
SIGNAL \inst|1212~combout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_sub~input_o\ : std_logic;
SIGNAL \aa|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \dse|ALT_INV_asdasdd~2_combout\ : std_logic;
SIGNAL \egut|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \areaert|ALT_INV_1212~0_combout\ : std_logic;
SIGNAL \argsetr|ALT_INV_daasassasasd~0_combout\ : std_logic;
SIGNAL \atht|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \wghyy|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \wefgy|ALT_INV_asdasdd~1_combout\ : std_logic;
SIGNAL \wefgy|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \yd|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \dse|ALT_INV_asdasdd~1_combout\ : std_logic;
SIGNAL \dse|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \aasd|ALT_INV_asdasdd~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~combout\ : std_logic;
SIGNAL \dse|ALT_INV_asdasd~combout\ : std_logic;
SIGNAL \ALT_INV_inst6~combout\ : std_logic;
SIGNAL \ALT_INV_inst7~combout\ : std_logic;
SIGNAL \ALT_INV_inst8~combout\ : std_logic;
SIGNAL \ALT_INV_inst9~combout\ : std_logic;
SIGNAL \wefgy|ALT_INV_asdasd~combout\ : std_logic;
SIGNAL \ALT_INV_inst10~combout\ : std_logic;
SIGNAL \ALT_INV_inst11~combout\ : std_logic;
SIGNAL \ALT_INV_inst12~combout\ : std_logic;
SIGNAL \ALT_INV_inst13~combout\ : std_logic;
SIGNAL \ALT_INV_inst14~combout\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;

BEGIN

over <= ww_over;
ww_sub <= sub;
ww_a <= a;
ww_b <= b;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_sub~input_o\ <= NOT \sub~input_o\;
\aa|ALT_INV_asdasdd~0_combout\ <= NOT \aa|asdasdd~0_combout\;
\dse|ALT_INV_asdasdd~2_combout\ <= NOT \dse|asdasdd~2_combout\;
\egut|ALT_INV_asdasdd~0_combout\ <= NOT \egut|asdasdd~0_combout\;
\areaert|ALT_INV_1212~0_combout\ <= NOT \areaert|1212~0_combout\;
\argsetr|ALT_INV_daasassasasd~0_combout\ <= NOT \argsetr|daasassasasd~0_combout\;
\atht|ALT_INV_asdasdd~0_combout\ <= NOT \atht|asdasdd~0_combout\;
\wghyy|ALT_INV_asdasdd~0_combout\ <= NOT \wghyy|asdasdd~0_combout\;
\wefgy|ALT_INV_asdasdd~1_combout\ <= NOT \wefgy|asdasdd~1_combout\;
\wefgy|ALT_INV_asdasdd~0_combout\ <= NOT \wefgy|asdasdd~0_combout\;
\yd|ALT_INV_asdasdd~0_combout\ <= NOT \yd|asdasdd~0_combout\;
\dse|ALT_INV_asdasdd~1_combout\ <= NOT \dse|asdasdd~1_combout\;
\dse|ALT_INV_asdasdd~0_combout\ <= NOT \dse|asdasdd~0_combout\;
\aasd|ALT_INV_asdasdd~0_combout\ <= NOT \aasd|asdasdd~0_combout\;
\ALT_INV_inst3~combout\ <= NOT \inst3~combout\;
\ALT_INV_inst4~combout\ <= NOT \inst4~combout\;
\dse|ALT_INV_asdasd~combout\ <= NOT \dse|asdasd~combout\;
\ALT_INV_inst6~combout\ <= NOT \inst6~combout\;
\ALT_INV_inst7~combout\ <= NOT \inst7~combout\;
\ALT_INV_inst8~combout\ <= NOT \inst8~combout\;
\ALT_INV_inst9~combout\ <= NOT \inst9~combout\;
\wefgy|ALT_INV_asdasd~combout\ <= NOT \wefgy|asdasd~combout\;
\ALT_INV_inst10~combout\ <= NOT \inst10~combout\;
\ALT_INV_inst11~combout\ <= NOT \inst11~combout\;
\ALT_INV_inst12~combout\ <= NOT \inst12~combout\;
\ALT_INV_inst13~combout\ <= NOT \inst13~combout\;
\ALT_INV_inst14~combout\ <= NOT \inst14~combout\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;

-- Location: IOOBUF_X38_Y0_N53
\over~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \argsetr|ALT_INV_daasassasasd~0_combout\,
	devoe => ww_devoe,
	o => ww_over);

-- Location: IOOBUF_X36_Y0_N36
\f[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \argsetr|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(15));

-- Location: IOOBUF_X36_Y0_N2
\f[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \areaert|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(14));

-- Location: IOOBUF_X38_Y0_N2
\f[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \atht|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(13));

-- Location: IOOBUF_X34_Y0_N36
\f[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \srgarh|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(12));

-- Location: IOOBUF_X29_Y0_N2
\f[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \wghyy|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(11));

-- Location: IOOBUF_X34_Y0_N19
\f[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ergw|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(10));

-- Location: IOOBUF_X11_Y0_N2
\f[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \wefgy|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(9));

-- Location: IOOBUF_X11_Y0_N53
\f[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \srgt|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(8));

-- Location: IOOBUF_X10_Y0_N76
\f[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \egut|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(7));

-- Location: IOOBUF_X14_Y0_N2
\f[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \yd|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(6));

-- Location: IOOBUF_X0_Y18_N79
\f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \eg|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(5));

-- Location: IOOBUF_X24_Y0_N53
\f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dse|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(4));

-- Location: IOOBUF_X25_Y0_N36
\f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \av|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(3));

-- Location: IOOBUF_X14_Y0_N36
\f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aa|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(2));

-- Location: IOOBUF_X24_Y0_N19
\f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aasd|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(1));

-- Location: IOOBUF_X23_Y0_N42
\f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|1212~combout\,
	devoe => ww_devoe,
	o => ww_f(0));

-- Location: IOIBUF_X33_Y0_N92
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\sub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: MLABCELL_X13_Y1_N0
inst10 : cyclonev_lcell_comb
-- Equation(s):
-- \inst10~combout\ = ( \b[9]~input_o\ & ( !\sub~input_o\ ) ) # ( !\b[9]~input_o\ & ( \sub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_b[9]~input_o\,
	combout => \inst10~combout\);

-- Location: MLABCELL_X13_Y1_N36
\wefgy|asdasd\ : cyclonev_lcell_comb
-- Equation(s):
-- \wefgy|asdasd~combout\ = (\a[9]~input_o\ & \inst10~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_inst10~combout\,
	combout => \wefgy|asdasd~combout\);

-- Location: IOIBUF_X34_Y0_N1
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: MLABCELL_X34_Y1_N12
inst12 : cyclonev_lcell_comb
-- Equation(s):
-- \inst12~combout\ = ( \b[11]~input_o\ & ( !\sub~input_o\ ) ) # ( !\b[11]~input_o\ & ( \sub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sub~input_o\,
	datae => \ALT_INV_b[11]~input_o\,
	combout => \inst12~combout\);

-- Location: IOIBUF_X10_Y0_N41
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: MLABCELL_X13_Y1_N18
inst8 : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~combout\ = ( \sub~input_o\ & ( !\b[7]~input_o\ ) ) # ( !\sub~input_o\ & ( \b[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[7]~input_o\,
	dataf => \ALT_INV_sub~input_o\,
	combout => \inst8~combout\);

-- Location: IOIBUF_X12_Y0_N35
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: MLABCELL_X13_Y1_N15
inst9 : cyclonev_lcell_comb
-- Equation(s):
-- \inst9~combout\ = ( \sub~input_o\ & ( !\b[8]~input_o\ ) ) # ( !\sub~input_o\ & ( \b[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[8]~input_o\,
	dataf => \ALT_INV_sub~input_o\,
	combout => \inst9~combout\);

-- Location: IOIBUF_X10_Y0_N92
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: MLABCELL_X13_Y1_N9
\wefgy|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wefgy|asdasdd~0_combout\ = ( \sub~input_o\ & ( (!\a[9]~input_o\ & \b[9]~input_o\) ) ) # ( !\sub~input_o\ & ( (!\a[9]~input_o\ & !\b[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_b[9]~input_o\,
	dataf => \ALT_INV_sub~input_o\,
	combout => \wefgy|asdasdd~0_combout\);

-- Location: IOIBUF_X11_Y0_N18
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: MLABCELL_X13_Y1_N57
inst6 : cyclonev_lcell_comb
-- Equation(s):
-- \inst6~combout\ = ( \sub~input_o\ & ( !\b[5]~input_o\ ) ) # ( !\sub~input_o\ & ( \b[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[5]~input_o\,
	dataf => \ALT_INV_sub~input_o\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X12_Y0_N52
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LABCELL_X19_Y1_N39
\dse|asdasd\ : cyclonev_lcell_comb
-- Equation(s):
-- \dse|asdasd~combout\ = ( \a[4]~input_o\ & ( !\b[4]~input_o\ $ (!\sub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[4]~input_o\,
	datac => \ALT_INV_sub~input_o\,
	datae => \ALT_INV_a[4]~input_o\,
	combout => \dse|asdasd~combout\);

-- Location: IOIBUF_X12_Y0_N1
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LABCELL_X19_Y1_N0
inst7 : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~combout\ = ( \b[6]~input_o\ & ( !\sub~input_o\ ) ) # ( !\b[6]~input_o\ & ( \sub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	datae => \ALT_INV_b[6]~input_o\,
	combout => \inst7~combout\);

-- Location: IOIBUF_X0_Y18_N95
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N92
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X19_Y1_N15
inst4 : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~combout\ = !\sub~input_o\ $ (!\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X23_Y0_N75
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X19_Y1_N24
\aasd|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \aasd|asdasdd~0_combout\ = ( \a[1]~input_o\ & ( (!\b[0]~input_o\ & (((\sub~input_o\) # (\b[1]~input_o\)))) # (\b[0]~input_o\ & ((!\b[1]~input_o\ $ (!\sub~input_o\)) # (\a[0]~input_o\))) ) ) # ( !\a[1]~input_o\ & ( (!\b[0]~input_o\ & (((!\b[1]~input_o\ & 
-- \sub~input_o\)))) # (\b[0]~input_o\ & (\a[0]~input_o\ & (!\b[1]~input_o\ $ (!\sub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110110000000000011011000000011111111110110001111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \aasd|asdasdd~0_combout\);

-- Location: LABCELL_X19_Y1_N12
\dse|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dse|asdasdd~0_combout\ = (!\a[4]~input_o\ & (!\sub~input_o\ $ (\b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_a[4]~input_o\,
	combout => \dse|asdasdd~0_combout\);

-- Location: IOIBUF_X29_Y0_N18
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X19_Y1_N21
inst3 : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~combout\ = ( \sub~input_o\ & ( !\b[2]~input_o\ ) ) # ( !\sub~input_o\ & ( \b[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_sub~input_o\,
	combout => \inst3~combout\);

-- Location: IOIBUF_X25_Y0_N18
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X19_Y1_N30
\dse|asdasdd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dse|asdasdd~1_combout\ = ( \inst3~combout\ & ( \a[3]~input_o\ & ( (!\dse|asdasdd~0_combout\ & (((\aasd|asdasdd~0_combout\) # (\inst4~combout\)) # (\a[2]~input_o\))) ) ) ) # ( !\inst3~combout\ & ( \a[3]~input_o\ & ( (!\dse|asdasdd~0_combout\ & 
-- (((\a[2]~input_o\ & \aasd|asdasdd~0_combout\)) # (\inst4~combout\))) ) ) ) # ( \inst3~combout\ & ( !\a[3]~input_o\ & ( (\inst4~combout\ & (!\dse|asdasdd~0_combout\ & ((\aasd|asdasdd~0_combout\) # (\a[2]~input_o\)))) ) ) ) # ( !\inst3~combout\ & ( 
-- !\a[3]~input_o\ & ( (\a[2]~input_o\ & (\inst4~combout\ & (\aasd|asdasdd~0_combout\ & !\dse|asdasdd~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000100110000000000110111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_inst4~combout\,
	datac => \aasd|ALT_INV_asdasdd~0_combout\,
	datad => \dse|ALT_INV_asdasdd~0_combout\,
	datae => \ALT_INV_inst3~combout\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \dse|asdasdd~1_combout\);

-- Location: MLABCELL_X13_Y1_N30
\yd|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \yd|asdasdd~0_combout\ = ( \a[6]~input_o\ & ( \dse|asdasdd~1_combout\ & ( (!\inst6~combout\ & (!\a[5]~input_o\ & !\inst7~combout\)) ) ) ) # ( !\a[6]~input_o\ & ( \dse|asdasdd~1_combout\ & ( (!\inst7~combout\) # ((!\inst6~combout\ & !\a[5]~input_o\)) ) ) ) 
-- # ( \a[6]~input_o\ & ( !\dse|asdasdd~1_combout\ & ( (!\inst7~combout\ & ((!\inst6~combout\ & ((!\dse|asdasd~combout\) # (!\a[5]~input_o\))) # (\inst6~combout\ & (!\dse|asdasd~combout\ & !\a[5]~input_o\)))) ) ) ) # ( !\a[6]~input_o\ & ( 
-- !\dse|asdasdd~1_combout\ & ( (!\inst7~combout\) # ((!\inst6~combout\ & ((!\dse|asdasd~combout\) # (!\a[5]~input_o\))) # (\inst6~combout\ & (!\dse|asdasd~combout\ & !\a[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111101000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst6~combout\,
	datab => \dse|ALT_INV_asdasd~combout\,
	datac => \ALT_INV_a[5]~input_o\,
	datad => \ALT_INV_inst7~combout\,
	datae => \ALT_INV_a[6]~input_o\,
	dataf => \dse|ALT_INV_asdasdd~1_combout\,
	combout => \yd|asdasdd~0_combout\);

-- Location: MLABCELL_X13_Y1_N42
\wefgy|asdasdd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wefgy|asdasdd~1_combout\ = ( \a[7]~input_o\ & ( \yd|asdasdd~0_combout\ & ( (!\wefgy|asdasdd~0_combout\ & ((!\inst8~combout\ & (\inst9~combout\ & \a[8]~input_o\)) # (\inst8~combout\ & ((\a[8]~input_o\) # (\inst9~combout\))))) ) ) ) # ( !\a[7]~input_o\ & ( 
-- \yd|asdasdd~0_combout\ & ( (\inst9~combout\ & (\a[8]~input_o\ & !\wefgy|asdasdd~0_combout\)) ) ) ) # ( \a[7]~input_o\ & ( !\yd|asdasdd~0_combout\ & ( (!\wefgy|asdasdd~0_combout\ & ((\a[8]~input_o\) # (\inst9~combout\))) ) ) ) # ( !\a[7]~input_o\ & ( 
-- !\yd|asdasdd~0_combout\ & ( (!\wefgy|asdasdd~0_combout\ & ((!\inst8~combout\ & (\inst9~combout\ & \a[8]~input_o\)) # (\inst8~combout\ & ((\a[8]~input_o\) # (\inst9~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000001111110000000000000011000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst8~combout\,
	datab => \ALT_INV_inst9~combout\,
	datac => \ALT_INV_a[8]~input_o\,
	datad => \wefgy|ALT_INV_asdasdd~0_combout\,
	datae => \ALT_INV_a[7]~input_o\,
	dataf => \yd|ALT_INV_asdasdd~0_combout\,
	combout => \wefgy|asdasdd~1_combout\);

-- Location: IOIBUF_X33_Y0_N75
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: MLABCELL_X34_Y1_N51
inst11 : cyclonev_lcell_comb
-- Equation(s):
-- \inst11~combout\ = ( \b[10]~input_o\ & ( !\sub~input_o\ ) ) # ( !\b[10]~input_o\ & ( \sub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_b[10]~input_o\,
	combout => \inst11~combout\);

-- Location: MLABCELL_X34_Y1_N24
\wghyy|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wghyy|asdasdd~0_combout\ = ( \wefgy|asdasdd~1_combout\ & ( \inst11~combout\ & ( (!\a[11]~input_o\ & !\inst12~combout\) ) ) ) # ( !\wefgy|asdasdd~1_combout\ & ( \inst11~combout\ & ( (!\a[11]~input_o\ & ((!\inst12~combout\) # ((!\wefgy|asdasd~combout\ & 
-- !\a[10]~input_o\)))) # (\a[11]~input_o\ & (!\wefgy|asdasd~combout\ & (!\a[10]~input_o\ & !\inst12~combout\))) ) ) ) # ( \wefgy|asdasdd~1_combout\ & ( !\inst11~combout\ & ( (!\a[11]~input_o\ & ((!\a[10]~input_o\) # (!\inst12~combout\))) # (\a[11]~input_o\ 
-- & (!\a[10]~input_o\ & !\inst12~combout\)) ) ) ) # ( !\wefgy|asdasdd~1_combout\ & ( !\inst11~combout\ & ( (!\a[11]~input_o\ & ((!\wefgy|asdasd~combout\) # ((!\a[10]~input_o\) # (!\inst12~combout\)))) # (\a[11]~input_o\ & (!\inst12~combout\ & 
-- ((!\wefgy|asdasd~combout\) # (!\a[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111110101010000011101010100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[11]~input_o\,
	datab => \wefgy|ALT_INV_asdasd~combout\,
	datac => \ALT_INV_a[10]~input_o\,
	datad => \ALT_INV_inst12~combout\,
	datae => \wefgy|ALT_INV_asdasdd~1_combout\,
	dataf => \ALT_INV_inst11~combout\,
	combout => \wghyy|asdasdd~0_combout\);

-- Location: IOIBUF_X33_Y0_N58
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: MLABCELL_X34_Y1_N9
inst13 : cyclonev_lcell_comb
-- Equation(s):
-- \inst13~combout\ = ( \b[12]~input_o\ & ( !\sub~input_o\ ) ) # ( !\b[12]~input_o\ & ( \sub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \inst13~combout\);

-- Location: IOIBUF_X36_Y0_N18
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X25_Y0_N52
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
inst14 : cyclonev_lcell_comb
-- Equation(s):
-- \inst14~combout\ = !\sub~input_o\ $ (!\b[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	combout => \inst14~combout\);

-- Location: MLABCELL_X34_Y1_N0
\atht|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \atht|asdasdd~0_combout\ = ( \inst14~combout\ & ( ((!\wghyy|asdasdd~0_combout\ & ((\a[12]~input_o\) # (\inst13~combout\))) # (\wghyy|asdasdd~0_combout\ & (\inst13~combout\ & \a[12]~input_o\))) # (\a[13]~input_o\) ) ) # ( !\inst14~combout\ & ( 
-- (\a[13]~input_o\ & ((!\wghyy|asdasdd~0_combout\ & ((\a[12]~input_o\) # (\inst13~combout\))) # (\wghyy|asdasdd~0_combout\ & (\inst13~combout\ & \a[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011000000000010101100101011111111110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wghyy|ALT_INV_asdasdd~0_combout\,
	datab => \ALT_INV_inst13~combout\,
	datac => \ALT_INV_a[12]~input_o\,
	datad => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_inst14~combout\,
	combout => \atht|asdasdd~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: MLABCELL_X34_Y1_N36
\argsetr|daasassasasd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \argsetr|daasassasasd~0_combout\ = ( \atht|asdasdd~0_combout\ & ( \b[14]~input_o\ & ( (!\a[14]~input_o\ & ((!\a[15]~input_o\ $ (!\sub~input_o\)) # (\b[15]~input_o\))) # (\a[14]~input_o\ & ((!\b[15]~input_o\ $ (!\sub~input_o\)) # (\a[15]~input_o\))) ) ) ) 
-- # ( !\atht|asdasdd~0_combout\ & ( \b[14]~input_o\ & ( (!\a[14]~input_o\ & ((!\a[15]~input_o\) # (!\b[15]~input_o\ $ (\sub~input_o\)))) # (\a[14]~input_o\ & ((!\a[15]~input_o\ $ (!\sub~input_o\)) # (\b[15]~input_o\))) ) ) ) # ( \atht|asdasdd~0_combout\ & ( 
-- !\b[14]~input_o\ & ( (!\a[14]~input_o\ & ((!\b[15]~input_o\) # (!\a[15]~input_o\ $ (\sub~input_o\)))) # (\a[14]~input_o\ & ((!\b[15]~input_o\ $ (!\sub~input_o\)) # (\a[15]~input_o\))) ) ) ) # ( !\atht|asdasdd~0_combout\ & ( !\b[14]~input_o\ & ( 
-- (!\a[14]~input_o\ & ((!\a[15]~input_o\) # (!\b[15]~input_o\ $ (\sub~input_o\)))) # (\a[14]~input_o\ & ((!\b[15]~input_o\) # (!\a[15]~input_o\ $ (\sub~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101111101101111011010111110111101011011110110111101101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_a[14]~input_o\,
	datae => \atht|ALT_INV_asdasdd~0_combout\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \argsetr|daasassasasd~0_combout\);

-- Location: MLABCELL_X34_Y1_N42
\argsetr|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \argsetr|1212~combout\ = ( \atht|asdasdd~0_combout\ & ( \b[14]~input_o\ & ( !\a[15]~input_o\ $ (!\b[15]~input_o\ $ (((!\sub~input_o\) # (!\a[14]~input_o\)))) ) ) ) # ( !\atht|asdasdd~0_combout\ & ( \b[14]~input_o\ & ( !\a[15]~input_o\ $ (!\b[15]~input_o\ 
-- $ (((\a[14]~input_o\) # (\sub~input_o\)))) ) ) ) # ( \atht|asdasdd~0_combout\ & ( !\b[14]~input_o\ & ( !\a[15]~input_o\ $ (!\b[15]~input_o\ $ (((!\sub~input_o\ & \a[14]~input_o\)))) ) ) ) # ( !\atht|asdasdd~0_combout\ & ( !\b[14]~input_o\ & ( 
-- !\a[15]~input_o\ $ (!\b[15]~input_o\ $ (((\sub~input_o\ & !\a[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011001101001011001101001100110011001100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_a[14]~input_o\,
	datae => \atht|ALT_INV_asdasdd~0_combout\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \argsetr|1212~combout\);

-- Location: MLABCELL_X34_Y1_N33
\areaert|1212~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \areaert|1212~0_combout\ = ( \b[14]~input_o\ & ( !\sub~input_o\ $ (\a[14]~input_o\) ) ) # ( !\b[14]~input_o\ & ( !\sub~input_o\ $ (!\a[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datac => \ALT_INV_a[14]~input_o\,
	dataf => \ALT_INV_b[14]~input_o\,
	combout => \areaert|1212~0_combout\);

-- Location: MLABCELL_X34_Y1_N18
\areaert|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \areaert|1212~combout\ = ( \a[12]~input_o\ & ( \areaert|1212~0_combout\ & ( (!\inst14~combout\ & ((!\a[13]~input_o\) # ((\wghyy|asdasdd~0_combout\ & !\inst13~combout\)))) # (\inst14~combout\ & (\wghyy|asdasdd~0_combout\ & (!\a[13]~input_o\ & 
-- !\inst13~combout\))) ) ) ) # ( !\a[12]~input_o\ & ( \areaert|1212~0_combout\ & ( (!\inst14~combout\ & (((!\a[13]~input_o\) # (!\inst13~combout\)) # (\wghyy|asdasdd~0_combout\))) # (\inst14~combout\ & (!\a[13]~input_o\ & ((!\inst13~combout\) # 
-- (\wghyy|asdasdd~0_combout\)))) ) ) ) # ( \a[12]~input_o\ & ( !\areaert|1212~0_combout\ & ( (!\inst14~combout\ & (\a[13]~input_o\ & ((!\wghyy|asdasdd~0_combout\) # (\inst13~combout\)))) # (\inst14~combout\ & ((!\wghyy|asdasdd~0_combout\) # 
-- ((\inst13~combout\) # (\a[13]~input_o\)))) ) ) ) # ( !\a[12]~input_o\ & ( !\areaert|1212~0_combout\ & ( (!\inst14~combout\ & (!\wghyy|asdasdd~0_combout\ & (\a[13]~input_o\ & \inst13~combout\))) # (\inst14~combout\ & (((!\wghyy|asdasdd~0_combout\ & 
-- \inst13~combout\)) # (\a[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100101011001010110011111111111100110101001101010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wghyy|ALT_INV_asdasdd~0_combout\,
	datab => \ALT_INV_inst14~combout\,
	datac => \ALT_INV_a[13]~input_o\,
	datad => \ALT_INV_inst13~combout\,
	datae => \ALT_INV_a[12]~input_o\,
	dataf => \areaert|ALT_INV_1212~0_combout\,
	combout => \areaert|1212~combout\);

-- Location: MLABCELL_X34_Y1_N3
\atht|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \atht|1212~combout\ = ( \a[13]~input_o\ & ( !\inst14~combout\ $ (((!\wghyy|asdasdd~0_combout\ & ((\a[12]~input_o\) # (\inst13~combout\))) # (\wghyy|asdasdd~0_combout\ & (\inst13~combout\ & \a[12]~input_o\)))) ) ) # ( !\a[13]~input_o\ & ( !\inst14~combout\ 
-- $ (((!\wghyy|asdasdd~0_combout\ & (!\inst13~combout\ & !\a[12]~input_o\)) # (\wghyy|asdasdd~0_combout\ & ((!\inst13~combout\) # (!\a[12]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110110100001011011011010011010010010010111101001001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wghyy|ALT_INV_asdasdd~0_combout\,
	datab => \ALT_INV_inst13~combout\,
	datac => \ALT_INV_inst14~combout\,
	datad => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_a[13]~input_o\,
	combout => \atht|1212~combout\);

-- Location: MLABCELL_X34_Y1_N6
\srgarh|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \srgarh|1212~combout\ = !\inst13~combout\ $ (!\wghyy|asdasdd~0_combout\ $ (!\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst13~combout\,
	datac => \wghyy|ALT_INV_asdasdd~0_combout\,
	datad => \ALT_INV_a[12]~input_o\,
	combout => \srgarh|1212~combout\);

-- Location: MLABCELL_X34_Y1_N54
\wghyy|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \wghyy|1212~combout\ = ( \wefgy|asdasdd~1_combout\ & ( \inst11~combout\ & ( !\a[11]~input_o\ $ (\inst12~combout\) ) ) ) # ( !\wefgy|asdasdd~1_combout\ & ( \inst11~combout\ & ( !\a[11]~input_o\ $ (!\inst12~combout\ $ (((\a[10]~input_o\) # 
-- (\wefgy|asdasd~combout\)))) ) ) ) # ( \wefgy|asdasdd~1_combout\ & ( !\inst11~combout\ & ( !\a[11]~input_o\ $ (!\a[10]~input_o\ $ (\inst12~combout\)) ) ) ) # ( !\wefgy|asdasdd~1_combout\ & ( !\inst11~combout\ & ( !\a[11]~input_o\ $ (!\inst12~combout\ $ 
-- (((\wefgy|asdasd~combout\ & \a[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010110101010010101101010100101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[11]~input_o\,
	datab => \wefgy|ALT_INV_asdasd~combout\,
	datac => \ALT_INV_a[10]~input_o\,
	datad => \ALT_INV_inst12~combout\,
	datae => \wefgy|ALT_INV_asdasdd~1_combout\,
	dataf => \ALT_INV_inst11~combout\,
	combout => \wghyy|1212~combout\);

-- Location: MLABCELL_X34_Y1_N48
\ergw|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \ergw|1212~combout\ = ( \inst11~combout\ & ( !\a[10]~input_o\ $ (((\wefgy|asdasdd~1_combout\) # (\wefgy|asdasd~combout\))) ) ) # ( !\inst11~combout\ & ( !\a[10]~input_o\ $ (((!\wefgy|asdasd~combout\ & !\wefgy|asdasdd~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \wefgy|ALT_INV_asdasd~combout\,
	datac => \ALT_INV_a[10]~input_o\,
	datad => \wefgy|ALT_INV_asdasdd~1_combout\,
	dataf => \ALT_INV_inst11~combout\,
	combout => \ergw|1212~combout\);

-- Location: MLABCELL_X13_Y1_N48
\egut|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \egut|asdasdd~0_combout\ = (!\inst8~combout\ & (!\yd|asdasdd~0_combout\ & \a[7]~input_o\)) # (\inst8~combout\ & ((!\yd|asdasdd~0_combout\) # (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst8~combout\,
	datab => \yd|ALT_INV_asdasdd~0_combout\,
	datac => \ALT_INV_a[7]~input_o\,
	combout => \egut|asdasdd~0_combout\);

-- Location: MLABCELL_X13_Y1_N3
\wefgy|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \wefgy|1212~combout\ = ( \a[8]~input_o\ & ( !\a[9]~input_o\ $ (!\inst10~combout\ $ (((\inst9~combout\) # (\egut|asdasdd~0_combout\)))) ) ) # ( !\a[8]~input_o\ & ( !\a[9]~input_o\ $ (!\inst10~combout\ $ (((\egut|asdasdd~0_combout\ & \inst9~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[9]~input_o\,
	datab => \egut|ALT_INV_asdasdd~0_combout\,
	datac => \ALT_INV_inst9~combout\,
	datad => \ALT_INV_inst10~combout\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \wefgy|1212~combout\);

-- Location: MLABCELL_X13_Y1_N39
\srgt|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \srgt|1212~combout\ = ( \inst9~combout\ & ( !\a[8]~input_o\ $ (\egut|asdasdd~0_combout\) ) ) # ( !\inst9~combout\ & ( !\a[8]~input_o\ $ (!\egut|asdasdd~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datac => \egut|ALT_INV_asdasdd~0_combout\,
	dataf => \ALT_INV_inst9~combout\,
	combout => \srgt|1212~combout\);

-- Location: MLABCELL_X13_Y1_N51
\egut|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \egut|1212~combout\ = !\inst8~combout\ $ (!\yd|asdasdd~0_combout\ $ (!\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst8~combout\,
	datab => \yd|ALT_INV_asdasdd~0_combout\,
	datad => \ALT_INV_a[7]~input_o\,
	combout => \egut|1212~combout\);

-- Location: MLABCELL_X13_Y1_N54
\dse|asdasdd~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dse|asdasdd~2_combout\ = ( !\dse|asdasdd~1_combout\ & ( !\dse|asdasd~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dse|ALT_INV_asdasd~combout\,
	dataf => \dse|ALT_INV_asdasdd~1_combout\,
	combout => \dse|asdasdd~2_combout\);

-- Location: MLABCELL_X13_Y1_N24
\yd|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \yd|1212~combout\ = ( \inst7~combout\ & ( !\a[6]~input_o\ $ (((!\a[5]~input_o\ & (!\dse|asdasdd~2_combout\ & \inst6~combout\)) # (\a[5]~input_o\ & ((!\dse|asdasdd~2_combout\) # (\inst6~combout\))))) ) ) # ( !\inst7~combout\ & ( !\a[6]~input_o\ $ 
-- (((!\a[5]~input_o\ & ((!\inst6~combout\) # (\dse|asdasdd~2_combout\))) # (\a[5]~input_o\ & (\dse|asdasdd~2_combout\ & !\inst6~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110110010010011011011001010110010010011011011001001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \dse|ALT_INV_asdasdd~2_combout\,
	datac => \ALT_INV_inst6~combout\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_inst7~combout\,
	combout => \yd|1212~combout\);

-- Location: MLABCELL_X13_Y1_N27
\eg|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \eg|1212~combout\ = !\a[5]~input_o\ $ (!\dse|asdasdd~2_combout\ $ (!\inst6~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011010011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \dse|ALT_INV_asdasdd~2_combout\,
	datad => \ALT_INV_inst6~combout\,
	combout => \eg|1212~combout\);

-- Location: LABCELL_X19_Y1_N9
\aa|asdasdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \aa|asdasdd~0_combout\ = ( \a[2]~input_o\ & ( (\inst3~combout\) # (\aasd|asdasdd~0_combout\) ) ) # ( !\a[2]~input_o\ & ( (\aasd|asdasdd~0_combout\ & \inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \aasd|ALT_INV_asdasdd~0_combout\,
	datad => \ALT_INV_inst3~combout\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \aa|asdasdd~0_combout\);

-- Location: LABCELL_X19_Y1_N42
\dse|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \dse|1212~combout\ = ( \b[3]~input_o\ & ( \a[3]~input_o\ & ( !\a[4]~input_o\ $ (!\b[4]~input_o\ $ (((!\aa|asdasdd~0_combout\) # (!\sub~input_o\)))) ) ) ) # ( !\b[3]~input_o\ & ( \a[3]~input_o\ & ( !\a[4]~input_o\ $ (!\b[4]~input_o\ $ 
-- (((\aa|asdasdd~0_combout\ & !\sub~input_o\)))) ) ) ) # ( \b[3]~input_o\ & ( !\a[3]~input_o\ & ( !\a[4]~input_o\ $ (!\b[4]~input_o\ $ (((\sub~input_o\) # (\aa|asdasdd~0_combout\)))) ) ) ) # ( !\b[3]~input_o\ & ( !\a[3]~input_o\ & ( !\a[4]~input_o\ $ 
-- (!\b[4]~input_o\ $ (((!\aa|asdasdd~0_combout\ & \sub~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010010110011010011010010101101001010110101010010110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \aa|ALT_INV_asdasdd~0_combout\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_sub~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \dse|1212~combout\);

-- Location: LABCELL_X19_Y1_N6
\av|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \av|1212~combout\ = ( \aa|asdasdd~0_combout\ & ( !\inst4~combout\ $ (\a[3]~input_o\) ) ) # ( !\aa|asdasdd~0_combout\ & ( !\inst4~combout\ $ (!\a[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst4~combout\,
	datac => \ALT_INV_a[3]~input_o\,
	dataf => \aa|ALT_INV_asdasdd~0_combout\,
	combout => \av|1212~combout\);

-- Location: LABCELL_X19_Y1_N51
\aa|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \aa|1212~combout\ = ( \inst3~combout\ & ( \a[2]~input_o\ & ( \aasd|asdasdd~0_combout\ ) ) ) # ( !\inst3~combout\ & ( \a[2]~input_o\ & ( !\aasd|asdasdd~0_combout\ ) ) ) # ( \inst3~combout\ & ( !\a[2]~input_o\ & ( !\aasd|asdasdd~0_combout\ ) ) ) # ( 
-- !\inst3~combout\ & ( !\a[2]~input_o\ & ( \aasd|asdasdd~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \aasd|ALT_INV_asdasdd~0_combout\,
	datae => \ALT_INV_inst3~combout\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \aa|1212~combout\);

-- Location: LABCELL_X19_Y1_N27
\aasd|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \aasd|1212~combout\ = ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\b[0]~input_o\ & (!\a[0]~input_o\ $ (!\sub~input_o\))))) ) ) # ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\b[0]~input_o\) # (!\a[0]~input_o\ $ (\sub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001001011000111100100101111100001101101001110000110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \aasd|1212~combout\);

-- Location: LABCELL_X19_Y1_N54
\inst|1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|1212~combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ ) ) # ( !\b[0]~input_o\ & ( \a[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \inst|1212~combout\);

-- Location: LABCELL_X50_Y13_N0
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


