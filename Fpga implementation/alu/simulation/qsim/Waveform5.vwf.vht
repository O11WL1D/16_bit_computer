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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/05/2022 12:04:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          b16_en
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY b16_en_vhd_vec_tst IS
END b16_en_vhd_vec_tst;
ARCHITECTURE b16_en_arch OF b16_en_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL en : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL f : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT b16_en
	PORT (
	a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	en : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	f : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : b16_en
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	en => en,
	f => f
	);
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
LOOP
	a(15) <= '0';
	WAIT FOR 5000 ps;
	a(15) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
LOOP
	a(14) <= '0';
	WAIT FOR 5000 ps;
	a(14) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
LOOP
	a(13) <= '0';
	WAIT FOR 5000 ps;
	a(13) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
LOOP
	a(12) <= '0';
	WAIT FOR 5000 ps;
	a(12) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
LOOP
	a(11) <= '0';
	WAIT FOR 5000 ps;
	a(11) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
LOOP
	a(10) <= '0';
	WAIT FOR 5000 ps;
	a(10) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
LOOP
	a(9) <= '0';
	WAIT FOR 5000 ps;
	a(9) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
LOOP
	a(8) <= '0';
	WAIT FOR 5000 ps;
	a(8) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
LOOP
	a(7) <= '0';
	WAIT FOR 5000 ps;
	a(7) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
LOOP
	a(6) <= '0';
	WAIT FOR 5000 ps;
	a(6) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
LOOP
	a(5) <= '0';
	WAIT FOR 5000 ps;
	a(5) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
LOOP
	a(4) <= '0';
	WAIT FOR 5000 ps;
	a(4) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
LOOP
	a(3) <= '0';
	WAIT FOR 5000 ps;
	a(3) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
LOOP
	a(2) <= '0';
	WAIT FOR 5000 ps;
	a(2) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
LOOP
	a(1) <= '0';
	WAIT FOR 5000 ps;
	a(1) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
LOOP
	a(0) <= '0';
	WAIT FOR 5000 ps;
	a(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_0;
-- en[15]
t_prcs_en_15: PROCESS
BEGIN
LOOP
	en(15) <= '0';
	WAIT FOR 10000 ps;
	en(15) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_15;
-- en[14]
t_prcs_en_14: PROCESS
BEGIN
LOOP
	en(14) <= '0';
	WAIT FOR 10000 ps;
	en(14) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_14;
-- en[13]
t_prcs_en_13: PROCESS
BEGIN
LOOP
	en(13) <= '0';
	WAIT FOR 10000 ps;
	en(13) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_13;
-- en[12]
t_prcs_en_12: PROCESS
BEGIN
LOOP
	en(12) <= '0';
	WAIT FOR 10000 ps;
	en(12) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_12;
-- en[11]
t_prcs_en_11: PROCESS
BEGIN
LOOP
	en(11) <= '0';
	WAIT FOR 10000 ps;
	en(11) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_11;
-- en[10]
t_prcs_en_10: PROCESS
BEGIN
LOOP
	en(10) <= '0';
	WAIT FOR 10000 ps;
	en(10) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_10;
-- en[9]
t_prcs_en_9: PROCESS
BEGIN
LOOP
	en(9) <= '0';
	WAIT FOR 10000 ps;
	en(9) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_9;
-- en[8]
t_prcs_en_8: PROCESS
BEGIN
LOOP
	en(8) <= '0';
	WAIT FOR 10000 ps;
	en(8) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_8;
-- en[7]
t_prcs_en_7: PROCESS
BEGIN
LOOP
	en(7) <= '0';
	WAIT FOR 10000 ps;
	en(7) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_7;
-- en[6]
t_prcs_en_6: PROCESS
BEGIN
LOOP
	en(6) <= '0';
	WAIT FOR 10000 ps;
	en(6) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_6;
-- en[5]
t_prcs_en_5: PROCESS
BEGIN
LOOP
	en(5) <= '0';
	WAIT FOR 10000 ps;
	en(5) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_5;
-- en[4]
t_prcs_en_4: PROCESS
BEGIN
LOOP
	en(4) <= '0';
	WAIT FOR 10000 ps;
	en(4) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_4;
-- en[3]
t_prcs_en_3: PROCESS
BEGIN
LOOP
	en(3) <= '0';
	WAIT FOR 10000 ps;
	en(3) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_3;
-- en[2]
t_prcs_en_2: PROCESS
BEGIN
LOOP
	en(2) <= '0';
	WAIT FOR 10000 ps;
	en(2) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_2;
-- en[1]
t_prcs_en_1: PROCESS
BEGIN
LOOP
	en(1) <= '0';
	WAIT FOR 10000 ps;
	en(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_1;
-- en[0]
t_prcs_en_0: PROCESS
BEGIN
LOOP
	en(0) <= '0';
	WAIT FOR 10000 ps;
	en(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_0;
END b16_en_arch;
