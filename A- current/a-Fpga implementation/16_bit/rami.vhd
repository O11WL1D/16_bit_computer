-- megafunction wizard: %RAM initializer%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: ALTMEM_INIT 

-- ============================================================
-- File Name: rami.vhd
-- Megafunction Name(s):
-- 			ALTMEM_INIT
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


--altmem_init CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone V" INIT_TO_ZERO="YES" NUMWORDS=65536 PORT_ROM_DATA_READY="PORT_UNUSED" ROM_READ_LATENCY=1 WIDTH=16 WIDTHAD=16 clken clock dataout init init_busy ram_address ram_wren
--VERSION_BEGIN 20.1 cbx_altera_syncram_nd_impl 2020:11:11:17:06:45:SJ cbx_altmem_init 2020:11:11:17:06:45:SJ cbx_altsyncram 2020:11:11:17:06:45:SJ cbx_cycloneii 2020:11:11:17:06:45:SJ cbx_lpm_add_sub 2020:11:11:17:06:45:SJ cbx_lpm_compare 2020:11:11:17:06:45:SJ cbx_lpm_counter 2020:11:11:17:06:45:SJ cbx_lpm_decode 2020:11:11:17:06:45:SJ cbx_lpm_mux 2020:11:11:17:06:45:SJ cbx_mgl 2020:11:11:17:08:38:SJ cbx_nadder 2020:11:11:17:06:46:SJ cbx_stratix 2020:11:11:17:06:46:SJ cbx_stratixii 2020:11:11:17:06:46:SJ cbx_stratixiii 2020:11:11:17:06:46:SJ cbx_stratixv 2020:11:11:17:06:46:SJ cbx_util_mgl 2020:11:11:17:06:46:SJ  VERSION_END

 LIBRARY lpm;
 USE lpm.all;

--synthesis_resources = lpm_compare 2 lpm_counter 2 reg 5 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  rami_meminit_8ok IS 
	 PORT 
	 ( 
		 clken	:	IN  STD_LOGIC := '1';
		 clock	:	IN  STD_LOGIC;
		 dataout	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 init	:	IN  STD_LOGIC;
		 init_busy	:	OUT  STD_LOGIC;
		 ram_address	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 ram_wren	:	OUT  STD_LOGIC
	 ); 
 END rami_meminit_8ok;

 ARCHITECTURE RTL OF rami_meminit_8ok IS

	 SIGNAL	 capture_init	:	STD_LOGIC_VECTOR(0 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 prev_state	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL  wire_prev_state_w_lg_w_q_range42w43w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_prev_state_w_lg_w_q_range40w41w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_prev_state_w_q_range40w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_prev_state_w_q_range42w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 wire_state_reg_d	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL	 state_reg	:	STD_LOGIC_VECTOR(1 DOWNTO 0)
	 -- synopsys translate_off
	  := (OTHERS => '0')
	 -- synopsys translate_on
	 ;
	 SIGNAL	 wire_state_reg_sclr	:	STD_LOGIC_VECTOR(1 DOWNTO 0);
	 SIGNAL	 wire_state_reg_sload	:	STD_LOGIC_VECTOR(1 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_lg_w_q_range2w7w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_lg_w_q_range1w3w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_lg_w_q_range22w23w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_lg_w_q_range31w32w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_q_range1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_q_range2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_q_range22w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_state_reg_w_q_range31w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_addr_cmpr_aeb	:	STD_LOGIC;
	 SIGNAL  wire_addr_cmpr_alb	:	STD_LOGIC;
	 SIGNAL  wire_addr_cmpr_datab	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_wait_cmpr_aeb	:	STD_LOGIC;
	 SIGNAL  wire_wait_cmpr_alb	:	STD_LOGIC;
	 SIGNAL  wire_gnd_vector	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_addr_ctr_cnt_en	:	STD_LOGIC;
	 SIGNAL  wire_addr_ctr_q	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	 SIGNAL  wire_wait_ctr_q	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_wait_ctr_sclr	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_ram_addr_state44w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_init38w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  addrct_eq_numwords :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  addrct_lt_numwords :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  done_state :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  idle_state :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  ram_addr_state :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  ram_write_state :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  reset_state_machine :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  state_machine_clken :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  waitct_eq_latency :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  waitct_lt_latency :	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 COMPONENT  lpm_compare
	 GENERIC 
	 (
		LPM_PIPELINE	:	NATURAL := 0;
		LPM_REPRESENTATION	:	STRING := "UNSIGNED";
		LPM_WIDTH	:	NATURAL;
		lpm_hint	:	STRING := "UNUSED";
		lpm_type	:	STRING := "lpm_compare"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		aeb	:	OUT STD_LOGIC;
		agb	:	OUT STD_LOGIC;
		ageb	:	OUT STD_LOGIC;
		alb	:	OUT STD_LOGIC;
		aleb	:	OUT STD_LOGIC;
		aneb	:	OUT STD_LOGIC;
		clken	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC := '0';
		dataa	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		datab	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0')
	 ); 
	 END COMPONENT;
	 COMPONENT  lpm_counter
	 GENERIC 
	 (
		lpm_avalue	:	STRING := "0";
		lpm_direction	:	STRING := "DEFAULT";
		lpm_modulus	:	NATURAL := 0;
		lpm_port_updown	:	STRING := "PORT_CONNECTIVITY";
		lpm_pvalue	:	STRING := "0";
		lpm_svalue	:	STRING := "0";
		lpm_width	:	NATURAL;
		lpm_type	:	STRING := "lpm_counter"
	 );
	 PORT
	 ( 
		aclr	:	IN STD_LOGIC := '0';
		aload	:	IN STD_LOGIC := '0';
		aset	:	IN STD_LOGIC := '0';
		cin	:	IN STD_LOGIC := '1';
		clk_en	:	IN STD_LOGIC := '1';
		clock	:	IN STD_LOGIC;
		cnt_en	:	IN STD_LOGIC := '1';
		cout	:	OUT STD_LOGIC;
		data	:	IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
		eq	:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		q	:	OUT STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0);
		sclr	:	IN STD_LOGIC := '0';
		sload	:	IN STD_LOGIC := '0';
		sset	:	IN STD_LOGIC := '0';
		updown	:	IN STD_LOGIC := '1'
	 ); 
	 END COMPONENT;
 BEGIN

	wire_gnd_vector <= "0";
	wire_w_lg_init38w(0) <= init OR capture_init(0);
	addrct_eq_numwords(0) <= wire_addr_cmpr_aeb;
	addrct_lt_numwords(0) <= wire_addr_cmpr_alb;
	dataout <= (OTHERS => '0');
	done_state(0) <= (state_reg(1) AND state_reg(0));
	idle_state(0) <= ((NOT state_reg(1)) AND wire_state_reg_w_lg_w_q_range1w3w(0));
	init_busy <= capture_init(0);
	ram_addr_state(0) <= ((NOT state_reg(1)) AND state_reg(0));
	ram_address <= wire_addr_ctr_q;
	ram_wren <= ((NOT prev_state(1)) AND prev_state(0));
	ram_write_state(0) <= wire_state_reg_w_lg_w_q_range2w7w(0);
	reset_state_machine(0) <= (ram_write_state(0) AND addrct_lt_numwords(0));
	state_machine_clken(0) <= (clken AND (((idle_state(0) AND capture_init(0)) OR (done_state(0) AND waitct_eq_latency(0))) OR (capture_init(0) AND (((NOT (ram_addr_state(0) AND waitct_lt_latency(0))) OR (ram_addr_state(0) AND waitct_eq_latency(0))) OR (ram_write_state(0) AND addrct_eq_numwords(0))))));
	waitct_eq_latency(0) <= wire_wait_cmpr_aeb;
	waitct_lt_latency(0) <= wire_wait_cmpr_alb;
	PROCESS (clock)
	BEGIN
		IF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN capture_init(0) <= (wire_w_lg_init38w(0) AND (NOT done_state(0)));
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock)
	BEGIN
		IF (clock = '1' AND clock'event) THEN 
			IF (clken = '1') THEN prev_state <= state_reg;
			END IF;
		END IF;
	END PROCESS;
	wire_prev_state_w_lg_w_q_range42w43w(0) <= wire_prev_state_w_q_range42w(0) AND wire_prev_state_w_lg_w_q_range40w41w(0);
	wire_prev_state_w_lg_w_q_range40w41w(0) <= NOT wire_prev_state_w_q_range40w(0);
	wire_prev_state_w_q_range40w(0) <= prev_state(0);
	wire_prev_state_w_q_range42w(0) <= prev_state(1);
	PROCESS (clock)
	BEGIN
		IF (clock = '1' AND clock'event) THEN 
			IF (state_machine_clken(0) = '1') THEN 
				IF (wire_state_reg_sclr(0) = '1') THEN state_reg(0) <= '0';
				ELSIF (wire_state_reg_sload(0) = '1') THEN state_reg(0) <= '1';
				ELSE state_reg(0) <= wire_state_reg_d(0);
				END IF;
			END IF;
		END IF;
	END PROCESS;
	PROCESS (clock)
	BEGIN
		IF (clock = '1' AND clock'event) THEN 
			IF (state_machine_clken(0) = '1') THEN 
				IF (wire_state_reg_sclr(1) = '1') THEN state_reg(1) <= '0';
				ELSIF (wire_state_reg_sload(1) = '1') THEN state_reg(1) <= '1';
				ELSE state_reg(1) <= wire_state_reg_d(1);
				END IF;
			END IF;
		END IF;
	END PROCESS;
	wire_state_reg_d <= ( wire_state_reg_w_lg_w_q_range31w32w & wire_state_reg_w_lg_w_q_range22w23w);
	wire_state_reg_sclr <= ( reset_state_machine & "0");
	wire_state_reg_sload <= ( "0" & reset_state_machine);
	wire_state_reg_w_lg_w_q_range2w7w(0) <= wire_state_reg_w_q_range2w(0) AND wire_state_reg_w_lg_w_q_range1w3w(0);
	wire_state_reg_w_lg_w_q_range1w3w(0) <= NOT wire_state_reg_w_q_range1w(0);
	wire_state_reg_w_lg_w_q_range22w23w(0) <= NOT wire_state_reg_w_q_range22w(0);
	wire_state_reg_w_lg_w_q_range31w32w(0) <= wire_state_reg_w_q_range31w(0) XOR wire_state_reg_w_q_range22w(0);
	wire_state_reg_w_q_range1w(0) <= state_reg(0);
	wire_state_reg_w_q_range2w(0) <= state_reg(1);
	wire_state_reg_w_q_range22w(0) <= state_reg(0);
	wire_state_reg_w_q_range31w(0) <= state_reg(1);
	wire_addr_cmpr_datab <= (OTHERS => '1');
	addr_cmpr :  lpm_compare
	  GENERIC MAP (
		LPM_WIDTH => 16
	  )
	  PORT MAP ( 
		aeb => wire_addr_cmpr_aeb,
		alb => wire_addr_cmpr_alb,
		dataa => wire_addr_ctr_q,
		datab => wire_addr_cmpr_datab
	  );
	wait_cmpr :  lpm_compare
	  GENERIC MAP (
		LPM_WIDTH => 1
	  )
	  PORT MAP ( 
		aeb => wire_wait_cmpr_aeb,
		alb => wire_wait_cmpr_alb,
		dataa => wire_wait_ctr_q,
		datab => wire_gnd_vector
	  );
	wire_addr_ctr_cnt_en <= wire_prev_state_w_lg_w_q_range42w43w(0);
	addr_ctr :  lpm_counter
	  GENERIC MAP (
		lpm_direction => "UP",
		lpm_modulus => 65536,
		lpm_port_updown => "PORT_UNUSED",
		lpm_width => 16
	  )
	  PORT MAP ( 
		clk_en => clken,
		clock => clock,
		cnt_en => wire_addr_ctr_cnt_en,
		q => wire_addr_ctr_q,
		sclr => idle_state(0)
	  );
	wire_wait_ctr_sclr <= wire_w_lg_ram_addr_state44w(0);
	wire_w_lg_ram_addr_state44w(0) <= NOT ram_addr_state(0);
	wait_ctr :  lpm_counter
	  GENERIC MAP (
		lpm_direction => "UP",
		lpm_modulus => 1,
		lpm_port_updown => "PORT_UNUSED",
		lpm_width => 1
	  )
	  PORT MAP ( 
		clk_en => clken,
		clock => clock,
		cnt_en => ram_addr_state(0),
		q => wire_wait_ctr_q,
		sclr => wire_wait_ctr_sclr
	  );

 END RTL; --rami_meminit_8ok
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY rami IS
	PORT
	(
		clken		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		init		: IN STD_LOGIC ;
		dataout		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		init_busy		: OUT STD_LOGIC ;
		ram_address		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		ram_wren		: OUT STD_LOGIC 
	);
END rami;


ARCHITECTURE RTL OF rami IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC ;



	COMPONENT rami_meminit_8ok
	PORT (
			clken	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			init	: IN STD_LOGIC ;
			dataout	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			init_busy	: OUT STD_LOGIC ;
			ram_address	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			ram_wren	: OUT STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	dataout    <= sub_wire0(15 DOWNTO 0);
	init_busy    <= sub_wire1;
	ram_address    <= sub_wire2(15 DOWNTO 0);
	ram_wren    <= sub_wire3;

	rami_meminit_8ok_component : rami_meminit_8ok
	PORT MAP (
		clken => clken,
		clock => clock,
		init => init,
		dataout => sub_wire0,
		init_busy => sub_wire1,
		ram_address => sub_wire2,
		ram_wren => sub_wire3
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: CONSTANT: INIT_FILE STRING "UNUSED"
-- Retrieval info: CONSTANT: INIT_TO_ZERO STRING "YES"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altmem_init"
-- Retrieval info: CONSTANT: NUMWORDS NUMERIC "65536"
-- Retrieval info: CONSTANT: PORT_ROM_DATA_READY STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: ROM_READ_LATENCY NUMERIC "1"
-- Retrieval info: CONSTANT: WIDTH NUMERIC "16"
-- Retrieval info: CONSTANT: WIDTHAD NUMERIC "16"
-- Retrieval info: USED_PORT: clken 0 0 0 0 INPUT NODEFVAL "clken"
-- Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: USED_PORT: dataout 0 0 16 0 OUTPUT NODEFVAL "dataout[15..0]"
-- Retrieval info: CONNECT: dataout 0 0 16 0 @dataout 0 0 16 0
-- Retrieval info: USED_PORT: init 0 0 0 0 INPUT NODEFVAL "init"
-- Retrieval info: CONNECT: @init 0 0 0 0 init 0 0 0 0
-- Retrieval info: USED_PORT: init_busy 0 0 0 0 OUTPUT NODEFVAL "init_busy"
-- Retrieval info: CONNECT: init_busy 0 0 0 0 @init_busy 0 0 0 0
-- Retrieval info: USED_PORT: ram_address 0 0 16 0 OUTPUT NODEFVAL "ram_address[15..0]"
-- Retrieval info: CONNECT: ram_address 0 0 16 0 @ram_address 0 0 16 0
-- Retrieval info: USED_PORT: ram_wren 0 0 0 0 OUTPUT NODEFVAL "ram_wren"
-- Retrieval info: CONNECT: ram_wren 0 0 0 0 @ram_wren 0 0 0 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL rami.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rami.qip TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rami.bsf TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rami_inst.vhd TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rami.inc TRUE TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rami.cmp TRUE TRUE
-- Retrieval info: LIB_FILE: lpm