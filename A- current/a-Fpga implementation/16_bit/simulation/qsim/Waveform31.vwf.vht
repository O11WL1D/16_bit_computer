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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/16/2022 17:29:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          control_mod
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY control_mod_vhd_vec_tst IS
END control_mod_vhd_vec_tst;
ARCHITECTURE control_mod_arch OF control_mod_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL general : STD_LOGIC;
SIGNAL progcountTOram : STD_LOGIC;
SIGNAL programcontenable : STD_LOGIC;
SIGNAL programcontincrement : STD_LOGIC;
SIGNAL ram_write_enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL state0 : STD_LOGIC;
SIGNAL state1 : STD_LOGIC;
SIGNAL state2 : STD_LOGIC;
COMPONENT control_mod
	PORT (
	clock : IN STD_LOGIC;
	general : IN STD_LOGIC;
	progcountTOram : OUT STD_LOGIC;
	programcontenable : OUT STD_LOGIC;
	programcontincrement : OUT STD_LOGIC;
	ram_write_enable : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	state0 : OUT STD_LOGIC;
	state1 : OUT STD_LOGIC;
	state2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : control_mod
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	general => general,
	progcountTOram => progcountTOram,
	programcontenable => programcontenable,
	programcontincrement => programcontincrement,
	ram_write_enable => ram_write_enable,
	reset => reset,
	state0 => state0,
	state1 => state1,
	state2 => state2
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- general
t_prcs_general: PROCESS
BEGIN
	general <= '0';
	WAIT FOR 30000 ps;
	general <= '1';
	WAIT FOR 60000 ps;
	general <= '0';
	WAIT FOR 20000 ps;
	general <= '1';
	WAIT FOR 20000 ps;
	general <= '0';
	WAIT FOR 20000 ps;
	general <= '1';
	WAIT FOR 20000 ps;
	general <= '0';
	WAIT FOR 20000 ps;
	general <= '1';
	WAIT FOR 20000 ps;
	general <= '0';
WAIT;
END PROCESS t_prcs_general;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END control_mod_arch;
