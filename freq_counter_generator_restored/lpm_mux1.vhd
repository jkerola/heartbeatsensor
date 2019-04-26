-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: lpm_mux1.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY lpm_mux1 IS
	PORT
	(
		data0		: IN STD_LOGIC ;
		data1		: IN STD_LOGIC ;
		data2		: IN STD_LOGIC ;
		data3		: IN STD_LOGIC ;
		data4		: IN STD_LOGIC ;
		data5		: IN STD_LOGIC ;
		data6		: IN STD_LOGIC ;
		data7		: IN STD_LOGIC ;
		sel		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		result		: OUT STD_LOGIC 
	);
END lpm_mux1;


ARCHITECTURE SYN OF lpm_mux1 IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC_2D (7 DOWNTO 0, 0 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC ;
	SIGNAL sub_wire5	: STD_LOGIC ;
	SIGNAL sub_wire6	: STD_LOGIC ;
	SIGNAL sub_wire7	: STD_LOGIC ;
	SIGNAL sub_wire8	: STD_LOGIC ;
	SIGNAL sub_wire9	: STD_LOGIC ;
	SIGNAL sub_wire10	: STD_LOGIC ;

BEGIN
	sub_wire10    <= data0;
	sub_wire9    <= data1;
	sub_wire8    <= data2;
	sub_wire7    <= data3;
	sub_wire6    <= data4;
	sub_wire5    <= data5;
	sub_wire4    <= data6;
	sub_wire1    <= sub_wire0(0);
	result    <= sub_wire1;
	sub_wire2    <= data7;
	sub_wire3(7, 0)    <= sub_wire2;
	sub_wire3(6, 0)    <= sub_wire4;
	sub_wire3(5, 0)    <= sub_wire5;
	sub_wire3(4, 0)    <= sub_wire6;
	sub_wire3(3, 0)    <= sub_wire7;
	sub_wire3(2, 0)    <= sub_wire8;
	sub_wire3(1, 0)    <= sub_wire9;
	sub_wire3(0, 0)    <= sub_wire10;

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 8,
		lpm_type => "LPM_MUX",
		lpm_width => 1,
		lpm_widths => 3
	)
	PORT MAP (
		data => sub_wire3,
		sel => sel,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "8"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "3"
-- Retrieval info: USED_PORT: data0 0 0 0 0 INPUT NODEFVAL "data0"
-- Retrieval info: USED_PORT: data1 0 0 0 0 INPUT NODEFVAL "data1"
-- Retrieval info: USED_PORT: data2 0 0 0 0 INPUT NODEFVAL "data2"
-- Retrieval info: USED_PORT: data3 0 0 0 0 INPUT NODEFVAL "data3"
-- Retrieval info: USED_PORT: data4 0 0 0 0 INPUT NODEFVAL "data4"
-- Retrieval info: USED_PORT: data5 0 0 0 0 INPUT NODEFVAL "data5"
-- Retrieval info: USED_PORT: data6 0 0 0 0 INPUT NODEFVAL "data6"
-- Retrieval info: USED_PORT: data7 0 0 0 0 INPUT NODEFVAL "data7"
-- Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL "result"
-- Retrieval info: USED_PORT: sel 0 0 3 0 INPUT NODEFVAL "sel[2..0]"
-- Retrieval info: CONNECT: @data 1 0 1 0 data0 0 0 0 0
-- Retrieval info: CONNECT: @data 1 1 1 0 data1 0 0 0 0
-- Retrieval info: CONNECT: @data 1 2 1 0 data2 0 0 0 0
-- Retrieval info: CONNECT: @data 1 3 1 0 data3 0 0 0 0
-- Retrieval info: CONNECT: @data 1 4 1 0 data4 0 0 0 0
-- Retrieval info: CONNECT: @data 1 5 1 0 data5 0 0 0 0
-- Retrieval info: CONNECT: @data 1 6 1 0 data6 0 0 0 0
-- Retrieval info: CONNECT: @data 1 7 1 0 data7 0 0 0 0
-- Retrieval info: CONNECT: @sel 0 0 3 0 sel 0 0 3 0
-- Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
