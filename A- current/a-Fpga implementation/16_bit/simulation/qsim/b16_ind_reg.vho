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

-- DATE "10/22/2022 11:23:52"

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

ENTITY 	b16_ind_reg IS
    PORT (
	enableee : OUT std_logic;
	enableset : IN std_logic_vector(15 DOWNTO 0);
	currentenable : IN std_logic_vector(15 DOWNTO 0);
	generalc : OUT std_logic;
	nextenable : OUT std_logic_vector(15 DOWNTO 0);
	generala : IN std_logic
	);
END b16_ind_reg;

-- Design Ports Information
-- enableee	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- generalc	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextenable[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- generala	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[8]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[12]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[13]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableset[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[13]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentenable[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF b16_ind_reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enableee : std_logic;
SIGNAL ww_enableset : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_currentenable : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_generalc : std_logic;
SIGNAL ww_nextenable : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_generala : std_logic;
SIGNAL \generala~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \currentenable[1]~input_o\ : std_logic;
SIGNAL \currentenable[2]~input_o\ : std_logic;
SIGNAL \enableset[13]~input_o\ : std_logic;
SIGNAL \enableset[15]~input_o\ : std_logic;
SIGNAL \enableset[9]~input_o\ : std_logic;
SIGNAL \enableset[11]~input_o\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \currentenable[3]~input_o\ : std_logic;
SIGNAL \enableset[2]~input_o\ : std_logic;
SIGNAL \enableset[0]~input_o\ : std_logic;
SIGNAL \enableset[6]~input_o\ : std_logic;
SIGNAL \enableset[4]~input_o\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \enableset[5]~input_o\ : std_logic;
SIGNAL \enableset[1]~input_o\ : std_logic;
SIGNAL \enableset[7]~input_o\ : std_logic;
SIGNAL \enableset[3]~input_o\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \enableset[12]~input_o\ : std_logic;
SIGNAL \enableset[10]~input_o\ : std_logic;
SIGNAL \enableset[8]~input_o\ : std_logic;
SIGNAL \enableset[14]~input_o\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \currentenable[0]~input_o\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~4_combout\ : std_logic;
SIGNAL \currentenable[15]~input_o\ : std_logic;
SIGNAL \currentenable[14]~input_o\ : std_logic;
SIGNAL \currentenable[6]~input_o\ : std_logic;
SIGNAL \currentenable[7]~input_o\ : std_logic;
SIGNAL \currentenable[10]~input_o\ : std_logic;
SIGNAL \currentenable[8]~input_o\ : std_logic;
SIGNAL \currentenable[9]~input_o\ : std_logic;
SIGNAL \currentenable[5]~input_o\ : std_logic;
SIGNAL \currentenable[4]~input_o\ : std_logic;
SIGNAL \inst|inst7|inst3~combout\ : std_logic;
SIGNAL \inst|inst16|inst3~combout\ : std_logic;
SIGNAL \currentenable[11]~input_o\ : std_logic;
SIGNAL \currentenable[12]~input_o\ : std_logic;
SIGNAL \currentenable[13]~input_o\ : std_logic;
SIGNAL \inst|inst26|inst6~combout\ : std_logic;
SIGNAL \inst|inst25|inst6~combout\ : std_logic;
SIGNAL \inst|inst24|inst6~combout\ : std_logic;
SIGNAL \inst|inst23|inst6~combout\ : std_logic;
SIGNAL \inst|inst17|inst6~combout\ : std_logic;
SIGNAL \inst|inst16|inst6~combout\ : std_logic;
SIGNAL \inst|inst15|inst6~combout\ : std_logic;
SIGNAL \inst|inst20|inst6~combout\ : std_logic;
SIGNAL \inst|inst9|inst6~combout\ : std_logic;
SIGNAL \inst|inst8|inst6~combout\ : std_logic;
SIGNAL \inst|inst7|inst6~combout\ : std_logic;
SIGNAL \inst|inst13|inst6~combout\ : std_logic;
SIGNAL \inst|inst4|inst6~combout\ : std_logic;
SIGNAL \inst|inst3|inst6~combout\ : std_logic;
SIGNAL \inst|inst2|inst6~combout\ : std_logic;
SIGNAL \ALT_INV_currentenable[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_currentenable[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_enableset[0]~input_o\ : std_logic;
SIGNAL \inst|inst16|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst|inst7|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;

BEGIN

enableee <= ww_enableee;
ww_enableset <= enableset;
ww_currentenable <= currentenable;
generalc <= ww_generalc;
nextenable <= ww_nextenable;
ww_generala <= generala;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_currentenable[4]~input_o\ <= NOT \currentenable[4]~input_o\;
\ALT_INV_currentenable[5]~input_o\ <= NOT \currentenable[5]~input_o\;
\ALT_INV_currentenable[6]~input_o\ <= NOT \currentenable[6]~input_o\;
\ALT_INV_currentenable[7]~input_o\ <= NOT \currentenable[7]~input_o\;
\ALT_INV_currentenable[8]~input_o\ <= NOT \currentenable[8]~input_o\;
\ALT_INV_currentenable[9]~input_o\ <= NOT \currentenable[9]~input_o\;
\ALT_INV_currentenable[10]~input_o\ <= NOT \currentenable[10]~input_o\;
\ALT_INV_currentenable[11]~input_o\ <= NOT \currentenable[11]~input_o\;
\ALT_INV_currentenable[12]~input_o\ <= NOT \currentenable[12]~input_o\;
\ALT_INV_currentenable[13]~input_o\ <= NOT \currentenable[13]~input_o\;
\ALT_INV_currentenable[14]~input_o\ <= NOT \currentenable[14]~input_o\;
\ALT_INV_currentenable[15]~input_o\ <= NOT \currentenable[15]~input_o\;
\ALT_INV_currentenable[0]~input_o\ <= NOT \currentenable[0]~input_o\;
\ALT_INV_currentenable[3]~input_o\ <= NOT \currentenable[3]~input_o\;
\ALT_INV_enableset[15]~input_o\ <= NOT \enableset[15]~input_o\;
\ALT_INV_enableset[13]~input_o\ <= NOT \enableset[13]~input_o\;
\ALT_INV_enableset[11]~input_o\ <= NOT \enableset[11]~input_o\;
\ALT_INV_enableset[9]~input_o\ <= NOT \enableset[9]~input_o\;
\ALT_INV_enableset[7]~input_o\ <= NOT \enableset[7]~input_o\;
\ALT_INV_enableset[5]~input_o\ <= NOT \enableset[5]~input_o\;
\ALT_INV_enableset[3]~input_o\ <= NOT \enableset[3]~input_o\;
\ALT_INV_enableset[1]~input_o\ <= NOT \enableset[1]~input_o\;
\ALT_INV_enableset[14]~input_o\ <= NOT \enableset[14]~input_o\;
\ALT_INV_enableset[12]~input_o\ <= NOT \enableset[12]~input_o\;
\ALT_INV_enableset[10]~input_o\ <= NOT \enableset[10]~input_o\;
\ALT_INV_enableset[8]~input_o\ <= NOT \enableset[8]~input_o\;
\ALT_INV_currentenable[2]~input_o\ <= NOT \currentenable[2]~input_o\;
\ALT_INV_currentenable[1]~input_o\ <= NOT \currentenable[1]~input_o\;
\ALT_INV_enableset[6]~input_o\ <= NOT \enableset[6]~input_o\;
\ALT_INV_enableset[4]~input_o\ <= NOT \enableset[4]~input_o\;
\ALT_INV_enableset[2]~input_o\ <= NOT \enableset[2]~input_o\;
\ALT_INV_enableset[0]~input_o\ <= NOT \enableset[0]~input_o\;
\inst|inst16|ALT_INV_inst3~combout\ <= NOT \inst|inst16|inst3~combout\;
\inst|inst7|ALT_INV_inst3~combout\ <= NOT \inst|inst7|inst3~combout\;
\inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\ <= NOT \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3_combout\;
\inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ <= NOT \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2_combout\;
\inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ <= NOT \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\;
\inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\;

-- Location: IOOBUF_X33_Y0_N59
\enableee~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~4_combout\,
	devoe => ww_devoe,
	o => ww_enableee);

-- Location: IOOBUF_X10_Y0_N42
\generalc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_generalc);

-- Location: IOOBUF_X12_Y0_N36
\nextenable[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst26|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(15));

-- Location: IOOBUF_X10_Y0_N59
\nextenable[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst25|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(14));

-- Location: IOOBUF_X16_Y0_N93
\nextenable[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst24|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(13));

-- Location: IOOBUF_X14_Y0_N36
\nextenable[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst23|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(12));

-- Location: IOOBUF_X11_Y0_N2
\nextenable[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst17|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(11));

-- Location: IOOBUF_X11_Y0_N53
\nextenable[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst16|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(10));

-- Location: IOOBUF_X14_Y0_N19
\nextenable[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst15|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(9));

-- Location: IOOBUF_X18_Y0_N53
\nextenable[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst20|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(8));

-- Location: IOOBUF_X10_Y0_N76
\nextenable[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst9|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(7));

-- Location: IOOBUF_X18_Y0_N2
\nextenable[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst8|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(6));

-- Location: IOOBUF_X24_Y0_N2
\nextenable[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(5));

-- Location: IOOBUF_X22_Y0_N53
\nextenable[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst13|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(4));

-- Location: IOOBUF_X22_Y0_N36
\nextenable[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(3));

-- Location: IOOBUF_X23_Y0_N42
\nextenable[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(2));

-- Location: IOOBUF_X33_Y0_N42
\nextenable[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst6~combout\,
	devoe => ww_devoe,
	o => ww_nextenable(1));

-- Location: IOOBUF_X19_Y0_N19
\nextenable[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_currentenable[0]~input_o\,
	devoe => ww_devoe,
	o => ww_nextenable(0));

-- Location: IOIBUF_X24_Y0_N35
\currentenable[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(1),
	o => \currentenable[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\currentenable[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(2),
	o => \currentenable[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\enableset[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(13),
	o => \enableset[13]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\enableset[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(15),
	o => \enableset[15]~input_o\);

-- Location: IOIBUF_X25_Y0_N35
\enableset[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(9),
	o => \enableset[9]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\enableset[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(11),
	o => \enableset[11]~input_o\);

-- Location: LABCELL_X25_Y1_N18
\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3_combout\ = ( \enableset[9]~input_o\ & ( \enableset[11]~input_o\ & ( (!\currentenable[2]~input_o\) # ((!\currentenable[1]~input_o\ & (\enableset[13]~input_o\)) # (\currentenable[1]~input_o\ & 
-- ((\enableset[15]~input_o\)))) ) ) ) # ( !\enableset[9]~input_o\ & ( \enableset[11]~input_o\ & ( (!\currentenable[1]~input_o\ & (\currentenable[2]~input_o\ & (\enableset[13]~input_o\))) # (\currentenable[1]~input_o\ & ((!\currentenable[2]~input_o\) # 
-- ((\enableset[15]~input_o\)))) ) ) ) # ( \enableset[9]~input_o\ & ( !\enableset[11]~input_o\ & ( (!\currentenable[1]~input_o\ & ((!\currentenable[2]~input_o\) # ((\enableset[13]~input_o\)))) # (\currentenable[1]~input_o\ & (\currentenable[2]~input_o\ & 
-- ((\enableset[15]~input_o\)))) ) ) ) # ( !\enableset[9]~input_o\ & ( !\enableset[11]~input_o\ & ( (\currentenable[2]~input_o\ & ((!\currentenable[1]~input_o\ & (\enableset[13]~input_o\)) # (\currentenable[1]~input_o\ & ((\enableset[15]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[1]~input_o\,
	datab => \ALT_INV_currentenable[2]~input_o\,
	datac => \ALT_INV_enableset[13]~input_o\,
	datad => \ALT_INV_enableset[15]~input_o\,
	datae => \ALT_INV_enableset[9]~input_o\,
	dataf => \ALT_INV_enableset[11]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3_combout\);

-- Location: IOIBUF_X16_Y0_N58
\currentenable[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(3),
	o => \currentenable[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N18
\enableset[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(2),
	o => \enableset[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\enableset[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(0),
	o => \enableset[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\enableset[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(6),
	o => \enableset[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\enableset[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(4),
	o => \enableset[4]~input_o\);

-- Location: LABCELL_X25_Y1_N0
\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\ = ( \currentenable[2]~input_o\ & ( \enableset[4]~input_o\ & ( (!\currentenable[1]~input_o\) # (\enableset[6]~input_o\) ) ) ) # ( !\currentenable[2]~input_o\ & ( \enableset[4]~input_o\ 
-- & ( (!\currentenable[1]~input_o\ & ((\enableset[0]~input_o\))) # (\currentenable[1]~input_o\ & (\enableset[2]~input_o\)) ) ) ) # ( \currentenable[2]~input_o\ & ( !\enableset[4]~input_o\ & ( (\currentenable[1]~input_o\ & \enableset[6]~input_o\) ) ) ) # ( 
-- !\currentenable[2]~input_o\ & ( !\enableset[4]~input_o\ & ( (!\currentenable[1]~input_o\ & ((\enableset[0]~input_o\))) # (\currentenable[1]~input_o\ & (\enableset[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enableset[2]~input_o\,
	datab => \ALT_INV_enableset[0]~input_o\,
	datac => \ALT_INV_currentenable[1]~input_o\,
	datad => \ALT_INV_enableset[6]~input_o\,
	datae => \ALT_INV_currentenable[2]~input_o\,
	dataf => \ALT_INV_enableset[4]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\);

-- Location: IOIBUF_X23_Y0_N92
\enableset[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(5),
	o => \enableset[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\enableset[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(1),
	o => \enableset[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\enableset[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(7),
	o => \enableset[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\enableset[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(3),
	o => \enableset[3]~input_o\);

-- Location: LABCELL_X25_Y1_N12
\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2_combout\ = ( \enableset[7]~input_o\ & ( \enableset[3]~input_o\ & ( ((!\currentenable[2]~input_o\ & ((\enableset[1]~input_o\))) # (\currentenable[2]~input_o\ & (\enableset[5]~input_o\))) # 
-- (\currentenable[1]~input_o\) ) ) ) # ( !\enableset[7]~input_o\ & ( \enableset[3]~input_o\ & ( (!\currentenable[1]~input_o\ & ((!\currentenable[2]~input_o\ & ((\enableset[1]~input_o\))) # (\currentenable[2]~input_o\ & (\enableset[5]~input_o\)))) # 
-- (\currentenable[1]~input_o\ & (!\currentenable[2]~input_o\)) ) ) ) # ( \enableset[7]~input_o\ & ( !\enableset[3]~input_o\ & ( (!\currentenable[1]~input_o\ & ((!\currentenable[2]~input_o\ & ((\enableset[1]~input_o\))) # (\currentenable[2]~input_o\ & 
-- (\enableset[5]~input_o\)))) # (\currentenable[1]~input_o\ & (\currentenable[2]~input_o\)) ) ) ) # ( !\enableset[7]~input_o\ & ( !\enableset[3]~input_o\ & ( (!\currentenable[1]~input_o\ & ((!\currentenable[2]~input_o\ & ((\enableset[1]~input_o\))) # 
-- (\currentenable[2]~input_o\ & (\enableset[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[1]~input_o\,
	datab => \ALT_INV_currentenable[2]~input_o\,
	datac => \ALT_INV_enableset[5]~input_o\,
	datad => \ALT_INV_enableset[1]~input_o\,
	datae => \ALT_INV_enableset[7]~input_o\,
	dataf => \ALT_INV_enableset[3]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2_combout\);

-- Location: IOIBUF_X25_Y0_N52
\enableset[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(12),
	o => \enableset[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\enableset[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(10),
	o => \enableset[10]~input_o\);

-- Location: IOIBUF_X29_Y0_N18
\enableset[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(8),
	o => \enableset[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\enableset[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableset(14),
	o => \enableset[14]~input_o\);

-- Location: LABCELL_X25_Y1_N36
\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ = ( \currentenable[2]~input_o\ & ( \enableset[14]~input_o\ & ( (\currentenable[1]~input_o\) # (\enableset[12]~input_o\) ) ) ) # ( !\currentenable[2]~input_o\ & ( 
-- \enableset[14]~input_o\ & ( (!\currentenable[1]~input_o\ & ((\enableset[8]~input_o\))) # (\currentenable[1]~input_o\ & (\enableset[10]~input_o\)) ) ) ) # ( \currentenable[2]~input_o\ & ( !\enableset[14]~input_o\ & ( (\enableset[12]~input_o\ & 
-- !\currentenable[1]~input_o\) ) ) ) # ( !\currentenable[2]~input_o\ & ( !\enableset[14]~input_o\ & ( (!\currentenable[1]~input_o\ & ((\enableset[8]~input_o\))) # (\currentenable[1]~input_o\ & (\enableset[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enableset[12]~input_o\,
	datab => \ALT_INV_enableset[10]~input_o\,
	datac => \ALT_INV_currentenable[1]~input_o\,
	datad => \ALT_INV_enableset[8]~input_o\,
	datae => \ALT_INV_currentenable[2]~input_o\,
	dataf => \ALT_INV_enableset[14]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\);

-- Location: IOIBUF_X19_Y0_N1
\currentenable[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(0),
	o => \currentenable[0]~input_o\);

-- Location: LABCELL_X25_Y1_N54
\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~4_combout\ = ( \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ( \currentenable[0]~input_o\ & ( (!\currentenable[3]~input_o\ & 
-- ((\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2_combout\))) # (\currentenable[3]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3_combout\)) ) ) ) # ( 
-- !\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ( \currentenable[0]~input_o\ & ( (!\currentenable[3]~input_o\ & ((\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~2_combout\))) # (\currentenable[3]~input_o\ & 
-- (\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~3_combout\)) ) ) ) # ( \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ( !\currentenable[0]~input_o\ & ( 
-- (\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\) # (\currentenable[3]~input_o\) ) ) ) # ( !\inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~1_combout\ & ( !\currentenable[0]~input_o\ & ( (!\currentenable[3]~input_o\ & 
-- \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~3_combout\,
	datab => \ALT_INV_currentenable[3]~input_o\,
	datac => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datad => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~2_combout\,
	datae => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	dataf => \ALT_INV_currentenable[0]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|l4_w0_n0_mux_dataout~4_combout\);

-- Location: IOIBUF_X12_Y0_N1
\currentenable[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(15),
	o => \currentenable[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\currentenable[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(14),
	o => \currentenable[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N41
\currentenable[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(6),
	o => \currentenable[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\currentenable[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(7),
	o => \currentenable[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\currentenable[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(10),
	o => \currentenable[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\currentenable[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(8),
	o => \currentenable[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\currentenable[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(9),
	o => \currentenable[9]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\currentenable[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(5),
	o => \currentenable[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\currentenable[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(4),
	o => \currentenable[4]~input_o\);

-- Location: LABCELL_X25_Y1_N30
\inst|inst7|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst7|inst3~combout\ = ( \currentenable[1]~input_o\ & ( \currentenable[0]~input_o\ & ( (\currentenable[5]~input_o\ & (\currentenable[3]~input_o\ & (\currentenable[4]~input_o\ & \currentenable[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[5]~input_o\,
	datab => \ALT_INV_currentenable[3]~input_o\,
	datac => \ALT_INV_currentenable[4]~input_o\,
	datad => \ALT_INV_currentenable[2]~input_o\,
	datae => \ALT_INV_currentenable[1]~input_o\,
	dataf => \ALT_INV_currentenable[0]~input_o\,
	combout => \inst|inst7|inst3~combout\);

-- Location: LABCELL_X14_Y1_N0
\inst|inst16|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst16|inst3~combout\ = ( \currentenable[9]~input_o\ & ( \inst|inst7|inst3~combout\ & ( (\currentenable[6]~input_o\ & (\currentenable[7]~input_o\ & (\currentenable[10]~input_o\ & \currentenable[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[6]~input_o\,
	datab => \ALT_INV_currentenable[7]~input_o\,
	datac => \ALT_INV_currentenable[10]~input_o\,
	datad => \ALT_INV_currentenable[8]~input_o\,
	datae => \ALT_INV_currentenable[9]~input_o\,
	dataf => \inst|inst7|ALT_INV_inst3~combout\,
	combout => \inst|inst16|inst3~combout\);

-- Location: IOIBUF_X12_Y0_N52
\currentenable[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(11),
	o => \currentenable[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\currentenable[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(12),
	o => \currentenable[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N18
\currentenable[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_currentenable(13),
	o => \currentenable[13]~input_o\);

-- Location: LABCELL_X14_Y1_N36
\inst|inst26|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst26|inst6~combout\ = ( \currentenable[12]~input_o\ & ( \currentenable[13]~input_o\ & ( !\currentenable[15]~input_o\ $ (((!\currentenable[14]~input_o\) # ((!\inst|inst16|inst3~combout\) # (!\currentenable[11]~input_o\)))) ) ) ) # ( 
-- !\currentenable[12]~input_o\ & ( \currentenable[13]~input_o\ & ( \currentenable[15]~input_o\ ) ) ) # ( \currentenable[12]~input_o\ & ( !\currentenable[13]~input_o\ & ( \currentenable[15]~input_o\ ) ) ) # ( !\currentenable[12]~input_o\ & ( 
-- !\currentenable[13]~input_o\ & ( \currentenable[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[15]~input_o\,
	datab => \ALT_INV_currentenable[14]~input_o\,
	datac => \inst|inst16|ALT_INV_inst3~combout\,
	datad => \ALT_INV_currentenable[11]~input_o\,
	datae => \ALT_INV_currentenable[12]~input_o\,
	dataf => \ALT_INV_currentenable[13]~input_o\,
	combout => \inst|inst26|inst6~combout\);

-- Location: LABCELL_X14_Y1_N12
\inst|inst25|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst25|inst6~combout\ = ( \inst|inst16|inst3~combout\ & ( !\currentenable[14]~input_o\ $ (((!\currentenable[12]~input_o\) # ((!\currentenable[13]~input_o\) # (!\currentenable[11]~input_o\)))) ) ) # ( !\inst|inst16|inst3~combout\ & ( 
-- \currentenable[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011011000110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[12]~input_o\,
	datab => \ALT_INV_currentenable[14]~input_o\,
	datac => \ALT_INV_currentenable[13]~input_o\,
	datad => \ALT_INV_currentenable[11]~input_o\,
	datae => \inst|inst16|ALT_INV_inst3~combout\,
	combout => \inst|inst25|inst6~combout\);

-- Location: LABCELL_X14_Y1_N21
\inst|inst24|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst24|inst6~combout\ = ( \inst|inst16|inst3~combout\ & ( !\currentenable[13]~input_o\ $ (((!\currentenable[11]~input_o\) # (!\currentenable[12]~input_o\))) ) ) # ( !\inst|inst16|inst3~combout\ & ( \currentenable[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101101001010101010101010101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[13]~input_o\,
	datac => \ALT_INV_currentenable[11]~input_o\,
	datad => \ALT_INV_currentenable[12]~input_o\,
	datae => \inst|inst16|ALT_INV_inst3~combout\,
	combout => \inst|inst24|inst6~combout\);

-- Location: LABCELL_X14_Y1_N54
\inst|inst23|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst23|inst6~combout\ = ( \currentenable[11]~input_o\ & ( !\inst|inst16|inst3~combout\ $ (!\currentenable[12]~input_o\) ) ) # ( !\currentenable[11]~input_o\ & ( \currentenable[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010110100101101000001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16|ALT_INV_inst3~combout\,
	datac => \ALT_INV_currentenable[12]~input_o\,
	datae => \ALT_INV_currentenable[11]~input_o\,
	combout => \inst|inst23|inst6~combout\);

-- Location: LABCELL_X14_Y1_N33
\inst|inst17|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst17|inst6~combout\ = ( \currentenable[11]~input_o\ & ( !\inst|inst16|inst3~combout\ ) ) # ( !\currentenable[11]~input_o\ & ( \inst|inst16|inst3~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst16|ALT_INV_inst3~combout\,
	datae => \ALT_INV_currentenable[11]~input_o\,
	combout => \inst|inst17|inst6~combout\);

-- Location: LABCELL_X14_Y1_N6
\inst|inst16|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst16|inst6~combout\ = ( \currentenable[9]~input_o\ & ( \inst|inst7|inst3~combout\ & ( !\currentenable[10]~input_o\ $ (((!\currentenable[6]~input_o\) # ((!\currentenable[7]~input_o\) # (!\currentenable[8]~input_o\)))) ) ) ) # ( 
-- !\currentenable[9]~input_o\ & ( \inst|inst7|inst3~combout\ & ( \currentenable[10]~input_o\ ) ) ) # ( \currentenable[9]~input_o\ & ( !\inst|inst7|inst3~combout\ & ( \currentenable[10]~input_o\ ) ) ) # ( !\currentenable[9]~input_o\ & ( 
-- !\inst|inst7|inst3~combout\ & ( \currentenable[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[6]~input_o\,
	datab => \ALT_INV_currentenable[7]~input_o\,
	datac => \ALT_INV_currentenable[10]~input_o\,
	datad => \ALT_INV_currentenable[8]~input_o\,
	datae => \ALT_INV_currentenable[9]~input_o\,
	dataf => \inst|inst7|ALT_INV_inst3~combout\,
	combout => \inst|inst16|inst6~combout\);

-- Location: LABCELL_X14_Y1_N42
\inst|inst15|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst15|inst6~combout\ = ( \currentenable[9]~input_o\ & ( \inst|inst7|inst3~combout\ & ( (!\currentenable[7]~input_o\) # ((!\currentenable[6]~input_o\) # (!\currentenable[8]~input_o\)) ) ) ) # ( !\currentenable[9]~input_o\ & ( 
-- \inst|inst7|inst3~combout\ & ( (\currentenable[7]~input_o\ & (\currentenable[6]~input_o\ & \currentenable[8]~input_o\)) ) ) ) # ( \currentenable[9]~input_o\ & ( !\inst|inst7|inst3~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_currentenable[7]~input_o\,
	datac => \ALT_INV_currentenable[6]~input_o\,
	datad => \ALT_INV_currentenable[8]~input_o\,
	datae => \ALT_INV_currentenable[9]~input_o\,
	dataf => \inst|inst7|ALT_INV_inst3~combout\,
	combout => \inst|inst15|inst6~combout\);

-- Location: LABCELL_X14_Y1_N51
\inst|inst20|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst20|inst6~combout\ = ( \currentenable[6]~input_o\ & ( \inst|inst7|inst3~combout\ & ( !\currentenable[8]~input_o\ $ (!\currentenable[7]~input_o\) ) ) ) # ( !\currentenable[6]~input_o\ & ( \inst|inst7|inst3~combout\ & ( \currentenable[8]~input_o\ ) 
-- ) ) # ( \currentenable[6]~input_o\ & ( !\inst|inst7|inst3~combout\ & ( \currentenable[8]~input_o\ ) ) ) # ( !\currentenable[6]~input_o\ & ( !\inst|inst7|inst3~combout\ & ( \currentenable[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_currentenable[8]~input_o\,
	datac => \ALT_INV_currentenable[7]~input_o\,
	datae => \ALT_INV_currentenable[6]~input_o\,
	dataf => \inst|inst7|ALT_INV_inst3~combout\,
	combout => \inst|inst20|inst6~combout\);

-- Location: LABCELL_X14_Y1_N24
\inst|inst9|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst9|inst6~combout\ = ( \currentenable[7]~input_o\ & ( (!\currentenable[6]~input_o\) # (!\inst|inst7|inst3~combout\) ) ) # ( !\currentenable[7]~input_o\ & ( (\currentenable[6]~input_o\ & \inst|inst7|inst3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[6]~input_o\,
	datac => \inst|inst7|ALT_INV_inst3~combout\,
	dataf => \ALT_INV_currentenable[7]~input_o\,
	combout => \inst|inst9|inst6~combout\);

-- Location: LABCELL_X14_Y1_N27
\inst|inst8|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst8|inst6~combout\ = ( \inst|inst7|inst3~combout\ & ( !\currentenable[6]~input_o\ ) ) # ( !\inst|inst7|inst3~combout\ & ( \currentenable[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[6]~input_o\,
	dataf => \inst|inst7|ALT_INV_inst3~combout\,
	combout => \inst|inst8|inst6~combout\);

-- Location: LABCELL_X25_Y1_N6
\inst|inst7|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst7|inst6~combout\ = ( \currentenable[1]~input_o\ & ( \currentenable[0]~input_o\ & ( !\currentenable[5]~input_o\ $ (((!\currentenable[3]~input_o\) # ((!\currentenable[4]~input_o\) # (!\currentenable[2]~input_o\)))) ) ) ) # ( 
-- !\currentenable[1]~input_o\ & ( \currentenable[0]~input_o\ & ( \currentenable[5]~input_o\ ) ) ) # ( \currentenable[1]~input_o\ & ( !\currentenable[0]~input_o\ & ( \currentenable[5]~input_o\ ) ) ) # ( !\currentenable[1]~input_o\ & ( 
-- !\currentenable[0]~input_o\ & ( \currentenable[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[5]~input_o\,
	datab => \ALT_INV_currentenable[3]~input_o\,
	datac => \ALT_INV_currentenable[4]~input_o\,
	datad => \ALT_INV_currentenable[2]~input_o\,
	datae => \ALT_INV_currentenable[1]~input_o\,
	dataf => \ALT_INV_currentenable[0]~input_o\,
	combout => \inst|inst7|inst6~combout\);

-- Location: LABCELL_X25_Y1_N42
\inst|inst13|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst13|inst6~combout\ = ( \currentenable[3]~input_o\ & ( !\currentenable[4]~input_o\ $ (((!\currentenable[1]~input_o\) # ((!\currentenable[0]~input_o\) # (!\currentenable[2]~input_o\)))) ) ) # ( !\currentenable[3]~input_o\ & ( 
-- \currentenable[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110001111000001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[1]~input_o\,
	datab => \ALT_INV_currentenable[0]~input_o\,
	datac => \ALT_INV_currentenable[4]~input_o\,
	datad => \ALT_INV_currentenable[2]~input_o\,
	datae => \ALT_INV_currentenable[3]~input_o\,
	combout => \inst|inst13|inst6~combout\);

-- Location: LABCELL_X25_Y1_N51
\inst|inst4|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst6~combout\ = ( \currentenable[3]~input_o\ & ( (!\currentenable[1]~input_o\) # ((!\currentenable[2]~input_o\) # (!\currentenable[0]~input_o\)) ) ) # ( !\currentenable[3]~input_o\ & ( (\currentenable[1]~input_o\ & (\currentenable[2]~input_o\ 
-- & \currentenable[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111101111111000000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[1]~input_o\,
	datab => \ALT_INV_currentenable[2]~input_o\,
	datac => \ALT_INV_currentenable[0]~input_o\,
	datae => \ALT_INV_currentenable[3]~input_o\,
	combout => \inst|inst4|inst6~combout\);

-- Location: LABCELL_X25_Y1_N24
\inst|inst3|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6~combout\ = !\currentenable[2]~input_o\ $ (((!\currentenable[1]~input_o\) # (!\currentenable[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[1]~input_o\,
	datab => \ALT_INV_currentenable[0]~input_o\,
	datad => \ALT_INV_currentenable[2]~input_o\,
	combout => \inst|inst3|inst6~combout\);

-- Location: LABCELL_X25_Y1_N27
\inst|inst2|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst6~combout\ = !\currentenable[1]~input_o\ $ (!\currentenable[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_currentenable[1]~input_o\,
	datab => \ALT_INV_currentenable[0]~input_o\,
	combout => \inst|inst2|inst6~combout\);

-- Location: IOIBUF_X48_Y45_N52
\generala~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_generala,
	o => \generala~input_o\);

-- Location: LABCELL_X50_Y9_N0
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


