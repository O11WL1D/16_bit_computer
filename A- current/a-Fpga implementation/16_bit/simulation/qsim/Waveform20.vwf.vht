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
-- Generated on "10/22/2022 11:23:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          b16_ind_reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY b16_ind_reg_vhd_vec_tst IS
END b16_ind_reg_vhd_vec_tst;
ARCHITECTURE b16_ind_reg_arch OF b16_ind_reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL currentenable : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL enableee : STD_LOGIC;
SIGNAL enableset : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL generala : STD_LOGIC;
SIGNAL generalc : STD_LOGIC;
SIGNAL nextenable : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT b16_ind_reg
	PORT (
	currentenable : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	enableee : OUT STD_LOGIC;
	enableset : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	generala : IN STD_LOGIC;
	generalc : OUT STD_LOGIC;
	nextenable : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : b16_ind_reg
	PORT MAP (
-- list connections between master ports and signals
	currentenable => currentenable,
	enableee => enableee,
	enableset => enableset,
	generala => generala,
	generalc => generalc,
	nextenable => nextenable
	);
-- currentenable[15]
t_prcs_currentenable_15: PROCESS
BEGIN
	currentenable(15) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_15;
-- currentenable[14]
t_prcs_currentenable_14: PROCESS
BEGIN
	currentenable(14) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_14;
-- currentenable[13]
t_prcs_currentenable_13: PROCESS
BEGIN
	currentenable(13) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_13;
-- currentenable[12]
t_prcs_currentenable_12: PROCESS
BEGIN
	currentenable(12) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_12;
-- currentenable[11]
t_prcs_currentenable_11: PROCESS
BEGIN
	currentenable(11) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_11;
-- currentenable[10]
t_prcs_currentenable_10: PROCESS
BEGIN
	currentenable(10) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_10;
-- currentenable[9]
t_prcs_currentenable_9: PROCESS
BEGIN
	currentenable(9) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_9;
-- currentenable[8]
t_prcs_currentenable_8: PROCESS
BEGIN
	currentenable(8) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_8;
-- currentenable[7]
t_prcs_currentenable_7: PROCESS
BEGIN
	currentenable(7) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_7;
-- currentenable[6]
t_prcs_currentenable_6: PROCESS
BEGIN
	currentenable(6) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_6;
-- currentenable[5]
t_prcs_currentenable_5: PROCESS
BEGIN
	currentenable(5) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_5;
-- currentenable[4]
t_prcs_currentenable_4: PROCESS
BEGIN
	currentenable(4) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_4;
-- currentenable[3]
t_prcs_currentenable_3: PROCESS
BEGIN
	currentenable(3) <= '0';
	WAIT FOR 60000 ps;
	currentenable(3) <= '1';
	WAIT FOR 10000 ps;
	currentenable(3) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_3;
-- currentenable[2]
t_prcs_currentenable_2: PROCESS
BEGIN
	currentenable(2) <= '1';
	WAIT FOR 10000 ps;
	currentenable(2) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_2;
-- currentenable[1]
t_prcs_currentenable_1: PROCESS
BEGIN
	currentenable(1) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_1;
-- currentenable[0]
t_prcs_currentenable_0: PROCESS
BEGIN
	currentenable(0) <= '0';
	WAIT FOR 30000 ps;
	currentenable(0) <= '1';
	WAIT FOR 10000 ps;
	currentenable(0) <= '0';
WAIT;
END PROCESS t_prcs_currentenable_0;
-- enableset[15]
t_prcs_enableset_15: PROCESS
BEGIN
	enableset(15) <= '0';
WAIT;
END PROCESS t_prcs_enableset_15;
-- enableset[14]
t_prcs_enableset_14: PROCESS
BEGIN
	enableset(14) <= '0';
WAIT;
END PROCESS t_prcs_enableset_14;
-- enableset[13]
t_prcs_enableset_13: PROCESS
BEGIN
	enableset(13) <= '0';
WAIT;
END PROCESS t_prcs_enableset_13;
-- enableset[12]
t_prcs_enableset_12: PROCESS
BEGIN
	enableset(12) <= '0';
WAIT;
END PROCESS t_prcs_enableset_12;
-- enableset[11]
t_prcs_enableset_11: PROCESS
BEGIN
	enableset(11) <= '0';
WAIT;
END PROCESS t_prcs_enableset_11;
-- enableset[10]
t_prcs_enableset_10: PROCESS
BEGIN
	enableset(10) <= '0';
WAIT;
END PROCESS t_prcs_enableset_10;
-- enableset[9]
t_prcs_enableset_9: PROCESS
BEGIN
	enableset(9) <= '0';
WAIT;
END PROCESS t_prcs_enableset_9;
-- enableset[8]
t_prcs_enableset_8: PROCESS
BEGIN
	enableset(8) <= '0';
	WAIT FOR 50000 ps;
	enableset(8) <= '1';
	WAIT FOR 20000 ps;
	enableset(8) <= '0';
WAIT;
END PROCESS t_prcs_enableset_8;
-- enableset[7]
t_prcs_enableset_7: PROCESS
BEGIN
	enableset(7) <= '0';
WAIT;
END PROCESS t_prcs_enableset_7;
-- enableset[6]
t_prcs_enableset_6: PROCESS
BEGIN
	enableset(6) <= '0';
WAIT;
END PROCESS t_prcs_enableset_6;
-- enableset[5]
t_prcs_enableset_5: PROCESS
BEGIN
	enableset(5) <= '0';
WAIT;
END PROCESS t_prcs_enableset_5;
-- enableset[4]
t_prcs_enableset_4: PROCESS
BEGIN
	enableset(4) <= '1';
	WAIT FOR 30000 ps;
	enableset(4) <= '0';
WAIT;
END PROCESS t_prcs_enableset_4;
-- enableset[3]
t_prcs_enableset_3: PROCESS
BEGIN
	enableset(3) <= '0';
WAIT;
END PROCESS t_prcs_enableset_3;
-- enableset[2]
t_prcs_enableset_2: PROCESS
BEGIN
	enableset(2) <= '0';
WAIT;
END PROCESS t_prcs_enableset_2;
-- enableset[1]
t_prcs_enableset_1: PROCESS
BEGIN
	enableset(1) <= '0';
WAIT;
END PROCESS t_prcs_enableset_1;
-- enableset[0]
t_prcs_enableset_0: PROCESS
BEGIN
	enableset(0) <= '0';
	WAIT FOR 30000 ps;
	enableset(0) <= '1';
	WAIT FOR 20000 ps;
	enableset(0) <= '0';
WAIT;
END PROCESS t_prcs_enableset_0;
END b16_ind_reg_arch;
