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
-- Generated on "12/06/2022 15:57:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testcontrolcircuit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testcontrolcircuit_vhd_vec_tst IS
END testcontrolcircuit_vhd_vec_tst;
ARCHITECTURE testcontrolcircuit_arch OF testcontrolcircuit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL fffa : STD_LOGIC;
SIGNAL fffb : STD_LOGIC;
SIGNAL fffc : STD_LOGIC;
SIGNAL fffd : STD_LOGIC;
SIGNAL fffe : STD_LOGIC;
SIGNAL ffff : STD_LOGIC;
SIGNAL fffg : STD_LOGIC;
SIGNAL fffh : STD_LOGIC;
COMPONENT testcontrolcircuit
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	fffa : OUT STD_LOGIC;
	fffb : OUT STD_LOGIC;
	fffc : OUT STD_LOGIC;
	fffd : OUT STD_LOGIC;
	fffe : OUT STD_LOGIC;
	ffff : OUT STD_LOGIC;
	fffg : OUT STD_LOGIC;
	fffh : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testcontrolcircuit
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	fffa => fffa,
	fffb => fffb,
	fffc => fffc,
	fffd => fffd,
	fffe => fffe,
	ffff => ffff,
	fffg => fffg,
	fffh => fffh
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;

-- c
t_prcs_c: PROCESS
BEGIN
LOOP
	c <= '0';
	WAIT FOR 20000 ps;
	c <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_c;

-- d
t_prcs_d: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		d <= '0';
		WAIT FOR 40000 ps;
		d <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;
END testcontrolcircuit_arch;
