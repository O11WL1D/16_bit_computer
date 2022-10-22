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
-- Generated on "10/22/2022 11:01:08"
                                                             
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
SIGNAL enable : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL enableee : STD_LOGIC;
SIGNAL generala : STD_LOGIC;
SIGNAL generalc : STD_LOGIC;
SIGNAL selectedreg : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT b16_ind_reg
	PORT (
	enable : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	enableee : OUT STD_LOGIC;
	generala : IN STD_LOGIC;
	generalc : OUT STD_LOGIC;
	selectedreg : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : b16_ind_reg
	PORT MAP (
-- list connections between master ports and signals
	enable => enable,
	enableee => enableee,
	generala => generala,
	generalc => generalc,
	selectedreg => selectedreg
	);
-- enable[15]
t_prcs_enable_15: PROCESS
BEGIN
	enable(15) <= '0';
WAIT;
END PROCESS t_prcs_enable_15;
-- enable[14]
t_prcs_enable_14: PROCESS
BEGIN
	enable(14) <= '0';
WAIT;
END PROCESS t_prcs_enable_14;
-- enable[13]
t_prcs_enable_13: PROCESS
BEGIN
	enable(13) <= '0';
WAIT;
END PROCESS t_prcs_enable_13;
-- enable[12]
t_prcs_enable_12: PROCESS
BEGIN
	enable(12) <= '0';
WAIT;
END PROCESS t_prcs_enable_12;
-- enable[11]
t_prcs_enable_11: PROCESS
BEGIN
	enable(11) <= '0';
WAIT;
END PROCESS t_prcs_enable_11;
-- enable[10]
t_prcs_enable_10: PROCESS
BEGIN
	enable(10) <= '0';
WAIT;
END PROCESS t_prcs_enable_10;
-- enable[9]
t_prcs_enable_9: PROCESS
BEGIN
	enable(9) <= '0';
WAIT;
END PROCESS t_prcs_enable_9;
-- enable[8]
t_prcs_enable_8: PROCESS
BEGIN
	enable(8) <= '0';
WAIT;
END PROCESS t_prcs_enable_8;
-- enable[7]
t_prcs_enable_7: PROCESS
BEGIN
	enable(7) <= '0';
WAIT;
END PROCESS t_prcs_enable_7;
-- enable[6]
t_prcs_enable_6: PROCESS
BEGIN
	enable(6) <= '0';
WAIT;
END PROCESS t_prcs_enable_6;
-- enable[5]
t_prcs_enable_5: PROCESS
BEGIN
	enable(5) <= '0';
WAIT;
END PROCESS t_prcs_enable_5;
-- enable[4]
t_prcs_enable_4: PROCESS
BEGIN
	enable(4) <= '1';
	WAIT FOR 50000 ps;
	enable(4) <= '0';
WAIT;
END PROCESS t_prcs_enable_4;
-- enable[3]
t_prcs_enable_3: PROCESS
BEGIN
	enable(3) <= '0';
WAIT;
END PROCESS t_prcs_enable_3;
-- enable[2]
t_prcs_enable_2: PROCESS
BEGIN
	enable(2) <= '0';
WAIT;
END PROCESS t_prcs_enable_2;
-- enable[1]
t_prcs_enable_1: PROCESS
BEGIN
	enable(1) <= '0';
WAIT;
END PROCESS t_prcs_enable_1;
-- enable[0]
t_prcs_enable_0: PROCESS
BEGIN
	enable(0) <= '0';
WAIT;
END PROCESS t_prcs_enable_0;
-- selectedreg[15]
t_prcs_selectedreg_15: PROCESS
BEGIN
	selectedreg(15) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_15;
-- selectedreg[14]
t_prcs_selectedreg_14: PROCESS
BEGIN
	selectedreg(14) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_14;
-- selectedreg[13]
t_prcs_selectedreg_13: PROCESS
BEGIN
	selectedreg(13) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_13;
-- selectedreg[12]
t_prcs_selectedreg_12: PROCESS
BEGIN
	selectedreg(12) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_12;
-- selectedreg[11]
t_prcs_selectedreg_11: PROCESS
BEGIN
	selectedreg(11) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_11;
-- selectedreg[10]
t_prcs_selectedreg_10: PROCESS
BEGIN
	selectedreg(10) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_10;
-- selectedreg[9]
t_prcs_selectedreg_9: PROCESS
BEGIN
	selectedreg(9) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_9;
-- selectedreg[8]
t_prcs_selectedreg_8: PROCESS
BEGIN
	selectedreg(8) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_8;
-- selectedreg[7]
t_prcs_selectedreg_7: PROCESS
BEGIN
	selectedreg(7) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_7;
-- selectedreg[6]
t_prcs_selectedreg_6: PROCESS
BEGIN
	selectedreg(6) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_6;
-- selectedreg[5]
t_prcs_selectedreg_5: PROCESS
BEGIN
	selectedreg(5) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_5;
-- selectedreg[4]
t_prcs_selectedreg_4: PROCESS
BEGIN
	selectedreg(4) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_4;
-- selectedreg[3]
t_prcs_selectedreg_3: PROCESS
BEGIN
	selectedreg(3) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_3;
-- selectedreg[2]
t_prcs_selectedreg_2: PROCESS
BEGIN
	selectedreg(2) <= '1';
	WAIT FOR 30000 ps;
	selectedreg(2) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_2;
-- selectedreg[1]
t_prcs_selectedreg_1: PROCESS
BEGIN
	selectedreg(1) <= '0';
	WAIT FOR 10000 ps;
	selectedreg(1) <= '1';
	WAIT FOR 20000 ps;
	selectedreg(1) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_1;
-- selectedreg[0]
t_prcs_selectedreg_0: PROCESS
BEGIN
	selectedreg(0) <= '1';
	WAIT FOR 10000 ps;
	selectedreg(0) <= '0';
	WAIT FOR 10000 ps;
	selectedreg(0) <= '1';
	WAIT FOR 10000 ps;
	selectedreg(0) <= '0';
WAIT;
END PROCESS t_prcs_selectedreg_0;
END b16_ind_reg_arch;
