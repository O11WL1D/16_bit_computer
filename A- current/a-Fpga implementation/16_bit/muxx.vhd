-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: muxx.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 20.1.1 Build 720 11/11/2020 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2020  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and any partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel FPGA IP License Agreement, or other applicable license
--agreement, including, without limitation, that your use is for
--the sole purpose of programming logic devices manufactured by
--Intel and sold by Intel or its authorized distributors.  Please
--refer to the applicable agreement for further details, at
--https://fpgasoftware.intel.com/eula.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY muxx IS
	PORT
	(
		data0		: IN STD_LOGIC ;
		data1		: IN STD_LOGIC ;
		data10		: IN STD_LOGIC ;
		data11		: IN STD_LOGIC ;
		data12		: IN STD_LOGIC ;
		data13		: IN STD_LOGIC ;
		data14		: IN STD_LOGIC ;
		data15		: IN STD_LOGIC ;
		data2		: IN STD_LOGIC ;
		data3		: IN STD_LOGIC ;
		data4		: IN STD_LOGIC ;
		data5		: IN STD_LOGIC ;
		data6		: IN STD_LOGIC ;
		data7		: IN STD_LOGIC ;
		data8		: IN STD_LOGIC ;
		data9		: IN STD_LOGIC ;
		sel		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC 
	);
END muxx;


ARCHITECTURE SYN OF muxx IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_2D (15 DOWNTO 0, 0 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC ;
	SIGNAL sub_wire4	: STD_LOGIC ;
	SIGNAL sub_wire5	: STD_LOGIC ;
	SIGNAL sub_wire6	: STD_LOGIC ;
	SIGNAL sub_wire7	: STD_LOGIC ;
	SIGNAL sub_wire8	: STD_LOGIC ;
	SIGNAL sub_wire9	: STD_LOGIC ;
	SIGNAL sub_wire10	: STD_LOGIC ;
	SIGNAL sub_wire11	: STD_LOGIC ;
	SIGNAL sub_wire12	: STD_LOGIC ;
	SIGNAL sub_wire13	: STD_LOGIC ;
	SIGNAL sub_wire14	: STD_LOGIC ;
	SIGNAL sub_wire15	: STD_LOGIC ;
	SIGNAL sub_wire16	: STD_LOGIC ;
	SIGNAL sub_wire17	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire18	: STD_LOGIC ;

BEGIN
	sub_wire16    <= data0;
	sub_wire15    <= data1;
	sub_wire14    <= data2;
	sub_wire13    <= data3;
	sub_wire12    <= data4;
	sub_wire11    <= data5;
	sub_wire10    <= data6;
	sub_wire9    <= data7;
	sub_wire8    <= data8;
	sub_wire7    <= data9;
	sub_wire6    <= data10;
	sub_wire5    <= data11;
	sub_wire4    <= data12;
	sub_wire3    <= data13;
	sub_wire2    <= data14;
	sub_wire0    <= data15;
	sub_wire1(15, 0)    <= sub_wire0;
	sub_wire1(14, 0)    <= sub_wire2;
	sub_wire1(13, 0)    <= sub_wire3;
	sub_wire1(12, 0)    <= sub_wire4;
	sub_wire1(11, 0)    <= sub_wire5;
	sub_wire1(10, 0)    <= sub_wire6;
	sub_wire1(9, 0)    <= sub_wire7;
	sub_wire1(8, 0)    <= sub_wire8;
	sub_wire1(7, 0)    <= sub_wire9;
	sub_wire1(6, 0)    <= sub_wire10;
	sub_wire1(5, 0)    <= sub_wire11;
	sub_wire1(4, 0)    <= sub_wire12;
	sub_wire1(3, 0)    <= sub_wire13;
	sub_wire1(2, 0)    <= sub_wire14;
	sub_wire1(1, 0)    <= sub_wire15;
	sub_wire1(0, 0)    <= sub_wire16;
	sub_wire18    <= sub_wire17(0);
	result    <= sub_wire18;

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 16,
		lpm_type => "LPM_MUX",
		lpm_width => 1,
		lpm_widths => 4
	)
	PORT MAP (
		data => sub_wire1,
		sel => sel,
		result => sub_wire17
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "16"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "4"
-- Retrieval info: USED_PORT: data0 0 0 0 0 INPUT NODEFVAL "data0"
-- Retrieval info: USED_PORT: data1 0 0 0 0 INPUT NODEFVAL "data1"
-- Retrieval info: USED_PORT: data10 0 0 0 0 INPUT NODEFVAL "data10"
-- Retrieval info: USED_PORT: data11 0 0 0 0 INPUT NODEFVAL "data11"
-- Retrieval info: USED_PORT: data12 0 0 0 0 INPUT NODEFVAL "data12"
-- Retrieval info: USED_PORT: data13 0 0 0 0 INPUT NODEFVAL "data13"
-- Retrieval info: USED_PORT: data14 0 0 0 0 INPUT NODEFVAL "data14"
-- Retrieval info: USED_PORT: data15 0 0 0 0 INPUT NODEFVAL "data15"
-- Retrieval info: USED_PORT: data2 0 0 0 0 INPUT NODEFVAL "data2"
-- Retrieval info: USED_PORT: data3 0 0 0 0 INPUT NODEFVAL "data3"
-- Retrieval info: USED_PORT: data4 0 0 0 0 INPUT NODEFVAL "data4"
-- Retrieval info: USED_PORT: data5 0 0 0 0 INPUT NODEFVAL "data5"
-- Retrieval info: USED_PORT: data6 0 0 0 0 INPUT NODEFVAL "data6"
-- Retrieval info: USED_PORT: data7 0 0 0 0 INPUT NODEFVAL "data7"
-- Retrieval info: USED_PORT: data8 0 0 0 0 INPUT NODEFVAL "data8"
-- Retrieval info: USED_PORT: data9 0 0 0 0 INPUT NODEFVAL "data9"
-- Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL "result"
-- Retrieval info: USED_PORT: sel 0 0 4 0 INPUT NODEFVAL "sel[3..0]"
-- Retrieval info: CONNECT: @data 1 0 1 0 data0 0 0 0 0
-- Retrieval info: CONNECT: @data 1 1 1 0 data1 0 0 0 0
-- Retrieval info: CONNECT: @data 1 10 1 0 data10 0 0 0 0
-- Retrieval info: CONNECT: @data 1 11 1 0 data11 0 0 0 0
-- Retrieval info: CONNECT: @data 1 12 1 0 data12 0 0 0 0
-- Retrieval info: CONNECT: @data 1 13 1 0 data13 0 0 0 0
-- Retrieval info: CONNECT: @data 1 14 1 0 data14 0 0 0 0
-- Retrieval info: CONNECT: @data 1 15 1 0 data15 0 0 0 0
-- Retrieval info: CONNECT: @data 1 2 1 0 data2 0 0 0 0
-- Retrieval info: CONNECT: @data 1 3 1 0 data3 0 0 0 0
-- Retrieval info: CONNECT: @data 1 4 1 0 data4 0 0 0 0
-- Retrieval info: CONNECT: @data 1 5 1 0 data5 0 0 0 0
-- Retrieval info: CONNECT: @data 1 6 1 0 data6 0 0 0 0
-- Retrieval info: CONNECT: @data 1 7 1 0 data7 0 0 0 0
-- Retrieval info: CONNECT: @data 1 8 1 0 data8 0 0 0 0
-- Retrieval info: CONNECT: @data 1 9 1 0 data9 0 0 0 0
-- Retrieval info: CONNECT: @sel 0 0 4 0 sel 0 0 4 0
-- Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL muxx.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL muxx.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL muxx.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL muxx.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL muxx_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm