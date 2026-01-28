-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/28/2026 15:45:14"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tcp_client IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	connect : IN std_logic;
	server_mac : IN std_logic_vector(47 DOWNTO 0);
	server_ip : IN std_logic_vector(31 DOWNTO 0);
	server_port : IN std_logic_vector(15 DOWNTO 0);
	client_mac : IN std_logic_vector(47 DOWNTO 0);
	client_ip : IN std_logic_vector(31 DOWNTO 0);
	client_port : IN std_logic_vector(15 DOWNTO 0);
	is_connected : OUT std_logic;
	in_data : IN std_logic_vector(7 DOWNTO 0);
	in_valid : IN std_logic;
	in_sop : IN std_logic;
	in_eop : IN std_logic;
	in_ready : OUT std_logic;
	out_data : OUT std_logic_vector(7 DOWNTO 0);
	out_valid : OUT std_logic;
	out_sop : OUT std_logic;
	out_eop : OUT std_logic;
	out_ready : IN std_logic
	);
END tcp_client;

-- Design Ports Information
-- is_connected	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sop	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_eop	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_sop	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_eop	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[8]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[16]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[8]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[24]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[24]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[0]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[16]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[8]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[40]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[8]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[32]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[24]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[32]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[40]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[16]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[9]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[17]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[9]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[25]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[1]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[25]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[25]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[17]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[9]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[1]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[9]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[1]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[41]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[9]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[33]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[25]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[33]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[41]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[17]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[42]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[10]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[34]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[34]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[26]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[42]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[10]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[10]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[18]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[26]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[2]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[18]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[26]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[26]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[2]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[10]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[18]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[10]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[10]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[43]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[3]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[11]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[35]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[35]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[27]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[43]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[19]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[11]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[19]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[27]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[19]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[27]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[11]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[19]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[11]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[3]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[4]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[44]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[12]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[36]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[28]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[36]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[44]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[20]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[12]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[4]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[20]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[28]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[20]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[28]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[28]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[20]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[12]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[12]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[5]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[21]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[13]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[21]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[29]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[5]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[29]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[29]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[13]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[21]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[13]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[5]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[13]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[5]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[45]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[13]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[37]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[29]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[37]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[45]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[21]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[46]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[6]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[14]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[38]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[38]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[30]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[46]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[22]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[14]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[14]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[22]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[22]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[30]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[30]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[22]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[14]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[14]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[6]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_port[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[31]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[23]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[15]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[23]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[31]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[7]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[31]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[7]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_ip[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[23]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[15]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[7]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_ip[15]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_port[7]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[7]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[47]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- client_mac[39]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[31]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[39]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[47]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- server_mac[23]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- connect	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tcp_client IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_connect : std_logic;
SIGNAL ww_server_mac : std_logic_vector(47 DOWNTO 0);
SIGNAL ww_server_ip : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_server_port : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_client_mac : std_logic_vector(47 DOWNTO 0);
SIGNAL ww_client_ip : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_client_port : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_is_connected : std_logic;
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_valid : std_logic;
SIGNAL ww_in_sop : std_logic;
SIGNAL ww_in_eop : std_logic;
SIGNAL ww_in_ready : std_logic;
SIGNAL ww_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_out_sop : std_logic;
SIGNAL ww_out_eop : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \is_connected~output_o\ : std_logic;
SIGNAL \in_ready~output_o\ : std_logic;
SIGNAL \out_data[0]~output_o\ : std_logic;
SIGNAL \out_data[1]~output_o\ : std_logic;
SIGNAL \out_data[2]~output_o\ : std_logic;
SIGNAL \out_data[3]~output_o\ : std_logic;
SIGNAL \out_data[4]~output_o\ : std_logic;
SIGNAL \out_data[5]~output_o\ : std_logic;
SIGNAL \out_data[6]~output_o\ : std_logic;
SIGNAL \out_data[7]~output_o\ : std_logic;
SIGNAL \out_valid~output_o\ : std_logic;
SIGNAL \out_sop~output_o\ : std_logic;
SIGNAL \out_eop~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \out_ready~input_o\ : std_logic;
SIGNAL \tx_idx[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \connect~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \in_eop~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \timeout_cnt[0]~33_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \timeout_cnt[6]~35_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \timeout_cnt[6]~36_combout\ : std_logic;
SIGNAL \timeout_cnt[0]~34\ : std_logic;
SIGNAL \timeout_cnt[1]~37_combout\ : std_logic;
SIGNAL \timeout_cnt[1]~38\ : std_logic;
SIGNAL \timeout_cnt[2]~39_combout\ : std_logic;
SIGNAL \timeout_cnt[2]~40\ : std_logic;
SIGNAL \timeout_cnt[3]~41_combout\ : std_logic;
SIGNAL \timeout_cnt[3]~42\ : std_logic;
SIGNAL \timeout_cnt[4]~43_combout\ : std_logic;
SIGNAL \timeout_cnt[4]~44\ : std_logic;
SIGNAL \timeout_cnt[5]~45_combout\ : std_logic;
SIGNAL \timeout_cnt[5]~46\ : std_logic;
SIGNAL \timeout_cnt[6]~47_combout\ : std_logic;
SIGNAL \timeout_cnt[6]~48\ : std_logic;
SIGNAL \timeout_cnt[7]~49_combout\ : std_logic;
SIGNAL \timeout_cnt[7]~50\ : std_logic;
SIGNAL \timeout_cnt[8]~51_combout\ : std_logic;
SIGNAL \timeout_cnt[8]~52\ : std_logic;
SIGNAL \timeout_cnt[9]~53_combout\ : std_logic;
SIGNAL \timeout_cnt[9]~54\ : std_logic;
SIGNAL \timeout_cnt[10]~55_combout\ : std_logic;
SIGNAL \timeout_cnt[10]~56\ : std_logic;
SIGNAL \timeout_cnt[11]~57_combout\ : std_logic;
SIGNAL \timeout_cnt[11]~58\ : std_logic;
SIGNAL \timeout_cnt[12]~59_combout\ : std_logic;
SIGNAL \timeout_cnt[12]~60\ : std_logic;
SIGNAL \timeout_cnt[13]~61_combout\ : std_logic;
SIGNAL \timeout_cnt[13]~62\ : std_logic;
SIGNAL \timeout_cnt[14]~63_combout\ : std_logic;
SIGNAL \timeout_cnt[14]~64\ : std_logic;
SIGNAL \timeout_cnt[15]~65_combout\ : std_logic;
SIGNAL \timeout_cnt[15]~66\ : std_logic;
SIGNAL \timeout_cnt[16]~67_combout\ : std_logic;
SIGNAL \timeout_cnt[16]~68\ : std_logic;
SIGNAL \timeout_cnt[17]~69_combout\ : std_logic;
SIGNAL \timeout_cnt[17]~70\ : std_logic;
SIGNAL \timeout_cnt[18]~71_combout\ : std_logic;
SIGNAL \timeout_cnt[18]~72\ : std_logic;
SIGNAL \timeout_cnt[19]~73_combout\ : std_logic;
SIGNAL \timeout_cnt[19]~74\ : std_logic;
SIGNAL \timeout_cnt[20]~75_combout\ : std_logic;
SIGNAL \timeout_cnt[20]~76\ : std_logic;
SIGNAL \timeout_cnt[21]~77_combout\ : std_logic;
SIGNAL \timeout_cnt[21]~78\ : std_logic;
SIGNAL \timeout_cnt[22]~79_combout\ : std_logic;
SIGNAL \timeout_cnt[22]~80\ : std_logic;
SIGNAL \timeout_cnt[23]~81_combout\ : std_logic;
SIGNAL \timeout_cnt[23]~82\ : std_logic;
SIGNAL \timeout_cnt[24]~83_combout\ : std_logic;
SIGNAL \timeout_cnt[24]~84\ : std_logic;
SIGNAL \timeout_cnt[25]~85_combout\ : std_logic;
SIGNAL \timeout_cnt[25]~86\ : std_logic;
SIGNAL \timeout_cnt[26]~87_combout\ : std_logic;
SIGNAL \timeout_cnt[26]~88\ : std_logic;
SIGNAL \timeout_cnt[27]~89_combout\ : std_logic;
SIGNAL \timeout_cnt[27]~90\ : std_logic;
SIGNAL \timeout_cnt[28]~91_combout\ : std_logic;
SIGNAL \timeout_cnt[28]~92\ : std_logic;
SIGNAL \timeout_cnt[29]~93_combout\ : std_logic;
SIGNAL \timeout_cnt[29]~94\ : std_logic;
SIGNAL \timeout_cnt[30]~95_combout\ : std_logic;
SIGNAL \timeout_cnt[30]~96\ : std_logic;
SIGNAL \timeout_cnt[31]~97_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \in_sop~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \st.TX_SYN~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \st.WAIT_RX~q\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \st.RX_FRAME~q\ : std_logic;
SIGNAL \st_n.EVALUATE_RX~0_combout\ : std_logic;
SIGNAL \st.EVALUATE_RX~q\ : std_logic;
SIGNAL \client_ip[7]~input_o\ : std_logic;
SIGNAL \client_ip[6]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \rx_idx~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \rx_idx~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \rx_idx~7_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \rx_idx~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \rx_idx~5_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \rx_idx~4_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \rx_idx~9_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \rx_idx~8_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \rx_idx[7]~2_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \rx_buf[33][6]~q\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \rx_buf[33][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[33][7]~q\ : std_logic;
SIGNAL \rx_is_synack~42_combout\ : std_logic;
SIGNAL \client_ip[0]~input_o\ : std_logic;
SIGNAL \client_ip[1]~input_o\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \rx_buf[33][1]~q\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \rx_buf[33][0]~q\ : std_logic;
SIGNAL \rx_is_synack~39_combout\ : std_logic;
SIGNAL \client_ip[2]~input_o\ : std_logic;
SIGNAL \client_ip[3]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \rx_buf[33][2]~q\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \rx_buf[33][3]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[33][3]~q\ : std_logic;
SIGNAL \rx_is_synack~40_combout\ : std_logic;
SIGNAL \client_ip[4]~input_o\ : std_logic;
SIGNAL \client_ip[5]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \rx_buf[33][4]~q\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \rx_buf[33][5]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[33][5]~q\ : std_logic;
SIGNAL \rx_is_synack~41_combout\ : std_logic;
SIGNAL \rx_is_synack~43_combout\ : std_logic;
SIGNAL \client_ip[14]~input_o\ : std_logic;
SIGNAL \rx_buf[32][7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \rx_buf[32][7]~q\ : std_logic;
SIGNAL \rx_buf[32][6]~q\ : std_logic;
SIGNAL \client_ip[15]~input_o\ : std_logic;
SIGNAL \rx_is_synack~37_combout\ : std_logic;
SIGNAL \client_ip[11]~input_o\ : std_logic;
SIGNAL \client_ip[10]~input_o\ : std_logic;
SIGNAL \rx_buf[32][3]~q\ : std_logic;
SIGNAL \rx_buf[32][2]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[32][2]~q\ : std_logic;
SIGNAL \rx_is_synack~35_combout\ : std_logic;
SIGNAL \client_ip[13]~input_o\ : std_logic;
SIGNAL \client_ip[12]~input_o\ : std_logic;
SIGNAL \rx_buf[32][4]~q\ : std_logic;
SIGNAL \rx_buf[32][5]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[32][5]~q\ : std_logic;
SIGNAL \rx_is_synack~36_combout\ : std_logic;
SIGNAL \client_ip[8]~input_o\ : std_logic;
SIGNAL \client_ip[9]~input_o\ : std_logic;
SIGNAL \rx_buf[32][1]~q\ : std_logic;
SIGNAL \rx_buf[32][0]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[32][0]~q\ : std_logic;
SIGNAL \rx_is_synack~34_combout\ : std_logic;
SIGNAL \rx_is_synack~38_combout\ : std_logic;
SIGNAL \server_ip[30]~input_o\ : std_logic;
SIGNAL \server_ip[31]~input_o\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \rx_buf[26][6]~q\ : std_logic;
SIGNAL \rx_buf[26][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[26][7]~q\ : std_logic;
SIGNAL \rx_is_synack~47_combout\ : std_logic;
SIGNAL \server_ip[29]~input_o\ : std_logic;
SIGNAL \server_ip[28]~input_o\ : std_logic;
SIGNAL \rx_buf[26][4]~q\ : std_logic;
SIGNAL \rx_buf[26][5]~q\ : std_logic;
SIGNAL \rx_is_synack~46_combout\ : std_logic;
SIGNAL \server_ip[26]~input_o\ : std_logic;
SIGNAL \server_ip[27]~input_o\ : std_logic;
SIGNAL \rx_buf[26][2]~q\ : std_logic;
SIGNAL \rx_buf[26][3]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[26][3]~q\ : std_logic;
SIGNAL \rx_is_synack~45_combout\ : std_logic;
SIGNAL \server_ip[25]~input_o\ : std_logic;
SIGNAL \server_ip[24]~input_o\ : std_logic;
SIGNAL \rx_buf[26][0]~q\ : std_logic;
SIGNAL \rx_buf[26][1]~q\ : std_logic;
SIGNAL \rx_is_synack~44_combout\ : std_logic;
SIGNAL \rx_is_synack~48_combout\ : std_logic;
SIGNAL \server_ip[16]~input_o\ : std_logic;
SIGNAL \server_ip[17]~input_o\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \rx_buf[27][1]~q\ : std_logic;
SIGNAL \rx_buf[27][0]~q\ : std_logic;
SIGNAL \rx_is_synack~49_combout\ : std_logic;
SIGNAL \server_ip[23]~input_o\ : std_logic;
SIGNAL \server_ip[22]~input_o\ : std_logic;
SIGNAL \rx_buf[27][6]~q\ : std_logic;
SIGNAL \rx_buf[27][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[27][7]~q\ : std_logic;
SIGNAL \rx_is_synack~52_combout\ : std_logic;
SIGNAL \server_ip[19]~input_o\ : std_logic;
SIGNAL \server_ip[18]~input_o\ : std_logic;
SIGNAL \rx_buf[27][2]~q\ : std_logic;
SIGNAL \rx_buf[27][3]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[27][3]~q\ : std_logic;
SIGNAL \rx_is_synack~50_combout\ : std_logic;
SIGNAL \server_ip[20]~input_o\ : std_logic;
SIGNAL \server_ip[21]~input_o\ : std_logic;
SIGNAL \rx_buf[27][4]~q\ : std_logic;
SIGNAL \rx_buf[27][5]~q\ : std_logic;
SIGNAL \rx_is_synack~51_combout\ : std_logic;
SIGNAL \rx_is_synack~53_combout\ : std_logic;
SIGNAL \rx_is_synack~54_combout\ : std_logic;
SIGNAL \Decoder0~27_combout\ : std_logic;
SIGNAL \Decoder0~32_combout\ : std_logic;
SIGNAL \Decoder0~33_combout\ : std_logic;
SIGNAL \rx_buf[31][5]~q\ : std_logic;
SIGNAL \client_ip[21]~input_o\ : std_logic;
SIGNAL \rx_buf[31][4]~q\ : std_logic;
SIGNAL \client_ip[20]~input_o\ : std_logic;
SIGNAL \rx_is_synack~67_combout\ : std_logic;
SIGNAL \client_ip[18]~input_o\ : std_logic;
SIGNAL \rx_buf[31][3]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[31][3]~q\ : std_logic;
SIGNAL \client_ip[19]~input_o\ : std_logic;
SIGNAL \rx_buf[31][2]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[31][2]~q\ : std_logic;
SIGNAL \rx_is_synack~66_combout\ : std_logic;
SIGNAL \client_ip[23]~input_o\ : std_logic;
SIGNAL \client_ip[22]~input_o\ : std_logic;
SIGNAL \rx_buf[31][6]~q\ : std_logic;
SIGNAL \rx_buf[31][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[31][7]~q\ : std_logic;
SIGNAL \rx_is_synack~68_combout\ : std_logic;
SIGNAL \client_ip[17]~input_o\ : std_logic;
SIGNAL \client_ip[16]~input_o\ : std_logic;
SIGNAL \rx_buf[31][0]~q\ : std_logic;
SIGNAL \rx_buf[31][1]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[31][1]~q\ : std_logic;
SIGNAL \rx_is_synack~65_combout\ : std_logic;
SIGNAL \rx_is_synack~69_combout\ : std_logic;
SIGNAL \client_ip[30]~input_o\ : std_logic;
SIGNAL \client_ip[31]~input_o\ : std_logic;
SIGNAL \Decoder0~30_combout\ : std_logic;
SIGNAL \Decoder0~31_combout\ : std_logic;
SIGNAL \rx_buf[30][6]~q\ : std_logic;
SIGNAL \rx_buf[30][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[30][7]~q\ : std_logic;
SIGNAL \rx_is_synack~63_combout\ : std_logic;
SIGNAL \client_ip[25]~input_o\ : std_logic;
SIGNAL \client_ip[24]~input_o\ : std_logic;
SIGNAL \rx_buf[30][0]~q\ : std_logic;
SIGNAL \rx_buf[30][1]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[30][1]~q\ : std_logic;
SIGNAL \rx_is_synack~60_combout\ : std_logic;
SIGNAL \client_ip[28]~input_o\ : std_logic;
SIGNAL \client_ip[29]~input_o\ : std_logic;
SIGNAL \rx_buf[30][4]~q\ : std_logic;
SIGNAL \rx_buf[30][5]~q\ : std_logic;
SIGNAL \rx_is_synack~62_combout\ : std_logic;
SIGNAL \client_ip[26]~input_o\ : std_logic;
SIGNAL \client_ip[27]~input_o\ : std_logic;
SIGNAL \rx_buf[30][2]~q\ : std_logic;
SIGNAL \rx_buf[30][3]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[30][3]~q\ : std_logic;
SIGNAL \rx_is_synack~61_combout\ : std_logic;
SIGNAL \rx_is_synack~64_combout\ : std_logic;
SIGNAL \rx_buf[14][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~26_combout\ : std_logic;
SIGNAL \rx_buf[14][2]~q\ : std_logic;
SIGNAL \rx_buf[14][0]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[14][0]~q\ : std_logic;
SIGNAL \rx_buf[14][1]~q\ : std_logic;
SIGNAL \rx_buf[14][3]~q\ : std_logic;
SIGNAL \rx_is_synack~56_combout\ : std_logic;
SIGNAL \Decoder0~28_combout\ : std_logic;
SIGNAL \Decoder0~29_combout\ : std_logic;
SIGNAL \rx_buf[23][2]~q\ : std_logic;
SIGNAL \rx_buf[23][3]~q\ : std_logic;
SIGNAL \rx_buf[23][0]~q\ : std_logic;
SIGNAL \rx_buf[23][1]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[23][1]~q\ : std_logic;
SIGNAL \rx_is_synack~58_combout\ : std_logic;
SIGNAL \rx_buf[14][5]~q\ : std_logic;
SIGNAL \rx_buf[14][4]~q\ : std_logic;
SIGNAL \rx_buf[14][7]~q\ : std_logic;
SIGNAL \rx_buf[14][6]~q\ : std_logic;
SIGNAL \rx_is_synack~55_combout\ : std_logic;
SIGNAL \rx_buf[23][6]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[23][6]~q\ : std_logic;
SIGNAL \rx_buf[23][5]~q\ : std_logic;
SIGNAL \rx_buf[23][4]~q\ : std_logic;
SIGNAL \rx_buf[23][7]~q\ : std_logic;
SIGNAL \rx_is_synack~57_combout\ : std_logic;
SIGNAL \rx_is_synack~59_combout\ : std_logic;
SIGNAL \rx_is_synack~70_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \rx_buf[47][4]~q\ : std_logic;
SIGNAL \rx_buf[47][6]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[47][6]~q\ : std_logic;
SIGNAL \rx_buf[47][7]~q\ : std_logic;
SIGNAL \rx_buf[47][5]~q\ : std_logic;
SIGNAL \rx_is_synack~0_combout\ : std_logic;
SIGNAL \rx_buf[47][2]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[47][2]~q\ : std_logic;
SIGNAL \rx_buf[47][0]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[47][0]~q\ : std_logic;
SIGNAL \rx_buf[47][3]~q\ : std_logic;
SIGNAL \rx_buf[47][1]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[47][1]~q\ : std_logic;
SIGNAL \rx_is_synack~1_combout\ : std_logic;
SIGNAL \client_port[2]~input_o\ : std_logic;
SIGNAL \client_port[3]~input_o\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \rx_buf[37][2]~q\ : std_logic;
SIGNAL \rx_buf[37][3]~q\ : std_logic;
SIGNAL \rx_is_synack~8_combout\ : std_logic;
SIGNAL \client_port[5]~input_o\ : std_logic;
SIGNAL \client_port[4]~input_o\ : std_logic;
SIGNAL \rx_buf[37][4]~q\ : std_logic;
SIGNAL \rx_buf[37][5]~q\ : std_logic;
SIGNAL \rx_is_synack~9_combout\ : std_logic;
SIGNAL \client_port[0]~input_o\ : std_logic;
SIGNAL \client_port[1]~input_o\ : std_logic;
SIGNAL \rx_buf[37][0]~q\ : std_logic;
SIGNAL \rx_buf[37][1]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[37][1]~q\ : std_logic;
SIGNAL \rx_is_synack~7_combout\ : std_logic;
SIGNAL \client_port[6]~input_o\ : std_logic;
SIGNAL \client_port[7]~input_o\ : std_logic;
SIGNAL \rx_buf[37][6]~q\ : std_logic;
SIGNAL \rx_buf[37][7]~q\ : std_logic;
SIGNAL \rx_is_synack~10_combout\ : std_logic;
SIGNAL \rx_is_synack~11_combout\ : std_logic;
SIGNAL \client_port[13]~input_o\ : std_logic;
SIGNAL \client_port[12]~input_o\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \rx_buf[36][4]~q\ : std_logic;
SIGNAL \rx_buf[36][5]~q\ : std_logic;
SIGNAL \rx_is_synack~4_combout\ : std_logic;
SIGNAL \client_port[8]~input_o\ : std_logic;
SIGNAL \client_port[9]~input_o\ : std_logic;
SIGNAL \rx_buf[36][1]~q\ : std_logic;
SIGNAL \rx_buf[36][0]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[36][0]~q\ : std_logic;
SIGNAL \rx_is_synack~2_combout\ : std_logic;
SIGNAL \client_port[15]~input_o\ : std_logic;
SIGNAL \client_port[14]~input_o\ : std_logic;
SIGNAL \rx_buf[36][6]~q\ : std_logic;
SIGNAL \rx_buf[36][7]~q\ : std_logic;
SIGNAL \rx_is_synack~5_combout\ : std_logic;
SIGNAL \client_port[11]~input_o\ : std_logic;
SIGNAL \client_port[10]~input_o\ : std_logic;
SIGNAL \rx_buf[36][3]~q\ : std_logic;
SIGNAL \rx_buf[36][2]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[36][2]~q\ : std_logic;
SIGNAL \rx_is_synack~3_combout\ : std_logic;
SIGNAL \rx_is_synack~6_combout\ : std_logic;
SIGNAL \rx_is_synack~12_combout\ : std_logic;
SIGNAL \server_ip[4]~input_o\ : std_logic;
SIGNAL \server_ip[5]~input_o\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \rx_buf[29][4]~q\ : std_logic;
SIGNAL \rx_buf[29][5]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[29][5]~q\ : std_logic;
SIGNAL \rx_is_synack~20_combout\ : std_logic;
SIGNAL \server_ip[7]~input_o\ : std_logic;
SIGNAL \server_ip[6]~input_o\ : std_logic;
SIGNAL \rx_buf[29][6]~q\ : std_logic;
SIGNAL \rx_buf[29][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[29][7]~q\ : std_logic;
SIGNAL \rx_is_synack~21_combout\ : std_logic;
SIGNAL \server_ip[1]~input_o\ : std_logic;
SIGNAL \server_ip[0]~input_o\ : std_logic;
SIGNAL \rx_buf[29][1]~q\ : std_logic;
SIGNAL \rx_buf[29][0]~q\ : std_logic;
SIGNAL \rx_is_synack~18_combout\ : std_logic;
SIGNAL \server_ip[2]~input_o\ : std_logic;
SIGNAL \server_ip[3]~input_o\ : std_logic;
SIGNAL \rx_buf[29][3]~q\ : std_logic;
SIGNAL \rx_buf[29][2]~q\ : std_logic;
SIGNAL \rx_is_synack~19_combout\ : std_logic;
SIGNAL \rx_is_synack~22_combout\ : std_logic;
SIGNAL \server_ip[12]~input_o\ : std_logic;
SIGNAL \server_ip[13]~input_o\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \rx_buf[28][5]~q\ : std_logic;
SIGNAL \rx_buf[28][4]~q\ : std_logic;
SIGNAL \rx_is_synack~15_combout\ : std_logic;
SIGNAL \server_ip[9]~input_o\ : std_logic;
SIGNAL \server_ip[8]~input_o\ : std_logic;
SIGNAL \rx_buf[28][1]~q\ : std_logic;
SIGNAL \rx_buf[28][0]~q\ : std_logic;
SIGNAL \rx_is_synack~13_combout\ : std_logic;
SIGNAL \server_ip[11]~input_o\ : std_logic;
SIGNAL \server_ip[10]~input_o\ : std_logic;
SIGNAL \rx_buf[28][3]~q\ : std_logic;
SIGNAL \rx_buf[28][2]~q\ : std_logic;
SIGNAL \rx_is_synack~14_combout\ : std_logic;
SIGNAL \server_ip[15]~input_o\ : std_logic;
SIGNAL \server_ip[14]~input_o\ : std_logic;
SIGNAL \rx_buf[28][6]~q\ : std_logic;
SIGNAL \rx_buf[28][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[28][7]~q\ : std_logic;
SIGNAL \rx_is_synack~16_combout\ : std_logic;
SIGNAL \rx_is_synack~17_combout\ : std_logic;
SIGNAL \server_port[5]~input_o\ : std_logic;
SIGNAL \server_port[4]~input_o\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \rx_buf[35][4]~q\ : std_logic;
SIGNAL \rx_buf[35][5]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[35][5]~q\ : std_logic;
SIGNAL \rx_is_synack~30_combout\ : std_logic;
SIGNAL \server_port[0]~input_o\ : std_logic;
SIGNAL \server_port[1]~input_o\ : std_logic;
SIGNAL \rx_buf[35][0]~q\ : std_logic;
SIGNAL \rx_buf[35][1]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[35][1]~q\ : std_logic;
SIGNAL \rx_is_synack~28_combout\ : std_logic;
SIGNAL \server_port[3]~input_o\ : std_logic;
SIGNAL \server_port[2]~input_o\ : std_logic;
SIGNAL \rx_buf[35][2]~q\ : std_logic;
SIGNAL \rx_buf[35][3]~q\ : std_logic;
SIGNAL \rx_is_synack~29_combout\ : std_logic;
SIGNAL \server_port[7]~input_o\ : std_logic;
SIGNAL \server_port[6]~input_o\ : std_logic;
SIGNAL \rx_buf[35][6]~q\ : std_logic;
SIGNAL \rx_buf[35][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[35][7]~q\ : std_logic;
SIGNAL \rx_is_synack~31_combout\ : std_logic;
SIGNAL \rx_is_synack~32_combout\ : std_logic;
SIGNAL \server_port[14]~input_o\ : std_logic;
SIGNAL \server_port[15]~input_o\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \rx_buf[34][6]~q\ : std_logic;
SIGNAL \rx_buf[34][7]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[34][7]~q\ : std_logic;
SIGNAL \rx_is_synack~26_combout\ : std_logic;
SIGNAL \server_port[13]~input_o\ : std_logic;
SIGNAL \server_port[12]~input_o\ : std_logic;
SIGNAL \rx_buf[34][4]~q\ : std_logic;
SIGNAL \rx_buf[34][5]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[34][5]~q\ : std_logic;
SIGNAL \rx_is_synack~25_combout\ : std_logic;
SIGNAL \server_port[11]~input_o\ : std_logic;
SIGNAL \server_port[10]~input_o\ : std_logic;
SIGNAL \rx_buf[34][2]~q\ : std_logic;
SIGNAL \rx_buf[34][3]~q\ : std_logic;
SIGNAL \rx_is_synack~24_combout\ : std_logic;
SIGNAL \server_port[8]~input_o\ : std_logic;
SIGNAL \server_port[9]~input_o\ : std_logic;
SIGNAL \rx_buf[34][1]~q\ : std_logic;
SIGNAL \rx_buf[34][0]~feeder_combout\ : std_logic;
SIGNAL \rx_buf[34][0]~q\ : std_logic;
SIGNAL \rx_is_synack~23_combout\ : std_logic;
SIGNAL \rx_is_synack~27_combout\ : std_logic;
SIGNAL \rx_is_synack~33_combout\ : std_logic;
SIGNAL \rx_is_synack~71_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \st.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \st.PREPARE_SYN~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \st.PREPARE_ACK~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \st.TX_ACK~q\ : std_logic;
SIGNAL \out_valid_r~0_combout\ : std_logic;
SIGNAL \tx_idx[7]~14_combout\ : std_logic;
SIGNAL \tx_idx[0]~9\ : std_logic;
SIGNAL \tx_idx[1]~10_combout\ : std_logic;
SIGNAL \tx_idx[1]~11\ : std_logic;
SIGNAL \tx_idx[2]~12_combout\ : std_logic;
SIGNAL \tx_idx[2]~13\ : std_logic;
SIGNAL \tx_idx[3]~18_combout\ : std_logic;
SIGNAL \tx_idx[7]~16_combout\ : std_logic;
SIGNAL \tx_idx[3]~19\ : std_logic;
SIGNAL \tx_idx[4]~20_combout\ : std_logic;
SIGNAL \tx_idx[4]~21\ : std_logic;
SIGNAL \tx_idx[5]~22_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \tx_idx[5]~23\ : std_logic;
SIGNAL \tx_idx[6]~24_combout\ : std_logic;
SIGNAL \tx_idx[6]~25\ : std_logic;
SIGNAL \tx_idx[7]~26_combout\ : std_logic;
SIGNAL \tx_idx[7]~15_combout\ : std_logic;
SIGNAL \tx_idx[7]~17_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Equal17~2_combout\ : std_logic;
SIGNAL \st.CONNECTED~0_combout\ : std_logic;
SIGNAL \st.CONNECTED~q\ : std_logic;
SIGNAL \in_ready_r~0_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \syn_frame[29][0]~1_combout\ : std_logic;
SIGNAL \syn_frame[35][0]~q\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \syn_frame[34][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \client_mac[8]~input_o\ : std_logic;
SIGNAL \syn_frame[10][0]~q\ : std_logic;
SIGNAL \client_mac[0]~input_o\ : std_logic;
SIGNAL \syn_frame[11][0]~q\ : std_logic;
SIGNAL \client_mac[24]~input_o\ : std_logic;
SIGNAL \syn_frame[8][0]~q\ : std_logic;
SIGNAL \client_mac[16]~input_o\ : std_logic;
SIGNAL \syn_frame[9][0]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][0]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \syn_frame[26][0]~q\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \syn_frame[27][0]~q\ : std_logic;
SIGNAL \syn_frame[30][0]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[30][0]~q\ : std_logic;
SIGNAL \syn_frame[31][0]~q\ : std_logic;
SIGNAL \syn_frame[29][0]~q\ : std_logic;
SIGNAL \syn_frame[28][0]~q\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \syn_frame[33][0]~q\ : std_logic;
SIGNAL \syn_frame[37][0]~q\ : std_logic;
SIGNAL \syn_frame[36][0]~q\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \syn_frame[32][0]~q\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \ack_frame[0][0]~1_combout\ : std_logic;
SIGNAL \ack_frame[34][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \ack_frame[35][0]~q\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \ack_frame[26][0]~q\ : std_logic;
SIGNAL \ack_frame[8][0]~q\ : std_logic;
SIGNAL \ack_frame[9][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[9][0]~q\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \ack_frame[11][0]~q\ : std_logic;
SIGNAL \ack_frame[10][0]~q\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \ack_frame[27][0]~q\ : std_logic;
SIGNAL \ack_frame[28][0]~q\ : std_logic;
SIGNAL \ack_frame[29][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[29][0]~q\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \ack_frame[31][0]~q\ : std_logic;
SIGNAL \ack_frame[30][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[30][0]~q\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \ack_frame[32][0]~q\ : std_logic;
SIGNAL \ack_frame[33][0]~q\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \ack_frame[37][0]~q\ : std_logic;
SIGNAL \ack_frame[36][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[36][0]~q\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \Mux15~14_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \server_mac[8]~input_o\ : std_logic;
SIGNAL \syn_frame[4][0]~q\ : std_logic;
SIGNAL \server_mac[0]~input_o\ : std_logic;
SIGNAL \syn_frame[5][0]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[5][0]~q\ : std_logic;
SIGNAL \Mux7~15_combout\ : std_logic;
SIGNAL \client_mac[32]~input_o\ : std_logic;
SIGNAL \syn_frame[7][0]~q\ : std_logic;
SIGNAL \client_mac[40]~input_o\ : std_logic;
SIGNAL \syn_frame[6][0]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[6][0]~q\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \server_mac[24]~input_o\ : std_logic;
SIGNAL \syn_frame[2][0]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][0]~q\ : std_logic;
SIGNAL \server_mac[16]~input_o\ : std_logic;
SIGNAL \syn_frame[3][0]~q\ : std_logic;
SIGNAL \server_mac[32]~input_o\ : std_logic;
SIGNAL \syn_frame[1][0]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[1][0]~q\ : std_logic;
SIGNAL \server_mac[40]~input_o\ : std_logic;
SIGNAL \syn_frame[0][0]~q\ : std_logic;
SIGNAL \Mux7~17_combout\ : std_logic;
SIGNAL \Mux7~18_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \ack_frame[5][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[5][0]~q\ : std_logic;
SIGNAL \ack_frame[4][0]~q\ : std_logic;
SIGNAL \Mux15~15_combout\ : std_logic;
SIGNAL \ack_frame[7][0]~q\ : std_logic;
SIGNAL \ack_frame[6][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[6][0]~q\ : std_logic;
SIGNAL \Mux15~16_combout\ : std_logic;
SIGNAL \ack_frame[1][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[1][0]~q\ : std_logic;
SIGNAL \ack_frame[0][0]~q\ : std_logic;
SIGNAL \Mux15~17_combout\ : std_logic;
SIGNAL \ack_frame[3][0]~q\ : std_logic;
SIGNAL \ack_frame[2][0]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][0]~q\ : std_logic;
SIGNAL \Mux15~18_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \server_mac[9]~input_o\ : std_logic;
SIGNAL \ack_frame[4][1]~q\ : std_logic;
SIGNAL \server_mac[1]~input_o\ : std_logic;
SIGNAL \ack_frame[5][1]~q\ : std_logic;
SIGNAL \Mux14~17_combout\ : std_logic;
SIGNAL \client_mac[33]~input_o\ : std_logic;
SIGNAL \ack_frame[7][1]~q\ : std_logic;
SIGNAL \client_mac[41]~input_o\ : std_logic;
SIGNAL \ack_frame[6][1]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[6][1]~q\ : std_logic;
SIGNAL \Mux14~18_combout\ : std_logic;
SIGNAL \server_mac[25]~input_o\ : std_logic;
SIGNAL \ack_frame[2][1]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][1]~q\ : std_logic;
SIGNAL \server_mac[33]~input_o\ : std_logic;
SIGNAL \ack_frame[1][1]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[1][1]~q\ : std_logic;
SIGNAL \server_mac[41]~input_o\ : std_logic;
SIGNAL \ack_frame[0][1]~q\ : std_logic;
SIGNAL \Mux14~19_combout\ : std_logic;
SIGNAL \server_mac[17]~input_o\ : std_logic;
SIGNAL \ack_frame[3][1]~q\ : std_logic;
SIGNAL \Mux14~20_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \ack_frame[33][1]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[33][1]~q\ : std_logic;
SIGNAL \ack_frame[32][1]~q\ : std_logic;
SIGNAL \Mux14~12_combout\ : std_logic;
SIGNAL \ack_frame[37][1]~q\ : std_logic;
SIGNAL \ack_frame[36][1]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[36][1]~q\ : std_logic;
SIGNAL \Mux14~13_combout\ : std_logic;
SIGNAL \Mux14~14_combout\ : std_logic;
SIGNAL \ack_frame[30][1]~q\ : std_logic;
SIGNAL \ack_frame[31][1]~q\ : std_logic;
SIGNAL \ack_frame[29][1]~q\ : std_logic;
SIGNAL \ack_frame[28][1]~q\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux14~21_combout\ : std_logic;
SIGNAL \client_mac[9]~input_o\ : std_logic;
SIGNAL \ack_frame[10][1]~q\ : std_logic;
SIGNAL \client_mac[1]~input_o\ : std_logic;
SIGNAL \ack_frame[11][1]~q\ : std_logic;
SIGNAL \client_mac[25]~input_o\ : std_logic;
SIGNAL \ack_frame[8][1]~q\ : std_logic;
SIGNAL \client_mac[17]~input_o\ : std_logic;
SIGNAL \ack_frame[9][1]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[9][1]~q\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \ack_frame[27][1]~q\ : std_logic;
SIGNAL \ack_frame[26][1]~q\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~11_combout\ : std_logic;
SIGNAL \Mux14~15_combout\ : std_logic;
SIGNAL \ack_frame[35][1]~q\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \ack_frame[34][1]~q\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~16_combout\ : std_logic;
SIGNAL \syn_frame[36][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[36][1]~q\ : std_logic;
SIGNAL \syn_frame[37][1]~q\ : std_logic;
SIGNAL \syn_frame[32][1]~q\ : std_logic;
SIGNAL \syn_frame[33][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[33][1]~q\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \syn_frame[31][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[31][1]~q\ : std_logic;
SIGNAL \syn_frame[30][1]~q\ : std_logic;
SIGNAL \syn_frame[29][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[29][1]~q\ : std_logic;
SIGNAL \syn_frame[28][1]~q\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \syn_frame[27][1]~q\ : std_logic;
SIGNAL \syn_frame[10][1]~q\ : std_logic;
SIGNAL \syn_frame[11][1]~q\ : std_logic;
SIGNAL \syn_frame[8][1]~q\ : std_logic;
SIGNAL \syn_frame[9][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][1]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \syn_frame[26][1]~q\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \syn_frame[35][1]~q\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \syn_frame[34][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \syn_frame[2][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][1]~q\ : std_logic;
SIGNAL \syn_frame[1][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[1][1]~q\ : std_logic;
SIGNAL \syn_frame[0][1]~q\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \syn_frame[3][1]~q\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \syn_frame[4][1]~q\ : std_logic;
SIGNAL \syn_frame[5][1]~q\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \syn_frame[7][1]~q\ : std_logic;
SIGNAL \syn_frame[6][1]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[6][1]~q\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \ack_frame[27][2]~q\ : std_logic;
SIGNAL \ack_frame[26][2]~q\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \ack_frame[29][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[29][2]~q\ : std_logic;
SIGNAL \ack_frame[28][2]~q\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \ack_frame[31][2]~q\ : std_logic;
SIGNAL \ack_frame[30][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[30][2]~q\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \client_mac[26]~input_o\ : std_logic;
SIGNAL \ack_frame[8][2]~q\ : std_logic;
SIGNAL \client_mac[18]~input_o\ : std_logic;
SIGNAL \ack_frame[9][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[9][2]~q\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \client_mac[2]~input_o\ : std_logic;
SIGNAL \ack_frame[11][2]~q\ : std_logic;
SIGNAL \client_mac[10]~input_o\ : std_logic;
SIGNAL \ack_frame[10][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[10][2]~q\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \ack_frame[32][2]~q\ : std_logic;
SIGNAL \ack_frame[33][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[33][2]~q\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \ack_frame[37][2]~q\ : std_logic;
SIGNAL \ack_frame[36][2]~q\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \Mux13~16_combout\ : std_logic;
SIGNAL \Mux13~17_combout\ : std_logic;
SIGNAL \ack_frame[34][2]~q\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \ack_frame[35][2]~q\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~18_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \server_mac[34]~input_o\ : std_logic;
SIGNAL \syn_frame[1][2]~q\ : std_logic;
SIGNAL \server_mac[18]~input_o\ : std_logic;
SIGNAL \syn_frame[3][2]~q\ : std_logic;
SIGNAL \server_mac[42]~input_o\ : std_logic;
SIGNAL \syn_frame[0][2]~q\ : std_logic;
SIGNAL \server_mac[26]~input_o\ : std_logic;
SIGNAL \syn_frame[2][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][2]~q\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \server_mac[2]~input_o\ : std_logic;
SIGNAL \syn_frame[5][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[5][2]~q\ : std_logic;
SIGNAL \server_mac[10]~input_o\ : std_logic;
SIGNAL \syn_frame[4][2]~q\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \client_mac[34]~input_o\ : std_logic;
SIGNAL \syn_frame[7][2]~q\ : std_logic;
SIGNAL \client_mac[42]~input_o\ : std_logic;
SIGNAL \syn_frame[6][2]~q\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \ack_frame[0][2]~q\ : std_logic;
SIGNAL \ack_frame[1][2]~q\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \ack_frame[3][2]~q\ : std_logic;
SIGNAL \ack_frame[2][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][2]~q\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \ack_frame[6][2]~q\ : std_logic;
SIGNAL \ack_frame[7][2]~q\ : std_logic;
SIGNAL \ack_frame[4][2]~q\ : std_logic;
SIGNAL \ack_frame[5][2]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[5][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \syn_frame[34][2]~q\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \syn_frame[35][2]~q\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \syn_frame[26][2]~q\ : std_logic;
SIGNAL \syn_frame[10][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[10][2]~q\ : std_logic;
SIGNAL \syn_frame[11][2]~q\ : std_logic;
SIGNAL \syn_frame[9][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][2]~q\ : std_logic;
SIGNAL \syn_frame[8][2]~q\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \syn_frame[27][2]~q\ : std_logic;
SIGNAL \syn_frame[29][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[29][2]~q\ : std_logic;
SIGNAL \syn_frame[28][2]~q\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \syn_frame[31][2]~q\ : std_logic;
SIGNAL \syn_frame[30][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[30][2]~q\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \syn_frame[32][2]~q\ : std_logic;
SIGNAL \syn_frame[33][2]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[33][2]~q\ : std_logic;
SIGNAL \Mux5~20_combout\ : std_logic;
SIGNAL \syn_frame[37][2]~q\ : std_logic;
SIGNAL \syn_frame[36][2]~q\ : std_logic;
SIGNAL \Mux5~21_combout\ : std_logic;
SIGNAL \Mux5~22_combout\ : std_logic;
SIGNAL \Mux5~23_combout\ : std_logic;
SIGNAL \Mux5~24_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \syn_frame[35][3]~q\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \syn_frame[28][3]~q\ : std_logic;
SIGNAL \syn_frame[29][3]~q\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \syn_frame[31][3]~q\ : std_logic;
SIGNAL \syn_frame[30][3]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[30][3]~q\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \syn_frame[27][3]~q\ : std_logic;
SIGNAL \syn_frame[26][3]~q\ : std_logic;
SIGNAL \client_mac[19]~input_o\ : std_logic;
SIGNAL \syn_frame[9][3]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][3]~q\ : std_logic;
SIGNAL \client_mac[27]~input_o\ : std_logic;
SIGNAL \syn_frame[8][3]~q\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \client_mac[3]~input_o\ : std_logic;
SIGNAL \syn_frame[11][3]~q\ : std_logic;
SIGNAL \client_mac[11]~input_o\ : std_logic;
SIGNAL \syn_frame[10][3]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[10][3]~q\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \syn_frame[36][3]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[36][3]~q\ : std_logic;
SIGNAL \syn_frame[37][3]~q\ : std_logic;
SIGNAL \syn_frame[32][3]~q\ : std_logic;
SIGNAL \syn_frame[33][3]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[33][3]~q\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \syn_frame[34][3]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~18_combout\ : std_logic;
SIGNAL \ack_frame[34][3]~q\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \ack_frame[35][3]~q\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \ack_frame[33][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[33][3]~q\ : std_logic;
SIGNAL \ack_frame[32][3]~q\ : std_logic;
SIGNAL \Mux12~15_combout\ : std_logic;
SIGNAL \ack_frame[37][3]~q\ : std_logic;
SIGNAL \ack_frame[36][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[36][3]~q\ : std_logic;
SIGNAL \Mux12~16_combout\ : std_logic;
SIGNAL \Mux12~17_combout\ : std_logic;
SIGNAL \ack_frame[27][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[27][3]~q\ : std_logic;
SIGNAL \ack_frame[26][3]~q\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \ack_frame[30][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[30][3]~q\ : std_logic;
SIGNAL \ack_frame[31][3]~q\ : std_logic;
SIGNAL \ack_frame[28][3]~q\ : std_logic;
SIGNAL \ack_frame[29][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[29][3]~q\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux12~12_combout\ : std_logic;
SIGNAL \Mux12~13_combout\ : std_logic;
SIGNAL \ack_frame[10][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[10][3]~q\ : std_logic;
SIGNAL \ack_frame[11][3]~q\ : std_logic;
SIGNAL \ack_frame[8][3]~q\ : std_logic;
SIGNAL \ack_frame[9][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[9][3]~q\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~14_combout\ : std_logic;
SIGNAL \Mux12~18_combout\ : std_logic;
SIGNAL \Mux12~19_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \server_mac[35]~input_o\ : std_logic;
SIGNAL \syn_frame[1][3]~q\ : std_logic;
SIGNAL \server_mac[19]~input_o\ : std_logic;
SIGNAL \syn_frame[3][3]~q\ : std_logic;
SIGNAL \server_mac[43]~input_o\ : std_logic;
SIGNAL \syn_frame[0][3]~q\ : std_logic;
SIGNAL \server_mac[27]~input_o\ : std_logic;
SIGNAL \syn_frame[2][3]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][3]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \client_mac[43]~input_o\ : std_logic;
SIGNAL \syn_frame[6][3]~q\ : std_logic;
SIGNAL \client_mac[35]~input_o\ : std_logic;
SIGNAL \syn_frame[7][3]~q\ : std_logic;
SIGNAL \server_mac[3]~input_o\ : std_logic;
SIGNAL \syn_frame[5][3]~q\ : std_logic;
SIGNAL \server_mac[11]~input_o\ : std_logic;
SIGNAL \syn_frame[4][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \ack_frame[6][3]~q\ : std_logic;
SIGNAL \ack_frame[5][3]~q\ : std_logic;
SIGNAL \ack_frame[4][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \ack_frame[7][3]~q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \ack_frame[0][3]~q\ : std_logic;
SIGNAL \ack_frame[2][3]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][3]~q\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \ack_frame[3][3]~q\ : std_logic;
SIGNAL \ack_frame[1][3]~q\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \server_mac[12]~input_o\ : std_logic;
SIGNAL \syn_frame[4][4]~q\ : std_logic;
SIGNAL \server_mac[4]~input_o\ : std_logic;
SIGNAL \syn_frame[5][4]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[5][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \client_mac[36]~input_o\ : std_logic;
SIGNAL \syn_frame[7][4]~q\ : std_logic;
SIGNAL \client_mac[44]~input_o\ : std_logic;
SIGNAL \syn_frame[6][4]~q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \server_mac[44]~input_o\ : std_logic;
SIGNAL \syn_frame[0][4]~q\ : std_logic;
SIGNAL \server_mac[28]~input_o\ : std_logic;
SIGNAL \syn_frame[2][4]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][4]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \server_mac[20]~input_o\ : std_logic;
SIGNAL \syn_frame[3][4]~q\ : std_logic;
SIGNAL \server_mac[36]~input_o\ : std_logic;
SIGNAL \syn_frame[1][4]~q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \ack_frame[5][4]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[5][4]~q\ : std_logic;
SIGNAL \ack_frame[7][4]~q\ : std_logic;
SIGNAL \ack_frame[4][4]~q\ : std_logic;
SIGNAL \ack_frame[6][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \ack_frame[0][4]~q\ : std_logic;
SIGNAL \ack_frame[1][4]~q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \ack_frame[3][4]~q\ : std_logic;
SIGNAL \ack_frame[2][4]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][4]~q\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \ack_frame[26][4]~q\ : std_logic;
SIGNAL \ack_frame[27][4]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[27][4]~q\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \ack_frame[29][4]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[29][4]~q\ : std_logic;
SIGNAL \ack_frame[28][4]~q\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \ack_frame[31][4]~q\ : std_logic;
SIGNAL \ack_frame[30][4]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[30][4]~q\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \client_mac[12]~input_o\ : std_logic;
SIGNAL \ack_frame[10][4]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[10][4]~q\ : std_logic;
SIGNAL \client_mac[28]~input_o\ : std_logic;
SIGNAL \ack_frame[8][4]~q\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \client_mac[4]~input_o\ : std_logic;
SIGNAL \ack_frame[11][4]~q\ : std_logic;
SIGNAL \client_mac[20]~input_o\ : std_logic;
SIGNAL \ack_frame[9][4]~q\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \ack_frame[36][4]~q\ : std_logic;
SIGNAL \ack_frame[37][4]~q\ : std_logic;
SIGNAL \ack_frame[32][4]~q\ : std_logic;
SIGNAL \ack_frame[33][4]~q\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \Mux11~14_combout\ : std_logic;
SIGNAL \Mux11~15_combout\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \ack_frame[35][4]~q\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \ack_frame[34][4]~q\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~17_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \syn_frame[27][4]~q\ : std_logic;
SIGNAL \syn_frame[26][4]~q\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \syn_frame[30][4]~q\ : std_logic;
SIGNAL \syn_frame[31][4]~q\ : std_logic;
SIGNAL \syn_frame[28][4]~q\ : std_logic;
SIGNAL \syn_frame[29][4]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[29][4]~q\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \syn_frame[8][4]~q\ : std_logic;
SIGNAL \syn_frame[9][4]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][4]~q\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \syn_frame[11][4]~q\ : std_logic;
SIGNAL \syn_frame[10][4]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[10][4]~q\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \syn_frame[36][4]~q\ : std_logic;
SIGNAL \syn_frame[37][4]~q\ : std_logic;
SIGNAL \syn_frame[32][4]~q\ : std_logic;
SIGNAL \syn_frame[33][4]~q\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \syn_frame[35][4]~q\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \syn_frame[34][4]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~17_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \server_mac[5]~input_o\ : std_logic;
SIGNAL \ack_frame[5][5]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[5][5]~q\ : std_logic;
SIGNAL \client_mac[37]~input_o\ : std_logic;
SIGNAL \ack_frame[7][5]~q\ : std_logic;
SIGNAL \server_mac[13]~input_o\ : std_logic;
SIGNAL \ack_frame[4][5]~q\ : std_logic;
SIGNAL \client_mac[45]~input_o\ : std_logic;
SIGNAL \ack_frame[6][5]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[6][5]~q\ : std_logic;
SIGNAL \Mux10~15_combout\ : std_logic;
SIGNAL \Mux10~16_combout\ : std_logic;
SIGNAL \server_mac[37]~input_o\ : std_logic;
SIGNAL \ack_frame[1][5]~q\ : std_logic;
SIGNAL \server_mac[45]~input_o\ : std_logic;
SIGNAL \ack_frame[0][5]~q\ : std_logic;
SIGNAL \Mux10~17_combout\ : std_logic;
SIGNAL \server_mac[21]~input_o\ : std_logic;
SIGNAL \ack_frame[3][5]~q\ : std_logic;
SIGNAL \server_mac[29]~input_o\ : std_logic;
SIGNAL \ack_frame[2][5]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][5]~q\ : std_logic;
SIGNAL \Mux10~18_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \syn_frame[6][5]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[6][5]~q\ : std_logic;
SIGNAL \syn_frame[7][5]~q\ : std_logic;
SIGNAL \syn_frame[4][5]~q\ : std_logic;
SIGNAL \syn_frame[5][5]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[5][5]~q\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \syn_frame[0][5]~q\ : std_logic;
SIGNAL \syn_frame[2][5]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][5]~q\ : std_logic;
SIGNAL \Mux2~17_combout\ : std_logic;
SIGNAL \syn_frame[1][5]~q\ : std_logic;
SIGNAL \syn_frame[3][5]~q\ : std_logic;
SIGNAL \Mux2~18_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \ack_frame[28][5]~q\ : std_logic;
SIGNAL \ack_frame[29][5]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[29][5]~q\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \ack_frame[31][5]~q\ : std_logic;
SIGNAL \ack_frame[30][5]~q\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \client_mac[29]~input_o\ : std_logic;
SIGNAL \ack_frame[8][5]~q\ : std_logic;
SIGNAL \client_mac[13]~input_o\ : std_logic;
SIGNAL \ack_frame[10][5]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \client_mac[5]~input_o\ : std_logic;
SIGNAL \ack_frame[11][5]~q\ : std_logic;
SIGNAL \client_mac[21]~input_o\ : std_logic;
SIGNAL \ack_frame[9][5]~q\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \ack_frame[26][5]~q\ : std_logic;
SIGNAL \ack_frame[27][5]~q\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \ack_frame[36][5]~q\ : std_logic;
SIGNAL \ack_frame[37][5]~q\ : std_logic;
SIGNAL \ack_frame[33][5]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[33][5]~q\ : std_logic;
SIGNAL \ack_frame[32][5]~q\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \Mux10~13_combout\ : std_logic;
SIGNAL \ack_frame[35][5]~q\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \ack_frame[34][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~14_combout\ : std_logic;
SIGNAL \syn_frame[35][5]~q\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \syn_frame[34][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \syn_frame[33][5]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[33][5]~q\ : std_logic;
SIGNAL \syn_frame[32][5]~q\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \syn_frame[36][5]~q\ : std_logic;
SIGNAL \syn_frame[37][5]~q\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \syn_frame[28][5]~q\ : std_logic;
SIGNAL \syn_frame[29][5]~q\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \syn_frame[30][5]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[30][5]~q\ : std_logic;
SIGNAL \syn_frame[31][5]~q\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \syn_frame[27][5]~q\ : std_logic;
SIGNAL \syn_frame[26][5]~q\ : std_logic;
SIGNAL \syn_frame[9][5]~q\ : std_logic;
SIGNAL \syn_frame[8][5]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \syn_frame[10][5]~q\ : std_logic;
SIGNAL \syn_frame[11][5]~q\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \client_mac[14]~input_o\ : std_logic;
SIGNAL \ack_frame[10][6]~q\ : std_logic;
SIGNAL \client_mac[6]~input_o\ : std_logic;
SIGNAL \ack_frame[11][6]~q\ : std_logic;
SIGNAL \client_mac[30]~input_o\ : std_logic;
SIGNAL \ack_frame[8][6]~q\ : std_logic;
SIGNAL \client_mac[22]~input_o\ : std_logic;
SIGNAL \ack_frame[9][6]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[9][6]~q\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \ack_frame[30][6]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[30][6]~q\ : std_logic;
SIGNAL \ack_frame[31][6]~q\ : std_logic;
SIGNAL \ack_frame[28][6]~q\ : std_logic;
SIGNAL \ack_frame[29][6]~q\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \Mux9~11_combout\ : std_logic;
SIGNAL \Mux9~12_combout\ : std_logic;
SIGNAL \ack_frame[26][6]~q\ : std_logic;
SIGNAL \ack_frame[27][6]~q\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~13_combout\ : std_logic;
SIGNAL \ack_frame[32][6]~q\ : std_logic;
SIGNAL \ack_frame[33][6]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[33][6]~q\ : std_logic;
SIGNAL \Mux9~14_combout\ : std_logic;
SIGNAL \ack_frame[37][6]~q\ : std_logic;
SIGNAL \ack_frame[36][6]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[36][6]~q\ : std_logic;
SIGNAL \Mux9~15_combout\ : std_logic;
SIGNAL \Mux9~16_combout\ : std_logic;
SIGNAL \Mux9~17_combout\ : std_logic;
SIGNAL \ack_frame[35][6]~q\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \ack_frame[34][6]~q\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~18_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \server_mac[14]~input_o\ : std_logic;
SIGNAL \ack_frame[4][6]~q\ : std_logic;
SIGNAL \server_mac[6]~input_o\ : std_logic;
SIGNAL \ack_frame[5][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \client_mac[46]~input_o\ : std_logic;
SIGNAL \ack_frame[6][6]~q\ : std_logic;
SIGNAL \client_mac[38]~input_o\ : std_logic;
SIGNAL \ack_frame[7][6]~q\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \server_mac[46]~input_o\ : std_logic;
SIGNAL \ack_frame[0][6]~q\ : std_logic;
SIGNAL \server_mac[30]~input_o\ : std_logic;
SIGNAL \ack_frame[2][6]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][6]~q\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \server_mac[38]~input_o\ : std_logic;
SIGNAL \ack_frame[1][6]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[1][6]~q\ : std_logic;
SIGNAL \server_mac[22]~input_o\ : std_logic;
SIGNAL \ack_frame[3][6]~q\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \syn_frame[0][6]~q\ : std_logic;
SIGNAL \syn_frame[2][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][6]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \syn_frame[3][6]~q\ : std_logic;
SIGNAL \syn_frame[1][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[1][6]~q\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \syn_frame[4][6]~q\ : std_logic;
SIGNAL \syn_frame[5][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \syn_frame[7][6]~q\ : std_logic;
SIGNAL \syn_frame[6][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[6][6]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \syn_frame[33][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[33][6]~q\ : std_logic;
SIGNAL \syn_frame[32][6]~q\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \syn_frame[37][6]~q\ : std_logic;
SIGNAL \syn_frame[36][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[36][6]~q\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \syn_frame[28][6]~q\ : std_logic;
SIGNAL \syn_frame[29][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[29][6]~q\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \syn_frame[31][6]~q\ : std_logic;
SIGNAL \syn_frame[30][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[30][6]~q\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \syn_frame[27][6]~q\ : std_logic;
SIGNAL \syn_frame[26][6]~q\ : std_logic;
SIGNAL \syn_frame[10][6]~q\ : std_logic;
SIGNAL \syn_frame[11][6]~q\ : std_logic;
SIGNAL \syn_frame[8][6]~q\ : std_logic;
SIGNAL \syn_frame[9][6]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][6]~q\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \syn_frame[34][6]~q\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \syn_frame[35][6]~q\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~18_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \server_mac[31]~input_o\ : std_logic;
SIGNAL \syn_frame[2][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[2][7]~q\ : std_logic;
SIGNAL \server_mac[47]~input_o\ : std_logic;
SIGNAL \syn_frame[0][7]~q\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \server_mac[39]~input_o\ : std_logic;
SIGNAL \syn_frame[1][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[1][7]~q\ : std_logic;
SIGNAL \server_mac[23]~input_o\ : std_logic;
SIGNAL \syn_frame[3][7]~q\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \server_mac[7]~input_o\ : std_logic;
SIGNAL \syn_frame[5][7]~q\ : std_logic;
SIGNAL \server_mac[15]~input_o\ : std_logic;
SIGNAL \syn_frame[4][7]~q\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \client_mac[39]~input_o\ : std_logic;
SIGNAL \syn_frame[7][7]~q\ : std_logic;
SIGNAL \client_mac[47]~input_o\ : std_logic;
SIGNAL \syn_frame[6][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[6][7]~q\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \ack_frame[27][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[27][7]~q\ : std_logic;
SIGNAL \ack_frame[26][7]~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \client_mac[23]~input_o\ : std_logic;
SIGNAL \ack_frame[9][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[9][7]~q\ : std_logic;
SIGNAL \client_mac[7]~input_o\ : std_logic;
SIGNAL \ack_frame[11][7]~q\ : std_logic;
SIGNAL \client_mac[15]~input_o\ : std_logic;
SIGNAL \ack_frame[10][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[10][7]~q\ : std_logic;
SIGNAL \client_mac[31]~input_o\ : std_logic;
SIGNAL \ack_frame[8][7]~q\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \ack_frame[28][7]~q\ : std_logic;
SIGNAL \ack_frame[29][7]~q\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \ack_frame[31][7]~q\ : std_logic;
SIGNAL \ack_frame[30][7]~q\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \ack_frame[32][7]~q\ : std_logic;
SIGNAL \ack_frame[33][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[33][7]~q\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \ack_frame[37][7]~q\ : std_logic;
SIGNAL \ack_frame[36][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[36][7]~q\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \ack_frame[34][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ack_frame[35][7]~q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~13_combout\ : std_logic;
SIGNAL \syn_frame[35][7]~q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \syn_frame[34][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \syn_frame[27][7]~q\ : std_logic;
SIGNAL \syn_frame[26][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[26][7]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \syn_frame[10][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[10][7]~q\ : std_logic;
SIGNAL \syn_frame[11][7]~q\ : std_logic;
SIGNAL \syn_frame[9][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[9][7]~q\ : std_logic;
SIGNAL \syn_frame[8][7]~q\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \syn_frame[30][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[30][7]~q\ : std_logic;
SIGNAL \syn_frame[31][7]~q\ : std_logic;
SIGNAL \syn_frame[29][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[29][7]~q\ : std_logic;
SIGNAL \syn_frame[28][7]~q\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \syn_frame[32][7]~q\ : std_logic;
SIGNAL \syn_frame[33][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[33][7]~q\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \syn_frame[37][7]~q\ : std_logic;
SIGNAL \syn_frame[36][7]~feeder_combout\ : std_logic;
SIGNAL \syn_frame[36][7]~q\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \ack_frame[5][7]~q\ : std_logic;
SIGNAL \ack_frame[6][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[6][7]~q\ : std_logic;
SIGNAL \ack_frame[4][7]~q\ : std_logic;
SIGNAL \Mux8~14_combout\ : std_logic;
SIGNAL \ack_frame[7][7]~q\ : std_logic;
SIGNAL \Mux8~15_combout\ : std_logic;
SIGNAL \ack_frame[2][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[2][7]~q\ : std_logic;
SIGNAL \ack_frame[3][7]~q\ : std_logic;
SIGNAL \ack_frame[1][7]~feeder_combout\ : std_logic;
SIGNAL \ack_frame[1][7]~q\ : std_logic;
SIGNAL \ack_frame[0][7]~q\ : std_logic;
SIGNAL \Mux8~16_combout\ : std_logic;
SIGNAL \Mux8~17_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL tx_idx : std_logic_vector(7 DOWNTO 0);
SIGNAL timeout_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL rx_idx : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_st.WAIT_RX~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_connect <= connect;
ww_server_mac <= server_mac;
ww_server_ip <= server_ip;
ww_server_port <= server_port;
ww_client_mac <= client_mac;
ww_client_ip <= client_ip;
ww_client_port <= client_port;
is_connected <= ww_is_connected;
ww_in_data <= in_data;
ww_in_valid <= in_valid;
ww_in_sop <= in_sop;
ww_in_eop <= in_eop;
in_ready <= ww_in_ready;
out_data <= ww_out_data;
out_valid <= ww_out_valid;
out_sop <= ww_out_sop;
out_eop <= ww_out_eop;
ww_out_ready <= out_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_st.WAIT_RX~q\ <= NOT \st.WAIT_RX~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X111_Y0_N9
\is_connected~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \st.CONNECTED~q\,
	devoe => ww_devoe,
	o => \is_connected~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\in_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_ready_r~0_combout\,
	devoe => ww_devoe,
	o => \in_ready~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\out_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector15~5_combout\,
	devoe => ww_devoe,
	o => \out_data[0]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\out_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector14~3_combout\,
	devoe => ww_devoe,
	o => \out_data[1]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\out_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector13~4_combout\,
	devoe => ww_devoe,
	o => \out_data[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\out_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector12~4_combout\,
	devoe => ww_devoe,
	o => \out_data[3]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\out_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector11~4_combout\,
	devoe => ww_devoe,
	o => \out_data[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\out_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector10~3_combout\,
	devoe => ww_devoe,
	o => \out_data[5]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\out_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~4_combout\,
	devoe => ww_devoe,
	o => \out_data[6]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\out_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector8~3_combout\,
	devoe => ww_devoe,
	o => \out_data[7]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\out_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_valid_r~0_combout\,
	devoe => ww_devoe,
	o => \out_valid~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\out_sop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector16~2_combout\,
	devoe => ww_devoe,
	o => \out_sop~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\out_eop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector17~2_combout\,
	devoe => ww_devoe,
	o => \out_eop~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X100_Y73_N22
\out_ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_ready,
	o => \out_ready~input_o\);

-- Location: LCCOMB_X106_Y42_N12
\tx_idx[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[0]~8_combout\ = tx_idx(0) $ (VCC)
-- \tx_idx[0]~9\ = CARRY(tx_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datad => VCC,
	combout => \tx_idx[0]~8_combout\,
	cout => \tx_idx[0]~9\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y24_N8
\connect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_connect,
	o => \connect~input_o\);

-- Location: LCCOMB_X100_Y45_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\connect~input_o\ & !\st.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \connect~input_o\,
	datac => \st.IDLE~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X72_Y73_N15
\in_eop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_eop,
	o => \in_eop~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: LCCOMB_X101_Y44_N10
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\st.RX_FRAME~q\ & ((!\in_valid~input_o\) # (!\in_eop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datac => \in_valid~input_o\,
	datad => \st.RX_FRAME~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X97_Y43_N0
\timeout_cnt[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[0]~33_combout\ = timeout_cnt(0) $ (VCC)
-- \timeout_cnt[0]~34\ = CARRY(timeout_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(0),
	datad => VCC,
	combout => \timeout_cnt[0]~33_combout\,
	cout => \timeout_cnt[0]~34\);

-- Location: LCCOMB_X98_Y43_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!timeout_cnt(24) & (!timeout_cnt(27) & (!timeout_cnt(25) & !timeout_cnt(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(24),
	datab => timeout_cnt(27),
	datac => timeout_cnt(25),
	datad => timeout_cnt(26),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X98_Y43_N12
\timeout_cnt[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[6]~35_combout\ = (\st.WAIT_RX~q\ & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.WAIT_RX~q\,
	datac => \Equal0~8_combout\,
	combout => \timeout_cnt[6]~35_combout\);

-- Location: LCCOMB_X98_Y43_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (timeout_cnt(0) & (!timeout_cnt(3) & (!timeout_cnt(2) & !timeout_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(0),
	datab => timeout_cnt(3),
	datac => timeout_cnt(2),
	datad => timeout_cnt(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X98_Y43_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!timeout_cnt(7) & (!timeout_cnt(6) & (timeout_cnt(4) & timeout_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(7),
	datab => timeout_cnt(6),
	datac => timeout_cnt(4),
	datad => timeout_cnt(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X98_Y43_N22
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!timeout_cnt(8) & (!timeout_cnt(11) & (!timeout_cnt(9) & !timeout_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(8),
	datab => timeout_cnt(11),
	datac => timeout_cnt(9),
	datad => timeout_cnt(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X98_Y43_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!timeout_cnt(14) & (!timeout_cnt(15) & (!timeout_cnt(13) & !timeout_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(14),
	datab => timeout_cnt(15),
	datac => timeout_cnt(13),
	datad => timeout_cnt(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X98_Y43_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X98_Y43_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!timeout_cnt(19) & !timeout_cnt(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => timeout_cnt(19),
	datad => timeout_cnt(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X98_Y42_N0
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!timeout_cnt(20) & (!timeout_cnt(22) & (!timeout_cnt(21) & !timeout_cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(20),
	datab => timeout_cnt(22),
	datac => timeout_cnt(21),
	datad => timeout_cnt(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X98_Y43_N2
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!timeout_cnt(16) & (\Equal0~5_combout\ & (!timeout_cnt(17) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(16),
	datab => \Equal0~5_combout\,
	datac => timeout_cnt(17),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X98_Y43_N30
\timeout_cnt[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[6]~36_combout\ = (((!\Equal0~7_combout\) # (!\Equal0~9_combout\)) # (!\Equal0~4_combout\)) # (!\timeout_cnt[6]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeout_cnt[6]~35_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \timeout_cnt[6]~36_combout\);

-- Location: FF_X97_Y43_N1
\timeout_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[0]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(0));

-- Location: LCCOMB_X97_Y43_N2
\timeout_cnt[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[1]~37_combout\ = (timeout_cnt(1) & (!\timeout_cnt[0]~34\)) # (!timeout_cnt(1) & ((\timeout_cnt[0]~34\) # (GND)))
-- \timeout_cnt[1]~38\ = CARRY((!\timeout_cnt[0]~34\) # (!timeout_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(1),
	datad => VCC,
	cin => \timeout_cnt[0]~34\,
	combout => \timeout_cnt[1]~37_combout\,
	cout => \timeout_cnt[1]~38\);

-- Location: FF_X97_Y43_N3
\timeout_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[1]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(1));

-- Location: LCCOMB_X97_Y43_N4
\timeout_cnt[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[2]~39_combout\ = (timeout_cnt(2) & (\timeout_cnt[1]~38\ $ (GND))) # (!timeout_cnt(2) & (!\timeout_cnt[1]~38\ & VCC))
-- \timeout_cnt[2]~40\ = CARRY((timeout_cnt(2) & !\timeout_cnt[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(2),
	datad => VCC,
	cin => \timeout_cnt[1]~38\,
	combout => \timeout_cnt[2]~39_combout\,
	cout => \timeout_cnt[2]~40\);

-- Location: FF_X97_Y43_N5
\timeout_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[2]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(2));

-- Location: LCCOMB_X97_Y43_N6
\timeout_cnt[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[3]~41_combout\ = (timeout_cnt(3) & (!\timeout_cnt[2]~40\)) # (!timeout_cnt(3) & ((\timeout_cnt[2]~40\) # (GND)))
-- \timeout_cnt[3]~42\ = CARRY((!\timeout_cnt[2]~40\) # (!timeout_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(3),
	datad => VCC,
	cin => \timeout_cnt[2]~40\,
	combout => \timeout_cnt[3]~41_combout\,
	cout => \timeout_cnt[3]~42\);

-- Location: FF_X97_Y43_N7
\timeout_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[3]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(3));

-- Location: LCCOMB_X97_Y43_N8
\timeout_cnt[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[4]~43_combout\ = (timeout_cnt(4) & (\timeout_cnt[3]~42\ $ (GND))) # (!timeout_cnt(4) & (!\timeout_cnt[3]~42\ & VCC))
-- \timeout_cnt[4]~44\ = CARRY((timeout_cnt(4) & !\timeout_cnt[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(4),
	datad => VCC,
	cin => \timeout_cnt[3]~42\,
	combout => \timeout_cnt[4]~43_combout\,
	cout => \timeout_cnt[4]~44\);

-- Location: FF_X97_Y43_N9
\timeout_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[4]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(4));

-- Location: LCCOMB_X97_Y43_N10
\timeout_cnt[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[5]~45_combout\ = (timeout_cnt(5) & (!\timeout_cnt[4]~44\)) # (!timeout_cnt(5) & ((\timeout_cnt[4]~44\) # (GND)))
-- \timeout_cnt[5]~46\ = CARRY((!\timeout_cnt[4]~44\) # (!timeout_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(5),
	datad => VCC,
	cin => \timeout_cnt[4]~44\,
	combout => \timeout_cnt[5]~45_combout\,
	cout => \timeout_cnt[5]~46\);

-- Location: FF_X97_Y43_N11
\timeout_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[5]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(5));

-- Location: LCCOMB_X97_Y43_N12
\timeout_cnt[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[6]~47_combout\ = (timeout_cnt(6) & (\timeout_cnt[5]~46\ $ (GND))) # (!timeout_cnt(6) & (!\timeout_cnt[5]~46\ & VCC))
-- \timeout_cnt[6]~48\ = CARRY((timeout_cnt(6) & !\timeout_cnt[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(6),
	datad => VCC,
	cin => \timeout_cnt[5]~46\,
	combout => \timeout_cnt[6]~47_combout\,
	cout => \timeout_cnt[6]~48\);

-- Location: FF_X97_Y43_N13
\timeout_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[6]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(6));

-- Location: LCCOMB_X97_Y43_N14
\timeout_cnt[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[7]~49_combout\ = (timeout_cnt(7) & (!\timeout_cnt[6]~48\)) # (!timeout_cnt(7) & ((\timeout_cnt[6]~48\) # (GND)))
-- \timeout_cnt[7]~50\ = CARRY((!\timeout_cnt[6]~48\) # (!timeout_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(7),
	datad => VCC,
	cin => \timeout_cnt[6]~48\,
	combout => \timeout_cnt[7]~49_combout\,
	cout => \timeout_cnt[7]~50\);

-- Location: FF_X97_Y43_N15
\timeout_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[7]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(7));

-- Location: LCCOMB_X97_Y43_N16
\timeout_cnt[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[8]~51_combout\ = (timeout_cnt(8) & (\timeout_cnt[7]~50\ $ (GND))) # (!timeout_cnt(8) & (!\timeout_cnt[7]~50\ & VCC))
-- \timeout_cnt[8]~52\ = CARRY((timeout_cnt(8) & !\timeout_cnt[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(8),
	datad => VCC,
	cin => \timeout_cnt[7]~50\,
	combout => \timeout_cnt[8]~51_combout\,
	cout => \timeout_cnt[8]~52\);

-- Location: FF_X97_Y43_N17
\timeout_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[8]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(8));

-- Location: LCCOMB_X97_Y43_N18
\timeout_cnt[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[9]~53_combout\ = (timeout_cnt(9) & (!\timeout_cnt[8]~52\)) # (!timeout_cnt(9) & ((\timeout_cnt[8]~52\) # (GND)))
-- \timeout_cnt[9]~54\ = CARRY((!\timeout_cnt[8]~52\) # (!timeout_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(9),
	datad => VCC,
	cin => \timeout_cnt[8]~52\,
	combout => \timeout_cnt[9]~53_combout\,
	cout => \timeout_cnt[9]~54\);

-- Location: FF_X97_Y43_N19
\timeout_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[9]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(9));

-- Location: LCCOMB_X97_Y43_N20
\timeout_cnt[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[10]~55_combout\ = (timeout_cnt(10) & (\timeout_cnt[9]~54\ $ (GND))) # (!timeout_cnt(10) & (!\timeout_cnt[9]~54\ & VCC))
-- \timeout_cnt[10]~56\ = CARRY((timeout_cnt(10) & !\timeout_cnt[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(10),
	datad => VCC,
	cin => \timeout_cnt[9]~54\,
	combout => \timeout_cnt[10]~55_combout\,
	cout => \timeout_cnt[10]~56\);

-- Location: FF_X97_Y43_N21
\timeout_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[10]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(10));

-- Location: LCCOMB_X97_Y43_N22
\timeout_cnt[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[11]~57_combout\ = (timeout_cnt(11) & (!\timeout_cnt[10]~56\)) # (!timeout_cnt(11) & ((\timeout_cnt[10]~56\) # (GND)))
-- \timeout_cnt[11]~58\ = CARRY((!\timeout_cnt[10]~56\) # (!timeout_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(11),
	datad => VCC,
	cin => \timeout_cnt[10]~56\,
	combout => \timeout_cnt[11]~57_combout\,
	cout => \timeout_cnt[11]~58\);

-- Location: FF_X97_Y43_N23
\timeout_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[11]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(11));

-- Location: LCCOMB_X97_Y43_N24
\timeout_cnt[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[12]~59_combout\ = (timeout_cnt(12) & (\timeout_cnt[11]~58\ $ (GND))) # (!timeout_cnt(12) & (!\timeout_cnt[11]~58\ & VCC))
-- \timeout_cnt[12]~60\ = CARRY((timeout_cnt(12) & !\timeout_cnt[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(12),
	datad => VCC,
	cin => \timeout_cnt[11]~58\,
	combout => \timeout_cnt[12]~59_combout\,
	cout => \timeout_cnt[12]~60\);

-- Location: FF_X97_Y43_N25
\timeout_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[12]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(12));

-- Location: LCCOMB_X97_Y43_N26
\timeout_cnt[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[13]~61_combout\ = (timeout_cnt(13) & (!\timeout_cnt[12]~60\)) # (!timeout_cnt(13) & ((\timeout_cnt[12]~60\) # (GND)))
-- \timeout_cnt[13]~62\ = CARRY((!\timeout_cnt[12]~60\) # (!timeout_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(13),
	datad => VCC,
	cin => \timeout_cnt[12]~60\,
	combout => \timeout_cnt[13]~61_combout\,
	cout => \timeout_cnt[13]~62\);

-- Location: FF_X97_Y43_N27
\timeout_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[13]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(13));

-- Location: LCCOMB_X97_Y43_N28
\timeout_cnt[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[14]~63_combout\ = (timeout_cnt(14) & (\timeout_cnt[13]~62\ $ (GND))) # (!timeout_cnt(14) & (!\timeout_cnt[13]~62\ & VCC))
-- \timeout_cnt[14]~64\ = CARRY((timeout_cnt(14) & !\timeout_cnt[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(14),
	datad => VCC,
	cin => \timeout_cnt[13]~62\,
	combout => \timeout_cnt[14]~63_combout\,
	cout => \timeout_cnt[14]~64\);

-- Location: FF_X97_Y43_N29
\timeout_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[14]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(14));

-- Location: LCCOMB_X97_Y43_N30
\timeout_cnt[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[15]~65_combout\ = (timeout_cnt(15) & (!\timeout_cnt[14]~64\)) # (!timeout_cnt(15) & ((\timeout_cnt[14]~64\) # (GND)))
-- \timeout_cnt[15]~66\ = CARRY((!\timeout_cnt[14]~64\) # (!timeout_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(15),
	datad => VCC,
	cin => \timeout_cnt[14]~64\,
	combout => \timeout_cnt[15]~65_combout\,
	cout => \timeout_cnt[15]~66\);

-- Location: FF_X97_Y43_N31
\timeout_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[15]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(15));

-- Location: LCCOMB_X97_Y42_N0
\timeout_cnt[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[16]~67_combout\ = (timeout_cnt(16) & (\timeout_cnt[15]~66\ $ (GND))) # (!timeout_cnt(16) & (!\timeout_cnt[15]~66\ & VCC))
-- \timeout_cnt[16]~68\ = CARRY((timeout_cnt(16) & !\timeout_cnt[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(16),
	datad => VCC,
	cin => \timeout_cnt[15]~66\,
	combout => \timeout_cnt[16]~67_combout\,
	cout => \timeout_cnt[16]~68\);

-- Location: FF_X97_Y42_N1
\timeout_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[16]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(16));

-- Location: LCCOMB_X97_Y42_N2
\timeout_cnt[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[17]~69_combout\ = (timeout_cnt(17) & (!\timeout_cnt[16]~68\)) # (!timeout_cnt(17) & ((\timeout_cnt[16]~68\) # (GND)))
-- \timeout_cnt[17]~70\ = CARRY((!\timeout_cnt[16]~68\) # (!timeout_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(17),
	datad => VCC,
	cin => \timeout_cnt[16]~68\,
	combout => \timeout_cnt[17]~69_combout\,
	cout => \timeout_cnt[17]~70\);

-- Location: FF_X97_Y42_N3
\timeout_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[17]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(17));

-- Location: LCCOMB_X97_Y42_N4
\timeout_cnt[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[18]~71_combout\ = (timeout_cnt(18) & (\timeout_cnt[17]~70\ $ (GND))) # (!timeout_cnt(18) & (!\timeout_cnt[17]~70\ & VCC))
-- \timeout_cnt[18]~72\ = CARRY((timeout_cnt(18) & !\timeout_cnt[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(18),
	datad => VCC,
	cin => \timeout_cnt[17]~70\,
	combout => \timeout_cnt[18]~71_combout\,
	cout => \timeout_cnt[18]~72\);

-- Location: FF_X97_Y42_N5
\timeout_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[18]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(18));

-- Location: LCCOMB_X97_Y42_N6
\timeout_cnt[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[19]~73_combout\ = (timeout_cnt(19) & (!\timeout_cnt[18]~72\)) # (!timeout_cnt(19) & ((\timeout_cnt[18]~72\) # (GND)))
-- \timeout_cnt[19]~74\ = CARRY((!\timeout_cnt[18]~72\) # (!timeout_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(19),
	datad => VCC,
	cin => \timeout_cnt[18]~72\,
	combout => \timeout_cnt[19]~73_combout\,
	cout => \timeout_cnt[19]~74\);

-- Location: FF_X97_Y42_N7
\timeout_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[19]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(19));

-- Location: LCCOMB_X97_Y42_N8
\timeout_cnt[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[20]~75_combout\ = (timeout_cnt(20) & (\timeout_cnt[19]~74\ $ (GND))) # (!timeout_cnt(20) & (!\timeout_cnt[19]~74\ & VCC))
-- \timeout_cnt[20]~76\ = CARRY((timeout_cnt(20) & !\timeout_cnt[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(20),
	datad => VCC,
	cin => \timeout_cnt[19]~74\,
	combout => \timeout_cnt[20]~75_combout\,
	cout => \timeout_cnt[20]~76\);

-- Location: FF_X97_Y42_N9
\timeout_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[20]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(20));

-- Location: LCCOMB_X97_Y42_N10
\timeout_cnt[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[21]~77_combout\ = (timeout_cnt(21) & (!\timeout_cnt[20]~76\)) # (!timeout_cnt(21) & ((\timeout_cnt[20]~76\) # (GND)))
-- \timeout_cnt[21]~78\ = CARRY((!\timeout_cnt[20]~76\) # (!timeout_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(21),
	datad => VCC,
	cin => \timeout_cnt[20]~76\,
	combout => \timeout_cnt[21]~77_combout\,
	cout => \timeout_cnt[21]~78\);

-- Location: FF_X97_Y42_N11
\timeout_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[21]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(21));

-- Location: LCCOMB_X97_Y42_N12
\timeout_cnt[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[22]~79_combout\ = (timeout_cnt(22) & (\timeout_cnt[21]~78\ $ (GND))) # (!timeout_cnt(22) & (!\timeout_cnt[21]~78\ & VCC))
-- \timeout_cnt[22]~80\ = CARRY((timeout_cnt(22) & !\timeout_cnt[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(22),
	datad => VCC,
	cin => \timeout_cnt[21]~78\,
	combout => \timeout_cnt[22]~79_combout\,
	cout => \timeout_cnt[22]~80\);

-- Location: FF_X97_Y42_N13
\timeout_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[22]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(22));

-- Location: LCCOMB_X97_Y42_N14
\timeout_cnt[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[23]~81_combout\ = (timeout_cnt(23) & (!\timeout_cnt[22]~80\)) # (!timeout_cnt(23) & ((\timeout_cnt[22]~80\) # (GND)))
-- \timeout_cnt[23]~82\ = CARRY((!\timeout_cnt[22]~80\) # (!timeout_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(23),
	datad => VCC,
	cin => \timeout_cnt[22]~80\,
	combout => \timeout_cnt[23]~81_combout\,
	cout => \timeout_cnt[23]~82\);

-- Location: FF_X97_Y42_N15
\timeout_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[23]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(23));

-- Location: LCCOMB_X97_Y42_N16
\timeout_cnt[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[24]~83_combout\ = (timeout_cnt(24) & (\timeout_cnt[23]~82\ $ (GND))) # (!timeout_cnt(24) & (!\timeout_cnt[23]~82\ & VCC))
-- \timeout_cnt[24]~84\ = CARRY((timeout_cnt(24) & !\timeout_cnt[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(24),
	datad => VCC,
	cin => \timeout_cnt[23]~82\,
	combout => \timeout_cnt[24]~83_combout\,
	cout => \timeout_cnt[24]~84\);

-- Location: FF_X97_Y42_N17
\timeout_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[24]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(24));

-- Location: LCCOMB_X97_Y42_N18
\timeout_cnt[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[25]~85_combout\ = (timeout_cnt(25) & (!\timeout_cnt[24]~84\)) # (!timeout_cnt(25) & ((\timeout_cnt[24]~84\) # (GND)))
-- \timeout_cnt[25]~86\ = CARRY((!\timeout_cnt[24]~84\) # (!timeout_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(25),
	datad => VCC,
	cin => \timeout_cnt[24]~84\,
	combout => \timeout_cnt[25]~85_combout\,
	cout => \timeout_cnt[25]~86\);

-- Location: FF_X97_Y42_N19
\timeout_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[25]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(25));

-- Location: LCCOMB_X97_Y42_N20
\timeout_cnt[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[26]~87_combout\ = (timeout_cnt(26) & (\timeout_cnt[25]~86\ $ (GND))) # (!timeout_cnt(26) & (!\timeout_cnt[25]~86\ & VCC))
-- \timeout_cnt[26]~88\ = CARRY((timeout_cnt(26) & !\timeout_cnt[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(26),
	datad => VCC,
	cin => \timeout_cnt[25]~86\,
	combout => \timeout_cnt[26]~87_combout\,
	cout => \timeout_cnt[26]~88\);

-- Location: FF_X97_Y42_N21
\timeout_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[26]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(26));

-- Location: LCCOMB_X97_Y42_N22
\timeout_cnt[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[27]~89_combout\ = (timeout_cnt(27) & (!\timeout_cnt[26]~88\)) # (!timeout_cnt(27) & ((\timeout_cnt[26]~88\) # (GND)))
-- \timeout_cnt[27]~90\ = CARRY((!\timeout_cnt[26]~88\) # (!timeout_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(27),
	datad => VCC,
	cin => \timeout_cnt[26]~88\,
	combout => \timeout_cnt[27]~89_combout\,
	cout => \timeout_cnt[27]~90\);

-- Location: FF_X97_Y42_N23
\timeout_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[27]~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(27));

-- Location: LCCOMB_X97_Y42_N24
\timeout_cnt[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[28]~91_combout\ = (timeout_cnt(28) & (\timeout_cnt[27]~90\ $ (GND))) # (!timeout_cnt(28) & (!\timeout_cnt[27]~90\ & VCC))
-- \timeout_cnt[28]~92\ = CARRY((timeout_cnt(28) & !\timeout_cnt[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(28),
	datad => VCC,
	cin => \timeout_cnt[27]~90\,
	combout => \timeout_cnt[28]~91_combout\,
	cout => \timeout_cnt[28]~92\);

-- Location: FF_X97_Y42_N25
\timeout_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[28]~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(28));

-- Location: LCCOMB_X97_Y42_N26
\timeout_cnt[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[29]~93_combout\ = (timeout_cnt(29) & (!\timeout_cnt[28]~92\)) # (!timeout_cnt(29) & ((\timeout_cnt[28]~92\) # (GND)))
-- \timeout_cnt[29]~94\ = CARRY((!\timeout_cnt[28]~92\) # (!timeout_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(29),
	datad => VCC,
	cin => \timeout_cnt[28]~92\,
	combout => \timeout_cnt[29]~93_combout\,
	cout => \timeout_cnt[29]~94\);

-- Location: FF_X97_Y42_N27
\timeout_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[29]~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(29));

-- Location: LCCOMB_X97_Y42_N28
\timeout_cnt[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[30]~95_combout\ = (timeout_cnt(30) & (\timeout_cnt[29]~94\ $ (GND))) # (!timeout_cnt(30) & (!\timeout_cnt[29]~94\ & VCC))
-- \timeout_cnt[30]~96\ = CARRY((timeout_cnt(30) & !\timeout_cnt[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_cnt(30),
	datad => VCC,
	cin => \timeout_cnt[29]~94\,
	combout => \timeout_cnt[30]~95_combout\,
	cout => \timeout_cnt[30]~96\);

-- Location: FF_X97_Y42_N29
\timeout_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[30]~95_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(30));

-- Location: LCCOMB_X97_Y42_N30
\timeout_cnt[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_cnt[31]~97_combout\ = timeout_cnt(31) $ (\timeout_cnt[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(31),
	cin => \timeout_cnt[30]~96\,
	combout => \timeout_cnt[31]~97_combout\);

-- Location: FF_X97_Y42_N31
\timeout_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \timeout_cnt[31]~97_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_st.WAIT_RX~q\,
	ena => \timeout_cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_cnt(31));

-- Location: LCCOMB_X98_Y42_N10
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!timeout_cnt(29) & (!timeout_cnt(31) & (!timeout_cnt(30) & !timeout_cnt(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_cnt(29),
	datab => timeout_cnt(31),
	datac => timeout_cnt(30),
	datad => timeout_cnt(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X98_Y43_N6
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X98_Y0_N15
\in_sop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_sop,
	o => \in_sop~input_o\);

-- Location: LCCOMB_X101_Y44_N12
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\in_sop~input_o\ & \in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datac => \in_valid~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X108_Y42_N6
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\out_ready~input_o\ & ((\st.PREPARE_SYN~q\) # ((!\Equal17~2_combout\ & \st.TX_SYN~q\)))) # (!\out_ready~input_o\ & (((\st.TX_SYN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st.PREPARE_SYN~q\,
	datab => \Equal17~2_combout\,
	datac => \st.TX_SYN~q\,
	datad => \out_ready~input_o\,
	combout => \Selector2~0_combout\);

-- Location: FF_X108_Y42_N7
\st.TX_SYN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.TX_SYN~q\);

-- Location: LCCOMB_X106_Y42_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\out_ready~input_o\ & (\st.TX_SYN~q\ & \Equal17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \st.TX_SYN~q\,
	datad => \Equal17~2_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X98_Y43_N0
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((!\Equal0~10_combout\ & (!\Selector4~0_combout\ & \st.WAIT_RX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Selector4~0_combout\,
	datac => \st.WAIT_RX~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X98_Y43_N1
\st.WAIT_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.WAIT_RX~q\);

-- Location: LCCOMB_X101_Y44_N20
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~1_combout\) # ((\st.WAIT_RX~q\ & (!\Equal0~10_combout\ & \Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \st.WAIT_RX~q\,
	datac => \Equal0~10_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X101_Y44_N21
\st.RX_FRAME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.RX_FRAME~q\);

-- Location: LCCOMB_X101_Y44_N28
\st_n.EVALUATE_RX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \st_n.EVALUATE_RX~0_combout\ = (\in_eop~input_o\ & (\in_valid~input_o\ & \st.RX_FRAME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_eop~input_o\,
	datac => \in_valid~input_o\,
	datad => \st.RX_FRAME~q\,
	combout => \st_n.EVALUATE_RX~0_combout\);

-- Location: FF_X101_Y44_N29
\st.EVALUATE_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \st_n.EVALUATE_RX~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.EVALUATE_RX~q\);

-- Location: IOIBUF_X115_Y59_N22
\client_ip[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(7),
	o => \client_ip[7]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\client_ip[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(6),
	o => \client_ip[6]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: LCCOMB_X101_Y44_N4
\rx_idx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~3_combout\ = (!\in_sop~input_o\ & (\st.RX_FRAME~q\ & \Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datab => \st.RX_FRAME~q\,
	datac => \Add2~10_combout\,
	combout => \rx_idx~3_combout\);

-- Location: LCCOMB_X102_Y44_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = rx_idx(0) $ (VCC)
-- \Add2~1\ = CARRY(rx_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_idx(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X101_Y44_N16
\rx_idx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~1_combout\ = (!\in_sop~input_o\ & (\Add2~0_combout\ & \st.RX_FRAME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datac => \Add2~0_combout\,
	datad => \st.RX_FRAME~q\,
	combout => \rx_idx~1_combout\);

-- Location: FF_X102_Y44_N29
\rx_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_idx~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(0));

-- Location: LCCOMB_X102_Y44_N12
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (rx_idx(1) & (!\Add2~1\)) # (!rx_idx(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!rx_idx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rx_idx(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X102_Y44_N26
\rx_idx~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~7_combout\ = (!\in_sop~input_o\ & (\Add2~2_combout\ & \st.RX_FRAME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datac => \Add2~2_combout\,
	datad => \st.RX_FRAME~q\,
	combout => \rx_idx~7_combout\);

-- Location: FF_X102_Y44_N27
\rx_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_idx~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(1));

-- Location: LCCOMB_X102_Y44_N14
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (rx_idx(2) & (\Add2~3\ $ (GND))) # (!rx_idx(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((rx_idx(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rx_idx(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X102_Y44_N8
\rx_idx~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~6_combout\ = (!\in_sop~input_o\ & (\Add2~4_combout\ & \st.RX_FRAME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datac => \Add2~4_combout\,
	datad => \st.RX_FRAME~q\,
	combout => \rx_idx~6_combout\);

-- Location: FF_X102_Y44_N9
\rx_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_idx~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(2));

-- Location: LCCOMB_X102_Y44_N16
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (rx_idx(3) & (!\Add2~5\)) # (!rx_idx(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!rx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rx_idx(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X101_Y44_N6
\rx_idx~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~5_combout\ = (\st.RX_FRAME~q\ & (!\in_sop~input_o\ & \Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.RX_FRAME~q\,
	datac => \in_sop~input_o\,
	datad => \Add2~6_combout\,
	combout => \rx_idx~5_combout\);

-- Location: FF_X102_Y44_N3
\rx_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_idx~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(3));

-- Location: LCCOMB_X102_Y44_N18
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (rx_idx(4) & (\Add2~7\ $ (GND))) # (!rx_idx(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((rx_idx(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rx_idx(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X102_Y44_N0
\rx_idx~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~4_combout\ = (!\in_sop~input_o\ & (\st.RX_FRAME~q\ & \Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datab => \st.RX_FRAME~q\,
	datac => \Add2~8_combout\,
	combout => \rx_idx~4_combout\);

-- Location: FF_X102_Y44_N1
\rx_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_idx~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(4));

-- Location: LCCOMB_X102_Y44_N20
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (rx_idx(5) & (!\Add2~9\)) # (!rx_idx(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!rx_idx(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rx_idx(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X102_Y44_N22
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (rx_idx(6) & (\Add2~11\ $ (GND))) # (!rx_idx(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((rx_idx(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rx_idx(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X101_Y44_N0
\rx_idx~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~9_combout\ = (\st.RX_FRAME~q\ & (!\in_sop~input_o\ & \Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.RX_FRAME~q\,
	datac => \in_sop~input_o\,
	datad => \Add2~12_combout\,
	combout => \rx_idx~9_combout\);

-- Location: FF_X102_Y44_N5
\rx_idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_idx~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(6));

-- Location: LCCOMB_X102_Y44_N24
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (rx_idx(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rx_idx(7),
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X101_Y44_N14
\rx_idx~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx~8_combout\ = (\st.RX_FRAME~q\ & (!\in_sop~input_o\ & \Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.RX_FRAME~q\,
	datac => \in_sop~input_o\,
	datad => \Add2~14_combout\,
	combout => \rx_idx~8_combout\);

-- Location: FF_X101_Y44_N15
\rx_idx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_idx~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(7));

-- Location: LCCOMB_X102_Y44_N2
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!rx_idx(4)) # (!rx_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_idx(5),
	datad => rx_idx(4),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X102_Y44_N28
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!rx_idx(3) & (((!rx_idx(1) & !rx_idx(0))) # (!rx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_idx(1),
	datab => rx_idx(3),
	datac => rx_idx(0),
	datad => rx_idx(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X102_Y44_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!rx_idx(7) & (!rx_idx(6) & ((\LessThan1~1_combout\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_idx(7),
	datab => \LessThan1~1_combout\,
	datac => rx_idx(6),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X101_Y44_N2
\rx_idx[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_idx[7]~2_combout\ = ((\in_valid~input_o\ & ((\in_sop~input_o\) # (\LessThan1~2_combout\)))) # (!\st.RX_FRAME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datab => \st.RX_FRAME~q\,
	datac => \in_valid~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \rx_idx[7]~2_combout\);

-- Location: FF_X102_Y44_N31
\rx_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rx_idx~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_idx[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_idx(5));

-- Location: LCCOMB_X101_Y44_N24
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\in_sop~input_o\ & (\in_valid~input_o\ & (!\reset~input_o\ & \st.RX_FRAME~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_sop~input_o\,
	datab => \in_valid~input_o\,
	datac => \reset~input_o\,
	datad => \st.RX_FRAME~q\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X102_Y44_N30
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Decoder0~0_combout\ & (\LessThan1~2_combout\ & !\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \LessThan1~2_combout\,
	datad => \Add2~8_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X102_Y43_N24
\Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~20_combout\ = (!\Add2~2_combout\ & (\Add2~0_combout\ & !\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~20_combout\);

-- Location: LCCOMB_X102_Y43_N2
\Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~21_combout\ = (\Add2~10_combout\ & (!\Add2~6_combout\ & (\Decoder0~4_combout\ & \Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~6_combout\,
	datac => \Decoder0~4_combout\,
	datad => \Decoder0~20_combout\,
	combout => \Decoder0~21_combout\);

-- Location: FF_X102_Y43_N23
\rx_buf[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][6]~q\);

-- Location: IOIBUF_X115_Y47_N15
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X102_Y43_N12
\rx_buf[33][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[33][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[33][7]~feeder_combout\);

-- Location: FF_X102_Y43_N13
\rx_buf[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[33][7]~feeder_combout\,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][7]~q\);

-- Location: LCCOMB_X102_Y43_N22
\rx_is_synack~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~42_combout\ = (\client_ip[7]~input_o\ & (\rx_buf[33][7]~q\ & (\client_ip[6]~input_o\ $ (!\rx_buf[33][6]~q\)))) # (!\client_ip[7]~input_o\ & (!\rx_buf[33][7]~q\ & (\client_ip[6]~input_o\ $ (!\rx_buf[33][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[7]~input_o\,
	datab => \client_ip[6]~input_o\,
	datac => \rx_buf[33][6]~q\,
	datad => \rx_buf[33][7]~q\,
	combout => \rx_is_synack~42_combout\);

-- Location: IOIBUF_X115_Y34_N15
\client_ip[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(0),
	o => \client_ip[0]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\client_ip[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(1),
	o => \client_ip[1]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: FF_X102_Y43_N21
\rx_buf[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][1]~q\);

-- Location: IOIBUF_X115_Y49_N1
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: FF_X102_Y43_N19
\rx_buf[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][0]~q\);

-- Location: LCCOMB_X102_Y43_N20
\rx_is_synack~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~39_combout\ = (\client_ip[0]~input_o\ & (\rx_buf[33][0]~q\ & (\client_ip[1]~input_o\ $ (!\rx_buf[33][1]~q\)))) # (!\client_ip[0]~input_o\ & (!\rx_buf[33][0]~q\ & (\client_ip[1]~input_o\ $ (!\rx_buf[33][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[0]~input_o\,
	datab => \client_ip[1]~input_o\,
	datac => \rx_buf[33][1]~q\,
	datad => \rx_buf[33][0]~q\,
	combout => \rx_is_synack~39_combout\);

-- Location: IOIBUF_X58_Y0_N15
\client_ip[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(2),
	o => \client_ip[2]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\client_ip[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(3),
	o => \client_ip[3]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: FF_X102_Y43_N27
\rx_buf[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][2]~q\);

-- Location: IOIBUF_X115_Y46_N1
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: LCCOMB_X102_Y43_N16
\rx_buf[33][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[33][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_buf[33][3]~feeder_combout\);

-- Location: FF_X102_Y43_N17
\rx_buf[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[33][3]~feeder_combout\,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][3]~q\);

-- Location: LCCOMB_X102_Y43_N26
\rx_is_synack~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~40_combout\ = (\client_ip[2]~input_o\ & (\rx_buf[33][2]~q\ & (\client_ip[3]~input_o\ $ (!\rx_buf[33][3]~q\)))) # (!\client_ip[2]~input_o\ & (!\rx_buf[33][2]~q\ & (\client_ip[3]~input_o\ $ (!\rx_buf[33][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[2]~input_o\,
	datab => \client_ip[3]~input_o\,
	datac => \rx_buf[33][2]~q\,
	datad => \rx_buf[33][3]~q\,
	combout => \rx_is_synack~40_combout\);

-- Location: IOIBUF_X83_Y73_N8
\client_ip[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(4),
	o => \client_ip[4]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\client_ip[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(5),
	o => \client_ip[5]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: FF_X102_Y43_N11
\rx_buf[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][4]~q\);

-- Location: IOIBUF_X115_Y41_N1
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: LCCOMB_X102_Y43_N28
\rx_buf[33][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[33][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_buf[33][5]~feeder_combout\);

-- Location: FF_X102_Y43_N29
\rx_buf[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[33][5]~feeder_combout\,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[33][5]~q\);

-- Location: LCCOMB_X102_Y43_N10
\rx_is_synack~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~41_combout\ = (\client_ip[4]~input_o\ & (\rx_buf[33][4]~q\ & (\client_ip[5]~input_o\ $ (!\rx_buf[33][5]~q\)))) # (!\client_ip[4]~input_o\ & (!\rx_buf[33][4]~q\ & (\client_ip[5]~input_o\ $ (!\rx_buf[33][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[4]~input_o\,
	datab => \client_ip[5]~input_o\,
	datac => \rx_buf[33][4]~q\,
	datad => \rx_buf[33][5]~q\,
	combout => \rx_is_synack~41_combout\);

-- Location: LCCOMB_X102_Y43_N8
\rx_is_synack~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~43_combout\ = (\rx_is_synack~42_combout\ & (\rx_is_synack~39_combout\ & (\rx_is_synack~40_combout\ & \rx_is_synack~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~42_combout\,
	datab => \rx_is_synack~39_combout\,
	datac => \rx_is_synack~40_combout\,
	datad => \rx_is_synack~41_combout\,
	combout => \rx_is_synack~43_combout\);

-- Location: IOIBUF_X85_Y73_N22
\client_ip[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(14),
	o => \client_ip[14]~input_o\);

-- Location: LCCOMB_X105_Y44_N28
\rx_buf[32][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[32][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[32][7]~feeder_combout\);

-- Location: LCCOMB_X105_Y44_N4
\Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~18_combout\ = (!\Add2~0_combout\ & (!\Add2~2_combout\ & !\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~2_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~18_combout\);

-- Location: LCCOMB_X105_Y44_N2
\Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~19_combout\ = (!\Add2~6_combout\ & (\Add2~10_combout\ & (\Decoder0~18_combout\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~10_combout\,
	datac => \Decoder0~18_combout\,
	datad => \Decoder0~4_combout\,
	combout => \Decoder0~19_combout\);

-- Location: FF_X105_Y44_N29
\rx_buf[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[32][7]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][7]~q\);

-- Location: FF_X105_Y44_N23
\rx_buf[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][6]~q\);

-- Location: IOIBUF_X83_Y73_N22
\client_ip[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(15),
	o => \client_ip[15]~input_o\);

-- Location: LCCOMB_X105_Y44_N22
\rx_is_synack~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~37_combout\ = (\client_ip[14]~input_o\ & (\rx_buf[32][6]~q\ & (\rx_buf[32][7]~q\ $ (!\client_ip[15]~input_o\)))) # (!\client_ip[14]~input_o\ & (!\rx_buf[32][6]~q\ & (\rx_buf[32][7]~q\ $ (!\client_ip[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[14]~input_o\,
	datab => \rx_buf[32][7]~q\,
	datac => \rx_buf[32][6]~q\,
	datad => \client_ip[15]~input_o\,
	combout => \rx_is_synack~37_combout\);

-- Location: IOIBUF_X115_Y52_N1
\client_ip[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(11),
	o => \client_ip[11]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\client_ip[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(10),
	o => \client_ip[10]~input_o\);

-- Location: FF_X105_Y44_N9
\rx_buf[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][3]~q\);

-- Location: LCCOMB_X105_Y44_N10
\rx_buf[32][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[32][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_buf[32][2]~feeder_combout\);

-- Location: FF_X105_Y44_N11
\rx_buf[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[32][2]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][2]~q\);

-- Location: LCCOMB_X105_Y44_N8
\rx_is_synack~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~35_combout\ = (\client_ip[11]~input_o\ & (\rx_buf[32][3]~q\ & (\client_ip[10]~input_o\ $ (!\rx_buf[32][2]~q\)))) # (!\client_ip[11]~input_o\ & (!\rx_buf[32][3]~q\ & (\client_ip[10]~input_o\ $ (!\rx_buf[32][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[11]~input_o\,
	datab => \client_ip[10]~input_o\,
	datac => \rx_buf[32][3]~q\,
	datad => \rx_buf[32][2]~q\,
	combout => \rx_is_synack~35_combout\);

-- Location: IOIBUF_X115_Y69_N15
\client_ip[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(13),
	o => \client_ip[13]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\client_ip[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(12),
	o => \client_ip[12]~input_o\);

-- Location: FF_X105_Y44_N27
\rx_buf[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][4]~q\);

-- Location: LCCOMB_X105_Y44_N12
\rx_buf[32][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[32][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_buf[32][5]~feeder_combout\);

-- Location: FF_X105_Y44_N13
\rx_buf[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[32][5]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][5]~q\);

-- Location: LCCOMB_X105_Y44_N26
\rx_is_synack~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~36_combout\ = (\client_ip[13]~input_o\ & (\rx_buf[32][5]~q\ & (\client_ip[12]~input_o\ $ (!\rx_buf[32][4]~q\)))) # (!\client_ip[13]~input_o\ & (!\rx_buf[32][5]~q\ & (\client_ip[12]~input_o\ $ (!\rx_buf[32][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[13]~input_o\,
	datab => \client_ip[12]~input_o\,
	datac => \rx_buf[32][4]~q\,
	datad => \rx_buf[32][5]~q\,
	combout => \rx_is_synack~36_combout\);

-- Location: IOIBUF_X83_Y0_N8
\client_ip[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(8),
	o => \client_ip[8]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\client_ip[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(9),
	o => \client_ip[9]~input_o\);

-- Location: FF_X105_Y44_N17
\rx_buf[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][1]~q\);

-- Location: LCCOMB_X105_Y44_N6
\rx_buf[32][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[32][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_buf[32][0]~feeder_combout\);

-- Location: FF_X105_Y44_N7
\rx_buf[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[32][0]~feeder_combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[32][0]~q\);

-- Location: LCCOMB_X105_Y44_N16
\rx_is_synack~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~34_combout\ = (\client_ip[8]~input_o\ & (\rx_buf[32][0]~q\ & (\client_ip[9]~input_o\ $ (!\rx_buf[32][1]~q\)))) # (!\client_ip[8]~input_o\ & (!\rx_buf[32][0]~q\ & (\client_ip[9]~input_o\ $ (!\rx_buf[32][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[8]~input_o\,
	datab => \client_ip[9]~input_o\,
	datac => \rx_buf[32][1]~q\,
	datad => \rx_buf[32][0]~q\,
	combout => \rx_is_synack~34_combout\);

-- Location: LCCOMB_X105_Y44_N0
\rx_is_synack~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~38_combout\ = (\rx_is_synack~37_combout\ & (\rx_is_synack~35_combout\ & (\rx_is_synack~36_combout\ & \rx_is_synack~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~37_combout\,
	datab => \rx_is_synack~35_combout\,
	datac => \rx_is_synack~36_combout\,
	datad => \rx_is_synack~34_combout\,
	combout => \rx_is_synack~38_combout\);

-- Location: IOIBUF_X115_Y57_N15
\server_ip[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(30),
	o => \server_ip[30]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\server_ip[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(31),
	o => \server_ip[31]~input_o\);

-- Location: LCCOMB_X101_Y46_N8
\Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~22_combout\ = (!\Add2~0_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Decoder0~22_combout\);

-- Location: LCCOMB_X102_Y44_N6
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\Decoder0~0_combout\ & (\Add2~8_combout\ & (\LessThan1~2_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \Add2~8_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Add2~10_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X101_Y46_N24
\Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~23_combout\ = (!\Add2~4_combout\ & (\Add2~6_combout\ & (\Decoder0~22_combout\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~6_combout\,
	datac => \Decoder0~22_combout\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~23_combout\);

-- Location: FF_X101_Y46_N3
\rx_buf[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][6]~q\);

-- Location: LCCOMB_X101_Y46_N0
\rx_buf[26][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[26][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[26][7]~feeder_combout\);

-- Location: FF_X101_Y46_N1
\rx_buf[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[26][7]~feeder_combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][7]~q\);

-- Location: LCCOMB_X101_Y46_N2
\rx_is_synack~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~47_combout\ = (\server_ip[30]~input_o\ & (\rx_buf[26][6]~q\ & (\server_ip[31]~input_o\ $ (!\rx_buf[26][7]~q\)))) # (!\server_ip[30]~input_o\ & (!\rx_buf[26][6]~q\ & (\server_ip[31]~input_o\ $ (!\rx_buf[26][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[30]~input_o\,
	datab => \server_ip[31]~input_o\,
	datac => \rx_buf[26][6]~q\,
	datad => \rx_buf[26][7]~q\,
	combout => \rx_is_synack~47_combout\);

-- Location: IOIBUF_X105_Y73_N8
\server_ip[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(29),
	o => \server_ip[29]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\server_ip[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(28),
	o => \server_ip[28]~input_o\);

-- Location: FF_X101_Y46_N15
\rx_buf[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][4]~q\);

-- Location: FF_X101_Y46_N13
\rx_buf[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][5]~q\);

-- Location: LCCOMB_X101_Y46_N14
\rx_is_synack~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~46_combout\ = (\server_ip[29]~input_o\ & (\rx_buf[26][5]~q\ & (\server_ip[28]~input_o\ $ (!\rx_buf[26][4]~q\)))) # (!\server_ip[29]~input_o\ & (!\rx_buf[26][5]~q\ & (\server_ip[28]~input_o\ $ (!\rx_buf[26][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[29]~input_o\,
	datab => \server_ip[28]~input_o\,
	datac => \rx_buf[26][4]~q\,
	datad => \rx_buf[26][5]~q\,
	combout => \rx_is_synack~46_combout\);

-- Location: IOIBUF_X58_Y0_N22
\server_ip[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(26),
	o => \server_ip[26]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\server_ip[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(27),
	o => \server_ip[27]~input_o\);

-- Location: FF_X101_Y46_N31
\rx_buf[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][2]~q\);

-- Location: LCCOMB_X101_Y46_N28
\rx_buf[26][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[26][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_buf[26][3]~feeder_combout\);

-- Location: FF_X101_Y46_N29
\rx_buf[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[26][3]~feeder_combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][3]~q\);

-- Location: LCCOMB_X101_Y46_N30
\rx_is_synack~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~45_combout\ = (\server_ip[26]~input_o\ & (\rx_buf[26][2]~q\ & (\server_ip[27]~input_o\ $ (!\rx_buf[26][3]~q\)))) # (!\server_ip[26]~input_o\ & (!\rx_buf[26][2]~q\ & (\server_ip[27]~input_o\ $ (!\rx_buf[26][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[26]~input_o\,
	datab => \server_ip[27]~input_o\,
	datac => \rx_buf[26][2]~q\,
	datad => \rx_buf[26][3]~q\,
	combout => \rx_is_synack~45_combout\);

-- Location: IOIBUF_X115_Y55_N15
\server_ip[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(25),
	o => \server_ip[25]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\server_ip[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(24),
	o => \server_ip[24]~input_o\);

-- Location: FF_X101_Y46_N7
\rx_buf[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][0]~q\);

-- Location: FF_X101_Y46_N9
\rx_buf[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[26][1]~q\);

-- Location: LCCOMB_X101_Y46_N6
\rx_is_synack~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~44_combout\ = (\server_ip[25]~input_o\ & (\rx_buf[26][1]~q\ & (\server_ip[24]~input_o\ $ (!\rx_buf[26][0]~q\)))) # (!\server_ip[25]~input_o\ & (!\rx_buf[26][1]~q\ & (\server_ip[24]~input_o\ $ (!\rx_buf[26][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[25]~input_o\,
	datab => \server_ip[24]~input_o\,
	datac => \rx_buf[26][0]~q\,
	datad => \rx_buf[26][1]~q\,
	combout => \rx_is_synack~44_combout\);

-- Location: LCCOMB_X100_Y46_N30
\rx_is_synack~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~48_combout\ = (\rx_is_synack~47_combout\ & (\rx_is_synack~46_combout\ & (\rx_is_synack~45_combout\ & \rx_is_synack~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~47_combout\,
	datab => \rx_is_synack~46_combout\,
	datac => \rx_is_synack~45_combout\,
	datad => \rx_is_synack~44_combout\,
	combout => \rx_is_synack~48_combout\);

-- Location: IOIBUF_X115_Y53_N15
\server_ip[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(16),
	o => \server_ip[16]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\server_ip[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(17),
	o => \server_ip[17]~input_o\);

-- Location: LCCOMB_X101_Y46_N26
\Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~24_combout\ = (\Add2~0_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Decoder0~24_combout\);

-- Location: LCCOMB_X101_Y46_N18
\Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~25_combout\ = (!\Add2~4_combout\ & (\Add2~6_combout\ & (\Decoder0~24_combout\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~6_combout\,
	datac => \Decoder0~24_combout\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~25_combout\);

-- Location: FF_X101_Y46_N21
\rx_buf[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][1]~q\);

-- Location: FF_X101_Y46_N27
\rx_buf[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][0]~q\);

-- Location: LCCOMB_X101_Y46_N20
\rx_is_synack~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~49_combout\ = (\server_ip[16]~input_o\ & (\rx_buf[27][0]~q\ & (\server_ip[17]~input_o\ $ (!\rx_buf[27][1]~q\)))) # (!\server_ip[16]~input_o\ & (!\rx_buf[27][0]~q\ & (\server_ip[17]~input_o\ $ (!\rx_buf[27][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[16]~input_o\,
	datab => \server_ip[17]~input_o\,
	datac => \rx_buf[27][1]~q\,
	datad => \rx_buf[27][0]~q\,
	combout => \rx_is_synack~49_combout\);

-- Location: IOIBUF_X115_Y51_N1
\server_ip[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(23),
	o => \server_ip[23]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\server_ip[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(22),
	o => \server_ip[22]~input_o\);

-- Location: FF_X101_Y46_N23
\rx_buf[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][6]~q\);

-- Location: LCCOMB_X101_Y46_N16
\rx_buf[27][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[27][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[27][7]~feeder_combout\);

-- Location: FF_X101_Y46_N17
\rx_buf[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[27][7]~feeder_combout\,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][7]~q\);

-- Location: LCCOMB_X101_Y46_N22
\rx_is_synack~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~52_combout\ = (\server_ip[23]~input_o\ & (\rx_buf[27][7]~q\ & (\server_ip[22]~input_o\ $ (!\rx_buf[27][6]~q\)))) # (!\server_ip[23]~input_o\ & (!\rx_buf[27][7]~q\ & (\server_ip[22]~input_o\ $ (!\rx_buf[27][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[23]~input_o\,
	datab => \server_ip[22]~input_o\,
	datac => \rx_buf[27][6]~q\,
	datad => \rx_buf[27][7]~q\,
	combout => \rx_is_synack~52_combout\);

-- Location: IOIBUF_X91_Y73_N15
\server_ip[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(19),
	o => \server_ip[19]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\server_ip[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(18),
	o => \server_ip[18]~input_o\);

-- Location: FF_X100_Y46_N9
\rx_buf[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][2]~q\);

-- Location: LCCOMB_X101_Y46_N4
\rx_buf[27][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[27][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_buf[27][3]~feeder_combout\);

-- Location: FF_X101_Y46_N5
\rx_buf[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[27][3]~feeder_combout\,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][3]~q\);

-- Location: LCCOMB_X100_Y46_N8
\rx_is_synack~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~50_combout\ = (\server_ip[19]~input_o\ & (\rx_buf[27][3]~q\ & (\server_ip[18]~input_o\ $ (!\rx_buf[27][2]~q\)))) # (!\server_ip[19]~input_o\ & (!\rx_buf[27][3]~q\ & (\server_ip[18]~input_o\ $ (!\rx_buf[27][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[19]~input_o\,
	datab => \server_ip[18]~input_o\,
	datac => \rx_buf[27][2]~q\,
	datad => \rx_buf[27][3]~q\,
	combout => \rx_is_synack~50_combout\);

-- Location: IOIBUF_X94_Y0_N1
\server_ip[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(20),
	o => \server_ip[20]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\server_ip[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(21),
	o => \server_ip[21]~input_o\);

-- Location: FF_X102_Y46_N23
\rx_buf[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][4]~q\);

-- Location: FF_X101_Y46_N11
\rx_buf[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[27][5]~q\);

-- Location: LCCOMB_X102_Y46_N22
\rx_is_synack~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~51_combout\ = (\server_ip[20]~input_o\ & (\rx_buf[27][4]~q\ & (\server_ip[21]~input_o\ $ (!\rx_buf[27][5]~q\)))) # (!\server_ip[20]~input_o\ & (!\rx_buf[27][4]~q\ & (\server_ip[21]~input_o\ $ (!\rx_buf[27][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[20]~input_o\,
	datab => \server_ip[21]~input_o\,
	datac => \rx_buf[27][4]~q\,
	datad => \rx_buf[27][5]~q\,
	combout => \rx_is_synack~51_combout\);

-- Location: LCCOMB_X100_Y46_N22
\rx_is_synack~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~53_combout\ = (\rx_is_synack~49_combout\ & (\rx_is_synack~52_combout\ & (\rx_is_synack~50_combout\ & \rx_is_synack~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~49_combout\,
	datab => \rx_is_synack~52_combout\,
	datac => \rx_is_synack~50_combout\,
	datad => \rx_is_synack~51_combout\,
	combout => \rx_is_synack~53_combout\);

-- Location: LCCOMB_X100_Y45_N22
\rx_is_synack~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~54_combout\ = (\rx_is_synack~43_combout\ & (\rx_is_synack~38_combout\ & (\rx_is_synack~48_combout\ & \rx_is_synack~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~43_combout\,
	datab => \rx_is_synack~38_combout\,
	datac => \rx_is_synack~48_combout\,
	datad => \rx_is_synack~53_combout\,
	combout => \rx_is_synack~54_combout\);

-- Location: LCCOMB_X102_Y45_N4
\Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~27_combout\ = (\Add2~2_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~27_combout\);

-- Location: LCCOMB_X102_Y45_N16
\Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~32_combout\ = (\Decoder0~0_combout\ & (\Add2~0_combout\ & (\LessThan1~2_combout\ & \Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \Add2~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Decoder0~32_combout\);

-- Location: LCCOMB_X102_Y45_N2
\Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~33_combout\ = (!\Add2~10_combout\ & (\Add2~8_combout\ & (\Decoder0~27_combout\ & \Decoder0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datac => \Decoder0~27_combout\,
	datad => \Decoder0~32_combout\,
	combout => \Decoder0~33_combout\);

-- Location: FF_X100_Y45_N31
\rx_buf[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][5]~q\);

-- Location: IOIBUF_X87_Y73_N8
\client_ip[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(21),
	o => \client_ip[21]~input_o\);

-- Location: FF_X100_Y45_N7
\rx_buf[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][4]~q\);

-- Location: IOIBUF_X96_Y73_N22
\client_ip[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(20),
	o => \client_ip[20]~input_o\);

-- Location: LCCOMB_X100_Y45_N6
\rx_is_synack~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~67_combout\ = (\rx_buf[31][5]~q\ & (\client_ip[21]~input_o\ & (\rx_buf[31][4]~q\ $ (!\client_ip[20]~input_o\)))) # (!\rx_buf[31][5]~q\ & (!\client_ip[21]~input_o\ & (\rx_buf[31][4]~q\ $ (!\client_ip[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[31][5]~q\,
	datab => \client_ip[21]~input_o\,
	datac => \rx_buf[31][4]~q\,
	datad => \client_ip[20]~input_o\,
	combout => \rx_is_synack~67_combout\);

-- Location: IOIBUF_X69_Y73_N1
\client_ip[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(18),
	o => \client_ip[18]~input_o\);

-- Location: LCCOMB_X100_Y45_N10
\rx_buf[31][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[31][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_buf[31][3]~feeder_combout\);

-- Location: FF_X100_Y45_N11
\rx_buf[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[31][3]~feeder_combout\,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][3]~q\);

-- Location: IOIBUF_X85_Y73_N8
\client_ip[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(19),
	o => \client_ip[19]~input_o\);

-- Location: LCCOMB_X100_Y45_N28
\rx_buf[31][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[31][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_buf[31][2]~feeder_combout\);

-- Location: FF_X100_Y45_N29
\rx_buf[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[31][2]~feeder_combout\,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][2]~q\);

-- Location: LCCOMB_X99_Y45_N22
\rx_is_synack~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~66_combout\ = (\client_ip[18]~input_o\ & (\rx_buf[31][2]~q\ & (\rx_buf[31][3]~q\ $ (!\client_ip[19]~input_o\)))) # (!\client_ip[18]~input_o\ & (!\rx_buf[31][2]~q\ & (\rx_buf[31][3]~q\ $ (!\client_ip[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[18]~input_o\,
	datab => \rx_buf[31][3]~q\,
	datac => \client_ip[19]~input_o\,
	datad => \rx_buf[31][2]~q\,
	combout => \rx_is_synack~66_combout\);

-- Location: IOIBUF_X100_Y73_N15
\client_ip[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(23),
	o => \client_ip[23]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\client_ip[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(22),
	o => \client_ip[22]~input_o\);

-- Location: FF_X100_Y45_N15
\rx_buf[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][6]~q\);

-- Location: LCCOMB_X100_Y45_N20
\rx_buf[31][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[31][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[31][7]~feeder_combout\);

-- Location: FF_X100_Y45_N21
\rx_buf[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[31][7]~feeder_combout\,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][7]~q\);

-- Location: LCCOMB_X100_Y45_N14
\rx_is_synack~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~68_combout\ = (\client_ip[23]~input_o\ & (\rx_buf[31][7]~q\ & (\client_ip[22]~input_o\ $ (!\rx_buf[31][6]~q\)))) # (!\client_ip[23]~input_o\ & (!\rx_buf[31][7]~q\ & (\client_ip[22]~input_o\ $ (!\rx_buf[31][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[23]~input_o\,
	datab => \client_ip[22]~input_o\,
	datac => \rx_buf[31][6]~q\,
	datad => \rx_buf[31][7]~q\,
	combout => \rx_is_synack~68_combout\);

-- Location: IOIBUF_X115_Y45_N22
\client_ip[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(17),
	o => \client_ip[17]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\client_ip[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(16),
	o => \client_ip[16]~input_o\);

-- Location: FF_X106_Y45_N13
\rx_buf[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][0]~q\);

-- Location: LCCOMB_X106_Y45_N6
\rx_buf[31][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[31][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_buf[31][1]~feeder_combout\);

-- Location: FF_X106_Y45_N7
\rx_buf[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[31][1]~feeder_combout\,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[31][1]~q\);

-- Location: LCCOMB_X106_Y45_N12
\rx_is_synack~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~65_combout\ = (\client_ip[17]~input_o\ & (\rx_buf[31][1]~q\ & (\client_ip[16]~input_o\ $ (!\rx_buf[31][0]~q\)))) # (!\client_ip[17]~input_o\ & (!\rx_buf[31][1]~q\ & (\client_ip[16]~input_o\ $ (!\rx_buf[31][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[17]~input_o\,
	datab => \client_ip[16]~input_o\,
	datac => \rx_buf[31][0]~q\,
	datad => \rx_buf[31][1]~q\,
	combout => \rx_is_synack~65_combout\);

-- Location: LCCOMB_X100_Y45_N24
\rx_is_synack~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~69_combout\ = (\rx_is_synack~67_combout\ & (\rx_is_synack~66_combout\ & (\rx_is_synack~68_combout\ & \rx_is_synack~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~67_combout\,
	datab => \rx_is_synack~66_combout\,
	datac => \rx_is_synack~68_combout\,
	datad => \rx_is_synack~65_combout\,
	combout => \rx_is_synack~69_combout\);

-- Location: IOIBUF_X72_Y73_N8
\client_ip[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(30),
	o => \client_ip[30]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\client_ip[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(31),
	o => \client_ip[31]~input_o\);

-- Location: LCCOMB_X102_Y45_N24
\Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~30_combout\ = (\Decoder0~0_combout\ & (!\Add2~0_combout\ & (\LessThan1~2_combout\ & \Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \Add2~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Decoder0~30_combout\);

-- Location: LCCOMB_X102_Y45_N18
\Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~31_combout\ = (!\Add2~10_combout\ & (\Add2~8_combout\ & (\Decoder0~27_combout\ & \Decoder0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datac => \Decoder0~27_combout\,
	datad => \Decoder0~30_combout\,
	combout => \Decoder0~31_combout\);

-- Location: FF_X101_Y45_N23
\rx_buf[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][6]~q\);

-- Location: LCCOMB_X101_Y45_N16
\rx_buf[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[30][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[30][7]~feeder_combout\);

-- Location: FF_X101_Y45_N17
\rx_buf[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[30][7]~feeder_combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][7]~q\);

-- Location: LCCOMB_X101_Y45_N22
\rx_is_synack~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~63_combout\ = (\client_ip[30]~input_o\ & (\rx_buf[30][6]~q\ & (\client_ip[31]~input_o\ $ (!\rx_buf[30][7]~q\)))) # (!\client_ip[30]~input_o\ & (!\rx_buf[30][6]~q\ & (\client_ip[31]~input_o\ $ (!\rx_buf[30][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[30]~input_o\,
	datab => \client_ip[31]~input_o\,
	datac => \rx_buf[30][6]~q\,
	datad => \rx_buf[30][7]~q\,
	combout => \rx_is_synack~63_combout\);

-- Location: IOIBUF_X115_Y45_N15
\client_ip[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(25),
	o => \client_ip[25]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\client_ip[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(24),
	o => \client_ip[24]~input_o\);

-- Location: FF_X102_Y45_N11
\rx_buf[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][0]~q\);

-- Location: LCCOMB_X102_Y45_N0
\rx_buf[30][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[30][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_buf[30][1]~feeder_combout\);

-- Location: FF_X102_Y45_N1
\rx_buf[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[30][1]~feeder_combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][1]~q\);

-- Location: LCCOMB_X102_Y45_N10
\rx_is_synack~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~60_combout\ = (\client_ip[25]~input_o\ & (\rx_buf[30][1]~q\ & (\client_ip[24]~input_o\ $ (!\rx_buf[30][0]~q\)))) # (!\client_ip[25]~input_o\ & (!\rx_buf[30][1]~q\ & (\client_ip[24]~input_o\ $ (!\rx_buf[30][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[25]~input_o\,
	datab => \client_ip[24]~input_o\,
	datac => \rx_buf[30][0]~q\,
	datad => \rx_buf[30][1]~q\,
	combout => \rx_is_synack~60_combout\);

-- Location: IOIBUF_X87_Y73_N15
\client_ip[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(28),
	o => \client_ip[28]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\client_ip[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(29),
	o => \client_ip[29]~input_o\);

-- Location: FF_X102_Y45_N31
\rx_buf[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][4]~q\);

-- Location: FF_X102_Y45_N9
\rx_buf[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][5]~q\);

-- Location: LCCOMB_X102_Y45_N30
\rx_is_synack~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~62_combout\ = (\client_ip[28]~input_o\ & (\rx_buf[30][4]~q\ & (\client_ip[29]~input_o\ $ (!\rx_buf[30][5]~q\)))) # (!\client_ip[28]~input_o\ & (!\rx_buf[30][4]~q\ & (\client_ip[29]~input_o\ $ (!\rx_buf[30][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[28]~input_o\,
	datab => \client_ip[29]~input_o\,
	datac => \rx_buf[30][4]~q\,
	datad => \rx_buf[30][5]~q\,
	combout => \rx_is_synack~62_combout\);

-- Location: IOIBUF_X98_Y73_N22
\client_ip[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(26),
	o => \client_ip[26]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\client_ip[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_ip(27),
	o => \client_ip[27]~input_o\);

-- Location: FF_X102_Y45_N23
\rx_buf[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][2]~q\);

-- Location: LCCOMB_X102_Y45_N28
\rx_buf[30][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[30][3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \rx_buf[30][3]~feeder_combout\);

-- Location: FF_X102_Y45_N29
\rx_buf[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[30][3]~feeder_combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[30][3]~q\);

-- Location: LCCOMB_X102_Y45_N22
\rx_is_synack~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~61_combout\ = (\client_ip[26]~input_o\ & (\rx_buf[30][2]~q\ & (\client_ip[27]~input_o\ $ (!\rx_buf[30][3]~q\)))) # (!\client_ip[26]~input_o\ & (!\rx_buf[30][2]~q\ & (\client_ip[27]~input_o\ $ (!\rx_buf[30][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_ip[26]~input_o\,
	datab => \client_ip[27]~input_o\,
	datac => \rx_buf[30][2]~q\,
	datad => \rx_buf[30][3]~q\,
	combout => \rx_is_synack~61_combout\);

-- Location: LCCOMB_X101_Y45_N12
\rx_is_synack~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~64_combout\ = (\rx_is_synack~63_combout\ & (\rx_is_synack~60_combout\ & (\rx_is_synack~62_combout\ & \rx_is_synack~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~63_combout\,
	datab => \rx_is_synack~60_combout\,
	datac => \rx_is_synack~62_combout\,
	datad => \rx_is_synack~61_combout\,
	combout => \rx_is_synack~64_combout\);

-- Location: LCCOMB_X99_Y44_N30
\rx_buf[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[14][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_buf[14][2]~feeder_combout\);

-- Location: LCCOMB_X101_Y44_N26
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Decoder0~0_combout\ & (\Add2~2_combout\ & \LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~0_combout\,
	datac => \Add2~2_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X100_Y44_N6
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\Add2~4_combout\ & (\Add2~6_combout\ & (!\Add2~8_combout\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X99_Y44_N2
\Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~26_combout\ = (!\Add2~0_combout\ & (!\Add2~10_combout\ & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Add2~10_combout\,
	datad => \Decoder0~2_combout\,
	combout => \Decoder0~26_combout\);

-- Location: FF_X99_Y44_N31
\rx_buf[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[14][2]~feeder_combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][2]~q\);

-- Location: LCCOMB_X99_Y44_N20
\rx_buf[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[14][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_buf[14][0]~feeder_combout\);

-- Location: FF_X99_Y44_N21
\rx_buf[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[14][0]~feeder_combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][0]~q\);

-- Location: FF_X99_Y44_N17
\rx_buf[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][1]~q\);

-- Location: FF_X99_Y44_N7
\rx_buf[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][3]~q\);

-- Location: LCCOMB_X99_Y44_N16
\rx_is_synack~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~56_combout\ = (\rx_buf[14][2]~q\ & (\rx_buf[14][0]~q\ & (!\rx_buf[14][1]~q\ & !\rx_buf[14][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[14][2]~q\,
	datab => \rx_buf[14][0]~q\,
	datac => \rx_buf[14][1]~q\,
	datad => \rx_buf[14][3]~q\,
	combout => \rx_is_synack~56_combout\);

-- Location: LCCOMB_X102_Y45_N12
\Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~28_combout\ = (\Decoder0~0_combout\ & (\Add2~0_combout\ & (\LessThan1~2_combout\ & !\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \Add2~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Decoder0~28_combout\);

-- Location: LCCOMB_X102_Y45_N6
\Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~29_combout\ = (!\Add2~10_combout\ & (\Add2~8_combout\ & (\Decoder0~27_combout\ & \Decoder0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datac => \Decoder0~27_combout\,
	datad => \Decoder0~28_combout\,
	combout => \Decoder0~29_combout\);

-- Location: FF_X102_Y45_N5
\rx_buf[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][2]~q\);

-- Location: FF_X103_Y45_N25
\rx_buf[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][3]~q\);

-- Location: FF_X102_Y45_N15
\rx_buf[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][0]~q\);

-- Location: LCCOMB_X103_Y45_N18
\rx_buf[23][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[23][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_buf[23][1]~feeder_combout\);

-- Location: FF_X103_Y45_N19
\rx_buf[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[23][1]~feeder_combout\,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][1]~q\);

-- Location: LCCOMB_X102_Y45_N14
\rx_is_synack~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~58_combout\ = (\rx_buf[23][2]~q\ & (!\rx_buf[23][3]~q\ & (!\rx_buf[23][0]~q\ & \rx_buf[23][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[23][2]~q\,
	datab => \rx_buf[23][3]~q\,
	datac => \rx_buf[23][0]~q\,
	datad => \rx_buf[23][1]~q\,
	combout => \rx_is_synack~58_combout\);

-- Location: FF_X99_Y44_N27
\rx_buf[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][5]~q\);

-- Location: FF_X99_Y44_N29
\rx_buf[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][4]~q\);

-- Location: FF_X99_Y44_N1
\rx_buf[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][7]~q\);

-- Location: FF_X99_Y44_N19
\rx_buf[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[14][6]~q\);

-- Location: LCCOMB_X99_Y44_N0
\rx_is_synack~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~55_combout\ = (!\rx_buf[14][5]~q\ & (!\rx_buf[14][4]~q\ & (!\rx_buf[14][7]~q\ & \rx_buf[14][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[14][5]~q\,
	datab => \rx_buf[14][4]~q\,
	datac => \rx_buf[14][7]~q\,
	datad => \rx_buf[14][6]~q\,
	combout => \rx_is_synack~55_combout\);

-- Location: LCCOMB_X103_Y45_N20
\rx_buf[23][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[23][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_buf[23][6]~feeder_combout\);

-- Location: FF_X103_Y45_N21
\rx_buf[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[23][6]~feeder_combout\,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][6]~q\);

-- Location: FF_X102_Y45_N21
\rx_buf[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][5]~q\);

-- Location: FF_X102_Y45_N27
\rx_buf[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][4]~q\);

-- Location: FF_X103_Y45_N23
\rx_buf[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[23][7]~q\);

-- Location: LCCOMB_X102_Y45_N26
\rx_is_synack~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~57_combout\ = (!\rx_buf[23][6]~q\ & (!\rx_buf[23][5]~q\ & (!\rx_buf[23][4]~q\ & !\rx_buf[23][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[23][6]~q\,
	datab => \rx_buf[23][5]~q\,
	datac => \rx_buf[23][4]~q\,
	datad => \rx_buf[23][7]~q\,
	combout => \rx_is_synack~57_combout\);

-- Location: LCCOMB_X100_Y45_N0
\rx_is_synack~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~59_combout\ = (\rx_is_synack~56_combout\ & (\rx_is_synack~58_combout\ & (\rx_is_synack~55_combout\ & \rx_is_synack~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~56_combout\,
	datab => \rx_is_synack~58_combout\,
	datac => \rx_is_synack~55_combout\,
	datad => \rx_is_synack~57_combout\,
	combout => \rx_is_synack~59_combout\);

-- Location: LCCOMB_X100_Y45_N18
\rx_is_synack~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~70_combout\ = (\rx_is_synack~69_combout\ & (\rx_is_synack~64_combout\ & \rx_is_synack~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_is_synack~69_combout\,
	datac => \rx_is_synack~64_combout\,
	datad => \rx_is_synack~59_combout\,
	combout => \rx_is_synack~70_combout\);

-- Location: LCCOMB_X100_Y44_N2
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\Add2~0_combout\ & (\Add2~10_combout\ & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~10_combout\,
	datad => \Decoder0~2_combout\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X100_Y44_N3
\rx_buf[47][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][4]~q\);

-- Location: LCCOMB_X100_Y44_N14
\rx_buf[47][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[47][6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \rx_buf[47][6]~feeder_combout\);

-- Location: FF_X100_Y44_N15
\rx_buf[47][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[47][6]~feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][6]~q\);

-- Location: FF_X100_Y44_N13
\rx_buf[47][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][7]~q\);

-- Location: FF_X100_Y44_N17
\rx_buf[47][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][5]~q\);

-- Location: LCCOMB_X100_Y44_N12
\rx_is_synack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~0_combout\ = (\rx_buf[47][4]~q\ & (!\rx_buf[47][6]~q\ & (!\rx_buf[47][7]~q\ & !\rx_buf[47][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[47][4]~q\,
	datab => \rx_buf[47][6]~q\,
	datac => \rx_buf[47][7]~q\,
	datad => \rx_buf[47][5]~q\,
	combout => \rx_is_synack~0_combout\);

-- Location: LCCOMB_X100_Y44_N22
\rx_buf[47][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[47][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_buf[47][2]~feeder_combout\);

-- Location: FF_X100_Y44_N23
\rx_buf[47][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[47][2]~feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][2]~q\);

-- Location: LCCOMB_X100_Y44_N28
\rx_buf[47][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[47][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_buf[47][0]~feeder_combout\);

-- Location: FF_X100_Y44_N29
\rx_buf[47][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[47][0]~feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][0]~q\);

-- Location: FF_X100_Y44_N1
\rx_buf[47][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][3]~q\);

-- Location: LCCOMB_X100_Y44_N10
\rx_buf[47][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[47][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_buf[47][1]~feeder_combout\);

-- Location: FF_X100_Y44_N11
\rx_buf[47][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[47][1]~feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[47][1]~q\);

-- Location: LCCOMB_X100_Y44_N0
\rx_is_synack~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~1_combout\ = (!\rx_buf[47][2]~q\ & (!\rx_buf[47][0]~q\ & (!\rx_buf[47][3]~q\ & \rx_buf[47][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[47][2]~q\,
	datab => \rx_buf[47][0]~q\,
	datac => \rx_buf[47][3]~q\,
	datad => \rx_buf[47][1]~q\,
	combout => \rx_is_synack~1_combout\);

-- Location: IOIBUF_X96_Y0_N8
\client_port[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(2),
	o => \client_port[2]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\client_port[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(3),
	o => \client_port[3]~input_o\);

-- Location: LCCOMB_X103_Y45_N14
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\Add2~2_combout\ & (\Add2~0_combout\ & \Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X103_Y45_N0
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\Add2~6_combout\ & (\Decoder0~7_combout\ & (\Decoder0~4_combout\ & \Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Decoder0~7_combout\,
	datac => \Decoder0~4_combout\,
	datad => \Add2~10_combout\,
	combout => \Decoder0~8_combout\);

-- Location: FF_X103_Y45_N7
\rx_buf[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][2]~q\);

-- Location: FF_X103_Y45_N13
\rx_buf[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][3]~q\);

-- Location: LCCOMB_X103_Y45_N6
\rx_is_synack~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~8_combout\ = (\client_port[2]~input_o\ & (\rx_buf[37][2]~q\ & (\client_port[3]~input_o\ $ (!\rx_buf[37][3]~q\)))) # (!\client_port[2]~input_o\ & (!\rx_buf[37][2]~q\ & (\client_port[3]~input_o\ $ (!\rx_buf[37][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[2]~input_o\,
	datab => \client_port[3]~input_o\,
	datac => \rx_buf[37][2]~q\,
	datad => \rx_buf[37][3]~q\,
	combout => \rx_is_synack~8_combout\);

-- Location: IOIBUF_X102_Y0_N15
\client_port[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(5),
	o => \client_port[5]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\client_port[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(4),
	o => \client_port[4]~input_o\);

-- Location: FF_X103_Y45_N3
\rx_buf[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][4]~q\);

-- Location: FF_X103_Y45_N17
\rx_buf[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][5]~q\);

-- Location: LCCOMB_X103_Y45_N2
\rx_is_synack~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~9_combout\ = (\client_port[5]~input_o\ & (\rx_buf[37][5]~q\ & (\client_port[4]~input_o\ $ (!\rx_buf[37][4]~q\)))) # (!\client_port[5]~input_o\ & (!\rx_buf[37][5]~q\ & (\client_port[4]~input_o\ $ (!\rx_buf[37][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[5]~input_o\,
	datab => \client_port[4]~input_o\,
	datac => \rx_buf[37][4]~q\,
	datad => \rx_buf[37][5]~q\,
	combout => \rx_is_synack~9_combout\);

-- Location: IOIBUF_X115_Y22_N15
\client_port[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(0),
	o => \client_port[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\client_port[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(1),
	o => \client_port[1]~input_o\);

-- Location: FF_X103_Y45_N31
\rx_buf[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][0]~q\);

-- Location: LCCOMB_X103_Y45_N28
\rx_buf[37][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[37][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_buf[37][1]~feeder_combout\);

-- Location: FF_X103_Y45_N29
\rx_buf[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[37][1]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][1]~q\);

-- Location: LCCOMB_X103_Y45_N30
\rx_is_synack~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~7_combout\ = (\client_port[0]~input_o\ & (\rx_buf[37][0]~q\ & (\client_port[1]~input_o\ $ (!\rx_buf[37][1]~q\)))) # (!\client_port[0]~input_o\ & (!\rx_buf[37][0]~q\ & (\client_port[1]~input_o\ $ (!\rx_buf[37][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[0]~input_o\,
	datab => \client_port[1]~input_o\,
	datac => \rx_buf[37][0]~q\,
	datad => \rx_buf[37][1]~q\,
	combout => \rx_is_synack~7_combout\);

-- Location: IOIBUF_X69_Y73_N15
\client_port[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(6),
	o => \client_port[6]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\client_port[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(7),
	o => \client_port[7]~input_o\);

-- Location: FF_X103_Y45_N11
\rx_buf[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][6]~q\);

-- Location: FF_X103_Y45_N5
\rx_buf[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[37][7]~q\);

-- Location: LCCOMB_X103_Y45_N10
\rx_is_synack~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~10_combout\ = (\client_port[6]~input_o\ & (\rx_buf[37][6]~q\ & (\client_port[7]~input_o\ $ (!\rx_buf[37][7]~q\)))) # (!\client_port[6]~input_o\ & (!\rx_buf[37][6]~q\ & (\client_port[7]~input_o\ $ (!\rx_buf[37][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[6]~input_o\,
	datab => \client_port[7]~input_o\,
	datac => \rx_buf[37][6]~q\,
	datad => \rx_buf[37][7]~q\,
	combout => \rx_is_synack~10_combout\);

-- Location: LCCOMB_X103_Y45_N8
\rx_is_synack~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~11_combout\ = (\rx_is_synack~8_combout\ & (\rx_is_synack~9_combout\ & (\rx_is_synack~7_combout\ & \rx_is_synack~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~8_combout\,
	datab => \rx_is_synack~9_combout\,
	datac => \rx_is_synack~7_combout\,
	datad => \rx_is_synack~10_combout\,
	combout => \rx_is_synack~11_combout\);

-- Location: IOIBUF_X96_Y0_N22
\client_port[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(13),
	o => \client_port[13]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\client_port[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(12),
	o => \client_port[12]~input_o\);

-- Location: LCCOMB_X103_Y44_N26
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\Add2~2_combout\ & (!\Add2~0_combout\ & \Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X103_Y44_N4
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\Add2~6_combout\ & (\Add2~10_combout\ & (\Decoder0~5_combout\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~10_combout\,
	datac => \Decoder0~5_combout\,
	datad => \Decoder0~4_combout\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X99_Y44_N11
\rx_buf[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][4]~q\);

-- Location: FF_X99_Y44_N13
\rx_buf[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][5]~q\);

-- Location: LCCOMB_X99_Y44_N10
\rx_is_synack~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~4_combout\ = (\client_port[13]~input_o\ & (\rx_buf[36][5]~q\ & (\client_port[12]~input_o\ $ (!\rx_buf[36][4]~q\)))) # (!\client_port[13]~input_o\ & (!\rx_buf[36][5]~q\ & (\client_port[12]~input_o\ $ (!\rx_buf[36][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[13]~input_o\,
	datab => \client_port[12]~input_o\,
	datac => \rx_buf[36][4]~q\,
	datad => \rx_buf[36][5]~q\,
	combout => \rx_is_synack~4_combout\);

-- Location: IOIBUF_X81_Y73_N22
\client_port[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(8),
	o => \client_port[8]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\client_port[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(9),
	o => \client_port[9]~input_o\);

-- Location: FF_X103_Y44_N25
\rx_buf[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][1]~q\);

-- Location: LCCOMB_X103_Y44_N18
\rx_buf[36][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[36][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_buf[36][0]~feeder_combout\);

-- Location: FF_X103_Y44_N19
\rx_buf[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[36][0]~feeder_combout\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][0]~q\);

-- Location: LCCOMB_X103_Y44_N24
\rx_is_synack~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~2_combout\ = (\client_port[8]~input_o\ & (\rx_buf[36][0]~q\ & (\client_port[9]~input_o\ $ (!\rx_buf[36][1]~q\)))) # (!\client_port[8]~input_o\ & (!\rx_buf[36][0]~q\ & (\client_port[9]~input_o\ $ (!\rx_buf[36][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[8]~input_o\,
	datab => \client_port[9]~input_o\,
	datac => \rx_buf[36][1]~q\,
	datad => \rx_buf[36][0]~q\,
	combout => \rx_is_synack~2_combout\);

-- Location: IOIBUF_X65_Y73_N8
\client_port[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(15),
	o => \client_port[15]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\client_port[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(14),
	o => \client_port[14]~input_o\);

-- Location: FF_X99_Y44_N23
\rx_buf[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][6]~q\);

-- Location: FF_X99_Y44_N25
\rx_buf[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][7]~q\);

-- Location: LCCOMB_X99_Y44_N22
\rx_is_synack~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~5_combout\ = (\client_port[15]~input_o\ & (\rx_buf[36][7]~q\ & (\client_port[14]~input_o\ $ (!\rx_buf[36][6]~q\)))) # (!\client_port[15]~input_o\ & (!\rx_buf[36][7]~q\ & (\client_port[14]~input_o\ $ (!\rx_buf[36][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[15]~input_o\,
	datab => \client_port[14]~input_o\,
	datac => \rx_buf[36][6]~q\,
	datad => \rx_buf[36][7]~q\,
	combout => \rx_is_synack~5_combout\);

-- Location: IOIBUF_X67_Y73_N1
\client_port[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(11),
	o => \client_port[11]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\client_port[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_port(10),
	o => \client_port[10]~input_o\);

-- Location: FF_X103_Y44_N1
\rx_buf[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][3]~q\);

-- Location: LCCOMB_X103_Y44_N2
\rx_buf[36][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[36][2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \rx_buf[36][2]~feeder_combout\);

-- Location: FF_X103_Y44_N3
\rx_buf[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[36][2]~feeder_combout\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[36][2]~q\);

-- Location: LCCOMB_X103_Y44_N0
\rx_is_synack~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~3_combout\ = (\client_port[11]~input_o\ & (\rx_buf[36][3]~q\ & (\client_port[10]~input_o\ $ (!\rx_buf[36][2]~q\)))) # (!\client_port[11]~input_o\ & (!\rx_buf[36][3]~q\ & (\client_port[10]~input_o\ $ (!\rx_buf[36][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \client_port[11]~input_o\,
	datab => \client_port[10]~input_o\,
	datac => \rx_buf[36][3]~q\,
	datad => \rx_buf[36][2]~q\,
	combout => \rx_is_synack~3_combout\);

-- Location: LCCOMB_X99_Y44_N8
\rx_is_synack~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~6_combout\ = (\rx_is_synack~4_combout\ & (\rx_is_synack~2_combout\ & (\rx_is_synack~5_combout\ & \rx_is_synack~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~4_combout\,
	datab => \rx_is_synack~2_combout\,
	datac => \rx_is_synack~5_combout\,
	datad => \rx_is_synack~3_combout\,
	combout => \rx_is_synack~6_combout\);

-- Location: LCCOMB_X100_Y45_N4
\rx_is_synack~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~12_combout\ = (\rx_is_synack~0_combout\ & (\rx_is_synack~1_combout\ & (\rx_is_synack~11_combout\ & \rx_is_synack~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~0_combout\,
	datab => \rx_is_synack~1_combout\,
	datac => \rx_is_synack~11_combout\,
	datad => \rx_is_synack~6_combout\,
	combout => \rx_is_synack~12_combout\);

-- Location: IOIBUF_X107_Y73_N8
\server_ip[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(4),
	o => \server_ip[4]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\server_ip[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(5),
	o => \server_ip[5]~input_o\);

-- Location: LCCOMB_X106_Y44_N20
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\Add2~0_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X106_Y44_N6
\Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\Add2~6_combout\ & (\Decoder0~12_combout\ & (\Add2~4_combout\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Decoder0~12_combout\,
	datac => \Add2~4_combout\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~13_combout\);

-- Location: FF_X106_Y44_N27
\rx_buf[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][4]~q\);

-- Location: LCCOMB_X106_Y44_N16
\rx_buf[29][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[29][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_buf[29][5]~feeder_combout\);

-- Location: FF_X106_Y44_N17
\rx_buf[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[29][5]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][5]~q\);

-- Location: LCCOMB_X106_Y44_N26
\rx_is_synack~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~20_combout\ = (\server_ip[4]~input_o\ & (\rx_buf[29][4]~q\ & (\server_ip[5]~input_o\ $ (!\rx_buf[29][5]~q\)))) # (!\server_ip[4]~input_o\ & (!\rx_buf[29][4]~q\ & (\server_ip[5]~input_o\ $ (!\rx_buf[29][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[4]~input_o\,
	datab => \server_ip[5]~input_o\,
	datac => \rx_buf[29][4]~q\,
	datad => \rx_buf[29][5]~q\,
	combout => \rx_is_synack~20_combout\);

-- Location: IOIBUF_X115_Y56_N15
\server_ip[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(7),
	o => \server_ip[7]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\server_ip[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(6),
	o => \server_ip[6]~input_o\);

-- Location: FF_X106_Y44_N23
\rx_buf[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][6]~q\);

-- Location: LCCOMB_X106_Y44_N24
\rx_buf[29][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[29][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[29][7]~feeder_combout\);

-- Location: FF_X106_Y44_N25
\rx_buf[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[29][7]~feeder_combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][7]~q\);

-- Location: LCCOMB_X106_Y44_N22
\rx_is_synack~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~21_combout\ = (\server_ip[7]~input_o\ & (\rx_buf[29][7]~q\ & (\server_ip[6]~input_o\ $ (!\rx_buf[29][6]~q\)))) # (!\server_ip[7]~input_o\ & (!\rx_buf[29][7]~q\ & (\server_ip[6]~input_o\ $ (!\rx_buf[29][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[7]~input_o\,
	datab => \server_ip[6]~input_o\,
	datac => \rx_buf[29][6]~q\,
	datad => \rx_buf[29][7]~q\,
	combout => \rx_is_synack~21_combout\);

-- Location: IOIBUF_X115_Y58_N22
\server_ip[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(1),
	o => \server_ip[1]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\server_ip[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(0),
	o => \server_ip[0]~input_o\);

-- Location: FF_X107_Y44_N15
\rx_buf[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][1]~q\);

-- Location: FF_X106_Y44_N21
\rx_buf[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][0]~q\);

-- Location: LCCOMB_X107_Y44_N14
\rx_is_synack~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~18_combout\ = (\server_ip[1]~input_o\ & (\rx_buf[29][1]~q\ & (\server_ip[0]~input_o\ $ (!\rx_buf[29][0]~q\)))) # (!\server_ip[1]~input_o\ & (!\rx_buf[29][1]~q\ & (\server_ip[0]~input_o\ $ (!\rx_buf[29][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[1]~input_o\,
	datab => \server_ip[0]~input_o\,
	datac => \rx_buf[29][1]~q\,
	datad => \rx_buf[29][0]~q\,
	combout => \rx_is_synack~18_combout\);

-- Location: IOIBUF_X58_Y0_N8
\server_ip[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(2),
	o => \server_ip[2]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\server_ip[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(3),
	o => \server_ip[3]~input_o\);

-- Location: FF_X107_Y44_N21
\rx_buf[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][3]~q\);

-- Location: FF_X106_Y44_N15
\rx_buf[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[29][2]~q\);

-- Location: LCCOMB_X107_Y44_N20
\rx_is_synack~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~19_combout\ = (\server_ip[2]~input_o\ & (\rx_buf[29][2]~q\ & (\server_ip[3]~input_o\ $ (!\rx_buf[29][3]~q\)))) # (!\server_ip[2]~input_o\ & (!\rx_buf[29][2]~q\ & (\server_ip[3]~input_o\ $ (!\rx_buf[29][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[2]~input_o\,
	datab => \server_ip[3]~input_o\,
	datac => \rx_buf[29][3]~q\,
	datad => \rx_buf[29][2]~q\,
	combout => \rx_is_synack~19_combout\);

-- Location: LCCOMB_X107_Y44_N10
\rx_is_synack~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~22_combout\ = (\rx_is_synack~20_combout\ & (\rx_is_synack~21_combout\ & (\rx_is_synack~18_combout\ & \rx_is_synack~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~20_combout\,
	datab => \rx_is_synack~21_combout\,
	datac => \rx_is_synack~18_combout\,
	datad => \rx_is_synack~19_combout\,
	combout => \rx_is_synack~22_combout\);

-- Location: IOIBUF_X115_Y60_N15
\server_ip[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(12),
	o => \server_ip[12]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\server_ip[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(13),
	o => \server_ip[13]~input_o\);

-- Location: LCCOMB_X106_Y44_N14
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\Add2~0_combout\ & !\Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X106_Y44_N8
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\Add2~6_combout\ & (\Add2~4_combout\ & (\Decoder0~10_combout\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \Decoder0~10_combout\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~11_combout\);

-- Location: FF_X106_Y44_N13
\rx_buf[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][5]~q\);

-- Location: FF_X106_Y44_N11
\rx_buf[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][4]~q\);

-- Location: LCCOMB_X106_Y44_N12
\rx_is_synack~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~15_combout\ = (\server_ip[12]~input_o\ & (\rx_buf[28][4]~q\ & (\server_ip[13]~input_o\ $ (!\rx_buf[28][5]~q\)))) # (!\server_ip[12]~input_o\ & (!\rx_buf[28][4]~q\ & (\server_ip[13]~input_o\ $ (!\rx_buf[28][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[12]~input_o\,
	datab => \server_ip[13]~input_o\,
	datac => \rx_buf[28][5]~q\,
	datad => \rx_buf[28][4]~q\,
	combout => \rx_is_synack~15_combout\);

-- Location: IOIBUF_X115_Y59_N15
\server_ip[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(9),
	o => \server_ip[9]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\server_ip[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(8),
	o => \server_ip[8]~input_o\);

-- Location: FF_X106_Y44_N5
\rx_buf[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][1]~q\);

-- Location: FF_X106_Y44_N3
\rx_buf[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][0]~q\);

-- Location: LCCOMB_X106_Y44_N4
\rx_is_synack~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~13_combout\ = (\server_ip[9]~input_o\ & (\rx_buf[28][1]~q\ & (\server_ip[8]~input_o\ $ (!\rx_buf[28][0]~q\)))) # (!\server_ip[9]~input_o\ & (!\rx_buf[28][1]~q\ & (\server_ip[8]~input_o\ $ (!\rx_buf[28][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[9]~input_o\,
	datab => \server_ip[8]~input_o\,
	datac => \rx_buf[28][1]~q\,
	datad => \rx_buf[28][0]~q\,
	combout => \rx_is_synack~13_combout\);

-- Location: IOIBUF_X115_Y42_N15
\server_ip[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(11),
	o => \server_ip[11]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\server_ip[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(10),
	o => \server_ip[10]~input_o\);

-- Location: FF_X106_Y44_N1
\rx_buf[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][3]~q\);

-- Location: FF_X106_Y44_N19
\rx_buf[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][2]~q\);

-- Location: LCCOMB_X106_Y44_N0
\rx_is_synack~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~14_combout\ = (\server_ip[11]~input_o\ & (\rx_buf[28][3]~q\ & (\server_ip[10]~input_o\ $ (!\rx_buf[28][2]~q\)))) # (!\server_ip[11]~input_o\ & (!\rx_buf[28][3]~q\ & (\server_ip[10]~input_o\ $ (!\rx_buf[28][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[11]~input_o\,
	datab => \server_ip[10]~input_o\,
	datac => \rx_buf[28][3]~q\,
	datad => \rx_buf[28][2]~q\,
	combout => \rx_is_synack~14_combout\);

-- Location: IOIBUF_X107_Y73_N15
\server_ip[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(15),
	o => \server_ip[15]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\server_ip[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_ip(14),
	o => \server_ip[14]~input_o\);

-- Location: FF_X106_Y44_N31
\rx_buf[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][6]~q\);

-- Location: LCCOMB_X106_Y44_N28
\rx_buf[28][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[28][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[28][7]~feeder_combout\);

-- Location: FF_X106_Y44_N29
\rx_buf[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[28][7]~feeder_combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[28][7]~q\);

-- Location: LCCOMB_X106_Y44_N30
\rx_is_synack~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~16_combout\ = (\server_ip[15]~input_o\ & (\rx_buf[28][7]~q\ & (\server_ip[14]~input_o\ $ (!\rx_buf[28][6]~q\)))) # (!\server_ip[15]~input_o\ & (!\rx_buf[28][7]~q\ & (\server_ip[14]~input_o\ $ (!\rx_buf[28][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_ip[15]~input_o\,
	datab => \server_ip[14]~input_o\,
	datac => \rx_buf[28][6]~q\,
	datad => \rx_buf[28][7]~q\,
	combout => \rx_is_synack~16_combout\);

-- Location: LCCOMB_X107_Y44_N24
\rx_is_synack~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~17_combout\ = (\rx_is_synack~15_combout\ & (\rx_is_synack~13_combout\ & (\rx_is_synack~14_combout\ & \rx_is_synack~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~15_combout\,
	datab => \rx_is_synack~13_combout\,
	datac => \rx_is_synack~14_combout\,
	datad => \rx_is_synack~16_combout\,
	combout => \rx_is_synack~17_combout\);

-- Location: IOIBUF_X109_Y73_N1
\server_port[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(5),
	o => \server_port[5]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\server_port[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(4),
	o => \server_port[4]~input_o\);

-- Location: LCCOMB_X107_Y44_N8
\Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (\Add2~2_combout\ & (\Add2~0_combout\ & !\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~16_combout\);

-- Location: LCCOMB_X107_Y44_N6
\Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (\Add2~10_combout\ & (\Decoder0~16_combout\ & (\Decoder0~4_combout\ & !\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Decoder0~16_combout\,
	datac => \Decoder0~4_combout\,
	datad => \Add2~6_combout\,
	combout => \Decoder0~17_combout\);

-- Location: FF_X107_Y44_N23
\rx_buf[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][4]~q\);

-- Location: LCCOMB_X107_Y44_N12
\rx_buf[35][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[35][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_buf[35][5]~feeder_combout\);

-- Location: FF_X107_Y44_N13
\rx_buf[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[35][5]~feeder_combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][5]~q\);

-- Location: LCCOMB_X107_Y44_N22
\rx_is_synack~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~30_combout\ = (\server_port[5]~input_o\ & (\rx_buf[35][5]~q\ & (\server_port[4]~input_o\ $ (!\rx_buf[35][4]~q\)))) # (!\server_port[5]~input_o\ & (!\rx_buf[35][5]~q\ & (\server_port[4]~input_o\ $ (!\rx_buf[35][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[5]~input_o\,
	datab => \server_port[4]~input_o\,
	datac => \rx_buf[35][4]~q\,
	datad => \rx_buf[35][5]~q\,
	combout => \rx_is_synack~30_combout\);

-- Location: IOIBUF_X115_Y40_N8
\server_port[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(0),
	o => \server_port[0]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\server_port[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(1),
	o => \server_port[1]~input_o\);

-- Location: FF_X107_Y44_N3
\rx_buf[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][0]~q\);

-- Location: LCCOMB_X107_Y44_N28
\rx_buf[35][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[35][1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \rx_buf[35][1]~feeder_combout\);

-- Location: FF_X107_Y44_N29
\rx_buf[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[35][1]~feeder_combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][1]~q\);

-- Location: LCCOMB_X107_Y44_N2
\rx_is_synack~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~28_combout\ = (\server_port[0]~input_o\ & (\rx_buf[35][0]~q\ & (\server_port[1]~input_o\ $ (!\rx_buf[35][1]~q\)))) # (!\server_port[0]~input_o\ & (!\rx_buf[35][0]~q\ & (\server_port[1]~input_o\ $ (!\rx_buf[35][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[0]~input_o\,
	datab => \server_port[1]~input_o\,
	datac => \rx_buf[35][0]~q\,
	datad => \rx_buf[35][1]~q\,
	combout => \rx_is_synack~28_combout\);

-- Location: IOIBUF_X115_Y48_N1
\server_port[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(3),
	o => \server_port[3]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\server_port[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(2),
	o => \server_port[2]~input_o\);

-- Location: FF_X107_Y44_N27
\rx_buf[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][2]~q\);

-- Location: FF_X107_Y44_N1
\rx_buf[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][3]~q\);

-- Location: LCCOMB_X107_Y44_N26
\rx_is_synack~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~29_combout\ = (\server_port[3]~input_o\ & (\rx_buf[35][3]~q\ & (\server_port[2]~input_o\ $ (!\rx_buf[35][2]~q\)))) # (!\server_port[3]~input_o\ & (!\rx_buf[35][3]~q\ & (\server_port[2]~input_o\ $ (!\rx_buf[35][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[3]~input_o\,
	datab => \server_port[2]~input_o\,
	datac => \rx_buf[35][2]~q\,
	datad => \rx_buf[35][3]~q\,
	combout => \rx_is_synack~29_combout\);

-- Location: IOIBUF_X115_Y49_N8
\server_port[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(7),
	o => \server_port[7]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\server_port[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(6),
	o => \server_port[6]~input_o\);

-- Location: FF_X107_Y44_N19
\rx_buf[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][6]~q\);

-- Location: LCCOMB_X107_Y44_N16
\rx_buf[35][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[35][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[35][7]~feeder_combout\);

-- Location: FF_X107_Y44_N17
\rx_buf[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[35][7]~feeder_combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[35][7]~q\);

-- Location: LCCOMB_X107_Y44_N18
\rx_is_synack~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~31_combout\ = (\server_port[7]~input_o\ & (\rx_buf[35][7]~q\ & (\server_port[6]~input_o\ $ (!\rx_buf[35][6]~q\)))) # (!\server_port[7]~input_o\ & (!\rx_buf[35][7]~q\ & (\server_port[6]~input_o\ $ (!\rx_buf[35][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[7]~input_o\,
	datab => \server_port[6]~input_o\,
	datac => \rx_buf[35][6]~q\,
	datad => \rx_buf[35][7]~q\,
	combout => \rx_is_synack~31_combout\);

-- Location: LCCOMB_X107_Y44_N4
\rx_is_synack~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~32_combout\ = (\rx_is_synack~30_combout\ & (\rx_is_synack~28_combout\ & (\rx_is_synack~29_combout\ & \rx_is_synack~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~30_combout\,
	datab => \rx_is_synack~28_combout\,
	datac => \rx_is_synack~29_combout\,
	datad => \rx_is_synack~31_combout\,
	combout => \rx_is_synack~32_combout\);

-- Location: IOIBUF_X115_Y56_N22
\server_port[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(14),
	o => \server_port[14]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\server_port[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(15),
	o => \server_port[15]~input_o\);

-- Location: LCCOMB_X103_Y44_N30
\Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\Add2~2_combout\ & (!\Add2~0_combout\ & !\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X103_Y44_N20
\Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!\Add2~6_combout\ & (\Add2~10_combout\ & (\Decoder0~14_combout\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~10_combout\,
	datac => \Decoder0~14_combout\,
	datad => \Decoder0~4_combout\,
	combout => \Decoder0~15_combout\);

-- Location: FF_X108_Y44_N21
\rx_buf[34][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][6]~q\);

-- Location: LCCOMB_X108_Y44_N6
\rx_buf[34][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[34][7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \rx_buf[34][7]~feeder_combout\);

-- Location: FF_X108_Y44_N7
\rx_buf[34][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[34][7]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][7]~q\);

-- Location: LCCOMB_X108_Y44_N20
\rx_is_synack~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~26_combout\ = (\server_port[14]~input_o\ & (\rx_buf[34][6]~q\ & (\server_port[15]~input_o\ $ (!\rx_buf[34][7]~q\)))) # (!\server_port[14]~input_o\ & (!\rx_buf[34][6]~q\ & (\server_port[15]~input_o\ $ (!\rx_buf[34][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[14]~input_o\,
	datab => \server_port[15]~input_o\,
	datac => \rx_buf[34][6]~q\,
	datad => \rx_buf[34][7]~q\,
	combout => \rx_is_synack~26_combout\);

-- Location: IOIBUF_X115_Y65_N22
\server_port[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(13),
	o => \server_port[13]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\server_port[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(12),
	o => \server_port[12]~input_o\);

-- Location: FF_X108_Y44_N9
\rx_buf[34][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][4]~q\);

-- Location: LCCOMB_X108_Y44_N2
\rx_buf[34][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[34][5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \rx_buf[34][5]~feeder_combout\);

-- Location: FF_X108_Y44_N3
\rx_buf[34][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[34][5]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][5]~q\);

-- Location: LCCOMB_X108_Y44_N8
\rx_is_synack~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~25_combout\ = (\server_port[13]~input_o\ & (\rx_buf[34][5]~q\ & (\server_port[12]~input_o\ $ (!\rx_buf[34][4]~q\)))) # (!\server_port[13]~input_o\ & (!\rx_buf[34][5]~q\ & (\server_port[12]~input_o\ $ (!\rx_buf[34][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[13]~input_o\,
	datab => \server_port[12]~input_o\,
	datac => \rx_buf[34][4]~q\,
	datad => \rx_buf[34][5]~q\,
	combout => \rx_is_synack~25_combout\);

-- Location: IOIBUF_X109_Y73_N8
\server_port[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(11),
	o => \server_port[11]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\server_port[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(10),
	o => \server_port[10]~input_o\);

-- Location: FF_X108_Y44_N5
\rx_buf[34][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][2]~q\);

-- Location: FF_X108_Y44_N11
\rx_buf[34][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][3]~q\);

-- Location: LCCOMB_X108_Y44_N4
\rx_is_synack~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~24_combout\ = (\server_port[11]~input_o\ & (\rx_buf[34][3]~q\ & (\server_port[10]~input_o\ $ (!\rx_buf[34][2]~q\)))) # (!\server_port[11]~input_o\ & (!\rx_buf[34][3]~q\ & (\server_port[10]~input_o\ $ (!\rx_buf[34][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[11]~input_o\,
	datab => \server_port[10]~input_o\,
	datac => \rx_buf[34][2]~q\,
	datad => \rx_buf[34][3]~q\,
	combout => \rx_is_synack~24_combout\);

-- Location: IOIBUF_X115_Y36_N8
\server_port[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(8),
	o => \server_port[8]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\server_port[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_port(9),
	o => \server_port[9]~input_o\);

-- Location: FF_X108_Y44_N25
\rx_buf[34][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][1]~q\);

-- Location: LCCOMB_X103_Y44_N12
\rx_buf[34][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_buf[34][0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \rx_buf[34][0]~feeder_combout\);

-- Location: FF_X103_Y44_N13
\rx_buf[34][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buf[34][0]~feeder_combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_buf[34][0]~q\);

-- Location: LCCOMB_X108_Y44_N24
\rx_is_synack~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~23_combout\ = (\server_port[8]~input_o\ & (\rx_buf[34][0]~q\ & (\server_port[9]~input_o\ $ (!\rx_buf[34][1]~q\)))) # (!\server_port[8]~input_o\ & (!\rx_buf[34][0]~q\ & (\server_port[9]~input_o\ $ (!\rx_buf[34][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \server_port[8]~input_o\,
	datab => \server_port[9]~input_o\,
	datac => \rx_buf[34][1]~q\,
	datad => \rx_buf[34][0]~q\,
	combout => \rx_is_synack~23_combout\);

-- Location: LCCOMB_X108_Y44_N26
\rx_is_synack~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~27_combout\ = (\rx_is_synack~26_combout\ & (\rx_is_synack~25_combout\ & (\rx_is_synack~24_combout\ & \rx_is_synack~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~26_combout\,
	datab => \rx_is_synack~25_combout\,
	datac => \rx_is_synack~24_combout\,
	datad => \rx_is_synack~23_combout\,
	combout => \rx_is_synack~27_combout\);

-- Location: LCCOMB_X107_Y44_N30
\rx_is_synack~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~33_combout\ = (\rx_is_synack~22_combout\ & (\rx_is_synack~17_combout\ & (\rx_is_synack~32_combout\ & \rx_is_synack~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~22_combout\,
	datab => \rx_is_synack~17_combout\,
	datac => \rx_is_synack~32_combout\,
	datad => \rx_is_synack~27_combout\,
	combout => \rx_is_synack~33_combout\);

-- Location: LCCOMB_X100_Y45_N16
\rx_is_synack~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_is_synack~71_combout\ = (\rx_is_synack~54_combout\ & (\rx_is_synack~70_combout\ & (\rx_is_synack~12_combout\ & \rx_is_synack~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_is_synack~54_combout\,
	datab => \rx_is_synack~70_combout\,
	datac => \rx_is_synack~12_combout\,
	datad => \rx_is_synack~33_combout\,
	combout => \rx_is_synack~71_combout\);

-- Location: LCCOMB_X100_Y45_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (\timeout_cnt[6]~36_combout\ & ((\rx_is_synack~71_combout\) # (!\st.EVALUATE_RX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \st.EVALUATE_RX~q\,
	datac => \timeout_cnt[6]~36_combout\,
	datad => \rx_is_synack~71_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X100_Y45_N27
\st.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.IDLE~q\);

-- Location: LCCOMB_X107_Y42_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\connect~input_o\ & (((!\out_ready~input_o\ & \st.PREPARE_SYN~q\)) # (!\st.IDLE~q\))) # (!\connect~input_o\ & (!\out_ready~input_o\ & (\st.PREPARE_SYN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \connect~input_o\,
	datab => \out_ready~input_o\,
	datac => \st.PREPARE_SYN~q\,
	datad => \st.IDLE~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X107_Y42_N3
\st.PREPARE_SYN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.PREPARE_SYN~q\);

-- Location: LCCOMB_X100_Y45_N12
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\out_ready~input_o\ & (\st.EVALUATE_RX~q\ & ((\rx_is_synack~71_combout\)))) # (!\out_ready~input_o\ & ((\st.PREPARE_ACK~q\) # ((\st.EVALUATE_RX~q\ & \rx_is_synack~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \st.EVALUATE_RX~q\,
	datac => \st.PREPARE_ACK~q\,
	datad => \rx_is_synack~71_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X100_Y45_N13
\st.PREPARE_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.PREPARE_ACK~q\);

-- Location: LCCOMB_X108_Y42_N0
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\out_ready~input_o\ & ((\st.PREPARE_ACK~q\) # ((!\Equal17~2_combout\ & \st.TX_ACK~q\)))) # (!\out_ready~input_o\ & (((\st.TX_ACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Equal17~2_combout\,
	datac => \st.TX_ACK~q\,
	datad => \st.PREPARE_ACK~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X108_Y42_N1
\st.TX_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.TX_ACK~q\);

-- Location: LCCOMB_X108_Y42_N20
\out_valid_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_valid_r~0_combout\ = (\st.TX_ACK~q\) # (\st.TX_SYN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.TX_ACK~q\,
	datad => \st.TX_SYN~q\,
	combout => \out_valid_r~0_combout\);

-- Location: LCCOMB_X108_Y42_N24
\tx_idx[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[7]~14_combout\ = ((\out_ready~input_o\ & ((\st.PREPARE_SYN~q\) # (\st.PREPARE_ACK~q\)))) # (!\out_valid_r~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st.PREPARE_SYN~q\,
	datab => \out_ready~input_o\,
	datac => \st.PREPARE_ACK~q\,
	datad => \out_valid_r~0_combout\,
	combout => \tx_idx[7]~14_combout\);

-- Location: LCCOMB_X106_Y42_N14
\tx_idx[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[1]~10_combout\ = (tx_idx(1) & (!\tx_idx[0]~9\)) # (!tx_idx(1) & ((\tx_idx[0]~9\) # (GND)))
-- \tx_idx[1]~11\ = CARRY((!\tx_idx[0]~9\) # (!tx_idx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(1),
	datad => VCC,
	cin => \tx_idx[0]~9\,
	combout => \tx_idx[1]~10_combout\,
	cout => \tx_idx[1]~11\);

-- Location: FF_X106_Y42_N15
\tx_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[1]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(1));

-- Location: LCCOMB_X106_Y42_N16
\tx_idx[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[2]~12_combout\ = (tx_idx(2) & (\tx_idx[1]~11\ $ (GND))) # (!tx_idx(2) & (!\tx_idx[1]~11\ & VCC))
-- \tx_idx[2]~13\ = CARRY((tx_idx(2) & !\tx_idx[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(2),
	datad => VCC,
	cin => \tx_idx[1]~11\,
	combout => \tx_idx[2]~12_combout\,
	cout => \tx_idx[2]~13\);

-- Location: FF_X106_Y42_N17
\tx_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[2]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(2));

-- Location: LCCOMB_X106_Y42_N18
\tx_idx[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[3]~18_combout\ = (tx_idx(3) & (!\tx_idx[2]~13\)) # (!tx_idx(3) & ((\tx_idx[2]~13\) # (GND)))
-- \tx_idx[3]~19\ = CARRY((!\tx_idx[2]~13\) # (!tx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(3),
	datad => VCC,
	cin => \tx_idx[2]~13\,
	combout => \tx_idx[3]~18_combout\,
	cout => \tx_idx[3]~19\);

-- Location: FF_X106_Y42_N19
\tx_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[3]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(3));

-- Location: LCCOMB_X106_Y42_N10
\tx_idx[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[7]~16_combout\ = (tx_idx(3)) # ((tx_idx(2) & ((tx_idx(0)) # (tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => tx_idx(1),
	datad => tx_idx(3),
	combout => \tx_idx[7]~16_combout\);

-- Location: LCCOMB_X106_Y42_N20
\tx_idx[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[4]~20_combout\ = (tx_idx(4) & (\tx_idx[3]~19\ $ (GND))) # (!tx_idx(4) & (!\tx_idx[3]~19\ & VCC))
-- \tx_idx[4]~21\ = CARRY((tx_idx(4) & !\tx_idx[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(4),
	datad => VCC,
	cin => \tx_idx[3]~19\,
	combout => \tx_idx[4]~20_combout\,
	cout => \tx_idx[4]~21\);

-- Location: FF_X106_Y42_N21
\tx_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[4]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(4));

-- Location: LCCOMB_X106_Y42_N22
\tx_idx[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[5]~22_combout\ = (tx_idx(5) & (!\tx_idx[4]~21\)) # (!tx_idx(5) & ((\tx_idx[4]~21\) # (GND)))
-- \tx_idx[5]~23\ = CARRY((!\tx_idx[4]~21\) # (!tx_idx(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(5),
	datad => VCC,
	cin => \tx_idx[4]~21\,
	combout => \tx_idx[5]~22_combout\,
	cout => \tx_idx[5]~23\);

-- Location: FF_X106_Y42_N23
\tx_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[5]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(5));

-- Location: LCCOMB_X106_Y42_N2
\Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (tx_idx(5) & tx_idx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_idx(5),
	datad => tx_idx(4),
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X106_Y42_N24
\tx_idx[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[6]~24_combout\ = (tx_idx(6) & (\tx_idx[5]~23\ $ (GND))) # (!tx_idx(6) & (!\tx_idx[5]~23\ & VCC))
-- \tx_idx[6]~25\ = CARRY((tx_idx(6) & !\tx_idx[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(6),
	datad => VCC,
	cin => \tx_idx[5]~23\,
	combout => \tx_idx[6]~24_combout\,
	cout => \tx_idx[6]~25\);

-- Location: FF_X106_Y42_N25
\tx_idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[6]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(6));

-- Location: LCCOMB_X106_Y42_N26
\tx_idx[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[7]~26_combout\ = tx_idx(7) $ (\tx_idx[6]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(7),
	cin => \tx_idx[6]~25\,
	combout => \tx_idx[7]~26_combout\);

-- Location: FF_X106_Y42_N27
\tx_idx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[7]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(7));

-- Location: LCCOMB_X106_Y42_N8
\tx_idx[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[7]~15_combout\ = ((tx_idx(7)) # (tx_idx(6))) # (!\out_ready~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => tx_idx(7),
	datad => tx_idx(6),
	combout => \tx_idx[7]~15_combout\);

-- Location: LCCOMB_X106_Y42_N4
\tx_idx[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_idx[7]~17_combout\ = (\tx_idx[7]~14_combout\) # ((!\tx_idx[7]~15_combout\ & ((!\Equal17~1_combout\) # (!\tx_idx[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_idx[7]~16_combout\,
	datab => \Equal17~1_combout\,
	datac => \tx_idx[7]~15_combout\,
	datad => \tx_idx[7]~14_combout\,
	combout => \tx_idx[7]~17_combout\);

-- Location: FF_X106_Y42_N13
\tx_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_idx[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \tx_idx[7]~14_combout\,
	ena => \tx_idx[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_idx(0));

-- Location: LCCOMB_X106_Y42_N28
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (!tx_idx(7) & (!tx_idx(6) & (!tx_idx(1) & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(7),
	datab => tx_idx(6),
	datac => tx_idx(1),
	datad => tx_idx(3),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X106_Y42_N0
\Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~2_combout\ = (tx_idx(0) & (tx_idx(2) & (\Equal17~0_combout\ & \Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \Equal17~0_combout\,
	datad => \Equal17~1_combout\,
	combout => \Equal17~2_combout\);

-- Location: LCCOMB_X108_Y42_N12
\st.CONNECTED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \st.CONNECTED~0_combout\ = (\st.CONNECTED~q\) # ((\out_ready~input_o\ & (\Equal17~2_combout\ & \st.TX_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Equal17~2_combout\,
	datac => \st.CONNECTED~q\,
	datad => \st.TX_ACK~q\,
	combout => \st.CONNECTED~0_combout\);

-- Location: FF_X108_Y42_N13
\st.CONNECTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \st.CONNECTED~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \st.CONNECTED~q\);

-- Location: LCCOMB_X101_Y44_N22
\in_ready_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \in_ready_r~0_combout\ = (\st.WAIT_RX~q\) # (\st.RX_FRAME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.WAIT_RX~q\,
	datad => \st.RX_FRAME~q\,
	combout => \in_ready_r~0_combout\);

-- Location: LCCOMB_X107_Y42_N16
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (!tx_idx(4) & (!tx_idx(3) & !tx_idx(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(4),
	datac => tx_idx(3),
	datad => tx_idx(5),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X106_Y43_N30
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\st.TX_ACK~q\ & ((tx_idx(5)) # ((tx_idx(3)) # (tx_idx(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(5),
	datab => tx_idx(3),
	datac => tx_idx(4),
	datad => \st.TX_ACK~q\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X106_Y46_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (tx_idx(1) & tx_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_idx(1),
	datad => tx_idx(5),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X107_Y42_N12
\syn_frame[29][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[29][0]~1_combout\ = (!\reset~input_o\ & \st.PREPARE_SYN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \st.PREPARE_SYN~q\,
	combout => \syn_frame[29][0]~1_combout\);

-- Location: FF_X106_Y43_N17
\syn_frame[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[0]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][0]~q\);

-- Location: LCCOMB_X106_Y43_N16
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\syn_frame[35][0]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[35][0]~q\,
	datad => tx_idx(4),
	combout => \Mux7~1_combout\);

-- Location: FF_X106_Y43_N7
\syn_frame[34][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[8]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][0]~q\);

-- Location: LCCOMB_X106_Y43_N6
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\syn_frame[34][0]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[34][0]~q\,
	datad => tx_idx(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X106_Y45_N0
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ((tx_idx(2)) # (!tx_idx(3))) # (!tx_idx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datad => tx_idx(3),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X105_Y46_N20
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (tx_idx(1) & ((!tx_idx(5)))) # (!tx_idx(1) & ((\Mux5~2_combout\) # (tx_idx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux5~2_combout\,
	datad => tx_idx(5),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X106_Y45_N2
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (tx_idx(4) & ((tx_idx(2)) # ((tx_idx(0)) # (!tx_idx(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => tx_idx(0),
	datad => tx_idx(3),
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\client_mac[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(8),
	o => \client_mac[8]~input_o\);

-- Location: FF_X108_Y45_N9
\syn_frame[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[8]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][0]~q\);

-- Location: IOIBUF_X115_Y14_N8
\client_mac[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(0),
	o => \client_mac[0]~input_o\);

-- Location: FF_X108_Y45_N15
\syn_frame[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[0]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][0]~q\);

-- Location: IOIBUF_X115_Y15_N8
\client_mac[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(24),
	o => \client_mac[24]~input_o\);

-- Location: FF_X108_Y45_N21
\syn_frame[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[24]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][0]~q\);

-- Location: IOIBUF_X115_Y13_N1
\client_mac[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(16),
	o => \client_mac[16]~input_o\);

-- Location: LCCOMB_X108_Y45_N6
\syn_frame[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][0]~feeder_combout\ = \client_mac[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[16]~input_o\,
	combout => \syn_frame[9][0]~feeder_combout\);

-- Location: FF_X108_Y45_N7
\syn_frame[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][0]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][0]~q\);

-- Location: LCCOMB_X108_Y45_N20
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\syn_frame[9][0]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\syn_frame[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[8][0]~q\,
	datad => \syn_frame[9][0]~q\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X108_Y45_N14
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (tx_idx(1) & ((\Mux7~2_combout\ & ((\syn_frame[11][0]~q\))) # (!\Mux7~2_combout\ & (\syn_frame[10][0]~q\)))) # (!tx_idx(1) & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[10][0]~q\,
	datac => \syn_frame[11][0]~q\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X105_Y45_N30
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (tx_idx(2) & (tx_idx(1) & (!tx_idx(0)))) # (!tx_idx(2) & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(2),
	datac => tx_idx(0),
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: FF_X105_Y45_N17
\syn_frame[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[24]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][0]~q\);

-- Location: LCCOMB_X105_Y45_N16
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux5~2_combout\ & ((\Mux7~4_combout\) # ((\Mux5~1_combout\)))) # (!\Mux5~2_combout\ & (((\syn_frame[26][0]~q\ & !\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[26][0]~q\,
	datad => \Mux5~1_combout\,
	combout => \Mux7~5_combout\);

-- Location: FF_X105_Y45_N21
\syn_frame[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[16]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][0]~q\);

-- Location: LCCOMB_X105_Y45_N18
\syn_frame[30][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[30][0]~feeder_combout\ = \server_ip[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[24]~input_o\,
	combout => \syn_frame[30][0]~feeder_combout\);

-- Location: FF_X105_Y45_N19
\syn_frame[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[30][0]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][0]~q\);

-- Location: FF_X105_Y45_N13
\syn_frame[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[16]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][0]~q\);

-- Location: FF_X105_Y44_N5
\syn_frame[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[0]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][0]~q\);

-- Location: FF_X105_Y44_N15
\syn_frame[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[8]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][0]~q\);

-- Location: LCCOMB_X105_Y44_N14
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (tx_idx(0) & ((\syn_frame[29][0]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[28][0]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \syn_frame[29][0]~q\,
	datac => \syn_frame[28][0]~q\,
	datad => tx_idx(1),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X105_Y45_N12
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (tx_idx(1) & ((\Mux7~6_combout\ & ((\syn_frame[31][0]~q\))) # (!\Mux7~6_combout\ & (\syn_frame[30][0]~q\)))) # (!tx_idx(1) & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[30][0]~q\,
	datac => \syn_frame[31][0]~q\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X99_Y45_N20
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (tx_idx(1) & (tx_idx(0) & !tx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => tx_idx(3),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X105_Y45_N10
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((tx_idx(3)) # ((\Mux14~2_combout\ & !tx_idx(2))))) # (!\Mux7~7_combout\ & (((\Mux14~2_combout\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => tx_idx(3),
	datac => \Mux14~2_combout\,
	datad => tx_idx(2),
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X105_Y45_N20
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux5~1_combout\ & ((\Mux7~5_combout\ & ((\Mux7~8_combout\))) # (!\Mux7~5_combout\ & (\syn_frame[27][0]~q\)))) # (!\Mux5~1_combout\ & (\Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux7~5_combout\,
	datac => \syn_frame[27][0]~q\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X105_Y46_N2
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (tx_idx(5) & ((tx_idx(0)) # (!tx_idx(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datad => tx_idx(5),
	combout => \Mux5~4_combout\);

-- Location: FF_X107_Y42_N27
\syn_frame[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[0]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][0]~q\);

-- Location: FF_X107_Y42_N1
\syn_frame[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[0]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][0]~q\);

-- Location: FF_X107_Y42_N7
\syn_frame[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[8]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][0]~q\);

-- Location: LCCOMB_X107_Y42_N0
\Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (tx_idx(0) & (((\syn_frame[37][0]~q\)) # (!tx_idx(2)))) # (!tx_idx(0) & (tx_idx(2) & ((\syn_frame[36][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \syn_frame[37][0]~q\,
	datad => \syn_frame[36][0]~q\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X107_Y42_N26
\Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (tx_idx(3) & (((!\Mux7~10_combout\)) # (!tx_idx(2)))) # (!tx_idx(3) & ((tx_idx(2)) # ((\syn_frame[33][0]~q\ & \Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(2),
	datac => \syn_frame[33][0]~q\,
	datad => \Mux7~10_combout\,
	combout => \Mux7~11_combout\);

-- Location: FF_X107_Y42_N29
\syn_frame[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[8]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][0]~q\);

-- Location: LCCOMB_X107_Y42_N28
\Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (!tx_idx(4) & ((\Mux7~11_combout\ & ((\Mux7~10_combout\))) # (!\Mux7~11_combout\ & (\syn_frame[32][0]~q\ & !\Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~11_combout\,
	datab => tx_idx(4),
	datac => \syn_frame[32][0]~q\,
	datad => \Mux7~10_combout\,
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X106_Y45_N30
\Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & ((\Mux7~12_combout\))) # (!\Mux5~4_combout\ & (\Mux7~9_combout\)))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~9_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux7~12_combout\,
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X106_Y43_N14
\Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (\Mux5~0_combout\ & ((\Mux7~13_combout\ & (\Mux7~1_combout\)) # (!\Mux7~13_combout\ & ((\Mux7~0_combout\))))) # (!\Mux5~0_combout\ & (((\Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux7~1_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux7~13_combout\,
	combout => \Mux7~14_combout\);

-- Location: LCCOMB_X106_Y43_N4
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\st.TX_SYN~q\ & ((tx_idx(5)) # ((tx_idx(3)) # (tx_idx(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(5),
	datab => tx_idx(3),
	datac => tx_idx(4),
	datad => \st.TX_SYN~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X100_Y45_N30
\ack_frame[0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[0][0]~1_combout\ = (!\reset~input_o\ & \st.PREPARE_ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \st.PREPARE_ACK~q\,
	combout => \ack_frame[0][0]~1_combout\);

-- Location: FF_X106_Y43_N1
\ack_frame[34][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[8]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][0]~q\);

-- Location: LCCOMB_X106_Y43_N0
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[34][0]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[34][0]~q\,
	datad => tx_idx(4),
	combout => \Mux15~0_combout\);

-- Location: FF_X106_Y43_N27
\ack_frame[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[0]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][0]~q\);

-- Location: LCCOMB_X106_Y43_N26
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[35][0]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[35][0]~q\,
	datad => tx_idx(4),
	combout => \Mux15~1_combout\);

-- Location: FF_X105_Y45_N9
\ack_frame[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[24]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][0]~q\);

-- Location: FF_X108_Y45_N17
\ack_frame[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[24]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][0]~q\);

-- Location: LCCOMB_X108_Y45_N18
\ack_frame[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[9][0]~feeder_combout\ = \client_mac[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[16]~input_o\,
	combout => \ack_frame[9][0]~feeder_combout\);

-- Location: FF_X108_Y45_N19
\ack_frame[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[9][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][0]~q\);

-- Location: LCCOMB_X108_Y45_N16
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[9][0]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[8][0]~q\,
	datad => \ack_frame[9][0]~q\,
	combout => \Mux15~2_combout\);

-- Location: FF_X108_Y45_N27
\ack_frame[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[0]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][0]~q\);

-- Location: FF_X108_Y45_N29
\ack_frame[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[8]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][0]~q\);

-- Location: LCCOMB_X108_Y45_N26
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (tx_idx(1) & ((\Mux15~2_combout\ & (\ack_frame[11][0]~q\)) # (!\Mux15~2_combout\ & ((\ack_frame[10][0]~q\))))) # (!tx_idx(1) & (\Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux15~2_combout\,
	datac => \ack_frame[11][0]~q\,
	datad => \ack_frame[10][0]~q\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X107_Y45_N12
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (tx_idx(2) & (!tx_idx(0) & ((tx_idx(1))))) # (!tx_idx(2) & (((\Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \Mux15~3_combout\,
	datac => tx_idx(2),
	datad => tx_idx(1),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X105_Y45_N8
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\Mux15~4_combout\))) # (!\Mux5~2_combout\ & (\ack_frame[26][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \ack_frame[26][0]~q\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: FF_X106_Y45_N25
\ack_frame[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[16]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][0]~q\);

-- Location: FF_X107_Y45_N25
\ack_frame[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[8]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][0]~q\);

-- Location: LCCOMB_X107_Y45_N6
\ack_frame[29][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[29][0]~feeder_combout\ = \client_ip[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[0]~input_o\,
	combout => \ack_frame[29][0]~feeder_combout\);

-- Location: FF_X107_Y45_N7
\ack_frame[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[29][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][0]~q\);

-- Location: LCCOMB_X107_Y45_N24
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[29][0]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[28][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[28][0]~q\,
	datad => \ack_frame[29][0]~q\,
	combout => \Mux15~6_combout\);

-- Location: FF_X106_Y45_N27
\ack_frame[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[16]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][0]~q\);

-- Location: LCCOMB_X105_Y45_N14
\ack_frame[30][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[30][0]~feeder_combout\ = \server_ip[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[24]~input_o\,
	combout => \ack_frame[30][0]~feeder_combout\);

-- Location: FF_X105_Y45_N15
\ack_frame[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[30][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][0]~q\);

-- Location: LCCOMB_X106_Y45_N26
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (tx_idx(1) & ((\Mux15~6_combout\ & (\ack_frame[31][0]~q\)) # (!\Mux15~6_combout\ & ((\ack_frame[30][0]~q\))))) # (!tx_idx(1) & (\Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux15~6_combout\,
	datac => \ack_frame[31][0]~q\,
	datad => \ack_frame[30][0]~q\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X106_Y45_N20
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux15~7_combout\ & tx_idx(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~7_combout\,
	datad => tx_idx(3),
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X106_Y45_N24
\Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux15~5_combout\ & (((\Mux15~8_combout\)) # (!\Mux5~1_combout\))) # (!\Mux15~5_combout\ & (\Mux5~1_combout\ & (\ack_frame[27][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux5~1_combout\,
	datac => \ack_frame[27][0]~q\,
	datad => \Mux15~8_combout\,
	combout => \Mux15~9_combout\);

-- Location: FF_X108_Y44_N13
\ack_frame[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[8]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][0]~q\);

-- Location: FF_X108_Y44_N19
\ack_frame[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[0]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][0]~q\);

-- Location: LCCOMB_X108_Y44_N12
\Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\ack_frame[33][0]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\ack_frame[32][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \ack_frame[32][0]~q\,
	datad => \ack_frame[33][0]~q\,
	combout => \Mux15~10_combout\);

-- Location: FF_X108_Y44_N23
\ack_frame[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[0]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][0]~q\);

-- Location: LCCOMB_X108_Y44_N28
\ack_frame[36][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[36][0]~feeder_combout\ = \server_port[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[8]~input_o\,
	combout => \ack_frame[36][0]~feeder_combout\);

-- Location: FF_X108_Y44_N29
\ack_frame[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[36][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][0]~q\);

-- Location: LCCOMB_X108_Y44_N22
\Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (\Mux15~10_combout\ & (((\ack_frame[37][0]~q\)) # (!tx_idx(2)))) # (!\Mux15~10_combout\ & (tx_idx(2) & ((\ack_frame[36][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~10_combout\,
	datab => tx_idx(2),
	datac => \ack_frame[37][0]~q\,
	datad => \ack_frame[36][0]~q\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X106_Y45_N18
\Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (!tx_idx(4) & (!tx_idx(3) & \Mux15~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(3),
	datad => \Mux15~11_combout\,
	combout => \Mux15~12_combout\);

-- Location: LCCOMB_X106_Y45_N16
\Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & ((\Mux15~12_combout\))) # (!\Mux5~4_combout\ & (\Mux15~9_combout\)))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux15~9_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux15~12_combout\,
	combout => \Mux15~13_combout\);

-- Location: LCCOMB_X106_Y43_N28
\Mux15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~14_combout\ = (\Mux5~0_combout\ & ((\Mux15~13_combout\ & ((\Mux15~1_combout\))) # (!\Mux15~13_combout\ & (\Mux15~0_combout\)))) # (!\Mux5~0_combout\ & (((\Mux15~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux15~13_combout\,
	combout => \Mux15~14_combout\);

-- Location: LCCOMB_X106_Y43_N24
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector15~1_combout\ & ((\Mux15~14_combout\) # ((\Mux7~14_combout\ & \Selector15~0_combout\)))) # (!\Selector15~1_combout\ & (\Mux7~14_combout\ & (\Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~1_combout\,
	datab => \Mux7~14_combout\,
	datac => \Selector15~0_combout\,
	datad => \Mux15~14_combout\,
	combout => \Selector15~2_combout\);

-- Location: IOIBUF_X87_Y0_N22
\server_mac[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(8),
	o => \server_mac[8]~input_o\);

-- Location: FF_X107_Y43_N11
\syn_frame[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[8]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][0]~q\);

-- Location: IOIBUF_X111_Y73_N8
\server_mac[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(0),
	o => \server_mac[0]~input_o\);

-- Location: LCCOMB_X107_Y43_N20
\syn_frame[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[5][0]~feeder_combout\ = \server_mac[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[0]~input_o\,
	combout => \syn_frame[5][0]~feeder_combout\);

-- Location: FF_X107_Y43_N21
\syn_frame[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[5][0]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][0]~q\);

-- Location: LCCOMB_X107_Y43_N10
\Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~15_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[5][0]~q\))) # (!tx_idx(0) & (\syn_frame[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[4][0]~q\,
	datad => \syn_frame[5][0]~q\,
	combout => \Mux7~15_combout\);

-- Location: IOIBUF_X115_Y11_N1
\client_mac[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(32),
	o => \client_mac[32]~input_o\);

-- Location: FF_X107_Y43_N9
\syn_frame[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[32]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][0]~q\);

-- Location: IOIBUF_X107_Y73_N22
\client_mac[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(40),
	o => \client_mac[40]~input_o\);

-- Location: LCCOMB_X107_Y43_N18
\syn_frame[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[6][0]~feeder_combout\ = \client_mac[40]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[40]~input_o\,
	combout => \syn_frame[6][0]~feeder_combout\);

-- Location: FF_X107_Y43_N19
\syn_frame[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[6][0]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][0]~q\);

-- Location: LCCOMB_X107_Y43_N8
\Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~16_combout\ = (\Mux7~15_combout\ & (((\syn_frame[7][0]~q\)) # (!tx_idx(1)))) # (!\Mux7~15_combout\ & (tx_idx(1) & ((\syn_frame[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~15_combout\,
	datab => tx_idx(1),
	datac => \syn_frame[7][0]~q\,
	datad => \syn_frame[6][0]~q\,
	combout => \Mux7~16_combout\);

-- Location: IOIBUF_X115_Y32_N8
\server_mac[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(24),
	o => \server_mac[24]~input_o\);

-- Location: LCCOMB_X107_Y39_N8
\syn_frame[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][0]~feeder_combout\ = \server_mac[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[24]~input_o\,
	combout => \syn_frame[2][0]~feeder_combout\);

-- Location: FF_X107_Y39_N9
\syn_frame[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][0]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][0]~q\);

-- Location: IOIBUF_X100_Y0_N22
\server_mac[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(16),
	o => \server_mac[16]~input_o\);

-- Location: FF_X107_Y39_N27
\syn_frame[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[16]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][0]~q\);

-- Location: IOIBUF_X115_Y23_N8
\server_mac[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(32),
	o => \server_mac[32]~input_o\);

-- Location: LCCOMB_X107_Y39_N22
\syn_frame[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[1][0]~feeder_combout\ = \server_mac[32]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[32]~input_o\,
	combout => \syn_frame[1][0]~feeder_combout\);

-- Location: FF_X107_Y39_N23
\syn_frame[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[1][0]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][0]~q\);

-- Location: IOIBUF_X115_Y36_N15
\server_mac[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(40),
	o => \server_mac[40]~input_o\);

-- Location: FF_X107_Y39_N21
\syn_frame[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[40]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][0]~q\);

-- Location: LCCOMB_X107_Y39_N20
\Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~17_combout\ = (tx_idx(0) & ((\syn_frame[1][0]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[0][0]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[1][0]~q\,
	datab => tx_idx(0),
	datac => \syn_frame[0][0]~q\,
	datad => tx_idx(1),
	combout => \Mux7~17_combout\);

-- Location: LCCOMB_X107_Y39_N26
\Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~18_combout\ = (tx_idx(1) & ((\Mux7~17_combout\ & ((\syn_frame[3][0]~q\))) # (!\Mux7~17_combout\ & (\syn_frame[2][0]~q\)))) # (!tx_idx(1) & (((\Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[2][0]~q\,
	datac => \syn_frame[3][0]~q\,
	datad => \Mux7~17_combout\,
	combout => \Mux7~18_combout\);

-- Location: LCCOMB_X107_Y43_N22
\Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\st.TX_SYN~q\ & ((tx_idx(2) & (\Mux7~16_combout\)) # (!tx_idx(2) & ((\Mux7~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \st.TX_SYN~q\,
	datac => \Mux7~16_combout\,
	datad => \Mux7~18_combout\,
	combout => \Selector15~4_combout\);

-- Location: LCCOMB_X107_Y43_N30
\ack_frame[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[5][0]~feeder_combout\ = \server_mac[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[0]~input_o\,
	combout => \ack_frame[5][0]~feeder_combout\);

-- Location: FF_X107_Y43_N31
\ack_frame[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[5][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][0]~q\);

-- Location: FF_X107_Y43_N13
\ack_frame[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[8]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][0]~q\);

-- Location: LCCOMB_X107_Y43_N12
\Mux15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~15_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\ack_frame[5][0]~q\)) # (!tx_idx(0) & ((\ack_frame[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[5][0]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[4][0]~q\,
	datad => tx_idx(0),
	combout => \Mux15~15_combout\);

-- Location: FF_X107_Y43_N27
\ack_frame[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[32]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][0]~q\);

-- Location: LCCOMB_X107_Y43_N28
\ack_frame[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[6][0]~feeder_combout\ = \client_mac[40]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[40]~input_o\,
	combout => \ack_frame[6][0]~feeder_combout\);

-- Location: FF_X107_Y43_N29
\ack_frame[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[6][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][0]~q\);

-- Location: LCCOMB_X107_Y43_N26
\Mux15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~16_combout\ = (\Mux15~15_combout\ & (((\ack_frame[7][0]~q\)) # (!tx_idx(1)))) # (!\Mux15~15_combout\ & (tx_idx(1) & ((\ack_frame[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~15_combout\,
	datab => tx_idx(1),
	datac => \ack_frame[7][0]~q\,
	datad => \ack_frame[6][0]~q\,
	combout => \Mux15~16_combout\);

-- Location: LCCOMB_X107_Y39_N18
\ack_frame[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[1][0]~feeder_combout\ = \server_mac[32]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[32]~input_o\,
	combout => \ack_frame[1][0]~feeder_combout\);

-- Location: FF_X107_Y39_N19
\ack_frame[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[1][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][0]~q\);

-- Location: FF_X107_Y39_N25
\ack_frame[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[40]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][0]~q\);

-- Location: LCCOMB_X107_Y39_N24
\Mux15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~17_combout\ = (tx_idx(0) & ((\ack_frame[1][0]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\ack_frame[0][0]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \ack_frame[1][0]~q\,
	datac => \ack_frame[0][0]~q\,
	datad => tx_idx(1),
	combout => \Mux15~17_combout\);

-- Location: FF_X107_Y39_N7
\ack_frame[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[16]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][0]~q\);

-- Location: LCCOMB_X107_Y39_N28
\ack_frame[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][0]~feeder_combout\ = \server_mac[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[24]~input_o\,
	combout => \ack_frame[2][0]~feeder_combout\);

-- Location: FF_X107_Y39_N29
\ack_frame[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][0]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][0]~q\);

-- Location: LCCOMB_X107_Y39_N6
\Mux15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~18_combout\ = (tx_idx(1) & ((\Mux15~17_combout\ & (\ack_frame[3][0]~q\)) # (!\Mux15~17_combout\ & ((\ack_frame[2][0]~q\))))) # (!tx_idx(1) & (\Mux15~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux15~17_combout\,
	datac => \ack_frame[3][0]~q\,
	datad => \ack_frame[2][0]~q\,
	combout => \Mux15~18_combout\);

-- Location: LCCOMB_X107_Y43_N24
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux15~16_combout\)) # (!tx_idx(2) & ((\Mux15~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~16_combout\,
	datab => \Mux15~18_combout\,
	datac => tx_idx(2),
	datad => \st.TX_ACK~q\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X107_Y43_N4
\Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = (\Selector15~2_combout\) # ((\Mux5~5_combout\ & ((\Selector15~4_combout\) # (\Selector15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Selector15~2_combout\,
	datac => \Selector15~4_combout\,
	datad => \Selector15~3_combout\,
	combout => \Selector15~5_combout\);

-- Location: IOIBUF_X115_Y10_N1
\server_mac[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(9),
	o => \server_mac[9]~input_o\);

-- Location: FF_X107_Y41_N25
\ack_frame[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[9]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][1]~q\);

-- Location: IOIBUF_X83_Y0_N1
\server_mac[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(1),
	o => \server_mac[1]~input_o\);

-- Location: FF_X107_Y41_N11
\ack_frame[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[1]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][1]~q\);

-- Location: LCCOMB_X107_Y41_N24
\Mux14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~17_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\ack_frame[5][1]~q\))) # (!tx_idx(0) & (\ack_frame[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[4][1]~q\,
	datad => \ack_frame[5][1]~q\,
	combout => \Mux14~17_combout\);

-- Location: IOIBUF_X115_Y25_N22
\client_mac[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(33),
	o => \client_mac[33]~input_o\);

-- Location: FF_X107_Y41_N7
\ack_frame[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[33]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][1]~q\);

-- Location: IOIBUF_X87_Y0_N15
\client_mac[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(41),
	o => \client_mac[41]~input_o\);

-- Location: LCCOMB_X107_Y41_N28
\ack_frame[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[6][1]~feeder_combout\ = \client_mac[41]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[41]~input_o\,
	combout => \ack_frame[6][1]~feeder_combout\);

-- Location: FF_X107_Y41_N29
\ack_frame[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[6][1]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][1]~q\);

-- Location: LCCOMB_X107_Y41_N6
\Mux14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~18_combout\ = (tx_idx(1) & ((\Mux14~17_combout\ & (\ack_frame[7][1]~q\)) # (!\Mux14~17_combout\ & ((\ack_frame[6][1]~q\))))) # (!tx_idx(1) & (\Mux14~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux14~17_combout\,
	datac => \ack_frame[7][1]~q\,
	datad => \ack_frame[6][1]~q\,
	combout => \Mux14~18_combout\);

-- Location: IOIBUF_X115_Y61_N15
\server_mac[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(25),
	o => \server_mac[25]~input_o\);

-- Location: LCCOMB_X107_Y45_N26
\ack_frame[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][1]~feeder_combout\ = \server_mac[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[25]~input_o\,
	combout => \ack_frame[2][1]~feeder_combout\);

-- Location: FF_X107_Y45_N27
\ack_frame[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][1]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][1]~q\);

-- Location: IOIBUF_X83_Y0_N22
\server_mac[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(33),
	o => \server_mac[33]~input_o\);

-- Location: LCCOMB_X107_Y45_N16
\ack_frame[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[1][1]~feeder_combout\ = \server_mac[33]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[33]~input_o\,
	combout => \ack_frame[1][1]~feeder_combout\);

-- Location: FF_X107_Y45_N17
\ack_frame[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[1][1]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][1]~q\);

-- Location: IOIBUF_X115_Y65_N15
\server_mac[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(41),
	o => \server_mac[41]~input_o\);

-- Location: FF_X107_Y45_N3
\ack_frame[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[41]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][1]~q\);

-- Location: LCCOMB_X107_Y45_N2
\Mux14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~19_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\ack_frame[1][1]~q\)) # (!tx_idx(0) & ((\ack_frame[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[1][1]~q\,
	datac => \ack_frame[0][1]~q\,
	datad => tx_idx(0),
	combout => \Mux14~19_combout\);

-- Location: IOIBUF_X115_Y69_N22
\server_mac[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(17),
	o => \server_mac[17]~input_o\);

-- Location: FF_X107_Y45_N5
\ack_frame[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[17]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][1]~q\);

-- Location: LCCOMB_X107_Y45_N4
\Mux14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~20_combout\ = (\Mux14~19_combout\ & (((\ack_frame[3][1]~q\) # (!tx_idx(1))))) # (!\Mux14~19_combout\ & (\ack_frame[2][1]~q\ & ((tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[2][1]~q\,
	datab => \Mux14~19_combout\,
	datac => \ack_frame[3][1]~q\,
	datad => tx_idx(1),
	combout => \Mux14~20_combout\);

-- Location: LCCOMB_X107_Y41_N12
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux14~18_combout\)) # (!tx_idx(2) & ((\Mux14~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~18_combout\,
	datab => \Mux14~20_combout\,
	datac => tx_idx(2),
	datad => \st.TX_ACK~q\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X108_Y45_N22
\ack_frame[33][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[33][1]~feeder_combout\ = \server_ip[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[1]~input_o\,
	combout => \ack_frame[33][1]~feeder_combout\);

-- Location: FF_X108_Y45_N23
\ack_frame[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[33][1]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][1]~q\);

-- Location: FF_X108_Y45_N5
\ack_frame[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[9]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][1]~q\);

-- Location: LCCOMB_X108_Y45_N4
\Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~12_combout\ = (tx_idx(2) & (((tx_idx(0))))) # (!tx_idx(2) & ((tx_idx(0) & (\ack_frame[33][1]~q\)) # (!tx_idx(0) & ((\ack_frame[32][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[33][1]~q\,
	datab => tx_idx(2),
	datac => \ack_frame[32][1]~q\,
	datad => tx_idx(0),
	combout => \Mux14~12_combout\);

-- Location: FF_X108_Y45_N11
\ack_frame[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[1]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][1]~q\);

-- Location: LCCOMB_X108_Y45_N0
\ack_frame[36][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[36][1]~feeder_combout\ = \server_port[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[9]~input_o\,
	combout => \ack_frame[36][1]~feeder_combout\);

-- Location: FF_X108_Y45_N1
\ack_frame[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[36][1]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][1]~q\);

-- Location: LCCOMB_X108_Y45_N10
\Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~13_combout\ = (\Mux14~12_combout\ & (((\ack_frame[37][1]~q\)) # (!tx_idx(2)))) # (!\Mux14~12_combout\ & (tx_idx(2) & ((\ack_frame[36][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~12_combout\,
	datab => tx_idx(2),
	datac => \ack_frame[37][1]~q\,
	datad => \ack_frame[36][1]~q\,
	combout => \Mux14~13_combout\);

-- Location: LCCOMB_X106_Y45_N14
\Mux14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~14_combout\ = (!tx_idx(4) & ((tx_idx(3) & (tx_idx(0))) # (!tx_idx(3) & ((\Mux14~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(3),
	datac => tx_idx(0),
	datad => \Mux14~13_combout\,
	combout => \Mux14~14_combout\);

-- Location: FF_X107_Y45_N19
\ack_frame[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[25]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][1]~q\);

-- Location: FF_X107_Y45_N9
\ack_frame[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[17]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][1]~q\);

-- Location: FF_X107_Y45_N21
\ack_frame[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[1]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][1]~q\);

-- Location: FF_X107_Y45_N11
\ack_frame[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[9]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][1]~q\);

-- Location: LCCOMB_X107_Y45_N10
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\ack_frame[29][1]~q\)) # (!tx_idx(0) & ((\ack_frame[28][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[29][1]~q\,
	datac => \ack_frame[28][1]~q\,
	datad => tx_idx(0),
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X107_Y45_N8
\Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (tx_idx(1) & ((\Mux14~9_combout\ & ((\ack_frame[31][1]~q\))) # (!\Mux14~9_combout\ & (\ack_frame[30][1]~q\)))) # (!tx_idx(1) & (((\Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[30][1]~q\,
	datac => \ack_frame[31][1]~q\,
	datad => \Mux14~9_combout\,
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X106_Y45_N22
\Mux14~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~21_combout\ = (tx_idx(3) & (((\Mux14~10_combout\)))) # (!tx_idx(3) & (tx_idx(1) & ((tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux14~10_combout\,
	datac => tx_idx(0),
	datad => tx_idx(3),
	combout => \Mux14~21_combout\);

-- Location: IOIBUF_X115_Y66_N22
\client_mac[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(9),
	o => \client_mac[9]~input_o\);

-- Location: FF_X109_Y46_N13
\ack_frame[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[9]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][1]~q\);

-- Location: IOIBUF_X115_Y50_N1
\client_mac[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(1),
	o => \client_mac[1]~input_o\);

-- Location: FF_X109_Y46_N15
\ack_frame[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[1]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][1]~q\);

-- Location: IOIBUF_X115_Y54_N15
\client_mac[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(25),
	o => \client_mac[25]~input_o\);

-- Location: FF_X109_Y46_N21
\ack_frame[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[25]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][1]~q\);

-- Location: IOIBUF_X115_Y62_N8
\client_mac[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(17),
	o => \client_mac[17]~input_o\);

-- Location: LCCOMB_X109_Y46_N6
\ack_frame[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[9][1]~feeder_combout\ = \client_mac[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[17]~input_o\,
	combout => \ack_frame[9][1]~feeder_combout\);

-- Location: FF_X109_Y46_N7
\ack_frame[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[9][1]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][1]~q\);

-- Location: LCCOMB_X109_Y46_N20
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[9][1]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[8][1]~q\,
	datad => \ack_frame[9][1]~q\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X109_Y46_N14
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (tx_idx(1) & ((\Mux14~5_combout\ & ((\ack_frame[11][1]~q\))) # (!\Mux14~5_combout\ & (\ack_frame[10][1]~q\)))) # (!tx_idx(1) & (((\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[10][1]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[11][1]~q\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X106_Y45_N8
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!tx_idx(2) & \Mux14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(2),
	datad => \Mux14~6_combout\,
	combout => \Mux14~7_combout\);

-- Location: FF_X106_Y45_N9
\ack_frame[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[17]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][1]~q\);

-- Location: FF_X106_Y45_N11
\ack_frame[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[25]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][1]~q\);

-- Location: LCCOMB_X106_Y45_N10
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\Mux5~1_combout\ & ((\ack_frame[27][1]~q\) # ((\Mux5~2_combout\)))) # (!\Mux5~1_combout\ & (((\ack_frame[26][1]~q\ & !\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[27][1]~q\,
	datab => \Mux5~1_combout\,
	datac => \ack_frame[26][1]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X106_Y45_N28
\Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~11_combout\ = (\Mux5~2_combout\ & ((\Mux14~8_combout\ & (\Mux14~21_combout\)) # (!\Mux14~8_combout\ & ((\Mux14~7_combout\))))) # (!\Mux5~2_combout\ & (((\Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~21_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux14~7_combout\,
	datad => \Mux14~8_combout\,
	combout => \Mux14~11_combout\);

-- Location: LCCOMB_X106_Y45_N4
\Mux14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~15_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & (\Mux14~14_combout\)) # (!\Mux5~4_combout\ & ((\Mux14~11_combout\))))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux14~14_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux14~11_combout\,
	combout => \Mux14~15_combout\);

-- Location: FF_X106_Y43_N23
\ack_frame[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[1]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][1]~q\);

-- Location: LCCOMB_X106_Y43_N22
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[35][1]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[35][1]~q\,
	datad => tx_idx(4),
	combout => \Mux14~4_combout\);

-- Location: FF_X106_Y43_N13
\ack_frame[34][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[9]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][1]~q\);

-- Location: LCCOMB_X106_Y43_N12
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[34][1]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[34][1]~q\,
	datad => tx_idx(4),
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X106_Y43_N20
\Mux14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~16_combout\ = (\Mux5~0_combout\ & ((\Mux14~15_combout\ & (\Mux14~4_combout\)) # (!\Mux14~15_combout\ & ((\Mux14~3_combout\))))) # (!\Mux5~0_combout\ & (\Mux14~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux14~15_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~16_combout\);

-- Location: LCCOMB_X108_Y45_N12
\syn_frame[36][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[36][1]~feeder_combout\ = \server_port[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[9]~input_o\,
	combout => \syn_frame[36][1]~feeder_combout\);

-- Location: FF_X108_Y45_N13
\syn_frame[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[36][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][1]~q\);

-- Location: FF_X108_Y45_N31
\syn_frame[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[1]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][1]~q\);

-- Location: FF_X108_Y45_N25
\syn_frame[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[9]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][1]~q\);

-- Location: LCCOMB_X108_Y45_N2
\syn_frame[33][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[33][1]~feeder_combout\ = \server_ip[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[1]~input_o\,
	combout => \syn_frame[33][1]~feeder_combout\);

-- Location: FF_X108_Y45_N3
\syn_frame[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[33][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][1]~q\);

-- Location: LCCOMB_X108_Y45_N24
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\syn_frame[33][1]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\syn_frame[32][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \syn_frame[32][1]~q\,
	datad => \syn_frame[33][1]~q\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X108_Y45_N30
\Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (tx_idx(2) & ((\Mux6~10_combout\ & ((\syn_frame[37][1]~q\))) # (!\Mux6~10_combout\ & (\syn_frame[36][1]~q\)))) # (!tx_idx(2) & (((\Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[36][1]~q\,
	datab => tx_idx(2),
	datac => \syn_frame[37][1]~q\,
	datad => \Mux6~10_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X105_Y46_N4
\Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (!tx_idx(4) & (\Mux6~11_combout\ & !tx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(4),
	datac => \Mux6~11_combout\,
	datad => tx_idx(3),
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X105_Y44_N30
\syn_frame[31][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[31][1]~feeder_combout\ = \server_ip[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[17]~input_o\,
	combout => \syn_frame[31][1]~feeder_combout\);

-- Location: FF_X105_Y44_N31
\syn_frame[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[31][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][1]~q\);

-- Location: FF_X105_Y44_N21
\syn_frame[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[25]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][1]~q\);

-- Location: LCCOMB_X105_Y44_N18
\syn_frame[29][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[29][1]~feeder_combout\ = \client_ip[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[1]~input_o\,
	combout => \syn_frame[29][1]~feeder_combout\);

-- Location: FF_X105_Y44_N19
\syn_frame[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[29][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][1]~q\);

-- Location: FF_X105_Y44_N25
\syn_frame[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[9]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][1]~q\);

-- Location: LCCOMB_X105_Y44_N24
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (tx_idx(0) & ((\syn_frame[29][1]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[28][1]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \syn_frame[29][1]~q\,
	datac => \syn_frame[28][1]~q\,
	datad => tx_idx(1),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X105_Y44_N20
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (tx_idx(1) & ((\Mux6~6_combout\ & (\syn_frame[31][1]~q\)) # (!\Mux6~6_combout\ & ((\syn_frame[30][1]~q\))))) # (!tx_idx(1) & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[31][1]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[30][1]~q\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X105_Y45_N2
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((tx_idx(3)) # ((tx_idx(2) & \Mux14~2_combout\)))) # (!\Mux6~7_combout\ & (tx_idx(2) & (\Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => tx_idx(2),
	datac => \Mux14~2_combout\,
	datad => tx_idx(3),
	combout => \Mux6~8_combout\);

-- Location: FF_X105_Y45_N1
\syn_frame[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[17]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][1]~q\);

-- Location: FF_X109_Y46_N9
\syn_frame[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[9]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][1]~q\);

-- Location: FF_X109_Y46_N31
\syn_frame[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[1]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][1]~q\);

-- Location: FF_X109_Y46_N25
\syn_frame[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[25]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][1]~q\);

-- Location: LCCOMB_X109_Y46_N18
\syn_frame[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][1]~feeder_combout\ = \client_mac[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[17]~input_o\,
	combout => \syn_frame[9][1]~feeder_combout\);

-- Location: FF_X109_Y46_N19
\syn_frame[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][1]~q\);

-- Location: LCCOMB_X109_Y46_N24
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\syn_frame[9][1]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\syn_frame[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[8][1]~q\,
	datad => \syn_frame[9][1]~q\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X109_Y46_N30
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (tx_idx(1) & ((\Mux6~2_combout\ & ((\syn_frame[11][1]~q\))) # (!\Mux6~2_combout\ & (\syn_frame[10][1]~q\)))) # (!tx_idx(1) & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[10][1]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[11][1]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X105_Y45_N26
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!tx_idx(2) & \Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(2),
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: FF_X105_Y45_N25
\syn_frame[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[25]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][1]~q\);

-- Location: LCCOMB_X105_Y45_N24
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux5~2_combout\ & ((\Mux6~4_combout\) # ((\Mux5~1_combout\)))) # (!\Mux5~2_combout\ & (((\syn_frame[26][1]~q\ & !\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[26][1]~q\,
	datad => \Mux5~1_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X105_Y45_N0
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux5~1_combout\ & ((\Mux6~5_combout\ & (\Mux6~8_combout\)) # (!\Mux6~5_combout\ & ((\syn_frame[27][1]~q\))))) # (!\Mux5~1_combout\ & (((\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux6~8_combout\,
	datac => \syn_frame[27][1]~q\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X105_Y46_N30
\Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\Mux5~4_combout\ & (((\Mux6~12_combout\)) # (!\Mux5~3_combout\))) # (!\Mux5~4_combout\ & (\Mux5~3_combout\ & ((\Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux6~12_combout\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~13_combout\);

-- Location: FF_X106_Y43_N9
\syn_frame[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[1]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][1]~q\);

-- Location: LCCOMB_X106_Y43_N8
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!tx_idx(4) & ((tx_idx(2) & (tx_idx(3))) # (!tx_idx(2) & (!tx_idx(3) & \syn_frame[35][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[35][1]~q\,
	datad => tx_idx(4),
	combout => \Mux6~1_combout\);

-- Location: FF_X106_Y43_N3
\syn_frame[34][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[9]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][1]~q\);

-- Location: LCCOMB_X106_Y43_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\syn_frame[34][1]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[34][1]~q\,
	datad => tx_idx(4),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X106_Y43_N10
\Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (\Mux5~0_combout\ & ((\Mux6~13_combout\ & (\Mux6~1_combout\)) # (!\Mux6~13_combout\ & ((\Mux6~0_combout\))))) # (!\Mux5~0_combout\ & (\Mux6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux6~13_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X106_Y43_N18
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector15~1_combout\ & ((\Mux14~16_combout\) # ((\Selector15~0_combout\ & \Mux6~14_combout\)))) # (!\Selector15~1_combout\ & (((\Selector15~0_combout\ & \Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~1_combout\,
	datab => \Mux14~16_combout\,
	datac => \Selector15~0_combout\,
	datad => \Mux6~14_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X107_Y45_N22
\syn_frame[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][1]~feeder_combout\ = \server_mac[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[25]~input_o\,
	combout => \syn_frame[2][1]~feeder_combout\);

-- Location: FF_X107_Y45_N23
\syn_frame[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][1]~q\);

-- Location: LCCOMB_X107_Y45_N28
\syn_frame[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[1][1]~feeder_combout\ = \server_mac[33]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[33]~input_o\,
	combout => \syn_frame[1][1]~feeder_combout\);

-- Location: FF_X107_Y45_N29
\syn_frame[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[1][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][1]~q\);

-- Location: FF_X107_Y45_N15
\syn_frame[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[41]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][1]~q\);

-- Location: LCCOMB_X107_Y45_N14
\Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\syn_frame[1][1]~q\)) # (!tx_idx(0) & ((\syn_frame[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[1][1]~q\,
	datac => \syn_frame[0][1]~q\,
	datad => tx_idx(0),
	combout => \Mux6~17_combout\);

-- Location: FF_X107_Y45_N1
\syn_frame[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[17]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][1]~q\);

-- Location: LCCOMB_X107_Y45_N0
\Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (\Mux6~17_combout\ & (((\syn_frame[3][1]~q\) # (!tx_idx(1))))) # (!\Mux6~17_combout\ & (\syn_frame[2][1]~q\ & ((tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[2][1]~q\,
	datab => \Mux6~17_combout\,
	datac => \syn_frame[3][1]~q\,
	datad => tx_idx(1),
	combout => \Mux6~18_combout\);

-- Location: FF_X107_Y41_N3
\syn_frame[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[9]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][1]~q\);

-- Location: FF_X107_Y41_N17
\syn_frame[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[1]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][1]~q\);

-- Location: LCCOMB_X107_Y41_N2
\Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[5][1]~q\))) # (!tx_idx(0) & (\syn_frame[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[4][1]~q\,
	datad => \syn_frame[5][1]~q\,
	combout => \Mux6~15_combout\);

-- Location: FF_X107_Y41_N21
\syn_frame[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[33]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][1]~q\);

-- Location: LCCOMB_X107_Y41_N18
\syn_frame[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[6][1]~feeder_combout\ = \client_mac[41]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[41]~input_o\,
	combout => \syn_frame[6][1]~feeder_combout\);

-- Location: FF_X107_Y41_N19
\syn_frame[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[6][1]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][1]~q\);

-- Location: LCCOMB_X107_Y41_N20
\Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (tx_idx(1) & ((\Mux6~15_combout\ & (\syn_frame[7][1]~q\)) # (!\Mux6~15_combout\ & ((\syn_frame[6][1]~q\))))) # (!tx_idx(1) & (\Mux6~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux6~15_combout\,
	datac => \syn_frame[7][1]~q\,
	datad => \syn_frame[6][1]~q\,
	combout => \Mux6~16_combout\);

-- Location: LCCOMB_X107_Y41_N22
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\st.TX_SYN~q\ & ((tx_idx(2) & ((\Mux6~16_combout\))) # (!tx_idx(2) & (\Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~18_combout\,
	datab => tx_idx(2),
	datac => \st.TX_SYN~q\,
	datad => \Mux6~16_combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X107_Y41_N4
\Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~0_combout\) # ((\Mux5~5_combout\ & ((\Selector14~1_combout\) # (\Selector14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~1_combout\,
	datab => \Selector14~0_combout\,
	datac => \Selector14~2_combout\,
	datad => \Mux5~5_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X99_Y45_N15
\ack_frame[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[18]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][2]~q\);

-- Location: FF_X105_Y45_N7
\ack_frame[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[26]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][2]~q\);

-- Location: LCCOMB_X105_Y45_N6
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux5~2_combout\ & (((\Mux5~1_combout\)))) # (!\Mux5~2_combout\ & ((\Mux5~1_combout\ & (\ack_frame[27][2]~q\)) # (!\Mux5~1_combout\ & ((\ack_frame[26][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[27][2]~q\,
	datab => \Mux5~2_combout\,
	datac => \ack_frame[26][2]~q\,
	datad => \Mux5~1_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X106_Y38_N4
\ack_frame[29][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[29][2]~feeder_combout\ = \client_ip[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[2]~input_o\,
	combout => \ack_frame[29][2]~feeder_combout\);

-- Location: FF_X106_Y38_N5
\ack_frame[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[29][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][2]~q\);

-- Location: FF_X105_Y38_N21
\ack_frame[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[10]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][2]~q\);

-- Location: LCCOMB_X105_Y38_N20
\Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~10_combout\ = (tx_idx(0) & ((\ack_frame[29][2]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\ack_frame[28][2]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[29][2]~q\,
	datab => tx_idx(0),
	datac => \ack_frame[28][2]~q\,
	datad => tx_idx(1),
	combout => \Mux13~10_combout\);

-- Location: FF_X99_Y45_N7
\ack_frame[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[18]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][2]~q\);

-- Location: LCCOMB_X99_Y45_N0
\ack_frame[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[30][2]~feeder_combout\ = \server_ip[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[26]~input_o\,
	combout => \ack_frame[30][2]~feeder_combout\);

-- Location: FF_X99_Y45_N1
\ack_frame[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[30][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][2]~q\);

-- Location: LCCOMB_X99_Y45_N6
\Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~11_combout\ = (tx_idx(1) & ((\Mux13~10_combout\ & (\ack_frame[31][2]~q\)) # (!\Mux13~10_combout\ & ((\ack_frame[30][2]~q\))))) # (!tx_idx(1) & (\Mux13~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux13~10_combout\,
	datac => \ack_frame[31][2]~q\,
	datad => \ack_frame[30][2]~q\,
	combout => \Mux13~11_combout\);

-- Location: LCCOMB_X99_Y45_N8
\Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~12_combout\ = (\Mux13~11_combout\ & ((tx_idx(3)) # ((tx_idx(2) & \Mux14~2_combout\)))) # (!\Mux13~11_combout\ & (((tx_idx(2) & \Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~11_combout\,
	datab => tx_idx(3),
	datac => tx_idx(2),
	datad => \Mux14~2_combout\,
	combout => \Mux13~12_combout\);

-- Location: IOIBUF_X115_Y16_N1
\client_mac[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(26),
	o => \client_mac[26]~input_o\);

-- Location: FF_X108_Y37_N17
\ack_frame[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[26]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][2]~q\);

-- Location: IOIBUF_X115_Y30_N1
\client_mac[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(18),
	o => \client_mac[18]~input_o\);

-- Location: LCCOMB_X108_Y37_N2
\ack_frame[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[9][2]~feeder_combout\ = \client_mac[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[18]~input_o\,
	combout => \ack_frame[9][2]~feeder_combout\);

-- Location: FF_X108_Y37_N3
\ack_frame[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[9][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][2]~q\);

-- Location: LCCOMB_X108_Y37_N16
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\ack_frame[9][2]~q\))) # (!tx_idx(0) & (\ack_frame[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[8][2]~q\,
	datad => \ack_frame[9][2]~q\,
	combout => \Mux13~6_combout\);

-- Location: IOIBUF_X115_Y33_N1
\client_mac[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(2),
	o => \client_mac[2]~input_o\);

-- Location: FF_X108_Y37_N27
\ack_frame[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[2]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][2]~q\);

-- Location: IOIBUF_X115_Y29_N8
\client_mac[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(10),
	o => \client_mac[10]~input_o\);

-- Location: LCCOMB_X108_Y37_N28
\ack_frame[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[10][2]~feeder_combout\ = \client_mac[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[10]~input_o\,
	combout => \ack_frame[10][2]~feeder_combout\);

-- Location: FF_X108_Y37_N29
\ack_frame[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[10][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][2]~q\);

-- Location: LCCOMB_X108_Y37_N26
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (tx_idx(1) & ((\Mux13~6_combout\ & (\ack_frame[11][2]~q\)) # (!\Mux13~6_combout\ & ((\ack_frame[10][2]~q\))))) # (!tx_idx(1) & (\Mux13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux13~6_combout\,
	datac => \ack_frame[11][2]~q\,
	datad => \ack_frame[10][2]~q\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X105_Y45_N28
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (tx_idx(2) & (tx_idx(1) & (!tx_idx(0)))) # (!tx_idx(2) & (((\Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(2),
	datac => tx_idx(0),
	datad => \Mux13~7_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X105_Y45_N4
\Mux13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~13_combout\ = (\Mux13~9_combout\ & (((\Mux13~12_combout\)) # (!\Mux5~2_combout\))) # (!\Mux13~9_combout\ & (\Mux5~2_combout\ & ((\Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~9_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux13~12_combout\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~13_combout\);

-- Location: LCCOMB_X101_Y43_N16
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!tx_idx(2) & !tx_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datac => tx_idx(0),
	combout => \Selector16~0_combout\);

-- Location: FF_X101_Y43_N15
\ack_frame[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[10]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][2]~q\);

-- Location: LCCOMB_X101_Y43_N0
\ack_frame[33][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[33][2]~feeder_combout\ = \server_ip[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[2]~input_o\,
	combout => \ack_frame[33][2]~feeder_combout\);

-- Location: FF_X101_Y43_N1
\ack_frame[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[33][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][2]~q\);

-- Location: LCCOMB_X101_Y43_N14
\Mux13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~14_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\ack_frame[33][2]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\ack_frame[32][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \ack_frame[32][2]~q\,
	datad => \ack_frame[33][2]~q\,
	combout => \Mux13~14_combout\);

-- Location: FF_X101_Y43_N25
\ack_frame[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[2]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][2]~q\);

-- Location: FF_X101_Y43_N19
\ack_frame[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[10]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][2]~q\);

-- Location: LCCOMB_X101_Y43_N24
\Mux13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~15_combout\ = (tx_idx(2) & ((\Mux13~14_combout\ & (\ack_frame[37][2]~q\)) # (!\Mux13~14_combout\ & ((\ack_frame[36][2]~q\))))) # (!tx_idx(2) & (\Mux13~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux13~14_combout\,
	datac => \ack_frame[37][2]~q\,
	datad => \ack_frame[36][2]~q\,
	combout => \Mux13~15_combout\);

-- Location: LCCOMB_X101_Y43_N22
\Mux13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~16_combout\ = (tx_idx(4) & (\Selector16~0_combout\)) # (!tx_idx(4) & (((!tx_idx(3) & \Mux13~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => \Selector16~0_combout\,
	datac => tx_idx(3),
	datad => \Mux13~15_combout\,
	combout => \Mux13~16_combout\);

-- Location: LCCOMB_X103_Y43_N6
\Mux13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~17_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & ((\Mux13~16_combout\))) # (!\Mux5~4_combout\ & (\Mux13~13_combout\)))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~13_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux13~16_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux13~17_combout\);

-- Location: FF_X102_Y42_N1
\ack_frame[34][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[10]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][2]~q\);

-- Location: LCCOMB_X102_Y42_N0
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[34][2]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[34][2]~q\,
	datad => tx_idx(4),
	combout => \Mux13~4_combout\);

-- Location: FF_X103_Y43_N13
\ack_frame[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[2]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][2]~q\);

-- Location: LCCOMB_X103_Y43_N12
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (!tx_idx(3) & (!tx_idx(4) & (\ack_frame[35][2]~q\ & !tx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \ack_frame[35][2]~q\,
	datad => tx_idx(2),
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X103_Y43_N4
\Mux13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~18_combout\ = (\Mux13~17_combout\ & (((\Mux13~5_combout\) # (!\Mux5~0_combout\)))) # (!\Mux13~17_combout\ & (\Mux13~4_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~17_combout\,
	datab => \Mux13~4_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~18_combout\);

-- Location: LCCOMB_X105_Y42_N28
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector15~1_combout\ & \Mux13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector15~1_combout\,
	datad => \Mux13~18_combout\,
	combout => \Selector13~3_combout\);

-- Location: IOIBUF_X115_Y31_N1
\server_mac[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(34),
	o => \server_mac[34]~input_o\);

-- Location: FF_X109_Y38_N9
\syn_frame[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[34]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][2]~q\);

-- Location: IOIBUF_X115_Y30_N8
\server_mac[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(18),
	o => \server_mac[18]~input_o\);

-- Location: FF_X109_Y38_N31
\syn_frame[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[18]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][2]~q\);

-- Location: IOIBUF_X115_Y4_N15
\server_mac[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(42),
	o => \server_mac[42]~input_o\);

-- Location: FF_X109_Y38_N25
\syn_frame[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[42]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][2]~q\);

-- Location: IOIBUF_X113_Y0_N1
\server_mac[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(26),
	o => \server_mac[26]~input_o\);

-- Location: LCCOMB_X109_Y38_N6
\syn_frame[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][2]~feeder_combout\ = \server_mac[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[26]~input_o\,
	combout => \syn_frame[2][2]~feeder_combout\);

-- Location: FF_X109_Y38_N7
\syn_frame[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][2]~q\);

-- Location: LCCOMB_X109_Y38_N24
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\syn_frame[2][2]~q\))) # (!tx_idx(1) & (\syn_frame[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[0][2]~q\,
	datad => \syn_frame[2][2]~q\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X109_Y38_N30
\Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (tx_idx(0) & ((\Mux5~8_combout\ & ((\syn_frame[3][2]~q\))) # (!\Mux5~8_combout\ & (\syn_frame[1][2]~q\)))) # (!tx_idx(0) & (((\Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \syn_frame[1][2]~q\,
	datac => \syn_frame[3][2]~q\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~9_combout\);

-- Location: IOIBUF_X115_Y31_N8
\server_mac[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(2),
	o => \server_mac[2]~input_o\);

-- Location: LCCOMB_X109_Y38_N22
\syn_frame[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[5][2]~feeder_combout\ = \server_mac[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[2]~input_o\,
	combout => \syn_frame[5][2]~feeder_combout\);

-- Location: FF_X109_Y38_N23
\syn_frame[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[5][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][2]~q\);

-- Location: IOIBUF_X115_Y27_N8
\server_mac[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(10),
	o => \server_mac[10]~input_o\);

-- Location: FF_X109_Y38_N1
\syn_frame[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[10]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][2]~q\);

-- Location: LCCOMB_X109_Y38_N0
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\syn_frame[5][2]~q\)) # (!tx_idx(0) & ((\syn_frame[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[5][2]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[4][2]~q\,
	datad => tx_idx(0),
	combout => \Mux5~6_combout\);

-- Location: IOIBUF_X115_Y20_N8
\client_mac[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(34),
	o => \client_mac[34]~input_o\);

-- Location: FF_X109_Y38_N27
\syn_frame[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[34]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][2]~q\);

-- Location: IOIBUF_X115_Y34_N22
\client_mac[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(42),
	o => \client_mac[42]~input_o\);

-- Location: FF_X109_Y38_N29
\syn_frame[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[42]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][2]~q\);

-- Location: LCCOMB_X109_Y38_N26
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (tx_idx(1) & ((\Mux5~6_combout\ & (\syn_frame[7][2]~q\)) # (!\Mux5~6_combout\ & ((\syn_frame[6][2]~q\))))) # (!tx_idx(1) & (\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux5~6_combout\,
	datac => \syn_frame[7][2]~q\,
	datad => \syn_frame[6][2]~q\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X108_Y42_N26
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\st.TX_SYN~q\ & ((tx_idx(2) & ((\Mux5~7_combout\))) # (!tx_idx(2) & (\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st.TX_SYN~q\,
	datab => tx_idx(2),
	datac => \Mux5~9_combout\,
	datad => \Mux5~7_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X109_Y38_N13
\ack_frame[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[42]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][2]~q\);

-- Location: FF_X109_Y38_N11
\ack_frame[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[34]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][2]~q\);

-- Location: LCCOMB_X109_Y38_N12
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[1][2]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[0][2]~q\,
	datad => \ack_frame[1][2]~q\,
	combout => \Mux13~2_combout\);

-- Location: FF_X109_Y38_N15
\ack_frame[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[18]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][2]~q\);

-- Location: LCCOMB_X109_Y38_N16
\ack_frame[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][2]~feeder_combout\ = \server_mac[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[26]~input_o\,
	combout => \ack_frame[2][2]~feeder_combout\);

-- Location: FF_X109_Y38_N17
\ack_frame[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][2]~q\);

-- Location: LCCOMB_X109_Y38_N14
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (((\ack_frame[3][2]~q\)) # (!tx_idx(1)))) # (!\Mux13~2_combout\ & (tx_idx(1) & ((\ack_frame[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => tx_idx(1),
	datac => \ack_frame[3][2]~q\,
	datad => \ack_frame[2][2]~q\,
	combout => \Mux13~3_combout\);

-- Location: FF_X109_Y38_N5
\ack_frame[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[42]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][2]~q\);

-- Location: FF_X109_Y38_N19
\ack_frame[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[34]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][2]~q\);

-- Location: FF_X109_Y38_N21
\ack_frame[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[10]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][2]~q\);

-- Location: LCCOMB_X109_Y38_N2
\ack_frame[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[5][2]~feeder_combout\ = \server_mac[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[2]~input_o\,
	combout => \ack_frame[5][2]~feeder_combout\);

-- Location: FF_X109_Y38_N3
\ack_frame[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[5][2]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][2]~q\);

-- Location: LCCOMB_X109_Y38_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[5][2]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[4][2]~q\,
	datad => \ack_frame[5][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X109_Y38_N18
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (tx_idx(1) & ((\Mux13~0_combout\ & ((\ack_frame[7][2]~q\))) # (!\Mux13~0_combout\ & (\ack_frame[6][2]~q\)))) # (!tx_idx(1) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[6][2]~q\,
	datac => \ack_frame[7][2]~q\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X109_Y38_N4
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (tx_idx(2) & ((\Mux13~1_combout\))) # (!tx_idx(2) & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux13~3_combout\,
	datad => \Mux13~1_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X108_Y42_N28
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Mux5~5_combout\ & ((\Selector13~0_combout\) # ((\st.TX_ACK~q\ & \Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \st.TX_ACK~q\,
	datac => \Mux5~5_combout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~2_combout\);

-- Location: FF_X102_Y42_N7
\syn_frame[34][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[10]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][2]~q\);

-- Location: LCCOMB_X102_Y42_N6
\Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\syn_frame[34][2]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[34][2]~q\,
	datad => tx_idx(4),
	combout => \Mux5~10_combout\);

-- Location: FF_X103_Y43_N31
\syn_frame[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[2]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][2]~q\);

-- Location: LCCOMB_X103_Y43_N30
\Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (!tx_idx(3) & (!tx_idx(4) & (\syn_frame[35][2]~q\ & !tx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \syn_frame[35][2]~q\,
	datad => tx_idx(2),
	combout => \Mux5~11_combout\);

-- Location: FF_X105_Y45_N23
\syn_frame[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[26]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][2]~q\);

-- Location: LCCOMB_X108_Y37_N8
\syn_frame[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[10][2]~feeder_combout\ = \client_mac[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[10]~input_o\,
	combout => \syn_frame[10][2]~feeder_combout\);

-- Location: FF_X108_Y37_N9
\syn_frame[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[10][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][2]~q\);

-- Location: FF_X108_Y37_N19
\syn_frame[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[2]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][2]~q\);

-- Location: LCCOMB_X108_Y37_N22
\syn_frame[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][2]~feeder_combout\ = \client_mac[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[18]~input_o\,
	combout => \syn_frame[9][2]~feeder_combout\);

-- Location: FF_X108_Y37_N23
\syn_frame[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][2]~q\);

-- Location: FF_X108_Y37_N25
\syn_frame[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[26]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][2]~q\);

-- Location: LCCOMB_X108_Y37_N24
\Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (tx_idx(0) & ((\syn_frame[9][2]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[8][2]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[9][2]~q\,
	datab => tx_idx(0),
	datac => \syn_frame[8][2]~q\,
	datad => tx_idx(1),
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X108_Y37_N18
\Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (tx_idx(1) & ((\Mux5~12_combout\ & ((\syn_frame[11][2]~q\))) # (!\Mux5~12_combout\ & (\syn_frame[10][2]~q\)))) # (!tx_idx(1) & (((\Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[10][2]~q\,
	datac => \syn_frame[11][2]~q\,
	datad => \Mux5~12_combout\,
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X107_Y41_N26
\Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = (tx_idx(2) & (tx_idx(1) & (!tx_idx(0)))) # (!tx_idx(2) & (((\Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(2),
	datac => tx_idx(0),
	datad => \Mux5~13_combout\,
	combout => \Mux5~14_combout\);

-- Location: LCCOMB_X105_Y45_N22
\Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\Mux5~14_combout\))) # (!\Mux5~2_combout\ & (\syn_frame[26][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[26][2]~q\,
	datad => \Mux5~14_combout\,
	combout => \Mux5~15_combout\);

-- Location: FF_X99_Y45_N31
\syn_frame[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[18]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][2]~q\);

-- Location: LCCOMB_X106_Y38_N26
\syn_frame[29][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[29][2]~feeder_combout\ = \client_ip[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[2]~input_o\,
	combout => \syn_frame[29][2]~feeder_combout\);

-- Location: FF_X106_Y38_N27
\syn_frame[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[29][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][2]~q\);

-- Location: FF_X105_Y38_N19
\syn_frame[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[10]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][2]~q\);

-- Location: LCCOMB_X105_Y38_N18
\Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = (tx_idx(0) & ((\syn_frame[29][2]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[28][2]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[29][2]~q\,
	datab => tx_idx(0),
	datac => \syn_frame[28][2]~q\,
	datad => tx_idx(1),
	combout => \Mux5~16_combout\);

-- Location: FF_X99_Y45_N27
\syn_frame[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[18]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][2]~q\);

-- Location: LCCOMB_X99_Y45_N12
\syn_frame[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[30][2]~feeder_combout\ = \server_ip[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[26]~input_o\,
	combout => \syn_frame[30][2]~feeder_combout\);

-- Location: FF_X99_Y45_N13
\syn_frame[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[30][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][2]~q\);

-- Location: LCCOMB_X99_Y45_N26
\Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~17_combout\ = (tx_idx(1) & ((\Mux5~16_combout\ & (\syn_frame[31][2]~q\)) # (!\Mux5~16_combout\ & ((\syn_frame[30][2]~q\))))) # (!tx_idx(1) & (\Mux5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux5~16_combout\,
	datac => \syn_frame[31][2]~q\,
	datad => \syn_frame[30][2]~q\,
	combout => \Mux5~17_combout\);

-- Location: LCCOMB_X99_Y45_N16
\Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~18_combout\ = (tx_idx(2) & ((\Mux14~2_combout\) # ((tx_idx(3) & \Mux5~17_combout\)))) # (!tx_idx(2) & (tx_idx(3) & (\Mux5~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \Mux5~17_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux5~18_combout\);

-- Location: LCCOMB_X99_Y45_N30
\Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~19_combout\ = (\Mux5~1_combout\ & ((\Mux5~15_combout\ & ((\Mux5~18_combout\))) # (!\Mux5~15_combout\ & (\syn_frame[27][2]~q\)))) # (!\Mux5~1_combout\ & (\Mux5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~15_combout\,
	datac => \syn_frame[27][2]~q\,
	datad => \Mux5~18_combout\,
	combout => \Mux5~19_combout\);

-- Location: FF_X101_Y43_N9
\syn_frame[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[10]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][2]~q\);

-- Location: LCCOMB_X101_Y43_N6
\syn_frame[33][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[33][2]~feeder_combout\ = \server_ip[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[2]~input_o\,
	combout => \syn_frame[33][2]~feeder_combout\);

-- Location: FF_X101_Y43_N7
\syn_frame[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[33][2]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][2]~q\);

-- Location: LCCOMB_X101_Y43_N8
\Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~20_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\syn_frame[33][2]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\syn_frame[32][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \syn_frame[32][2]~q\,
	datad => \syn_frame[33][2]~q\,
	combout => \Mux5~20_combout\);

-- Location: FF_X101_Y43_N3
\syn_frame[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[2]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][2]~q\);

-- Location: FF_X101_Y43_N13
\syn_frame[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[10]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][2]~q\);

-- Location: LCCOMB_X101_Y43_N2
\Mux5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~21_combout\ = (tx_idx(2) & ((\Mux5~20_combout\ & (\syn_frame[37][2]~q\)) # (!\Mux5~20_combout\ & ((\syn_frame[36][2]~q\))))) # (!tx_idx(2) & (\Mux5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux5~20_combout\,
	datac => \syn_frame[37][2]~q\,
	datad => \syn_frame[36][2]~q\,
	combout => \Mux5~21_combout\);

-- Location: LCCOMB_X101_Y43_N28
\Mux5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~22_combout\ = (tx_idx(4) & (\Selector16~0_combout\)) # (!tx_idx(4) & (((!tx_idx(3) & \Mux5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => \Selector16~0_combout\,
	datac => tx_idx(3),
	datad => \Mux5~21_combout\,
	combout => \Mux5~22_combout\);

-- Location: LCCOMB_X102_Y42_N24
\Mux5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~23_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & ((\Mux5~22_combout\))) # (!\Mux5~4_combout\ & (\Mux5~19_combout\)))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux5~19_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux5~22_combout\,
	combout => \Mux5~23_combout\);

-- Location: LCCOMB_X102_Y42_N26
\Mux5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~24_combout\ = (\Mux5~0_combout\ & ((\Mux5~23_combout\ & ((\Mux5~11_combout\))) # (!\Mux5~23_combout\ & (\Mux5~10_combout\)))) # (!\Mux5~0_combout\ & (((\Mux5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~10_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux5~11_combout\,
	datad => \Mux5~23_combout\,
	combout => \Mux5~24_combout\);

-- Location: LCCOMB_X105_Y42_N2
\Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (\Selector13~3_combout\) # ((\Selector13~2_combout\) # ((\Selector15~0_combout\ & \Mux5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector13~3_combout\,
	datac => \Selector13~2_combout\,
	datad => \Mux5~24_combout\,
	combout => \Selector13~4_combout\);

-- Location: FF_X102_Y42_N23
\syn_frame[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[3]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][3]~q\);

-- Location: LCCOMB_X102_Y42_N22
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\syn_frame[35][3]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[35][3]~q\,
	datad => tx_idx(4),
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X100_Y44_N24
\Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (!tx_idx(3) & (!tx_idx(2) & (!tx_idx(1) & tx_idx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(2),
	datac => tx_idx(1),
	datad => tx_idx(0),
	combout => \Mux12~10_combout\);

-- Location: FF_X99_Y45_N25
\syn_frame[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[11]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][3]~q\);

-- Location: FF_X102_Y43_N25
\syn_frame[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[3]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][3]~q\);

-- Location: LCCOMB_X99_Y45_N24
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[29][3]~q\))) # (!tx_idx(0) & (\syn_frame[28][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[28][3]~q\,
	datad => \syn_frame[29][3]~q\,
	combout => \Mux4~10_combout\);

-- Location: FF_X99_Y45_N19
\syn_frame[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[19]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][3]~q\);

-- Location: LCCOMB_X99_Y45_N10
\syn_frame[30][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[30][3]~feeder_combout\ = \server_ip[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[27]~input_o\,
	combout => \syn_frame[30][3]~feeder_combout\);

-- Location: FF_X99_Y45_N11
\syn_frame[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[30][3]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][3]~q\);

-- Location: LCCOMB_X99_Y45_N18
\Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (tx_idx(1) & ((\Mux4~10_combout\ & (\syn_frame[31][3]~q\)) # (!\Mux4~10_combout\ & ((\syn_frame[30][3]~q\))))) # (!tx_idx(1) & (\Mux4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux4~10_combout\,
	datac => \syn_frame[31][3]~q\,
	datad => \syn_frame[30][3]~q\,
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X99_Y45_N4
\Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (\Mux12~10_combout\) # ((tx_idx(3) & \Mux4~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(3),
	datac => \Mux12~10_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux4~12_combout\);

-- Location: FF_X99_Y45_N29
\syn_frame[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[19]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][3]~q\);

-- Location: FF_X99_Y46_N9
\syn_frame[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[27]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][3]~q\);

-- Location: IOIBUF_X89_Y0_N8
\client_mac[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(19),
	o => \client_mac[19]~input_o\);

-- Location: LCCOMB_X98_Y46_N26
\syn_frame[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][3]~feeder_combout\ = \client_mac[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[19]~input_o\,
	combout => \syn_frame[9][3]~feeder_combout\);

-- Location: FF_X98_Y46_N27
\syn_frame[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][3]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][3]~q\);

-- Location: IOIBUF_X89_Y0_N15
\client_mac[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(27),
	o => \client_mac[27]~input_o\);

-- Location: FF_X98_Y46_N21
\syn_frame[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[27]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][3]~q\);

-- Location: LCCOMB_X98_Y46_N20
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (tx_idx(0) & ((\syn_frame[9][3]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[8][3]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[9][3]~q\,
	datab => tx_idx(0),
	datac => \syn_frame[8][3]~q\,
	datad => tx_idx(1),
	combout => \Mux4~6_combout\);

-- Location: IOIBUF_X91_Y0_N22
\client_mac[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(3),
	o => \client_mac[3]~input_o\);

-- Location: FF_X98_Y46_N23
\syn_frame[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[3]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][3]~q\);

-- Location: IOIBUF_X67_Y73_N22
\client_mac[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(11),
	o => \client_mac[11]~input_o\);

-- Location: LCCOMB_X98_Y46_N12
\syn_frame[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[10][3]~feeder_combout\ = \client_mac[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[11]~input_o\,
	combout => \syn_frame[10][3]~feeder_combout\);

-- Location: FF_X98_Y46_N13
\syn_frame[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[10][3]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][3]~q\);

-- Location: LCCOMB_X98_Y46_N22
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (tx_idx(1) & ((\Mux4~6_combout\ & (\syn_frame[11][3]~q\)) # (!\Mux4~6_combout\ & ((\syn_frame[10][3]~q\))))) # (!tx_idx(1) & (\Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux4~6_combout\,
	datac => \syn_frame[11][3]~q\,
	datad => \syn_frame[10][3]~q\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X99_Y46_N18
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (tx_idx(2) & (!tx_idx(1) & (!tx_idx(0)))) # (!tx_idx(2) & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(1),
	datac => tx_idx(0),
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X99_Y46_N8
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\Mux4~8_combout\))) # (!\Mux5~2_combout\ & (\syn_frame[26][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[26][3]~q\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X99_Y45_N28
\Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (\Mux5~1_combout\ & ((\Mux4~9_combout\ & (\Mux4~12_combout\)) # (!\Mux4~9_combout\ & ((\syn_frame[27][3]~q\))))) # (!\Mux5~1_combout\ & (((\Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux4~12_combout\,
	datac => \syn_frame[27][3]~q\,
	datad => \Mux4~9_combout\,
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X108_Y46_N12
\syn_frame[36][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[36][3]~feeder_combout\ = \server_port[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[11]~input_o\,
	combout => \syn_frame[36][3]~feeder_combout\);

-- Location: FF_X108_Y46_N13
\syn_frame[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[36][3]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][3]~q\);

-- Location: FF_X108_Y46_N11
\syn_frame[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[3]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][3]~q\);

-- Location: FF_X108_Y46_N21
\syn_frame[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[11]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][3]~q\);

-- Location: LCCOMB_X108_Y46_N18
\syn_frame[33][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[33][3]~feeder_combout\ = \server_ip[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[3]~input_o\,
	combout => \syn_frame[33][3]~feeder_combout\);

-- Location: FF_X108_Y46_N19
\syn_frame[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[33][3]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][3]~q\);

-- Location: LCCOMB_X108_Y46_N20
\Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\syn_frame[33][3]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\syn_frame[32][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \syn_frame[32][3]~q\,
	datad => \syn_frame[33][3]~q\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X108_Y46_N10
\Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (tx_idx(2) & ((\Mux4~14_combout\ & ((\syn_frame[37][3]~q\))) # (!\Mux4~14_combout\ & (\syn_frame[36][3]~q\)))) # (!tx_idx(2) & (((\Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[36][3]~q\,
	datab => tx_idx(2),
	datac => \syn_frame[37][3]~q\,
	datad => \Mux4~14_combout\,
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X103_Y46_N24
\Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (!tx_idx(4) & (\Mux4~15_combout\ & !tx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(4),
	datac => \Mux4~15_combout\,
	datad => tx_idx(3),
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X102_Y42_N20
\Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & ((\Mux4~16_combout\))) # (!\Mux5~4_combout\ & (\Mux4~13_combout\)))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~13_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux4~16_combout\,
	combout => \Mux4~17_combout\);

-- Location: FF_X102_Y42_N17
\syn_frame[34][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[11]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][3]~q\);

-- Location: LCCOMB_X102_Y42_N16
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\syn_frame[34][3]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \syn_frame[34][3]~q\,
	datad => tx_idx(4),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X102_Y42_N10
\Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~18_combout\ = (\Mux4~17_combout\ & ((\Mux4~5_combout\) # ((!\Mux5~0_combout\)))) # (!\Mux4~17_combout\ & (((\Mux5~0_combout\ & \Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux4~17_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~18_combout\);

-- Location: FF_X102_Y42_N13
\ack_frame[34][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[11]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][3]~q\);

-- Location: LCCOMB_X102_Y42_N12
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[34][3]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[34][3]~q\,
	datad => tx_idx(4),
	combout => \Mux12~4_combout\);

-- Location: FF_X102_Y42_N31
\ack_frame[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[3]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][3]~q\);

-- Location: LCCOMB_X102_Y42_N30
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (!tx_idx(2) & (!tx_idx(3) & (\ack_frame[35][3]~q\ & !tx_idx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(3),
	datac => \ack_frame[35][3]~q\,
	datad => tx_idx(4),
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X108_Y46_N22
\ack_frame[33][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[33][3]~feeder_combout\ = \server_ip[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[3]~input_o\,
	combout => \ack_frame[33][3]~feeder_combout\);

-- Location: FF_X108_Y46_N23
\ack_frame[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[33][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][3]~q\);

-- Location: FF_X108_Y46_N9
\ack_frame[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[11]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][3]~q\);

-- Location: LCCOMB_X108_Y46_N8
\Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~15_combout\ = (tx_idx(2) & (((tx_idx(0))))) # (!tx_idx(2) & ((tx_idx(0) & (\ack_frame[33][3]~q\)) # (!tx_idx(0) & ((\ack_frame[32][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[33][3]~q\,
	datab => tx_idx(2),
	datac => \ack_frame[32][3]~q\,
	datad => tx_idx(0),
	combout => \Mux12~15_combout\);

-- Location: FF_X108_Y46_N27
\ack_frame[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[3]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][3]~q\);

-- Location: LCCOMB_X108_Y46_N28
\ack_frame[36][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[36][3]~feeder_combout\ = \server_port[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[11]~input_o\,
	combout => \ack_frame[36][3]~feeder_combout\);

-- Location: FF_X108_Y46_N29
\ack_frame[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[36][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][3]~q\);

-- Location: LCCOMB_X108_Y46_N26
\Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~16_combout\ = (\Mux12~15_combout\ & (((\ack_frame[37][3]~q\)) # (!tx_idx(2)))) # (!\Mux12~15_combout\ & (tx_idx(2) & ((\ack_frame[36][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~15_combout\,
	datab => tx_idx(2),
	datac => \ack_frame[37][3]~q\,
	datad => \ack_frame[36][3]~q\,
	combout => \Mux12~16_combout\);

-- Location: LCCOMB_X107_Y42_N22
\Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~17_combout\ = (!tx_idx(4) & (!tx_idx(3) & \Mux12~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(4),
	datac => tx_idx(3),
	datad => \Mux12~16_combout\,
	combout => \Mux12~17_combout\);

-- Location: LCCOMB_X99_Y46_N14
\ack_frame[27][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[27][3]~feeder_combout\ = \client_ip[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[19]~input_o\,
	combout => \ack_frame[27][3]~feeder_combout\);

-- Location: FF_X99_Y46_N15
\ack_frame[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[27][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][3]~q\);

-- Location: FF_X99_Y46_N25
\ack_frame[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[27]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][3]~q\);

-- Location: LCCOMB_X99_Y46_N24
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\Mux5~1_combout\ & ((\ack_frame[27][3]~q\) # ((\Mux5~2_combout\)))) # (!\Mux5~1_combout\ & (((\ack_frame[26][3]~q\ & !\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ack_frame[27][3]~q\,
	datac => \ack_frame[26][3]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X99_Y45_N2
\ack_frame[30][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[30][3]~feeder_combout\ = \server_ip[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[27]~input_o\,
	combout => \ack_frame[30][3]~feeder_combout\);

-- Location: FF_X99_Y45_N3
\ack_frame[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[30][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][3]~q\);

-- Location: FF_X100_Y46_N5
\ack_frame[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[19]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][3]~q\);

-- Location: FF_X100_Y46_N11
\ack_frame[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[11]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][3]~q\);

-- Location: LCCOMB_X100_Y46_N20
\ack_frame[29][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[29][3]~feeder_combout\ = \client_ip[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[3]~input_o\,
	combout => \ack_frame[29][3]~feeder_combout\);

-- Location: FF_X100_Y46_N21
\ack_frame[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[29][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][3]~q\);

-- Location: LCCOMB_X100_Y46_N10
\Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[29][3]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[28][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[28][3]~q\,
	datad => \ack_frame[29][3]~q\,
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X100_Y46_N4
\Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~12_combout\ = (tx_idx(1) & ((\Mux12~11_combout\ & ((\ack_frame[31][3]~q\))) # (!\Mux12~11_combout\ & (\ack_frame[30][3]~q\)))) # (!tx_idx(1) & (((\Mux12~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[30][3]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[31][3]~q\,
	datad => \Mux12~11_combout\,
	combout => \Mux12~12_combout\);

-- Location: LCCOMB_X99_Y46_N30
\Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~13_combout\ = (\Mux12~10_combout\) # ((tx_idx(3) & \Mux12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~10_combout\,
	datac => tx_idx(3),
	datad => \Mux12~12_combout\,
	combout => \Mux12~13_combout\);

-- Location: LCCOMB_X98_Y46_N24
\ack_frame[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[10][3]~feeder_combout\ = \client_mac[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[11]~input_o\,
	combout => \ack_frame[10][3]~feeder_combout\);

-- Location: FF_X98_Y46_N25
\ack_frame[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[10][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][3]~q\);

-- Location: FF_X98_Y46_N15
\ack_frame[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[3]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][3]~q\);

-- Location: FF_X98_Y46_N1
\ack_frame[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[27]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][3]~q\);

-- Location: LCCOMB_X98_Y46_N18
\ack_frame[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[9][3]~feeder_combout\ = \client_mac[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[19]~input_o\,
	combout => \ack_frame[9][3]~feeder_combout\);

-- Location: FF_X98_Y46_N19
\ack_frame[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[9][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][3]~q\);

-- Location: LCCOMB_X98_Y46_N0
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\ack_frame[9][3]~q\))) # (!tx_idx(0) & (\ack_frame[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[8][3]~q\,
	datad => \ack_frame[9][3]~q\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X98_Y46_N14
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (tx_idx(1) & ((\Mux12~6_combout\ & ((\ack_frame[11][3]~q\))) # (!\Mux12~6_combout\ & (\ack_frame[10][3]~q\)))) # (!tx_idx(1) & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[10][3]~q\,
	datac => \ack_frame[11][3]~q\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X99_Y46_N0
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (tx_idx(2) & (!tx_idx(1) & (!tx_idx(0)))) # (!tx_idx(2) & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(1),
	datac => tx_idx(0),
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X99_Y46_N4
\Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~14_combout\ = (\Mux12~9_combout\ & (((\Mux12~13_combout\)) # (!\Mux5~2_combout\))) # (!\Mux12~9_combout\ & (\Mux5~2_combout\ & ((\Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~9_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux12~13_combout\,
	datad => \Mux12~8_combout\,
	combout => \Mux12~14_combout\);

-- Location: LCCOMB_X102_Y42_N4
\Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~18_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & (\Mux12~17_combout\)) # (!\Mux5~4_combout\ & ((\Mux12~14_combout\))))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux12~17_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux12~14_combout\,
	combout => \Mux12~18_combout\);

-- Location: LCCOMB_X102_Y42_N14
\Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~19_combout\ = (\Mux5~0_combout\ & ((\Mux12~18_combout\ & ((\Mux12~5_combout\))) # (!\Mux12~18_combout\ & (\Mux12~4_combout\)))) # (!\Mux5~0_combout\ & (((\Mux12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux12~5_combout\,
	datad => \Mux12~18_combout\,
	combout => \Mux12~19_combout\);

-- Location: LCCOMB_X107_Y42_N4
\Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Mux12~19_combout\ & (!\Mux5~5_combout\ & \st.TX_ACK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~19_combout\,
	datab => \Mux5~5_combout\,
	datac => \st.TX_ACK~q\,
	combout => \Selector12~3_combout\);

-- Location: IOIBUF_X115_Y69_N1
\server_mac[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(35),
	o => \server_mac[35]~input_o\);

-- Location: FF_X108_Y38_N9
\syn_frame[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[35]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][3]~q\);

-- Location: IOIBUF_X109_Y0_N1
\server_mac[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(19),
	o => \server_mac[19]~input_o\);

-- Location: FF_X108_Y38_N7
\syn_frame[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[19]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][3]~q\);

-- Location: IOIBUF_X115_Y6_N15
\server_mac[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(43),
	o => \server_mac[43]~input_o\);

-- Location: FF_X108_Y38_N21
\syn_frame[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[43]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][3]~q\);

-- Location: IOIBUF_X115_Y32_N1
\server_mac[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(27),
	o => \server_mac[27]~input_o\);

-- Location: LCCOMB_X108_Y38_N10
\syn_frame[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][3]~feeder_combout\ = \server_mac[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[27]~input_o\,
	combout => \syn_frame[2][3]~feeder_combout\);

-- Location: FF_X108_Y38_N11
\syn_frame[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][3]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][3]~q\);

-- Location: LCCOMB_X108_Y38_N20
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\syn_frame[2][3]~q\))) # (!tx_idx(1) & (\syn_frame[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[0][3]~q\,
	datad => \syn_frame[2][3]~q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X108_Y38_N6
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (tx_idx(0) & ((\Mux4~2_combout\ & ((\syn_frame[3][3]~q\))) # (!\Mux4~2_combout\ & (\syn_frame[1][3]~q\)))) # (!tx_idx(0) & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \syn_frame[1][3]~q\,
	datac => \syn_frame[3][3]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: IOIBUF_X115_Y27_N1
\client_mac[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(43),
	o => \client_mac[43]~input_o\);

-- Location: FF_X108_Y38_N5
\syn_frame[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[43]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][3]~q\);

-- Location: IOIBUF_X109_Y0_N8
\client_mac[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(35),
	o => \client_mac[35]~input_o\);

-- Location: FF_X108_Y38_N19
\syn_frame[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[35]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][3]~q\);

-- Location: IOIBUF_X115_Y20_N1
\server_mac[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(3),
	o => \server_mac[3]~input_o\);

-- Location: FF_X108_Y38_N27
\syn_frame[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[3]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][3]~q\);

-- Location: IOIBUF_X115_Y4_N22
\server_mac[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(11),
	o => \server_mac[11]~input_o\);

-- Location: FF_X108_Y38_N25
\syn_frame[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[11]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][3]~q\);

-- Location: LCCOMB_X108_Y38_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\syn_frame[5][3]~q\)) # (!tx_idx(0) & ((\syn_frame[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[5][3]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[4][3]~q\,
	datad => tx_idx(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X108_Y38_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (tx_idx(1) & ((\Mux4~0_combout\ & ((\syn_frame[7][3]~q\))) # (!\Mux4~0_combout\ & (\syn_frame[6][3]~q\)))) # (!tx_idx(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[6][3]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[7][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X108_Y38_N8
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (tx_idx(2) & ((\Mux4~1_combout\))) # (!tx_idx(2) & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => tx_idx(2),
	datad => \Mux4~1_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X108_Y38_N13
\ack_frame[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[43]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][3]~q\);

-- Location: FF_X108_Y38_N31
\ack_frame[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[3]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][3]~q\);

-- Location: FF_X108_Y38_N1
\ack_frame[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[11]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][3]~q\);

-- Location: LCCOMB_X108_Y38_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\ack_frame[5][3]~q\)) # (!tx_idx(0) & ((\ack_frame[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[5][3]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[4][3]~q\,
	datad => tx_idx(0),
	combout => \Mux12~0_combout\);

-- Location: FF_X108_Y38_N15
\ack_frame[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[35]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][3]~q\);

-- Location: LCCOMB_X108_Y38_N14
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\ack_frame[7][3]~q\) # (!tx_idx(1))))) # (!\Mux12~0_combout\ & (\ack_frame[6][3]~q\ & ((tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[6][3]~q\,
	datab => \Mux12~0_combout\,
	datac => \ack_frame[7][3]~q\,
	datad => tx_idx(1),
	combout => \Mux12~1_combout\);

-- Location: FF_X108_Y38_N3
\ack_frame[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[43]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][3]~q\);

-- Location: LCCOMB_X106_Y38_N8
\ack_frame[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][3]~feeder_combout\ = \server_mac[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[27]~input_o\,
	combout => \ack_frame[2][3]~feeder_combout\);

-- Location: FF_X106_Y38_N9
\ack_frame[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][3]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][3]~q\);

-- Location: LCCOMB_X108_Y38_N2
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\ack_frame[2][3]~q\))) # (!tx_idx(1) & (\ack_frame[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[0][3]~q\,
	datad => \ack_frame[2][3]~q\,
	combout => \Mux12~2_combout\);

-- Location: FF_X108_Y38_N17
\ack_frame[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[19]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][3]~q\);

-- Location: FF_X108_Y38_N29
\ack_frame[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[35]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][3]~q\);

-- Location: LCCOMB_X108_Y38_N16
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (tx_idx(0) & ((\Mux12~2_combout\ & (\ack_frame[3][3]~q\)) # (!\Mux12~2_combout\ & ((\ack_frame[1][3]~q\))))) # (!tx_idx(0) & (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \Mux12~2_combout\,
	datac => \ack_frame[3][3]~q\,
	datad => \ack_frame[1][3]~q\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X108_Y38_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux12~1_combout\)) # (!tx_idx(2) & ((\Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st.TX_ACK~q\,
	datab => \Mux12~1_combout\,
	datac => tx_idx(2),
	datad => \Mux12~3_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X108_Y42_N22
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Mux5~5_combout\ & ((\Selector12~0_combout\) # ((\Selector12~1_combout\ & \st.TX_SYN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~1_combout\,
	datab => \Selector12~0_combout\,
	datac => \Mux5~5_combout\,
	datad => \st.TX_SYN~q\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X107_Y42_N30
\Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\Selector12~3_combout\) # ((\Selector12~2_combout\) # ((\Selector15~0_combout\ & \Mux4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Mux4~18_combout\,
	datac => \Selector12~3_combout\,
	datad => \Selector12~2_combout\,
	combout => \Selector12~4_combout\);

-- Location: IOIBUF_X115_Y14_N1
\server_mac[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(12),
	o => \server_mac[12]~input_o\);

-- Location: FF_X108_Y46_N25
\syn_frame[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[12]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][4]~q\);

-- Location: IOIBUF_X115_Y66_N15
\server_mac[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(4),
	o => \server_mac[4]~input_o\);

-- Location: LCCOMB_X108_Y46_N2
\syn_frame[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[5][4]~feeder_combout\ = \server_mac[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[4]~input_o\,
	combout => \syn_frame[5][4]~feeder_combout\);

-- Location: FF_X108_Y46_N3
\syn_frame[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[5][4]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][4]~q\);

-- Location: LCCOMB_X108_Y46_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\syn_frame[5][4]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\syn_frame[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[4][4]~q\,
	datad => \syn_frame[5][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X115_Y62_N22
\client_mac[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(36),
	o => \client_mac[36]~input_o\);

-- Location: FF_X108_Y46_N31
\syn_frame[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[36]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][4]~q\);

-- Location: IOIBUF_X115_Y62_N15
\client_mac[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(44),
	o => \client_mac[44]~input_o\);

-- Location: FF_X108_Y46_N17
\syn_frame[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[44]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][4]~q\);

-- Location: LCCOMB_X108_Y46_N30
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (tx_idx(1) & ((\Mux3~0_combout\ & (\syn_frame[7][4]~q\)) # (!\Mux3~0_combout\ & ((\syn_frame[6][4]~q\))))) # (!tx_idx(1) & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux3~0_combout\,
	datac => \syn_frame[7][4]~q\,
	datad => \syn_frame[6][4]~q\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X113_Y0_N8
\server_mac[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(44),
	o => \server_mac[44]~input_o\);

-- Location: FF_X109_Y46_N17
\syn_frame[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[44]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][4]~q\);

-- Location: IOIBUF_X113_Y73_N8
\server_mac[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(28),
	o => \server_mac[28]~input_o\);

-- Location: LCCOMB_X109_Y46_N10
\syn_frame[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][4]~feeder_combout\ = \server_mac[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[28]~input_o\,
	combout => \syn_frame[2][4]~feeder_combout\);

-- Location: FF_X109_Y46_N11
\syn_frame[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][4]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][4]~q\);

-- Location: LCCOMB_X109_Y46_N16
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\syn_frame[2][4]~q\))) # (!tx_idx(1) & (\syn_frame[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[0][4]~q\,
	datad => \syn_frame[2][4]~q\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X115_Y50_N8
\server_mac[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(20),
	o => \server_mac[20]~input_o\);

-- Location: FF_X109_Y46_N23
\syn_frame[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[20]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][4]~q\);

-- Location: IOIBUF_X115_Y68_N22
\server_mac[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(36),
	o => \server_mac[36]~input_o\);

-- Location: FF_X109_Y46_N1
\syn_frame[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[36]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][4]~q\);

-- Location: LCCOMB_X109_Y46_N22
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (tx_idx(0) & ((\Mux3~2_combout\ & (\syn_frame[3][4]~q\)) # (!\Mux3~2_combout\ & ((\syn_frame[1][4]~q\))))) # (!tx_idx(0) & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \Mux3~2_combout\,
	datac => \syn_frame[3][4]~q\,
	datad => \syn_frame[1][4]~q\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X108_Y46_N16
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (tx_idx(2) & (\Mux3~1_combout\)) # (!tx_idx(2) & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => tx_idx(2),
	datad => \Mux3~3_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X108_Y46_N4
\ack_frame[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[5][4]~feeder_combout\ = \server_mac[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[4]~input_o\,
	combout => \ack_frame[5][4]~feeder_combout\);

-- Location: FF_X108_Y46_N5
\ack_frame[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[5][4]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][4]~q\);

-- Location: FF_X108_Y46_N15
\ack_frame[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[36]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][4]~q\);

-- Location: FF_X108_Y46_N1
\ack_frame[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[12]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][4]~q\);

-- Location: FF_X108_Y46_N7
\ack_frame[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[44]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][4]~q\);

-- Location: LCCOMB_X108_Y46_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\ack_frame[6][4]~q\))) # (!tx_idx(1) & (\ack_frame[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[4][4]~q\,
	datad => \ack_frame[6][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X108_Y46_N14
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (tx_idx(0) & ((\Mux11~0_combout\ & ((\ack_frame[7][4]~q\))) # (!\Mux11~0_combout\ & (\ack_frame[5][4]~q\)))) # (!tx_idx(0) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \ack_frame[5][4]~q\,
	datac => \ack_frame[7][4]~q\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X109_Y46_N5
\ack_frame[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[44]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][4]~q\);

-- Location: FF_X109_Y46_N3
\ack_frame[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[36]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][4]~q\);

-- Location: LCCOMB_X109_Y46_N4
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[1][4]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[0][4]~q\,
	datad => \ack_frame[1][4]~q\,
	combout => \Mux11~2_combout\);

-- Location: FF_X109_Y46_N27
\ack_frame[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[20]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][4]~q\);

-- Location: LCCOMB_X109_Y46_N28
\ack_frame[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][4]~feeder_combout\ = \server_mac[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[28]~input_o\,
	combout => \ack_frame[2][4]~feeder_combout\);

-- Location: FF_X109_Y46_N29
\ack_frame[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][4]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][4]~q\);

-- Location: LCCOMB_X109_Y46_N26
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\ & (((\ack_frame[3][4]~q\)) # (!tx_idx(1)))) # (!\Mux11~2_combout\ & (tx_idx(1) & ((\ack_frame[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => tx_idx(1),
	datac => \ack_frame[3][4]~q\,
	datad => \ack_frame[2][4]~q\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X108_Y42_N8
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux11~1_combout\)) # (!tx_idx(2) & ((\Mux11~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \st.TX_ACK~q\,
	datac => tx_idx(2),
	datad => \Mux11~3_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X108_Y42_N2
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Mux5~5_combout\ & ((\Selector11~0_combout\) # ((\Selector11~1_combout\ & \st.TX_SYN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Selector11~1_combout\,
	datac => \Selector11~0_combout\,
	datad => \st.TX_SYN~q\,
	combout => \Selector11~2_combout\);

-- Location: FF_X103_Y46_N1
\ack_frame[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[28]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][4]~q\);

-- Location: LCCOMB_X103_Y46_N18
\ack_frame[27][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[27][4]~feeder_combout\ = \client_ip[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[20]~input_o\,
	combout => \ack_frame[27][4]~feeder_combout\);

-- Location: FF_X103_Y46_N19
\ack_frame[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[27][4]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][4]~q\);

-- Location: LCCOMB_X103_Y46_N0
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux5~1_combout\ & ((\Mux5~2_combout\) # ((\ack_frame[27][4]~q\)))) # (!\Mux5~1_combout\ & (!\Mux5~2_combout\ & (\ack_frame[26][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \ack_frame[26][4]~q\,
	datad => \ack_frame[27][4]~q\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X101_Y47_N2
\ack_frame[29][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[29][4]~feeder_combout\ = \client_ip[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[4]~input_o\,
	combout => \ack_frame[29][4]~feeder_combout\);

-- Location: FF_X101_Y47_N3
\ack_frame[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[29][4]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][4]~q\);

-- Location: FF_X101_Y47_N5
\ack_frame[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[12]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][4]~q\);

-- Location: LCCOMB_X101_Y47_N4
\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (tx_idx(0) & ((\ack_frame[29][4]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\ack_frame[28][4]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \ack_frame[29][4]~q\,
	datac => \ack_frame[28][4]~q\,
	datad => tx_idx(1),
	combout => \Mux11~9_combout\);

-- Location: FF_X101_Y47_N7
\ack_frame[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[20]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][4]~q\);

-- Location: LCCOMB_X101_Y47_N12
\ack_frame[30][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[30][4]~feeder_combout\ = \server_ip[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[28]~input_o\,
	combout => \ack_frame[30][4]~feeder_combout\);

-- Location: FF_X101_Y47_N13
\ack_frame[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[30][4]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][4]~q\);

-- Location: LCCOMB_X101_Y47_N6
\Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (tx_idx(1) & ((\Mux11~9_combout\ & (\ack_frame[31][4]~q\)) # (!\Mux11~9_combout\ & ((\ack_frame[30][4]~q\))))) # (!tx_idx(1) & (\Mux11~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux11~9_combout\,
	datac => \ack_frame[31][4]~q\,
	datad => \ack_frame[30][4]~q\,
	combout => \Mux11~10_combout\);

-- Location: IOIBUF_X89_Y0_N22
\client_mac[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(12),
	o => \client_mac[12]~input_o\);

-- Location: LCCOMB_X101_Y47_N18
\ack_frame[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[10][4]~feeder_combout\ = \client_mac[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[12]~input_o\,
	combout => \ack_frame[10][4]~feeder_combout\);

-- Location: FF_X101_Y47_N19
\ack_frame[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[10][4]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][4]~q\);

-- Location: IOIBUF_X94_Y73_N1
\client_mac[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(28),
	o => \client_mac[28]~input_o\);

-- Location: FF_X101_Y47_N21
\ack_frame[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[28]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][4]~q\);

-- Location: LCCOMB_X101_Y47_N20
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (tx_idx(0) & (((tx_idx(1))))) # (!tx_idx(0) & ((tx_idx(1) & (\ack_frame[10][4]~q\)) # (!tx_idx(1) & ((\ack_frame[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \ack_frame[10][4]~q\,
	datac => \ack_frame[8][4]~q\,
	datad => tx_idx(1),
	combout => \Mux11~7_combout\);

-- Location: IOIBUF_X87_Y73_N22
\client_mac[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(4),
	o => \client_mac[4]~input_o\);

-- Location: FF_X101_Y47_N15
\ack_frame[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[4]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][4]~q\);

-- Location: IOIBUF_X98_Y73_N15
\client_mac[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(20),
	o => \client_mac[20]~input_o\);

-- Location: FF_X101_Y47_N29
\ack_frame[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[20]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][4]~q\);

-- Location: LCCOMB_X101_Y47_N14
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (tx_idx(0) & ((\Mux11~7_combout\ & (\ack_frame[11][4]~q\)) # (!\Mux11~7_combout\ & ((\ack_frame[9][4]~q\))))) # (!tx_idx(0) & (\Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \Mux11~7_combout\,
	datac => \ack_frame[11][4]~q\,
	datad => \ack_frame[9][4]~q\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X102_Y47_N16
\Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (\Mux11~6_combout\ & (tx_idx(3) & (\Mux11~10_combout\))) # (!\Mux11~6_combout\ & (((\Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => \Mux11~6_combout\,
	datac => \Mux11~10_combout\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~11_combout\);

-- Location: LCCOMB_X103_Y46_N6
\Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~12_combout\ = (\Mux5~2_combout\ & (\Mux11~11_combout\ & ((\Mux11~6_combout\) # (!tx_idx(2))))) # (!\Mux5~2_combout\ & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~11_combout\,
	datab => \Mux5~2_combout\,
	datac => tx_idx(2),
	datad => \Mux11~6_combout\,
	combout => \Mux11~12_combout\);

-- Location: FF_X106_Y46_N11
\ack_frame[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[12]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][4]~q\);

-- Location: FF_X106_Y46_N19
\ack_frame[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[4]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][4]~q\);

-- Location: FF_X106_Y46_N25
\ack_frame[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[12]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][4]~q\);

-- Location: FF_X107_Y46_N29
\ack_frame[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[4]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][4]~q\);

-- Location: LCCOMB_X106_Y46_N24
\Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~13_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\ack_frame[33][4]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\ack_frame[32][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \ack_frame[32][4]~q\,
	datad => \ack_frame[33][4]~q\,
	combout => \Mux11~13_combout\);

-- Location: LCCOMB_X106_Y46_N18
\Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~14_combout\ = (tx_idx(2) & ((\Mux11~13_combout\ & ((\ack_frame[37][4]~q\))) # (!\Mux11~13_combout\ & (\ack_frame[36][4]~q\)))) # (!tx_idx(2) & (((\Mux11~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[36][4]~q\,
	datab => tx_idx(2),
	datac => \ack_frame[37][4]~q\,
	datad => \Mux11~13_combout\,
	combout => \Mux11~14_combout\);

-- Location: LCCOMB_X106_Y46_N4
\Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~15_combout\ = (!tx_idx(3) & (!tx_idx(4) & \Mux11~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datad => \Mux11~14_combout\,
	combout => \Mux11~15_combout\);

-- Location: LCCOMB_X106_Y46_N6
\Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~16_combout\ = (\Mux5~4_combout\ & (((\Mux11~15_combout\) # (!\Mux5~3_combout\)))) # (!\Mux5~4_combout\ & (\Mux11~12_combout\ & ((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux11~12_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux11~16_combout\);

-- Location: FF_X106_Y46_N17
\ack_frame[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[4]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][4]~q\);

-- Location: LCCOMB_X106_Y46_N16
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (!tx_idx(4) & ((tx_idx(3) & ((tx_idx(2)))) # (!tx_idx(3) & (\ack_frame[35][4]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \ack_frame[35][4]~q\,
	datad => tx_idx(2),
	combout => \Mux11~5_combout\);

-- Location: FF_X106_Y46_N15
\ack_frame[34][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[12]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][4]~q\);

-- Location: LCCOMB_X106_Y46_N14
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (!tx_idx(4) & ((tx_idx(3) & ((tx_idx(2)))) # (!tx_idx(3) & (\ack_frame[34][4]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \ack_frame[34][4]~q\,
	datad => tx_idx(2),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X106_Y46_N28
\Mux11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~17_combout\ = (\Mux11~16_combout\ & ((\Mux11~5_combout\) # ((!\Mux5~0_combout\)))) # (!\Mux11~16_combout\ & (((\Mux11~4_combout\ & \Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~16_combout\,
	datab => \Mux11~5_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux11~17_combout\);

-- Location: LCCOMB_X107_Y42_N20
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Mux11~17_combout\ & (\st.TX_ACK~q\ & !\Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~17_combout\,
	datac => \st.TX_ACK~q\,
	datad => \Mux5~5_combout\,
	combout => \Selector11~3_combout\);

-- Location: FF_X103_Y46_N15
\syn_frame[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[20]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][4]~q\);

-- Location: FF_X103_Y46_N21
\syn_frame[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[28]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][4]~q\);

-- Location: LCCOMB_X103_Y46_N14
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux5~1_combout\ & ((\Mux5~2_combout\) # ((\syn_frame[27][4]~q\)))) # (!\Mux5~1_combout\ & (!\Mux5~2_combout\ & ((\syn_frame[26][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[27][4]~q\,
	datad => \syn_frame[26][4]~q\,
	combout => \Mux3~6_combout\);

-- Location: FF_X102_Y46_N21
\syn_frame[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[28]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][4]~q\);

-- Location: FF_X102_Y46_N27
\syn_frame[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[20]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][4]~q\);

-- Location: FF_X102_Y46_N29
\syn_frame[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[12]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][4]~q\);

-- Location: LCCOMB_X102_Y46_N2
\syn_frame[29][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[29][4]~feeder_combout\ = \client_ip[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[4]~input_o\,
	combout => \syn_frame[29][4]~feeder_combout\);

-- Location: FF_X102_Y46_N3
\syn_frame[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[29][4]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][4]~q\);

-- Location: LCCOMB_X102_Y46_N28
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[29][4]~q\))) # (!tx_idx(0) & (\syn_frame[28][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[28][4]~q\,
	datad => \syn_frame[29][4]~q\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X102_Y46_N26
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (tx_idx(1) & ((\Mux3~9_combout\ & ((\syn_frame[31][4]~q\))) # (!\Mux3~9_combout\ & (\syn_frame[30][4]~q\)))) # (!tx_idx(1) & (((\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[30][4]~q\,
	datac => \syn_frame[31][4]~q\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~10_combout\);

-- Location: FF_X102_Y46_N9
\syn_frame[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[28]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][4]~q\);

-- Location: LCCOMB_X102_Y46_N10
\syn_frame[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][4]~feeder_combout\ = \client_mac[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[20]~input_o\,
	combout => \syn_frame[9][4]~feeder_combout\);

-- Location: FF_X102_Y46_N11
\syn_frame[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][4]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][4]~q\);

-- Location: LCCOMB_X102_Y46_N8
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[9][4]~q\))) # (!tx_idx(0) & (\syn_frame[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[8][4]~q\,
	datad => \syn_frame[9][4]~q\,
	combout => \Mux3~7_combout\);

-- Location: FF_X102_Y46_N15
\syn_frame[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[4]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][4]~q\);

-- Location: LCCOMB_X102_Y46_N12
\syn_frame[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[10][4]~feeder_combout\ = \client_mac[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[12]~input_o\,
	combout => \syn_frame[10][4]~feeder_combout\);

-- Location: FF_X102_Y46_N13
\syn_frame[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[10][4]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][4]~q\);

-- Location: LCCOMB_X102_Y46_N14
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (tx_idx(1) & ((\Mux3~7_combout\ & (\syn_frame[11][4]~q\)) # (!\Mux3~7_combout\ & ((\syn_frame[10][4]~q\))))) # (!tx_idx(1) & (\Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux3~7_combout\,
	datac => \syn_frame[11][4]~q\,
	datad => \syn_frame[10][4]~q\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X103_Y46_N4
\Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Mux3~6_combout\ & (tx_idx(3) & (\Mux3~10_combout\))) # (!\Mux3~6_combout\ & (((\Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => \Mux3~6_combout\,
	datac => \Mux3~10_combout\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X103_Y46_N10
\Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\Mux5~2_combout\ & (\Mux3~11_combout\ & ((\Mux3~6_combout\) # (!tx_idx(2))))) # (!\Mux5~2_combout\ & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux3~11_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux3~12_combout\);

-- Location: FF_X106_Y46_N23
\syn_frame[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[12]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][4]~q\);

-- Location: FF_X106_Y46_N3
\syn_frame[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[4]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][4]~q\);

-- Location: FF_X106_Y46_N21
\syn_frame[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[12]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][4]~q\);

-- Location: FF_X107_Y46_N23
\syn_frame[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[4]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][4]~q\);

-- Location: LCCOMB_X106_Y46_N20
\Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (tx_idx(0) & ((tx_idx(2)) # ((\syn_frame[33][4]~q\)))) # (!tx_idx(0) & (!tx_idx(2) & (\syn_frame[32][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \syn_frame[32][4]~q\,
	datad => \syn_frame[33][4]~q\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X106_Y46_N2
\Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (tx_idx(2) & ((\Mux3~13_combout\ & ((\syn_frame[37][4]~q\))) # (!\Mux3~13_combout\ & (\syn_frame[36][4]~q\)))) # (!tx_idx(2) & (((\Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[36][4]~q\,
	datab => tx_idx(2),
	datac => \syn_frame[37][4]~q\,
	datad => \Mux3~13_combout\,
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X106_Y46_N22
\Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (!tx_idx(3) & (!tx_idx(4) & \Mux3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datad => \Mux3~14_combout\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X106_Y46_N12
\Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (\Mux5~4_combout\ & (((\Mux3~15_combout\) # (!\Mux5~3_combout\)))) # (!\Mux5~4_combout\ & (\Mux3~12_combout\ & (\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux3~12_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux3~15_combout\,
	combout => \Mux3~16_combout\);

-- Location: FF_X106_Y46_N1
\syn_frame[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[4]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][4]~q\);

-- Location: LCCOMB_X106_Y46_N0
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (!tx_idx(3) & (!tx_idx(4) & (\syn_frame[35][4]~q\ & !tx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \syn_frame[35][4]~q\,
	datad => tx_idx(2),
	combout => \Mux3~5_combout\);

-- Location: FF_X106_Y46_N27
\syn_frame[34][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[12]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][4]~q\);

-- Location: LCCOMB_X106_Y46_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!tx_idx(4) & ((tx_idx(3) & ((tx_idx(2)))) # (!tx_idx(3) & (\syn_frame[34][4]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \syn_frame[34][4]~q\,
	datad => tx_idx(2),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X106_Y46_N30
\Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~17_combout\ = (\Mux3~16_combout\ & ((\Mux3~5_combout\) # ((!\Mux5~0_combout\)))) # (!\Mux3~16_combout\ & (((\Mux3~4_combout\ & \Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~16_combout\,
	datab => \Mux3~5_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux3~17_combout\);

-- Location: LCCOMB_X107_Y42_N14
\Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (\Selector11~2_combout\) # ((\Selector11~3_combout\) # ((\Selector15~0_combout\ & \Mux3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~2_combout\,
	datab => \Selector11~3_combout\,
	datac => \Selector15~0_combout\,
	datad => \Mux3~17_combout\,
	combout => \Selector11~4_combout\);

-- Location: IOIBUF_X100_Y0_N15
\server_mac[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(5),
	o => \server_mac[5]~input_o\);

-- Location: LCCOMB_X107_Y38_N4
\ack_frame[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[5][5]~feeder_combout\ = \server_mac[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[5]~input_o\,
	combout => \ack_frame[5][5]~feeder_combout\);

-- Location: FF_X107_Y38_N5
\ack_frame[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[5][5]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][5]~q\);

-- Location: IOIBUF_X115_Y18_N1
\client_mac[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(37),
	o => \client_mac[37]~input_o\);

-- Location: FF_X107_Y38_N11
\ack_frame[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[37]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][5]~q\);

-- Location: IOIBUF_X115_Y22_N1
\server_mac[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(13),
	o => \server_mac[13]~input_o\);

-- Location: FF_X107_Y38_N29
\ack_frame[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[13]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][5]~q\);

-- Location: IOIBUF_X115_Y19_N8
\client_mac[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(45),
	o => \client_mac[45]~input_o\);

-- Location: LCCOMB_X107_Y38_N6
\ack_frame[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[6][5]~feeder_combout\ = \client_mac[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[45]~input_o\,
	combout => \ack_frame[6][5]~feeder_combout\);

-- Location: FF_X107_Y38_N7
\ack_frame[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[6][5]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][5]~q\);

-- Location: LCCOMB_X107_Y38_N28
\Mux10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~15_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\ack_frame[6][5]~q\))) # (!tx_idx(1) & (\ack_frame[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[4][5]~q\,
	datad => \ack_frame[6][5]~q\,
	combout => \Mux10~15_combout\);

-- Location: LCCOMB_X107_Y38_N10
\Mux10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~16_combout\ = (tx_idx(0) & ((\Mux10~15_combout\ & ((\ack_frame[7][5]~q\))) # (!\Mux10~15_combout\ & (\ack_frame[5][5]~q\)))) # (!tx_idx(0) & (((\Mux10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \ack_frame[5][5]~q\,
	datac => \ack_frame[7][5]~q\,
	datad => \Mux10~15_combout\,
	combout => \Mux10~16_combout\);

-- Location: IOIBUF_X105_Y0_N1
\server_mac[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(37),
	o => \server_mac[37]~input_o\);

-- Location: FF_X106_Y38_N15
\ack_frame[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[37]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][5]~q\);

-- Location: IOIBUF_X115_Y18_N8
\server_mac[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(45),
	o => \server_mac[45]~input_o\);

-- Location: FF_X107_Y38_N31
\ack_frame[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[45]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][5]~q\);

-- Location: LCCOMB_X107_Y38_N30
\Mux10~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~17_combout\ = (tx_idx(0) & ((\ack_frame[1][5]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\ack_frame[0][5]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \ack_frame[1][5]~q\,
	datac => \ack_frame[0][5]~q\,
	datad => tx_idx(1),
	combout => \Mux10~17_combout\);

-- Location: IOIBUF_X115_Y22_N22
\server_mac[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(21),
	o => \server_mac[21]~input_o\);

-- Location: FF_X107_Y38_N9
\ack_frame[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[21]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][5]~q\);

-- Location: IOIBUF_X0_Y36_N22
\server_mac[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(29),
	o => \server_mac[29]~input_o\);

-- Location: LCCOMB_X107_Y38_N0
\ack_frame[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][5]~feeder_combout\ = \server_mac[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[29]~input_o\,
	combout => \ack_frame[2][5]~feeder_combout\);

-- Location: FF_X107_Y38_N1
\ack_frame[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][5]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][5]~q\);

-- Location: LCCOMB_X107_Y38_N8
\Mux10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~18_combout\ = (\Mux10~17_combout\ & (((\ack_frame[3][5]~q\)) # (!tx_idx(1)))) # (!\Mux10~17_combout\ & (tx_idx(1) & ((\ack_frame[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~17_combout\,
	datab => tx_idx(1),
	datac => \ack_frame[3][5]~q\,
	datad => \ack_frame[2][5]~q\,
	combout => \Mux10~18_combout\);

-- Location: LCCOMB_X107_Y38_N14
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux10~16_combout\)) # (!tx_idx(2) & ((\Mux10~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~16_combout\,
	datab => \Mux10~18_combout\,
	datac => \st.TX_ACK~q\,
	datad => tx_idx(2),
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X107_Y38_N12
\syn_frame[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[6][5]~feeder_combout\ = \client_mac[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[45]~input_o\,
	combout => \syn_frame[6][5]~feeder_combout\);

-- Location: FF_X107_Y38_N13
\syn_frame[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[6][5]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][5]~q\);

-- Location: FF_X107_Y38_N27
\syn_frame[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[37]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][5]~q\);

-- Location: FF_X107_Y38_N25
\syn_frame[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[13]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][5]~q\);

-- Location: LCCOMB_X107_Y38_N2
\syn_frame[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[5][5]~feeder_combout\ = \server_mac[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[5]~input_o\,
	combout => \syn_frame[5][5]~feeder_combout\);

-- Location: FF_X107_Y38_N3
\syn_frame[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[5][5]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][5]~q\);

-- Location: LCCOMB_X107_Y38_N24
\Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\syn_frame[5][5]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\syn_frame[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[4][5]~q\,
	datad => \syn_frame[5][5]~q\,
	combout => \Mux2~15_combout\);

-- Location: LCCOMB_X107_Y38_N26
\Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = (tx_idx(1) & ((\Mux2~15_combout\ & ((\syn_frame[7][5]~q\))) # (!\Mux2~15_combout\ & (\syn_frame[6][5]~q\)))) # (!tx_idx(1) & (((\Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[6][5]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[7][5]~q\,
	datad => \Mux2~15_combout\,
	combout => \Mux2~16_combout\);

-- Location: FF_X107_Y38_N23
\syn_frame[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[45]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][5]~q\);

-- Location: LCCOMB_X107_Y38_N16
\syn_frame[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][5]~feeder_combout\ = \server_mac[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[29]~input_o\,
	combout => \syn_frame[2][5]~feeder_combout\);

-- Location: FF_X107_Y38_N17
\syn_frame[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][5]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][5]~q\);

-- Location: LCCOMB_X107_Y38_N22
\Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~17_combout\ = (tx_idx(0) & (tx_idx(1))) # (!tx_idx(0) & ((tx_idx(1) & ((\syn_frame[2][5]~q\))) # (!tx_idx(1) & (\syn_frame[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[0][5]~q\,
	datad => \syn_frame[2][5]~q\,
	combout => \Mux2~17_combout\);

-- Location: FF_X106_Y38_N29
\syn_frame[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[37]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][5]~q\);

-- Location: FF_X107_Y38_N21
\syn_frame[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[21]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][5]~q\);

-- Location: LCCOMB_X107_Y38_N20
\Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~18_combout\ = (\Mux2~17_combout\ & (((\syn_frame[3][5]~q\) # (!tx_idx(0))))) # (!\Mux2~17_combout\ & (\syn_frame[1][5]~q\ & ((tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~17_combout\,
	datab => \syn_frame[1][5]~q\,
	datac => \syn_frame[3][5]~q\,
	datad => tx_idx(0),
	combout => \Mux2~18_combout\);

-- Location: LCCOMB_X107_Y38_N18
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\st.TX_SYN~q\ & ((tx_idx(2) & (\Mux2~16_combout\)) # (!tx_idx(2) & ((\Mux2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~16_combout\,
	datab => \Mux2~18_combout\,
	datac => tx_idx(2),
	datad => \st.TX_SYN~q\,
	combout => \Selector10~2_combout\);

-- Location: FF_X105_Y46_N1
\ack_frame[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[13]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][5]~q\);

-- Location: LCCOMB_X105_Y46_N6
\ack_frame[29][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[29][5]~feeder_combout\ = \client_ip[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[5]~input_o\,
	combout => \ack_frame[29][5]~feeder_combout\);

-- Location: FF_X105_Y46_N7
\ack_frame[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[29][5]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][5]~q\);

-- Location: LCCOMB_X105_Y46_N0
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\ack_frame[29][5]~q\))) # (!tx_idx(0) & (\ack_frame[28][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[28][5]~q\,
	datad => \ack_frame[29][5]~q\,
	combout => \Mux10~6_combout\);

-- Location: FF_X105_Y46_N23
\ack_frame[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[21]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][5]~q\);

-- Location: FF_X105_Y46_N21
\ack_frame[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[29]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][5]~q\);

-- Location: LCCOMB_X105_Y46_N22
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (tx_idx(1) & ((\Mux10~6_combout\ & (\ack_frame[31][5]~q\)) # (!\Mux10~6_combout\ & ((\ack_frame[30][5]~q\))))) # (!tx_idx(1) & (\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux10~6_combout\,
	datac => \ack_frame[31][5]~q\,
	datad => \ack_frame[30][5]~q\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X103_Y46_N26
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux12~10_combout\) # ((\Mux10~7_combout\ & tx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Mux12~10_combout\,
	datad => tx_idx(3),
	combout => \Mux10~8_combout\);

-- Location: IOIBUF_X115_Y35_N15
\client_mac[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(29),
	o => \client_mac[29]~input_o\);

-- Location: FF_X107_Y39_N17
\ack_frame[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[29]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][5]~q\);

-- Location: IOIBUF_X115_Y19_N1
\client_mac[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(13),
	o => \client_mac[13]~input_o\);

-- Location: FF_X107_Y39_N11
\ack_frame[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[13]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][5]~q\);

-- Location: LCCOMB_X107_Y39_N16
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (tx_idx(1) & ((tx_idx(0)) # ((\ack_frame[10][5]~q\)))) # (!tx_idx(1) & (!tx_idx(0) & (\ack_frame[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[8][5]~q\,
	datad => \ack_frame[10][5]~q\,
	combout => \Mux10~2_combout\);

-- Location: IOIBUF_X115_Y35_N22
\client_mac[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(5),
	o => \client_mac[5]~input_o\);

-- Location: FF_X107_Y39_N15
\ack_frame[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[5]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][5]~q\);

-- Location: IOIBUF_X115_Y28_N1
\client_mac[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(21),
	o => \client_mac[21]~input_o\);

-- Location: FF_X107_Y39_N1
\ack_frame[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[21]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][5]~q\);

-- Location: LCCOMB_X107_Y39_N14
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (tx_idx(0) & ((\Mux10~2_combout\ & (\ack_frame[11][5]~q\)) # (!\Mux10~2_combout\ & ((\ack_frame[9][5]~q\))))) # (!tx_idx(0) & (\Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \Mux10~2_combout\,
	datac => \ack_frame[11][5]~q\,
	datad => \ack_frame[9][5]~q\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X107_Y46_N22
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!tx_idx(2) & \Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datad => \Mux10~3_combout\,
	combout => \Mux10~4_combout\);

-- Location: FF_X103_Y46_N13
\ack_frame[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[29]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][5]~q\);

-- Location: FF_X103_Y46_N27
\ack_frame[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[21]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][5]~q\);

-- Location: LCCOMB_X103_Y46_N12
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux5~1_combout\ & ((\Mux5~2_combout\) # ((\ack_frame[27][5]~q\)))) # (!\Mux5~1_combout\ & (!\Mux5~2_combout\ & (\ack_frame[26][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \ack_frame[26][5]~q\,
	datad => \ack_frame[27][5]~q\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X103_Y46_N22
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux5~2_combout\ & ((\Mux10~5_combout\ & (\Mux10~8_combout\)) # (!\Mux10~5_combout\ & ((\Mux10~4_combout\))))) # (!\Mux5~2_combout\ & (((\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~8_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~9_combout\);

-- Location: FF_X105_Y46_N29
\ack_frame[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[13]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][5]~q\);

-- Location: FF_X105_Y46_N27
\ack_frame[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[5]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][5]~q\);

-- Location: LCCOMB_X105_Y46_N10
\ack_frame[33][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[33][5]~feeder_combout\ = \server_ip[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[5]~input_o\,
	combout => \ack_frame[33][5]~feeder_combout\);

-- Location: FF_X105_Y46_N11
\ack_frame[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[33][5]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][5]~q\);

-- Location: FF_X105_Y46_N25
\ack_frame[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[13]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][5]~q\);

-- Location: LCCOMB_X105_Y46_N24
\Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (tx_idx(0) & ((\ack_frame[33][5]~q\) # ((tx_idx(2))))) # (!tx_idx(0) & (((\ack_frame[32][5]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[33][5]~q\,
	datab => tx_idx(0),
	datac => \ack_frame[32][5]~q\,
	datad => tx_idx(2),
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X105_Y46_N26
\Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = (tx_idx(2) & ((\Mux10~10_combout\ & ((\ack_frame[37][5]~q\))) # (!\Mux10~10_combout\ & (\ack_frame[36][5]~q\)))) # (!tx_idx(2) & (((\Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[36][5]~q\,
	datab => tx_idx(2),
	datac => \ack_frame[37][5]~q\,
	datad => \Mux10~10_combout\,
	combout => \Mux10~11_combout\);

-- Location: LCCOMB_X105_Y46_N28
\Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~12_combout\ = (\Mux10~11_combout\ & (!tx_idx(4) & !tx_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~11_combout\,
	datab => tx_idx(4),
	datad => tx_idx(3),
	combout => \Mux10~12_combout\);

-- Location: LCCOMB_X103_Y46_N8
\Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~13_combout\ = (\Mux5~4_combout\ & (((\Mux10~12_combout\) # (!\Mux5~3_combout\)))) # (!\Mux5~4_combout\ & (\Mux10~9_combout\ & (\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~9_combout\,
	datab => \Mux5~4_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux10~12_combout\,
	combout => \Mux10~13_combout\);

-- Location: FF_X103_Y42_N15
\ack_frame[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[5]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][5]~q\);

-- Location: LCCOMB_X103_Y42_N14
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\ack_frame[35][5]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \ack_frame[35][5]~q\,
	datad => tx_idx(3),
	combout => \Mux10~1_combout\);

-- Location: FF_X103_Y42_N29
\ack_frame[34][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[13]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][5]~q\);

-- Location: LCCOMB_X103_Y42_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\ack_frame[34][5]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \ack_frame[34][5]~q\,
	datad => tx_idx(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X103_Y42_N0
\Mux10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~14_combout\ = (\Mux10~13_combout\ & ((\Mux10~1_combout\) # ((!\Mux5~0_combout\)))) # (!\Mux10~13_combout\ & (((\Mux5~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~13_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~14_combout\);

-- Location: FF_X103_Y42_N27
\syn_frame[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[5]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][5]~q\);

-- Location: LCCOMB_X103_Y42_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\syn_frame[35][5]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \syn_frame[35][5]~q\,
	datad => tx_idx(3),
	combout => \Mux2~1_combout\);

-- Location: FF_X103_Y42_N5
\syn_frame[34][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[13]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][5]~q\);

-- Location: LCCOMB_X103_Y42_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\syn_frame[34][5]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \syn_frame[34][5]~q\,
	datad => tx_idx(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X105_Y46_N12
\syn_frame[33][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[33][5]~feeder_combout\ = \server_ip[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[5]~input_o\,
	combout => \syn_frame[33][5]~feeder_combout\);

-- Location: FF_X105_Y46_N13
\syn_frame[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[33][5]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][5]~q\);

-- Location: FF_X105_Y46_N15
\syn_frame[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[13]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][5]~q\);

-- Location: LCCOMB_X105_Y46_N14
\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (tx_idx(0) & ((\syn_frame[33][5]~q\) # ((tx_idx(2))))) # (!tx_idx(0) & (((\syn_frame[32][5]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[33][5]~q\,
	datab => tx_idx(0),
	datac => \syn_frame[32][5]~q\,
	datad => tx_idx(2),
	combout => \Mux2~10_combout\);

-- Location: FF_X105_Y46_N19
\syn_frame[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[13]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][5]~q\);

-- Location: FF_X105_Y46_N9
\syn_frame[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[5]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][5]~q\);

-- Location: LCCOMB_X105_Y46_N8
\Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (\Mux2~10_combout\ & (((\syn_frame[37][5]~q\) # (!tx_idx(2))))) # (!\Mux2~10_combout\ & (\syn_frame[36][5]~q\ & ((tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~10_combout\,
	datab => \syn_frame[36][5]~q\,
	datac => \syn_frame[37][5]~q\,
	datad => tx_idx(2),
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X105_Y46_N18
\Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (!tx_idx(3) & (\Mux2~11_combout\ & !tx_idx(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => \Mux2~11_combout\,
	datad => tx_idx(4),
	combout => \Mux2~12_combout\);

-- Location: FF_X105_Y46_N17
\syn_frame[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[13]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][5]~q\);

-- Location: FF_X105_Y46_N3
\syn_frame[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[5]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][5]~q\);

-- Location: LCCOMB_X105_Y46_N16
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[29][5]~q\))) # (!tx_idx(0) & (\syn_frame[28][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[28][5]~q\,
	datad => \syn_frame[29][5]~q\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X102_Y46_N4
\syn_frame[30][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[30][5]~feeder_combout\ = \server_ip[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[29]~input_o\,
	combout => \syn_frame[30][5]~feeder_combout\);

-- Location: FF_X102_Y46_N5
\syn_frame[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[30][5]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][5]~q\);

-- Location: FF_X102_Y46_N19
\syn_frame[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[21]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][5]~q\);

-- Location: LCCOMB_X102_Y46_N18
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (((\syn_frame[31][5]~q\) # (!tx_idx(1))))) # (!\Mux2~6_combout\ & (\syn_frame[30][5]~q\ & ((tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \syn_frame[30][5]~q\,
	datac => \syn_frame[31][5]~q\,
	datad => tx_idx(1),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X102_Y46_N24
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux12~10_combout\) # ((tx_idx(3) & \Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~10_combout\,
	datac => tx_idx(3),
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: FF_X103_Y46_N17
\syn_frame[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[21]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][5]~q\);

-- Location: FF_X103_Y46_N31
\syn_frame[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[29]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][5]~q\);

-- Location: FF_X107_Y39_N3
\syn_frame[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[21]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][5]~q\);

-- Location: FF_X107_Y39_N13
\syn_frame[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[29]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][5]~q\);

-- Location: LCCOMB_X107_Y39_N12
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (tx_idx(0) & ((\syn_frame[9][5]~q\) # ((tx_idx(1))))) # (!tx_idx(0) & (((\syn_frame[8][5]~q\ & !tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \syn_frame[9][5]~q\,
	datac => \syn_frame[8][5]~q\,
	datad => tx_idx(1),
	combout => \Mux2~2_combout\);

-- Location: FF_X107_Y39_N5
\syn_frame[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[13]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][5]~q\);

-- Location: FF_X107_Y39_N31
\syn_frame[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[5]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][5]~q\);

-- Location: LCCOMB_X107_Y39_N30
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\syn_frame[11][5]~q\) # (!tx_idx(1))))) # (!\Mux2~2_combout\ & (\syn_frame[10][5]~q\ & ((tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \syn_frame[10][5]~q\,
	datac => \syn_frame[11][5]~q\,
	datad => tx_idx(1),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X103_Y42_N12
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (!tx_idx(2) & \Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(2),
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X103_Y46_N30
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\Mux2~4_combout\))) # (!\Mux5~2_combout\ & (\syn_frame[26][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[26][5]~q\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X103_Y46_N16
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux5~1_combout\ & ((\Mux2~5_combout\ & (\Mux2~8_combout\)) # (!\Mux2~5_combout\ & ((\syn_frame[27][5]~q\))))) # (!\Mux5~1_combout\ & (((\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux2~8_combout\,
	datac => \syn_frame[27][5]~q\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X103_Y46_N28
\Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & (\Mux2~12_combout\)) # (!\Mux5~4_combout\ & ((\Mux2~9_combout\))))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux2~12_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux2~9_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X103_Y42_N10
\Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Mux5~0_combout\ & ((\Mux2~13_combout\ & (\Mux2~1_combout\)) # (!\Mux2~13_combout\ & ((\Mux2~0_combout\))))) # (!\Mux5~0_combout\ & (((\Mux2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux2~13_combout\,
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X103_Y42_N6
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Selector15~1_combout\ & ((\Mux10~14_combout\) # ((\Selector15~0_combout\ & \Mux2~14_combout\)))) # (!\Selector15~1_combout\ & (((\Selector15~0_combout\ & \Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~1_combout\,
	datab => \Mux10~14_combout\,
	datac => \Selector15~0_combout\,
	datad => \Mux2~14_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X107_Y42_N8
\Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~0_combout\) # ((\Mux5~5_combout\ & ((\Selector10~1_combout\) # (\Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datab => \Selector10~2_combout\,
	datac => \Selector10~0_combout\,
	datad => \Mux5~5_combout\,
	combout => \Selector10~3_combout\);

-- Location: IOIBUF_X67_Y73_N8
\client_mac[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(14),
	o => \client_mac[14]~input_o\);

-- Location: FF_X98_Y46_N9
\ack_frame[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[14]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][6]~q\);

-- Location: IOIBUF_X87_Y73_N1
\client_mac[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(6),
	o => \client_mac[6]~input_o\);

-- Location: FF_X98_Y46_N11
\ack_frame[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[6]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][6]~q\);

-- Location: IOIBUF_X69_Y73_N22
\client_mac[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(30),
	o => \client_mac[30]~input_o\);

-- Location: FF_X98_Y46_N29
\ack_frame[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[30]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][6]~q\);

-- Location: IOIBUF_X67_Y73_N15
\client_mac[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(22),
	o => \client_mac[22]~input_o\);

-- Location: LCCOMB_X98_Y46_N2
\ack_frame[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[9][6]~feeder_combout\ = \client_mac[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[22]~input_o\,
	combout => \ack_frame[9][6]~feeder_combout\);

-- Location: FF_X98_Y46_N3
\ack_frame[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[9][6]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][6]~q\);

-- Location: LCCOMB_X98_Y46_N28
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\ack_frame[9][6]~q\))) # (!tx_idx(0) & (\ack_frame[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[8][6]~q\,
	datad => \ack_frame[9][6]~q\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X98_Y46_N10
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (tx_idx(1) & ((\Mux9~6_combout\ & ((\ack_frame[11][6]~q\))) # (!\Mux9~6_combout\ & (\ack_frame[10][6]~q\)))) # (!tx_idx(1) & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[10][6]~q\,
	datac => \ack_frame[11][6]~q\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X99_Y46_N6
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (tx_idx(2) & (tx_idx(1) & (!tx_idx(0)))) # (!tx_idx(2) & (((\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(1),
	datac => tx_idx(0),
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X99_Y46_N12
\ack_frame[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[30][6]~feeder_combout\ = \server_ip[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[30]~input_o\,
	combout => \ack_frame[30][6]~feeder_combout\);

-- Location: FF_X99_Y46_N13
\ack_frame[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[30][6]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][6]~q\);

-- Location: FF_X99_Y46_N27
\ack_frame[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[22]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][6]~q\);

-- Location: FF_X99_Y46_N17
\ack_frame[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[14]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][6]~q\);

-- Location: FF_X99_Y46_N3
\ack_frame[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[6]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][6]~q\);

-- Location: LCCOMB_X99_Y46_N16
\Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[29][6]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[28][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[28][6]~q\,
	datad => \ack_frame[29][6]~q\,
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X99_Y46_N26
\Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~11_combout\ = (tx_idx(1) & ((\Mux9~10_combout\ & ((\ack_frame[31][6]~q\))) # (!\Mux9~10_combout\ & (\ack_frame[30][6]~q\)))) # (!tx_idx(1) & (((\Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[30][6]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[31][6]~q\,
	datad => \Mux9~10_combout\,
	combout => \Mux9~11_combout\);

-- Location: LCCOMB_X99_Y46_N20
\Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~12_combout\ = (tx_idx(3) & (((\Mux9~11_combout\)))) # (!tx_idx(3) & (tx_idx(2) & (!tx_idx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(0),
	datac => tx_idx(3),
	datad => \Mux9~11_combout\,
	combout => \Mux9~12_combout\);

-- Location: FF_X99_Y46_N23
\ack_frame[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[30]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][6]~q\);

-- Location: FF_X99_Y46_N29
\ack_frame[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[22]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][6]~q\);

-- Location: LCCOMB_X99_Y46_N22
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux5~1_combout\ & ((\Mux5~2_combout\) # ((\ack_frame[27][6]~q\)))) # (!\Mux5~1_combout\ & (!\Mux5~2_combout\ & (\ack_frame[26][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \ack_frame[26][6]~q\,
	datad => \ack_frame[27][6]~q\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X99_Y46_N10
\Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~13_combout\ = (\Mux9~9_combout\ & (((\Mux9~12_combout\) # (!\Mux5~2_combout\)))) # (!\Mux9~9_combout\ & (\Mux9~8_combout\ & ((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~8_combout\,
	datab => \Mux9~12_combout\,
	datac => \Mux9~9_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux9~13_combout\);

-- Location: FF_X107_Y46_N5
\ack_frame[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[14]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][6]~q\);

-- Location: LCCOMB_X107_Y46_N30
\ack_frame[33][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[33][6]~feeder_combout\ = \server_ip[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[6]~input_o\,
	combout => \ack_frame[33][6]~feeder_combout\);

-- Location: FF_X107_Y46_N31
\ack_frame[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[33][6]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][6]~q\);

-- Location: LCCOMB_X107_Y46_N4
\Mux9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~14_combout\ = (tx_idx(2) & (tx_idx(0))) # (!tx_idx(2) & ((tx_idx(0) & ((\ack_frame[33][6]~q\))) # (!tx_idx(0) & (\ack_frame[32][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(0),
	datac => \ack_frame[32][6]~q\,
	datad => \ack_frame[33][6]~q\,
	combout => \Mux9~14_combout\);

-- Location: FF_X107_Y46_N15
\ack_frame[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[6]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][6]~q\);

-- Location: LCCOMB_X107_Y46_N24
\ack_frame[36][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[36][6]~feeder_combout\ = \server_port[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[14]~input_o\,
	combout => \ack_frame[36][6]~feeder_combout\);

-- Location: FF_X107_Y46_N25
\ack_frame[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[36][6]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][6]~q\);

-- Location: LCCOMB_X107_Y46_N14
\Mux9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~15_combout\ = (tx_idx(2) & ((\Mux9~14_combout\ & (\ack_frame[37][6]~q\)) # (!\Mux9~14_combout\ & ((\ack_frame[36][6]~q\))))) # (!tx_idx(2) & (\Mux9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux9~14_combout\,
	datac => \ack_frame[37][6]~q\,
	datad => \ack_frame[36][6]~q\,
	combout => \Mux9~15_combout\);

-- Location: LCCOMB_X103_Y43_N24
\Mux9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~16_combout\ = (!tx_idx(3) & (!tx_idx(4) & \Mux9~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datac => tx_idx(4),
	datad => \Mux9~15_combout\,
	combout => \Mux9~16_combout\);

-- Location: LCCOMB_X103_Y43_N22
\Mux9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~17_combout\ = (\Mux5~4_combout\ & (((\Mux9~16_combout\)) # (!\Mux5~3_combout\))) # (!\Mux5~4_combout\ & (\Mux5~3_combout\ & (\Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux9~13_combout\,
	datad => \Mux9~16_combout\,
	combout => \Mux9~17_combout\);

-- Location: FF_X103_Y43_N3
\ack_frame[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[6]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][6]~q\);

-- Location: LCCOMB_X103_Y43_N2
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (!tx_idx(3) & (!tx_idx(4) & (\ack_frame[35][6]~q\ & !tx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \ack_frame[35][6]~q\,
	datad => tx_idx(2),
	combout => \Mux9~5_combout\);

-- Location: FF_X103_Y43_N29
\ack_frame[34][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[14]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][6]~q\);

-- Location: LCCOMB_X103_Y43_N28
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!tx_idx(4) & ((tx_idx(3) & ((tx_idx(2)))) # (!tx_idx(3) & (\ack_frame[34][6]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \ack_frame[34][6]~q\,
	datad => tx_idx(2),
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X103_Y43_N20
\Mux9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~18_combout\ = (\Mux9~17_combout\ & ((\Mux9~5_combout\) # ((!\Mux5~0_combout\)))) # (!\Mux9~17_combout\ & (((\Mux5~0_combout\ & \Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~17_combout\,
	datab => \Mux9~5_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~18_combout\);

-- Location: LCCOMB_X103_Y43_N26
\Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector15~1_combout\ & \Mux9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector15~1_combout\,
	datad => \Mux9~18_combout\,
	combout => \Selector9~3_combout\);

-- Location: IOIBUF_X102_Y0_N22
\server_mac[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(14),
	o => \server_mac[14]~input_o\);

-- Location: FF_X106_Y38_N31
\ack_frame[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[14]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][6]~q\);

-- Location: IOIBUF_X105_Y0_N15
\server_mac[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(6),
	o => \server_mac[6]~input_o\);

-- Location: FF_X106_Y38_N17
\ack_frame[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[6]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][6]~q\);

-- Location: LCCOMB_X106_Y38_N30
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\ack_frame[5][6]~q\))) # (!tx_idx(0) & (\ack_frame[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[4][6]~q\,
	datad => \ack_frame[5][6]~q\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X105_Y0_N22
\client_mac[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(46),
	o => \client_mac[46]~input_o\);

-- Location: FF_X106_Y38_N19
\ack_frame[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[46]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][6]~q\);

-- Location: IOIBUF_X115_Y15_N1
\client_mac[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(38),
	o => \client_mac[38]~input_o\);

-- Location: FF_X106_Y38_N13
\ack_frame[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[38]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][6]~q\);

-- Location: LCCOMB_X106_Y38_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\ack_frame[7][6]~q\) # (!tx_idx(1))))) # (!\Mux9~0_combout\ & (\ack_frame[6][6]~q\ & ((tx_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \ack_frame[6][6]~q\,
	datac => \ack_frame[7][6]~q\,
	datad => tx_idx(1),
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X115_Y26_N22
\server_mac[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(46),
	o => \server_mac[46]~input_o\);

-- Location: FF_X108_Y37_N13
\ack_frame[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[46]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][6]~q\);

-- Location: IOIBUF_X115_Y21_N15
\server_mac[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(30),
	o => \server_mac[30]~input_o\);

-- Location: LCCOMB_X108_Y37_N6
\ack_frame[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][6]~feeder_combout\ = \server_mac[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[30]~input_o\,
	combout => \ack_frame[2][6]~feeder_combout\);

-- Location: FF_X108_Y37_N7
\ack_frame[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][6]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][6]~q\);

-- Location: LCCOMB_X108_Y37_N12
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (tx_idx(1) & ((tx_idx(0)) # ((\ack_frame[2][6]~q\)))) # (!tx_idx(1) & (!tx_idx(0) & (\ack_frame[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \ack_frame[0][6]~q\,
	datad => \ack_frame[2][6]~q\,
	combout => \Mux9~2_combout\);

-- Location: IOIBUF_X115_Y26_N15
\server_mac[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(38),
	o => \server_mac[38]~input_o\);

-- Location: LCCOMB_X108_Y37_N4
\ack_frame[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[1][6]~feeder_combout\ = \server_mac[38]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[38]~input_o\,
	combout => \ack_frame[1][6]~feeder_combout\);

-- Location: FF_X108_Y37_N5
\ack_frame[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[1][6]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][6]~q\);

-- Location: IOIBUF_X115_Y33_N8
\server_mac[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(22),
	o => \server_mac[22]~input_o\);

-- Location: FF_X108_Y37_N15
\ack_frame[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[22]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][6]~q\);

-- Location: LCCOMB_X108_Y37_N14
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((\ack_frame[3][6]~q\) # (!tx_idx(0))))) # (!\Mux9~2_combout\ & (\ack_frame[1][6]~q\ & ((tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \ack_frame[1][6]~q\,
	datac => \ack_frame[3][6]~q\,
	datad => tx_idx(0),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X106_Y38_N22
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux9~1_combout\)) # (!tx_idx(2) & ((\Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux9~3_combout\,
	datac => tx_idx(2),
	datad => \st.TX_ACK~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X108_Y37_N21
\syn_frame[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[46]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][6]~q\);

-- Location: LCCOMB_X108_Y37_N10
\syn_frame[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][6]~feeder_combout\ = \server_mac[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[30]~input_o\,
	combout => \syn_frame[2][6]~feeder_combout\);

-- Location: FF_X108_Y37_N11
\syn_frame[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][6]~q\);

-- Location: LCCOMB_X108_Y37_N20
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (tx_idx(1) & ((tx_idx(0)) # ((\syn_frame[2][6]~q\)))) # (!tx_idx(1) & (!tx_idx(0) & (\syn_frame[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[0][6]~q\,
	datad => \syn_frame[2][6]~q\,
	combout => \Mux1~2_combout\);

-- Location: FF_X108_Y37_N31
\syn_frame[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[22]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][6]~q\);

-- Location: LCCOMB_X108_Y37_N0
\syn_frame[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[1][6]~feeder_combout\ = \server_mac[38]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[38]~input_o\,
	combout => \syn_frame[1][6]~feeder_combout\);

-- Location: FF_X108_Y37_N1
\syn_frame[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[1][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][6]~q\);

-- Location: LCCOMB_X108_Y37_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (tx_idx(0) & ((\Mux1~2_combout\ & (\syn_frame[3][6]~q\)) # (!\Mux1~2_combout\ & ((\syn_frame[1][6]~q\))))) # (!tx_idx(0) & (\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => \Mux1~2_combout\,
	datac => \syn_frame[3][6]~q\,
	datad => \syn_frame[1][6]~q\,
	combout => \Mux1~3_combout\);

-- Location: FF_X106_Y38_N21
\syn_frame[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[14]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][6]~q\);

-- Location: FF_X106_Y38_N7
\syn_frame[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[6]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][6]~q\);

-- Location: LCCOMB_X106_Y38_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[5][6]~q\))) # (!tx_idx(0) & (\syn_frame[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[4][6]~q\,
	datad => \syn_frame[5][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X106_Y38_N11
\syn_frame[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[38]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][6]~q\);

-- Location: LCCOMB_X106_Y38_N24
\syn_frame[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[6][6]~feeder_combout\ = \client_mac[46]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[46]~input_o\,
	combout => \syn_frame[6][6]~feeder_combout\);

-- Location: FF_X106_Y38_N25
\syn_frame[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[6][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][6]~q\);

-- Location: LCCOMB_X106_Y38_N10
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (tx_idx(1) & ((\Mux1~0_combout\ & (\syn_frame[7][6]~q\)) # (!\Mux1~0_combout\ & ((\syn_frame[6][6]~q\))))) # (!tx_idx(1) & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux1~0_combout\,
	datac => \syn_frame[7][6]~q\,
	datad => \syn_frame[6][6]~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X106_Y38_N18
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (tx_idx(2) & ((\Mux1~1_combout\))) # (!tx_idx(2) & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => tx_idx(2),
	datad => \Mux1~1_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X106_Y38_N0
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Mux5~5_combout\ & ((\Selector9~0_combout\) # ((\st.TX_SYN~q\ & \Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \st.TX_SYN~q\,
	datac => \Selector9~1_combout\,
	datad => \Mux5~5_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X107_Y46_N18
\syn_frame[33][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[33][6]~feeder_combout\ = \server_ip[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[6]~input_o\,
	combout => \syn_frame[33][6]~feeder_combout\);

-- Location: FF_X107_Y46_N19
\syn_frame[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[33][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][6]~q\);

-- Location: FF_X107_Y46_N21
\syn_frame[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[14]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][6]~q\);

-- Location: LCCOMB_X107_Y46_N20
\Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (tx_idx(2) & (((tx_idx(0))))) # (!tx_idx(2) & ((tx_idx(0) & (\syn_frame[33][6]~q\)) # (!tx_idx(0) & ((\syn_frame[32][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \syn_frame[33][6]~q\,
	datac => \syn_frame[32][6]~q\,
	datad => tx_idx(0),
	combout => \Mux1~14_combout\);

-- Location: FF_X107_Y46_N3
\syn_frame[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[6]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][6]~q\);

-- Location: LCCOMB_X107_Y46_N12
\syn_frame[36][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[36][6]~feeder_combout\ = \server_port[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[14]~input_o\,
	combout => \syn_frame[36][6]~feeder_combout\);

-- Location: FF_X107_Y46_N13
\syn_frame[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[36][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][6]~q\);

-- Location: LCCOMB_X107_Y46_N2
\Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (tx_idx(2) & ((\Mux1~14_combout\ & (\syn_frame[37][6]~q\)) # (!\Mux1~14_combout\ & ((\syn_frame[36][6]~q\))))) # (!tx_idx(2) & (\Mux1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux1~14_combout\,
	datac => \syn_frame[37][6]~q\,
	datad => \syn_frame[36][6]~q\,
	combout => \Mux1~15_combout\);

-- Location: LCCOMB_X103_Y43_N0
\Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (!tx_idx(3) & (!tx_idx(4) & \Mux1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datac => tx_idx(4),
	datad => \Mux1~15_combout\,
	combout => \Mux1~16_combout\);

-- Location: FF_X101_Y45_N31
\syn_frame[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[14]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][6]~q\);

-- Location: LCCOMB_X101_Y45_N20
\syn_frame[29][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[29][6]~feeder_combout\ = \client_ip[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[6]~input_o\,
	combout => \syn_frame[29][6]~feeder_combout\);

-- Location: FF_X101_Y45_N21
\syn_frame[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[29][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][6]~q\);

-- Location: LCCOMB_X101_Y45_N30
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\syn_frame[29][6]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\syn_frame[28][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \syn_frame[28][6]~q\,
	datad => \syn_frame[29][6]~q\,
	combout => \Mux1~10_combout\);

-- Location: FF_X101_Y45_N5
\syn_frame[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[22]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][6]~q\);

-- Location: LCCOMB_X101_Y45_N2
\syn_frame[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[30][6]~feeder_combout\ = \server_ip[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[30]~input_o\,
	combout => \syn_frame[30][6]~feeder_combout\);

-- Location: FF_X101_Y45_N3
\syn_frame[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[30][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][6]~q\);

-- Location: LCCOMB_X101_Y45_N4
\Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\Mux1~10_combout\ & (((\syn_frame[31][6]~q\)) # (!tx_idx(1)))) # (!\Mux1~10_combout\ & (tx_idx(1) & ((\syn_frame[30][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~10_combout\,
	datab => tx_idx(1),
	datac => \syn_frame[31][6]~q\,
	datad => \syn_frame[30][6]~q\,
	combout => \Mux1~11_combout\);

-- Location: LCCOMB_X101_Y45_N14
\Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (tx_idx(3) & (((\Mux1~11_combout\)))) # (!tx_idx(3) & (!tx_idx(0) & (tx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(2),
	datac => \Mux1~11_combout\,
	datad => tx_idx(3),
	combout => \Mux1~12_combout\);

-- Location: FF_X101_Y45_N9
\syn_frame[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[22]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][6]~q\);

-- Location: FF_X101_Y45_N1
\syn_frame[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[30]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][6]~q\);

-- Location: FF_X98_Y46_N5
\syn_frame[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[14]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][6]~q\);

-- Location: FF_X98_Y46_N31
\syn_frame[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[6]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][6]~q\);

-- Location: FF_X98_Y46_N17
\syn_frame[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[30]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][6]~q\);

-- Location: LCCOMB_X98_Y46_N6
\syn_frame[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][6]~feeder_combout\ = \client_mac[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[22]~input_o\,
	combout => \syn_frame[9][6]~feeder_combout\);

-- Location: FF_X98_Y46_N7
\syn_frame[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][6]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][6]~q\);

-- Location: LCCOMB_X98_Y46_N16
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (tx_idx(1) & (tx_idx(0))) # (!tx_idx(1) & ((tx_idx(0) & ((\syn_frame[9][6]~q\))) # (!tx_idx(0) & (\syn_frame[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => tx_idx(0),
	datac => \syn_frame[8][6]~q\,
	datad => \syn_frame[9][6]~q\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X98_Y46_N30
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (tx_idx(1) & ((\Mux1~6_combout\ & ((\syn_frame[11][6]~q\))) # (!\Mux1~6_combout\ & (\syn_frame[10][6]~q\)))) # (!tx_idx(1) & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[10][6]~q\,
	datac => \syn_frame[11][6]~q\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X101_Y45_N10
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (tx_idx(2) & (!tx_idx(0) & (tx_idx(1)))) # (!tx_idx(2) & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \Mux1~7_combout\,
	datad => tx_idx(2),
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X101_Y45_N0
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\Mux1~8_combout\))) # (!\Mux5~2_combout\ & (\syn_frame[26][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[26][6]~q\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X101_Y45_N8
\Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\Mux5~1_combout\ & ((\Mux1~9_combout\ & (\Mux1~12_combout\)) # (!\Mux1~9_combout\ & ((\syn_frame[27][6]~q\))))) # (!\Mux5~1_combout\ & (((\Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux1~12_combout\,
	datac => \syn_frame[27][6]~q\,
	datad => \Mux1~9_combout\,
	combout => \Mux1~13_combout\);

-- Location: LCCOMB_X103_Y43_N10
\Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = (\Mux5~4_combout\ & ((\Mux1~16_combout\) # ((!\Mux5~3_combout\)))) # (!\Mux5~4_combout\ & (((\Mux1~13_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux1~16_combout\,
	datac => \Mux1~13_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux1~17_combout\);

-- Location: FF_X103_Y43_N9
\syn_frame[34][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[14]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][6]~q\);

-- Location: LCCOMB_X103_Y43_N8
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!tx_idx(4) & ((tx_idx(3) & ((tx_idx(2)))) # (!tx_idx(3) & (\syn_frame[34][6]~q\ & !tx_idx(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \syn_frame[34][6]~q\,
	datad => tx_idx(2),
	combout => \Mux1~4_combout\);

-- Location: FF_X103_Y43_N19
\syn_frame[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[6]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][6]~q\);

-- Location: LCCOMB_X103_Y43_N18
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!tx_idx(3) & (!tx_idx(4) & (\syn_frame[35][6]~q\ & !tx_idx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datac => \syn_frame[35][6]~q\,
	datad => tx_idx(2),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X103_Y43_N16
\Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~18_combout\ = (\Mux1~17_combout\ & (((\Mux1~5_combout\) # (!\Mux5~0_combout\)))) # (!\Mux1~17_combout\ & (\Mux1~4_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~17_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~18_combout\);

-- Location: LCCOMB_X103_Y43_N14
\Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (\Selector9~3_combout\) # ((\Selector9~2_combout\) # ((\Selector15~0_combout\ & \Mux1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~3_combout\,
	datab => \Selector15~0_combout\,
	datac => \Selector9~2_combout\,
	datad => \Mux1~18_combout\,
	combout => \Selector9~4_combout\);

-- Location: IOIBUF_X115_Y10_N8
\server_mac[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(31),
	o => \server_mac[31]~input_o\);

-- Location: LCCOMB_X107_Y37_N6
\syn_frame[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[2][7]~feeder_combout\ = \server_mac[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[31]~input_o\,
	combout => \syn_frame[2][7]~feeder_combout\);

-- Location: FF_X107_Y37_N7
\syn_frame[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[2][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[2][7]~q\);

-- Location: IOIBUF_X115_Y16_N8
\server_mac[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(47),
	o => \server_mac[47]~input_o\);

-- Location: FF_X107_Y37_N13
\syn_frame[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[47]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[0][7]~q\);

-- Location: LCCOMB_X107_Y37_N12
\Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (tx_idx(1) & ((\syn_frame[2][7]~q\) # ((tx_idx(0))))) # (!tx_idx(1) & (((\syn_frame[0][7]~q\ & !tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[2][7]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[0][7]~q\,
	datad => tx_idx(0),
	combout => \Mux0~16_combout\);

-- Location: IOIBUF_X115_Y29_N1
\server_mac[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(39),
	o => \server_mac[39]~input_o\);

-- Location: LCCOMB_X107_Y37_N16
\syn_frame[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[1][7]~feeder_combout\ = \server_mac[39]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[39]~input_o\,
	combout => \syn_frame[1][7]~feeder_combout\);

-- Location: FF_X107_Y37_N17
\syn_frame[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[1][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[1][7]~q\);

-- Location: IOIBUF_X115_Y17_N1
\server_mac[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(23),
	o => \server_mac[23]~input_o\);

-- Location: FF_X107_Y37_N3
\syn_frame[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[23]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[3][7]~q\);

-- Location: LCCOMB_X107_Y37_N2
\Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (\Mux0~16_combout\ & (((\syn_frame[3][7]~q\) # (!tx_idx(0))))) # (!\Mux0~16_combout\ & (\syn_frame[1][7]~q\ & ((tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~16_combout\,
	datab => \syn_frame[1][7]~q\,
	datac => \syn_frame[3][7]~q\,
	datad => tx_idx(0),
	combout => \Mux0~17_combout\);

-- Location: IOIBUF_X111_Y0_N1
\server_mac[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(7),
	o => \server_mac[7]~input_o\);

-- Location: FF_X107_Y37_N23
\syn_frame[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[7]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[5][7]~q\);

-- Location: IOIBUF_X107_Y0_N8
\server_mac[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_server_mac(15),
	o => \server_mac[15]~input_o\);

-- Location: FF_X107_Y37_N5
\syn_frame[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[15]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[4][7]~q\);

-- Location: LCCOMB_X107_Y37_N4
\Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\syn_frame[5][7]~q\)) # (!tx_idx(0) & ((\syn_frame[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[5][7]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[4][7]~q\,
	datad => tx_idx(0),
	combout => \Mux0~14_combout\);

-- Location: IOIBUF_X115_Y17_N8
\client_mac[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(39),
	o => \client_mac[39]~input_o\);

-- Location: FF_X107_Y37_N15
\syn_frame[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[39]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[7][7]~q\);

-- Location: IOIBUF_X115_Y5_N15
\client_mac[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(47),
	o => \client_mac[47]~input_o\);

-- Location: LCCOMB_X107_Y37_N20
\syn_frame[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[6][7]~feeder_combout\ = \client_mac[47]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[47]~input_o\,
	combout => \syn_frame[6][7]~feeder_combout\);

-- Location: FF_X107_Y37_N21
\syn_frame[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[6][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[6][7]~q\);

-- Location: LCCOMB_X107_Y37_N14
\Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (tx_idx(1) & ((\Mux0~14_combout\ & (\syn_frame[7][7]~q\)) # (!\Mux0~14_combout\ & ((\syn_frame[6][7]~q\))))) # (!tx_idx(1) & (\Mux0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \Mux0~14_combout\,
	datac => \syn_frame[7][7]~q\,
	datad => \syn_frame[6][7]~q\,
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X107_Y40_N18
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\st.TX_SYN~q\ & ((tx_idx(2) & ((\Mux0~15_combout\))) # (!tx_idx(2) & (\Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux0~17_combout\,
	datac => \st.TX_SYN~q\,
	datad => \Mux0~15_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X101_Y43_N30
\ack_frame[27][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[27][7]~feeder_combout\ = \client_ip[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[23]~input_o\,
	combout => \ack_frame[27][7]~feeder_combout\);

-- Location: FF_X101_Y43_N31
\ack_frame[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[27][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[27][7]~q\);

-- Location: FF_X101_Y43_N5
\ack_frame[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[31]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[26][7]~q\);

-- Location: LCCOMB_X101_Y43_N4
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux5~1_combout\ & ((\ack_frame[27][7]~q\) # ((\Mux5~2_combout\)))) # (!\Mux5~1_combout\ & (((\ack_frame[26][7]~q\ & !\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[27][7]~q\,
	datab => \Mux5~1_combout\,
	datac => \ack_frame[26][7]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X91_Y0_N15
\client_mac[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(23),
	o => \client_mac[23]~input_o\);

-- Location: LCCOMB_X98_Y37_N12
\ack_frame[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[9][7]~feeder_combout\ = \client_mac[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[23]~input_o\,
	combout => \ack_frame[9][7]~feeder_combout\);

-- Location: FF_X98_Y37_N13
\ack_frame[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[9][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[9][7]~q\);

-- Location: IOIBUF_X89_Y0_N1
\client_mac[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(7),
	o => \client_mac[7]~input_o\);

-- Location: FF_X98_Y37_N3
\ack_frame[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[7]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[11][7]~q\);

-- Location: IOIBUF_X94_Y0_N8
\client_mac[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(15),
	o => \client_mac[15]~input_o\);

-- Location: LCCOMB_X98_Y37_N10
\ack_frame[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[10][7]~feeder_combout\ = \client_mac[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[15]~input_o\,
	combout => \ack_frame[10][7]~feeder_combout\);

-- Location: FF_X98_Y37_N11
\ack_frame[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[10][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[10][7]~q\);

-- Location: IOIBUF_X98_Y0_N22
\client_mac[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_client_mac(31),
	o => \client_mac[31]~input_o\);

-- Location: FF_X98_Y37_N29
\ack_frame[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[31]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[8][7]~q\);

-- Location: LCCOMB_X98_Y37_N28
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (tx_idx(1) & ((\ack_frame[10][7]~q\) # ((tx_idx(0))))) # (!tx_idx(1) & (((\ack_frame[8][7]~q\ & !tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[10][7]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[8][7]~q\,
	datad => tx_idx(0),
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X98_Y37_N2
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (tx_idx(0) & ((\Mux8~3_combout\ & ((\ack_frame[11][7]~q\))) # (!\Mux8~3_combout\ & (\ack_frame[9][7]~q\)))) # (!tx_idx(0) & (((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[9][7]~q\,
	datab => tx_idx(0),
	datac => \ack_frame[11][7]~q\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: FF_X100_Y46_N7
\ack_frame[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[15]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[28][7]~q\);

-- Location: FF_X100_Y46_N13
\ack_frame[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[7]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[29][7]~q\);

-- Location: LCCOMB_X100_Y46_N6
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (tx_idx(0) & ((tx_idx(1)) # ((\ack_frame[29][7]~q\)))) # (!tx_idx(0) & (!tx_idx(1) & (\ack_frame[28][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(0),
	datab => tx_idx(1),
	datac => \ack_frame[28][7]~q\,
	datad => \ack_frame[29][7]~q\,
	combout => \Mux8~5_combout\);

-- Location: FF_X100_Y46_N29
\ack_frame[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[23]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[31][7]~q\);

-- Location: FF_X100_Y46_N19
\ack_frame[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[31]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[30][7]~q\);

-- Location: LCCOMB_X100_Y46_N28
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & (((\ack_frame[31][7]~q\)) # (!tx_idx(1)))) # (!\Mux8~5_combout\ & (tx_idx(1) & ((\ack_frame[30][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => tx_idx(1),
	datac => \ack_frame[31][7]~q\,
	datad => \ack_frame[30][7]~q\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X101_Y43_N10
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~2_combout\ & (((tx_idx(3) & \Mux8~6_combout\)))) # (!\Mux8~2_combout\ & (\Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux8~2_combout\,
	datac => tx_idx(3),
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X101_Y43_N20
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux5~2_combout\ & (\Mux8~7_combout\ & ((\Mux8~2_combout\) # (!tx_idx(2))))) # (!\Mux5~2_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux5~2_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~8_combout\);

-- Location: FF_X107_Y46_N27
\ack_frame[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[15]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[32][7]~q\);

-- Location: LCCOMB_X107_Y46_N0
\ack_frame[33][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[33][7]~feeder_combout\ = \server_ip[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[7]~input_o\,
	combout => \ack_frame[33][7]~feeder_combout\);

-- Location: FF_X107_Y46_N1
\ack_frame[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[33][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[33][7]~q\);

-- Location: LCCOMB_X107_Y46_N26
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (tx_idx(2) & (tx_idx(0))) # (!tx_idx(2) & ((tx_idx(0) & ((\ack_frame[33][7]~q\))) # (!tx_idx(0) & (\ack_frame[32][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(0),
	datac => \ack_frame[32][7]~q\,
	datad => \ack_frame[33][7]~q\,
	combout => \Mux8~9_combout\);

-- Location: FF_X108_Y44_N31
\ack_frame[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[7]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[37][7]~q\);

-- Location: LCCOMB_X108_Y44_N0
\ack_frame[36][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[36][7]~feeder_combout\ = \server_port[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[15]~input_o\,
	combout => \ack_frame[36][7]~feeder_combout\);

-- Location: FF_X108_Y44_N1
\ack_frame[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[36][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[36][7]~q\);

-- Location: LCCOMB_X108_Y44_N30
\Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\Mux8~9_combout\ & (((\ack_frame[37][7]~q\)) # (!tx_idx(2)))) # (!\Mux8~9_combout\ & (tx_idx(2) & ((\ack_frame[36][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~9_combout\,
	datab => tx_idx(2),
	datac => \ack_frame[37][7]~q\,
	datad => \ack_frame[36][7]~q\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X102_Y42_N28
\Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (!tx_idx(3) & (!tx_idx(4) & \Mux8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(3),
	datac => tx_idx(4),
	datad => \Mux8~10_combout\,
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X102_Y42_N18
\Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & ((\Mux8~11_combout\))) # (!\Mux5~4_combout\ & (\Mux8~8_combout\)))) # (!\Mux5~3_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux8~11_combout\,
	combout => \Mux8~12_combout\);

-- Location: FF_X103_Y42_N25
\ack_frame[34][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[15]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[34][7]~q\);

-- Location: LCCOMB_X103_Y42_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\ack_frame[34][7]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \ack_frame[34][7]~q\,
	datad => tx_idx(3),
	combout => \Mux8~0_combout\);

-- Location: FF_X103_Y42_N19
\ack_frame[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[7]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[35][7]~q\);

-- Location: LCCOMB_X103_Y42_N18
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\ack_frame[35][7]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \ack_frame[35][7]~q\,
	datad => tx_idx(3),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X103_Y42_N16
\Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~13_combout\ = (\Mux8~12_combout\ & (((\Mux8~1_combout\) # (!\Mux5~0_combout\)))) # (!\Mux8~12_combout\ & (\Mux8~0_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~12_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~13_combout\);

-- Location: FF_X103_Y42_N23
\syn_frame[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[7]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[35][7]~q\);

-- Location: LCCOMB_X103_Y42_N22
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\syn_frame[35][7]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \syn_frame[35][7]~q\,
	datad => tx_idx(3),
	combout => \Mux0~1_combout\);

-- Location: FF_X103_Y42_N9
\syn_frame[34][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_port[15]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[34][7]~q\);

-- Location: LCCOMB_X103_Y42_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!tx_idx(4) & (!tx_idx(2) & (\syn_frame[34][7]~q\ & !tx_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(4),
	datab => tx_idx(2),
	datac => \syn_frame[34][7]~q\,
	datad => tx_idx(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X101_Y45_N7
\syn_frame[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[23]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[27][7]~q\);

-- Location: LCCOMB_X101_Y45_N24
\syn_frame[26][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[26][7]~feeder_combout\ = \client_ip[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[31]~input_o\,
	combout => \syn_frame[26][7]~feeder_combout\);

-- Location: FF_X101_Y45_N25
\syn_frame[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[26][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[26][7]~q\);

-- Location: LCCOMB_X101_Y45_N6
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux5~1_combout\ & ((\Mux5~2_combout\) # ((\syn_frame[27][7]~q\)))) # (!\Mux5~1_combout\ & (!\Mux5~2_combout\ & ((\syn_frame[26][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \syn_frame[27][7]~q\,
	datad => \syn_frame[26][7]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X98_Y37_N4
\syn_frame[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[10][7]~feeder_combout\ = \client_mac[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[15]~input_o\,
	combout => \syn_frame[10][7]~feeder_combout\);

-- Location: FF_X98_Y37_N5
\syn_frame[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[10][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[10][7]~q\);

-- Location: FF_X98_Y37_N19
\syn_frame[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[7]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[11][7]~q\);

-- Location: LCCOMB_X98_Y37_N22
\syn_frame[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[9][7]~feeder_combout\ = \client_mac[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[23]~input_o\,
	combout => \syn_frame[9][7]~feeder_combout\);

-- Location: FF_X98_Y37_N23
\syn_frame[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[9][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[9][7]~q\);

-- Location: FF_X98_Y37_N17
\syn_frame[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[31]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[8][7]~q\);

-- Location: LCCOMB_X98_Y37_N16
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\syn_frame[9][7]~q\)) # (!tx_idx(0) & ((\syn_frame[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[9][7]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[8][7]~q\,
	datad => tx_idx(0),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X98_Y37_N18
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (tx_idx(1) & ((\Mux0~3_combout\ & ((\syn_frame[11][7]~q\))) # (!\Mux0~3_combout\ & (\syn_frame[10][7]~q\)))) # (!tx_idx(1) & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \syn_frame[10][7]~q\,
	datac => \syn_frame[11][7]~q\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X107_Y43_N6
\syn_frame[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[30][7]~feeder_combout\ = \server_ip[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[31]~input_o\,
	combout => \syn_frame[30][7]~feeder_combout\);

-- Location: FF_X107_Y43_N7
\syn_frame[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[30][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[30][7]~q\);

-- Location: FF_X107_Y43_N3
\syn_frame[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[23]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[31][7]~q\);

-- Location: LCCOMB_X102_Y43_N6
\syn_frame[29][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[29][7]~feeder_combout\ = \client_ip[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_ip[7]~input_o\,
	combout => \syn_frame[29][7]~feeder_combout\);

-- Location: FF_X102_Y43_N7
\syn_frame[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[29][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[29][7]~q\);

-- Location: FF_X107_Y43_N17
\syn_frame[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_ip[15]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[28][7]~q\);

-- Location: LCCOMB_X107_Y43_N16
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\syn_frame[29][7]~q\)) # (!tx_idx(0) & ((\syn_frame[28][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[29][7]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[28][7]~q\,
	datad => tx_idx(0),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X107_Y43_N2
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (tx_idx(1) & ((\Mux0~5_combout\ & ((\syn_frame[31][7]~q\))) # (!\Mux0~5_combout\ & (\syn_frame[30][7]~q\)))) # (!tx_idx(1) & (((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syn_frame[30][7]~q\,
	datab => tx_idx(1),
	datac => \syn_frame[31][7]~q\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X101_Y45_N28
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~2_combout\ & (((\Mux0~6_combout\ & tx_idx(3))))) # (!\Mux0~2_combout\ & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~4_combout\,
	datac => \Mux0~6_combout\,
	datad => tx_idx(3),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X101_Y45_N18
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux5~2_combout\ & (\Mux0~7_combout\ & ((\Mux0~2_combout\) # (!tx_idx(2))))) # (!\Mux5~2_combout\ & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~7_combout\,
	datac => \Mux5~2_combout\,
	datad => tx_idx(2),
	combout => \Mux0~8_combout\);

-- Location: FF_X107_Y46_N9
\syn_frame[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_ip[15]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[32][7]~q\);

-- Location: LCCOMB_X107_Y46_N10
\syn_frame[33][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[33][7]~feeder_combout\ = \server_ip[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_ip[7]~input_o\,
	combout => \syn_frame[33][7]~feeder_combout\);

-- Location: FF_X107_Y46_N11
\syn_frame[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[33][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[33][7]~q\);

-- Location: LCCOMB_X107_Y46_N8
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (tx_idx(2) & (tx_idx(0))) # (!tx_idx(2) & ((tx_idx(0) & ((\syn_frame[33][7]~q\))) # (!tx_idx(0) & (\syn_frame[32][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => tx_idx(0),
	datac => \syn_frame[32][7]~q\,
	datad => \syn_frame[33][7]~q\,
	combout => \Mux0~9_combout\);

-- Location: FF_X107_Y46_N7
\syn_frame[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_port[7]~input_o\,
	sload => VCC,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[37][7]~q\);

-- Location: LCCOMB_X107_Y46_N16
\syn_frame[36][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syn_frame[36][7]~feeder_combout\ = \server_port[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_port[15]~input_o\,
	combout => \syn_frame[36][7]~feeder_combout\);

-- Location: FF_X107_Y46_N17
\syn_frame[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syn_frame[36][7]~feeder_combout\,
	ena => \syn_frame[29][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syn_frame[36][7]~q\);

-- Location: LCCOMB_X107_Y46_N6
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (tx_idx(2) & ((\Mux0~9_combout\ & (\syn_frame[37][7]~q\)) # (!\Mux0~9_combout\ & ((\syn_frame[36][7]~q\))))) # (!tx_idx(2) & (\Mux0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(2),
	datab => \Mux0~9_combout\,
	datac => \syn_frame[37][7]~q\,
	datad => \syn_frame[36][7]~q\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X107_Y42_N18
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (!tx_idx(3) & (!tx_idx(4) & \Mux0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(3),
	datab => tx_idx(4),
	datad => \Mux0~10_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X103_Y42_N20
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Mux5~4_combout\ & (((\Mux0~11_combout\)) # (!\Mux5~3_combout\))) # (!\Mux5~4_combout\ & (\Mux5~3_combout\ & (\Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux0~8_combout\,
	datad => \Mux0~11_combout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X103_Y42_N2
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (\Mux5~0_combout\ & ((\Mux0~12_combout\ & (\Mux0~1_combout\)) # (!\Mux0~12_combout\ & ((\Mux0~0_combout\))))) # (!\Mux5~0_combout\ & (((\Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux0~12_combout\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X103_Y42_N30
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector15~1_combout\ & ((\Mux8~13_combout\) # ((\Selector15~0_combout\ & \Mux0~13_combout\)))) # (!\Selector15~1_combout\ & (((\Selector15~0_combout\ & \Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~1_combout\,
	datab => \Mux8~13_combout\,
	datac => \Selector15~0_combout\,
	datad => \Mux0~13_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X107_Y37_N1
\ack_frame[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[7]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[5][7]~q\);

-- Location: LCCOMB_X107_Y37_N26
\ack_frame[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[6][7]~feeder_combout\ = \client_mac[47]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \client_mac[47]~input_o\,
	combout => \ack_frame[6][7]~feeder_combout\);

-- Location: FF_X107_Y37_N27
\ack_frame[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[6][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[6][7]~q\);

-- Location: FF_X107_Y37_N9
\ack_frame[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[15]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[4][7]~q\);

-- Location: LCCOMB_X107_Y37_N8
\Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~14_combout\ = (tx_idx(1) & ((\ack_frame[6][7]~q\) # ((tx_idx(0))))) # (!tx_idx(1) & (((\ack_frame[4][7]~q\ & !tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[6][7]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[4][7]~q\,
	datad => tx_idx(0),
	combout => \Mux8~14_combout\);

-- Location: FF_X107_Y37_N31
\ack_frame[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \client_mac[39]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[7][7]~q\);

-- Location: LCCOMB_X107_Y37_N30
\Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~15_combout\ = (\Mux8~14_combout\ & (((\ack_frame[7][7]~q\) # (!tx_idx(0))))) # (!\Mux8~14_combout\ & (\ack_frame[5][7]~q\ & ((tx_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[5][7]~q\,
	datab => \Mux8~14_combout\,
	datac => \ack_frame[7][7]~q\,
	datad => tx_idx(0),
	combout => \Mux8~15_combout\);

-- Location: LCCOMB_X107_Y37_N24
\ack_frame[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[2][7]~feeder_combout\ = \server_mac[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[31]~input_o\,
	combout => \ack_frame[2][7]~feeder_combout\);

-- Location: FF_X107_Y37_N25
\ack_frame[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[2][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[2][7]~q\);

-- Location: FF_X107_Y37_N19
\ack_frame[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[23]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[3][7]~q\);

-- Location: LCCOMB_X107_Y37_N10
\ack_frame[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_frame[1][7]~feeder_combout\ = \server_mac[39]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \server_mac[39]~input_o\,
	combout => \ack_frame[1][7]~feeder_combout\);

-- Location: FF_X107_Y37_N11
\ack_frame[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ack_frame[1][7]~feeder_combout\,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[1][7]~q\);

-- Location: FF_X107_Y37_N29
\ack_frame[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \server_mac[47]~input_o\,
	sload => VCC,
	ena => \ack_frame[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_frame[0][7]~q\);

-- Location: LCCOMB_X107_Y37_N28
\Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~16_combout\ = (tx_idx(1) & (((tx_idx(0))))) # (!tx_idx(1) & ((tx_idx(0) & (\ack_frame[1][7]~q\)) # (!tx_idx(0) & ((\ack_frame[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_frame[1][7]~q\,
	datab => tx_idx(1),
	datac => \ack_frame[0][7]~q\,
	datad => tx_idx(0),
	combout => \Mux8~16_combout\);

-- Location: LCCOMB_X107_Y37_N18
\Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~17_combout\ = (tx_idx(1) & ((\Mux8~16_combout\ & ((\ack_frame[3][7]~q\))) # (!\Mux8~16_combout\ & (\ack_frame[2][7]~q\)))) # (!tx_idx(1) & (((\Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_idx(1),
	datab => \ack_frame[2][7]~q\,
	datac => \ack_frame[3][7]~q\,
	datad => \Mux8~16_combout\,
	combout => \Mux8~17_combout\);

-- Location: LCCOMB_X107_Y40_N28
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\st.TX_ACK~q\ & ((tx_idx(2) & (\Mux8~15_combout\)) # (!tx_idx(2) & ((\Mux8~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~15_combout\,
	datab => \Mux8~17_combout\,
	datac => tx_idx(2),
	datad => \st.TX_ACK~q\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X107_Y40_N0
\Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Selector8~0_combout\) # ((\Mux5~5_combout\ & ((\Selector8~2_combout\) # (\Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Selector8~2_combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X107_Y42_N24
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (!tx_idx(4) & !tx_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_idx(4),
	datad => tx_idx(5),
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X108_Y42_N10
\Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\Equal17~0_combout\ & (\Selector16~1_combout\ & (\Selector16~0_combout\ & \out_valid_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~0_combout\,
	datab => \Selector16~1_combout\,
	datac => \Selector16~0_combout\,
	datad => \out_valid_r~0_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X108_Y42_N18
\Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\Equal17~2_combout\ & ((\st.TX_ACK~q\) # (\st.TX_SYN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \st.TX_ACK~q\,
	datac => \Equal17~2_combout\,
	datad => \st.TX_SYN~q\,
	combout => \Selector17~2_combout\);

ww_is_connected <= \is_connected~output_o\;

ww_in_ready <= \in_ready~output_o\;

ww_out_data(0) <= \out_data[0]~output_o\;

ww_out_data(1) <= \out_data[1]~output_o\;

ww_out_data(2) <= \out_data[2]~output_o\;

ww_out_data(3) <= \out_data[3]~output_o\;

ww_out_data(4) <= \out_data[4]~output_o\;

ww_out_data(5) <= \out_data[5]~output_o\;

ww_out_data(6) <= \out_data[6]~output_o\;

ww_out_data(7) <= \out_data[7]~output_o\;

ww_out_valid <= \out_valid~output_o\;

ww_out_sop <= \out_sop~output_o\;

ww_out_eop <= \out_eop~output_o\;
END structure;


