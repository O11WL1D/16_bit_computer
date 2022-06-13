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
-- Generated on "06/05/2022 12:28:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          b16_or
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY b16_or_vhd_vec_tst IS
END b16_or_vhd_vec_tst;
ARCHITECTURE b16_or_arch OF b16_or_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT b16_or
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : b16_or
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	F => F
	);
-- A[15]
t_prcs_A_15: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(15) <= '0';
		WAIT FOR 5000 ps;
		A(15) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(15) <= '0';
WAIT;
END PROCESS t_prcs_A_15;
-- A[14]
t_prcs_A_14: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(14) <= '0';
		WAIT FOR 5000 ps;
		A(14) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(14) <= '0';
WAIT;
END PROCESS t_prcs_A_14;
-- A[13]
t_prcs_A_13: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(13) <= '0';
		WAIT FOR 5000 ps;
		A(13) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(13) <= '0';
WAIT;
END PROCESS t_prcs_A_13;
-- A[12]
t_prcs_A_12: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(12) <= '0';
		WAIT FOR 5000 ps;
		A(12) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(12) <= '0';
WAIT;
END PROCESS t_prcs_A_12;
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(11) <= '0';
		WAIT FOR 5000 ps;
		A(11) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(11) <= '0';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(10) <= '0';
		WAIT FOR 5000 ps;
		A(10) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(10) <= '0';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(9) <= '0';
		WAIT FOR 5000 ps;
		A(9) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(9) <= '0';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(8) <= '0';
		WAIT FOR 5000 ps;
		A(8) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(8) <= '0';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(7) <= '0';
		WAIT FOR 5000 ps;
		A(7) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(6) <= '0';
		WAIT FOR 5000 ps;
		A(6) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(5) <= '0';
		WAIT FOR 5000 ps;
		A(5) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(4) <= '0';
		WAIT FOR 5000 ps;
		A(4) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(3) <= '0';
		WAIT FOR 5000 ps;
		A(3) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(2) <= '0';
		WAIT FOR 5000 ps;
		A(2) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(1) <= '0';
		WAIT FOR 5000 ps;
		A(1) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 90
	LOOP
		A(0) <= '0';
		WAIT FOR 5000 ps;
		A(0) <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[15]
t_prcs_B_15: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(15) <= '0';
		WAIT FOR 10000 ps;
		B(15) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(15) <= '0';
WAIT;
END PROCESS t_prcs_B_15;
-- B[14]
t_prcs_B_14: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(14) <= '0';
		WAIT FOR 10000 ps;
		B(14) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(14) <= '0';
WAIT;
END PROCESS t_prcs_B_14;
-- B[13]
t_prcs_B_13: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(13) <= '0';
		WAIT FOR 10000 ps;
		B(13) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(13) <= '0';
WAIT;
END PROCESS t_prcs_B_13;
-- B[12]
t_prcs_B_12: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(12) <= '0';
		WAIT FOR 10000 ps;
		B(12) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(12) <= '0';
WAIT;
END PROCESS t_prcs_B_12;
-- B[11]
t_prcs_B_11: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(11) <= '0';
		WAIT FOR 10000 ps;
		B(11) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(11) <= '0';
WAIT;
END PROCESS t_prcs_B_11;
-- B[10]
t_prcs_B_10: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(10) <= '0';
		WAIT FOR 10000 ps;
		B(10) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(10) <= '0';
WAIT;
END PROCESS t_prcs_B_10;
-- B[9]
t_prcs_B_9: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(9) <= '0';
		WAIT FOR 10000 ps;
		B(9) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(9) <= '0';
WAIT;
END PROCESS t_prcs_B_9;
-- B[8]
t_prcs_B_8: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(8) <= '0';
		WAIT FOR 10000 ps;
		B(8) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(8) <= '0';
WAIT;
END PROCESS t_prcs_B_8;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(7) <= '0';
		WAIT FOR 10000 ps;
		B(7) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(6) <= '0';
		WAIT FOR 10000 ps;
		B(6) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(5) <= '0';
		WAIT FOR 10000 ps;
		B(5) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(4) <= '0';
		WAIT FOR 10000 ps;
		B(4) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(3) <= '0';
		WAIT FOR 10000 ps;
		B(3) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(2) <= '0';
		WAIT FOR 10000 ps;
		B(2) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(1) <= '0';
		WAIT FOR 10000 ps;
		B(1) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	FOR i IN 1 TO 45
	LOOP
		B(0) <= '0';
		WAIT FOR 10000 ps;
		B(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
END b16_or_arch;
