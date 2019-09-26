-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Thu Sep 26 15:53:31 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Multiplexador_4bits IS 
	PORT
	(
		S2 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		Soma :  IN  STD_LOGIC;
		Subtra :  IN  STD_LOGIC;
		Complemento :  IN  STD_LOGIC;
		AND :  IN  STD_LOGIC;
		XOR :  IN  STD_LOGIC;
		Saida :  OUT  STD_LOGIC
	);
END Multiplexador_4bits;

ARCHITECTURE bdf_type OF Multiplexador_4bits IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT and5_0
	PORT(IN3 : IN STD_LOGIC;
		 IN2 : IN STD_LOGIC;
		 IN1 : IN STD_LOGIC;
		 IN5 : IN STD_LOGIC;
		 IN4 : IN STD_LOGIC;
		 OUT : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF and5_0: COMPONENT IS true;
ATTRIBUTE noopt OF and5_0: COMPONENT IS true;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_13 <= NOT(S2);



b2v_inst1 : and5_0
PORT MAP(IN3 => SYNTHESIZED_WIRE_0,
		 IN2 => SYNTHESIZED_WIRE_1,
		 IN1 => SYNTHESIZED_WIRE_2,
		 IN5 => SYNTHESIZED_WIRE_3,
		 IN4 => SYNTHESIZED_WIRE_4,
		 OUT => Saida);


SYNTHESIZED_WIRE_14 <= NOT(S1);



SYNTHESIZED_WIRE_15 <= NOT(S0);



SYNTHESIZED_WIRE_2 <= Soma AND SYNTHESIZED_WIRE_13 AND SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_1 <= Subtra AND SYNTHESIZED_WIRE_13 AND SYNTHESIZED_WIRE_14 AND S0;


SYNTHESIZED_WIRE_0 <= Complemento AND SYNTHESIZED_WIRE_13 AND S1 AND SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_4 <= AND AND S2 AND S1 AND SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_3 <= XOR AND S2 AND S1 AND S0;


END bdf_type;