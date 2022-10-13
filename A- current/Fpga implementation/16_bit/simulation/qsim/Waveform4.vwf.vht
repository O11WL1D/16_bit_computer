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
-- Generated on "10/13/2022 14:29:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mega_nor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mega_nor_vhd_vec_tst IS
END mega_nor_vhd_vec_tst;
ARCHITECTURE mega_nor_arch OF mega_nor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aa : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL af : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT mega_nor
	PORT (
	aa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	af : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mega_nor
	PORT MAP (
-- list connections between master ports and signals
	aa => aa,
	af => af
	);
-- aa[15]
t_prcs_aa_15: PROCESS
BEGIN
	aa(15) <= '0';
	WAIT FOR 20000 ps;
	aa(15) <= '1';
	WAIT FOR 10000 ps;
	aa(15) <= '0';
	WAIT FOR 10000 ps;
	aa(15) <= '1';
	WAIT FOR 10000 ps;
	aa(15) <= '0';
WAIT;
END PROCESS t_prcs_aa_15;
-- aa[14]
t_prcs_aa_14: PROCESS
BEGIN
	aa(14) <= '0';
	WAIT FOR 20000 ps;
	aa(14) <= '1';
	WAIT FOR 10000 ps;
	aa(14) <= '0';
WAIT;
END PROCESS t_prcs_aa_14;
-- aa[13]
t_prcs_aa_13: PROCESS
BEGIN
	aa(13) <= '0';
	WAIT FOR 20000 ps;
	aa(13) <= '1';
	WAIT FOR 10000 ps;
	aa(13) <= '0';
	WAIT FOR 10000 ps;
	aa(13) <= '1';
	WAIT FOR 10000 ps;
	aa(13) <= '0';
WAIT;
END PROCESS t_prcs_aa_13;
-- aa[12]
t_prcs_aa_12: PROCESS
BEGIN
	aa(12) <= '0';
	WAIT FOR 20000 ps;
	aa(12) <= '1';
	WAIT FOR 20000 ps;
	aa(12) <= '0';
WAIT;
END PROCESS t_prcs_aa_12;
-- aa[11]
t_prcs_aa_11: PROCESS
BEGIN
	aa(11) <= '0';
	WAIT FOR 20000 ps;
	aa(11) <= '1';
	WAIT FOR 10000 ps;
	aa(11) <= '0';
	WAIT FOR 10000 ps;
	aa(11) <= '1';
	WAIT FOR 10000 ps;
	aa(11) <= '0';
WAIT;
END PROCESS t_prcs_aa_11;
-- aa[10]
t_prcs_aa_10: PROCESS
BEGIN
	aa(10) <= '0';
	WAIT FOR 20000 ps;
	aa(10) <= '1';
	WAIT FOR 10000 ps;
	aa(10) <= '0';
WAIT;
END PROCESS t_prcs_aa_10;
-- aa[9]
t_prcs_aa_9: PROCESS
BEGIN
	aa(9) <= '0';
	WAIT FOR 20000 ps;
	aa(9) <= '1';
	WAIT FOR 10000 ps;
	aa(9) <= '0';
	WAIT FOR 10000 ps;
	aa(9) <= '1';
	WAIT FOR 10000 ps;
	aa(9) <= '0';
WAIT;
END PROCESS t_prcs_aa_9;
-- aa[8]
t_prcs_aa_8: PROCESS
BEGIN
	aa(8) <= '1';
	WAIT FOR 10000 ps;
	aa(8) <= '0';
	WAIT FOR 10000 ps;
	aa(8) <= '1';
	WAIT FOR 10000 ps;
	aa(8) <= '0';
	WAIT FOR 10000 ps;
	aa(8) <= '1';
	WAIT FOR 10000 ps;
	aa(8) <= '0';
WAIT;
END PROCESS t_prcs_aa_8;
-- aa[7]
t_prcs_aa_7: PROCESS
BEGIN
	aa(7) <= '0';
	WAIT FOR 20000 ps;
	aa(7) <= '1';
	WAIT FOR 10000 ps;
	aa(7) <= '0';
	WAIT FOR 10000 ps;
	aa(7) <= '1';
	WAIT FOR 10000 ps;
	aa(7) <= '0';
WAIT;
END PROCESS t_prcs_aa_7;
-- aa[6]
t_prcs_aa_6: PROCESS
BEGIN
	aa(6) <= '0';
	WAIT FOR 20000 ps;
	aa(6) <= '1';
	WAIT FOR 10000 ps;
	aa(6) <= '0';
	WAIT FOR 10000 ps;
	aa(6) <= '1';
	WAIT FOR 10000 ps;
	aa(6) <= '0';
WAIT;
END PROCESS t_prcs_aa_6;
-- aa[5]
t_prcs_aa_5: PROCESS
BEGIN
	aa(5) <= '0';
	WAIT FOR 20000 ps;
	aa(5) <= '1';
	WAIT FOR 10000 ps;
	aa(5) <= '0';
	WAIT FOR 10000 ps;
	aa(5) <= '1';
	WAIT FOR 10000 ps;
	aa(5) <= '0';
WAIT;
END PROCESS t_prcs_aa_5;
-- aa[4]
t_prcs_aa_4: PROCESS
BEGIN
	aa(4) <= '0';
	WAIT FOR 20000 ps;
	aa(4) <= '1';
	WAIT FOR 20000 ps;
	aa(4) <= '0';
WAIT;
END PROCESS t_prcs_aa_4;
-- aa[3]
t_prcs_aa_3: PROCESS
BEGIN
	aa(3) <= '0';
	WAIT FOR 20000 ps;
	aa(3) <= '1';
	WAIT FOR 10000 ps;
	aa(3) <= '0';
	WAIT FOR 10000 ps;
	aa(3) <= '1';
	WAIT FOR 10000 ps;
	aa(3) <= '0';
WAIT;
END PROCESS t_prcs_aa_3;
-- aa[2]
t_prcs_aa_2: PROCESS
BEGIN
	aa(2) <= '0';
	WAIT FOR 20000 ps;
	aa(2) <= '1';
	WAIT FOR 10000 ps;
	aa(2) <= '0';
	WAIT FOR 10000 ps;
	aa(2) <= '1';
	WAIT FOR 10000 ps;
	aa(2) <= '0';
WAIT;
END PROCESS t_prcs_aa_2;
-- aa[1]
t_prcs_aa_1: PROCESS
BEGIN
	aa(1) <= '0';
	WAIT FOR 20000 ps;
	aa(1) <= '1';
	WAIT FOR 10000 ps;
	aa(1) <= '0';
	WAIT FOR 10000 ps;
	aa(1) <= '1';
	WAIT FOR 10000 ps;
	aa(1) <= '0';
WAIT;
END PROCESS t_prcs_aa_1;
-- aa[0]
t_prcs_aa_0: PROCESS
BEGIN
	aa(0) <= '1';
	WAIT FOR 10000 ps;
	aa(0) <= '0';
	WAIT FOR 10000 ps;
	aa(0) <= '1';
	WAIT FOR 10000 ps;
	aa(0) <= '0';
	WAIT FOR 10000 ps;
	aa(0) <= '1';
	WAIT FOR 10000 ps;
	aa(0) <= '0';
WAIT;
END PROCESS t_prcs_aa_0;
END mega_nor_arch;
