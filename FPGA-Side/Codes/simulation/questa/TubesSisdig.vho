-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "01/12/2025 20:49:32"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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

ENTITY 	main IS
    PORT (
	i_btn1 : IN std_logic;
	i_btn2 : IN std_logic;
	i_btn3 : IN std_logic;
	i_btn4 : IN std_logic;
	i_clk : IN std_logic;
	i_IR : IN std_logic;
	i_Rx : IN std_logic;
	dig : BUFFER std_logic_vector(3 DOWNTO 0);
	sevseg : BUFFER std_logic_vector(6 DOWNTO 0);
	o_led1 : BUFFER std_logic;
	o_led2 : BUFFER std_logic;
	o_led3 : BUFFER std_logic;
	o_led4 : BUFFER std_logic;
	o_r0 : BUFFER std_logic;
	o_r1 : BUFFER std_logic;
	o_r2 : BUFFER std_logic;
	o_r3 : BUFFER std_logic;
	o_r4 : BUFFER std_logic;
	o_r5 : BUFFER std_logic;
	o_r6 : BUFFER std_logic;
	o_r7 : BUFFER std_logic;
	o_g0 : BUFFER std_logic;
	o_g1 : BUFFER std_logic;
	o_g2 : BUFFER std_logic;
	o_g3 : BUFFER std_logic;
	o_g4 : BUFFER std_logic;
	o_g5 : BUFFER std_logic;
	o_g6 : BUFFER std_logic;
	o_g7 : BUFFER std_logic;
	o_b0 : BUFFER std_logic;
	o_b1 : BUFFER std_logic;
	o_b2 : BUFFER std_logic;
	o_b3 : BUFFER std_logic;
	o_b4 : BUFFER std_logic;
	o_b5 : BUFFER std_logic;
	o_b6 : BUFFER std_logic;
	o_b7 : BUFFER std_logic;
	o_vga_hs : BUFFER std_logic;
	o_vga_vs : BUFFER std_logic;
	o_buzz : BUFFER std_logic;
	o_Tx : BUFFER std_logic
	);
END main;

-- Design Ports Information
-- i_btn1	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_btn2	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_btn3	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_btn4	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevseg[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led1	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led2	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led3	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led4	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r0	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r1	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r2	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r3	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r4	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r5	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r6	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r7	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g0	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g1	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g2	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g3	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g4	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g5	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g6	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g7	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b0	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b1	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b2	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b3	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b4	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b5	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b6	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b7	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_vga_hs	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_vga_vs	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_buzz	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Tx	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Rx	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_btn1 : std_logic;
SIGNAL ww_i_btn2 : std_logic;
SIGNAL ww_i_btn3 : std_logic;
SIGNAL ww_i_btn4 : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_IR : std_logic;
SIGNAL ww_i_Rx : std_logic;
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sevseg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_led1 : std_logic;
SIGNAL ww_o_led2 : std_logic;
SIGNAL ww_o_led3 : std_logic;
SIGNAL ww_o_led4 : std_logic;
SIGNAL ww_o_r0 : std_logic;
SIGNAL ww_o_r1 : std_logic;
SIGNAL ww_o_r2 : std_logic;
SIGNAL ww_o_r3 : std_logic;
SIGNAL ww_o_r4 : std_logic;
SIGNAL ww_o_r5 : std_logic;
SIGNAL ww_o_r6 : std_logic;
SIGNAL ww_o_r7 : std_logic;
SIGNAL ww_o_g0 : std_logic;
SIGNAL ww_o_g1 : std_logic;
SIGNAL ww_o_g2 : std_logic;
SIGNAL ww_o_g3 : std_logic;
SIGNAL ww_o_g4 : std_logic;
SIGNAL ww_o_g5 : std_logic;
SIGNAL ww_o_g6 : std_logic;
SIGNAL ww_o_g7 : std_logic;
SIGNAL ww_o_b0 : std_logic;
SIGNAL ww_o_b1 : std_logic;
SIGNAL ww_o_b2 : std_logic;
SIGNAL ww_o_b3 : std_logic;
SIGNAL ww_o_b4 : std_logic;
SIGNAL ww_o_b5 : std_logic;
SIGNAL ww_o_b6 : std_logic;
SIGNAL ww_o_b7 : std_logic;
SIGNAL ww_o_vga_hs : std_logic;
SIGNAL ww_o_vga_vs : std_logic;
SIGNAL ww_o_buzz : std_logic;
SIGNAL ww_o_Tx : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_btn1~input_o\ : std_logic;
SIGNAL \i_btn2~input_o\ : std_logic;
SIGNAL \i_btn3~input_o\ : std_logic;
SIGNAL \i_btn4~input_o\ : std_logic;
SIGNAL \i_IR~input_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \sevseg[0]~output_o\ : std_logic;
SIGNAL \sevseg[1]~output_o\ : std_logic;
SIGNAL \sevseg[2]~output_o\ : std_logic;
SIGNAL \sevseg[3]~output_o\ : std_logic;
SIGNAL \sevseg[4]~output_o\ : std_logic;
SIGNAL \sevseg[5]~output_o\ : std_logic;
SIGNAL \sevseg[6]~output_o\ : std_logic;
SIGNAL \o_led1~output_o\ : std_logic;
SIGNAL \o_led2~output_o\ : std_logic;
SIGNAL \o_led3~output_o\ : std_logic;
SIGNAL \o_led4~output_o\ : std_logic;
SIGNAL \o_r0~output_o\ : std_logic;
SIGNAL \o_r1~output_o\ : std_logic;
SIGNAL \o_r2~output_o\ : std_logic;
SIGNAL \o_r3~output_o\ : std_logic;
SIGNAL \o_r4~output_o\ : std_logic;
SIGNAL \o_r5~output_o\ : std_logic;
SIGNAL \o_r6~output_o\ : std_logic;
SIGNAL \o_r7~output_o\ : std_logic;
SIGNAL \o_g0~output_o\ : std_logic;
SIGNAL \o_g1~output_o\ : std_logic;
SIGNAL \o_g2~output_o\ : std_logic;
SIGNAL \o_g3~output_o\ : std_logic;
SIGNAL \o_g4~output_o\ : std_logic;
SIGNAL \o_g5~output_o\ : std_logic;
SIGNAL \o_g6~output_o\ : std_logic;
SIGNAL \o_g7~output_o\ : std_logic;
SIGNAL \o_b0~output_o\ : std_logic;
SIGNAL \o_b1~output_o\ : std_logic;
SIGNAL \o_b2~output_o\ : std_logic;
SIGNAL \o_b3~output_o\ : std_logic;
SIGNAL \o_b4~output_o\ : std_logic;
SIGNAL \o_b5~output_o\ : std_logic;
SIGNAL \o_b6~output_o\ : std_logic;
SIGNAL \o_b7~output_o\ : std_logic;
SIGNAL \o_vga_hs~output_o\ : std_logic;
SIGNAL \o_vga_vs~output_o\ : std_logic;
SIGNAL \o_buzz~output_o\ : std_logic;
SIGNAL \o_Tx~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockmodifier_module|Add0~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~5_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~1\ : std_logic;
SIGNAL \clockmodifier_module|Add0~2_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~3\ : std_logic;
SIGNAL \clockmodifier_module|Add0~4_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~5\ : std_logic;
SIGNAL \clockmodifier_module|Add0~6_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~7\ : std_logic;
SIGNAL \clockmodifier_module|Add0~8_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~9\ : std_logic;
SIGNAL \clockmodifier_module|Add0~10_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~4_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~11\ : std_logic;
SIGNAL \clockmodifier_module|Add0~12_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~3_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~13\ : std_logic;
SIGNAL \clockmodifier_module|Add0~14_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~15\ : std_logic;
SIGNAL \clockmodifier_module|Add0~16_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~2_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~17\ : std_logic;
SIGNAL \clockmodifier_module|Add0~18_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~19\ : std_logic;
SIGNAL \clockmodifier_module|Add0~20_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~21\ : std_logic;
SIGNAL \clockmodifier_module|Add0~22_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~23\ : std_logic;
SIGNAL \clockmodifier_module|Add0~24_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~1_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~25\ : std_logic;
SIGNAL \clockmodifier_module|Add0~26_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~27\ : std_logic;
SIGNAL \clockmodifier_module|Add0~29\ : std_logic;
SIGNAL \clockmodifier_module|Add0~30_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~31\ : std_logic;
SIGNAL \clockmodifier_module|Add0~32_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~33\ : std_logic;
SIGNAL \clockmodifier_module|Add0~34_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~35\ : std_logic;
SIGNAL \clockmodifier_module|Add0~36_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~37\ : std_logic;
SIGNAL \clockmodifier_module|Add0~38_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~39\ : std_logic;
SIGNAL \clockmodifier_module|Add0~40_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~41\ : std_logic;
SIGNAL \clockmodifier_module|Add0~42_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~43\ : std_logic;
SIGNAL \clockmodifier_module|Add0~44_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~45\ : std_logic;
SIGNAL \clockmodifier_module|Add0~46_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~47\ : std_logic;
SIGNAL \clockmodifier_module|Add0~48_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~49\ : std_logic;
SIGNAL \clockmodifier_module|Add0~50_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~51\ : std_logic;
SIGNAL \clockmodifier_module|Add0~52_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~53\ : std_logic;
SIGNAL \clockmodifier_module|Add0~54_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~1_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~55\ : std_logic;
SIGNAL \clockmodifier_module|Add0~56_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~57\ : std_logic;
SIGNAL \clockmodifier_module|Add0~58_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~59\ : std_logic;
SIGNAL \clockmodifier_module|Add0~60_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~61\ : std_logic;
SIGNAL \clockmodifier_module|Add0~62_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~2_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~3_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~4_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~28_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~5_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~6_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~8_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~7_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~9_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~feeder_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~q\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~clkctrl_outclk\ : std_logic;
SIGNAL \sevs_module|Add0~0_combout\ : std_logic;
SIGNAL \sevs_module|counter[0]~1_combout\ : std_logic;
SIGNAL \sevs_module|Add0~1\ : std_logic;
SIGNAL \sevs_module|Add0~2_combout\ : std_logic;
SIGNAL \sevs_module|Add0~3\ : std_logic;
SIGNAL \sevs_module|Add0~5\ : std_logic;
SIGNAL \sevs_module|Add0~6_combout\ : std_logic;
SIGNAL \sevs_module|Add0~7\ : std_logic;
SIGNAL \sevs_module|Add0~8_combout\ : std_logic;
SIGNAL \sevs_module|Add0~9\ : std_logic;
SIGNAL \sevs_module|Add0~10_combout\ : std_logic;
SIGNAL \sevs_module|Add0~11\ : std_logic;
SIGNAL \sevs_module|Add0~12_combout\ : std_logic;
SIGNAL \sevs_module|Add0~13\ : std_logic;
SIGNAL \sevs_module|Add0~14_combout\ : std_logic;
SIGNAL \sevs_module|Add0~15\ : std_logic;
SIGNAL \sevs_module|Add0~16_combout\ : std_logic;
SIGNAL \sevs_module|Add0~17\ : std_logic;
SIGNAL \sevs_module|Add0~18_combout\ : std_logic;
SIGNAL \sevs_module|Add0~19\ : std_logic;
SIGNAL \sevs_module|Add0~20_combout\ : std_logic;
SIGNAL \sevs_module|Add0~21\ : std_logic;
SIGNAL \sevs_module|Add0~22_combout\ : std_logic;
SIGNAL \sevs_module|Add0~23\ : std_logic;
SIGNAL \sevs_module|Add0~24_combout\ : std_logic;
SIGNAL \sevs_module|Add0~25\ : std_logic;
SIGNAL \sevs_module|Add0~26_combout\ : std_logic;
SIGNAL \sevs_module|Add0~27\ : std_logic;
SIGNAL \sevs_module|Add0~28_combout\ : std_logic;
SIGNAL \sevs_module|Add0~29\ : std_logic;
SIGNAL \sevs_module|Add0~30_combout\ : std_logic;
SIGNAL \sevs_module|Add0~31\ : std_logic;
SIGNAL \sevs_module|Add0~32_combout\ : std_logic;
SIGNAL \sevs_module|Add0~33\ : std_logic;
SIGNAL \sevs_module|Add0~34_combout\ : std_logic;
SIGNAL \sevs_module|Add0~35\ : std_logic;
SIGNAL \sevs_module|Add0~36_combout\ : std_logic;
SIGNAL \sevs_module|Add0~37\ : std_logic;
SIGNAL \sevs_module|Add0~38_combout\ : std_logic;
SIGNAL \sevs_module|Add0~39\ : std_logic;
SIGNAL \sevs_module|Add0~40_combout\ : std_logic;
SIGNAL \sevs_module|Add0~41\ : std_logic;
SIGNAL \sevs_module|Add0~42_combout\ : std_logic;
SIGNAL \sevs_module|Add0~43\ : std_logic;
SIGNAL \sevs_module|Add0~44_combout\ : std_logic;
SIGNAL \sevs_module|Add0~45\ : std_logic;
SIGNAL \sevs_module|Add0~46_combout\ : std_logic;
SIGNAL \sevs_module|Add0~47\ : std_logic;
SIGNAL \sevs_module|Add0~48_combout\ : std_logic;
SIGNAL \sevs_module|Add0~49\ : std_logic;
SIGNAL \sevs_module|Add0~50_combout\ : std_logic;
SIGNAL \sevs_module|Add0~51\ : std_logic;
SIGNAL \sevs_module|Add0~52_combout\ : std_logic;
SIGNAL \sevs_module|Add0~53\ : std_logic;
SIGNAL \sevs_module|Add0~54_combout\ : std_logic;
SIGNAL \sevs_module|Add0~55\ : std_logic;
SIGNAL \sevs_module|Add0~56_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~2_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~1_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~3_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~4_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~5_combout\ : std_logic;
SIGNAL \sevs_module|Add0~57\ : std_logic;
SIGNAL \sevs_module|Add0~58_combout\ : std_logic;
SIGNAL \sevs_module|Add0~59\ : std_logic;
SIGNAL \sevs_module|Add0~60_combout\ : std_logic;
SIGNAL \sevs_module|Add0~61\ : std_logic;
SIGNAL \sevs_module|Add0~62_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~6_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~7_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~8_combout\ : std_logic;
SIGNAL \sevs_module|Equal3~0_combout\ : std_logic;
SIGNAL \sevs_module|Add0~4_combout\ : std_logic;
SIGNAL \sevs_module|counter~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~9_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~10_combout\ : std_logic;
SIGNAL \sevs_module|dig[0]~feeder_combout\ : std_logic;
SIGNAL \sevs_module|dig[0]~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal1~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~11_combout\ : std_logic;
SIGNAL \sevs_module|Equal2~0_combout\ : std_logic;
SIGNAL \sevs_module|dig[0]~1_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~17_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[1]~12\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[2]~13_combout\ : std_logic;
SIGNAL \i_Rx~input_o\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[1]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[1]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[2]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[3]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|pixel_receive~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\ : std_logic;
SIGNAL \i_Rx~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|s_RECIEVING_FLAG~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER~18_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[2]~14\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~19_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~20\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[4]~21_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[4]~22\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[5]~23_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[5]~24\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~25_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~26\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[7]~27_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[7]~28\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[8]~29_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~15_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~16_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~17_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~10\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[1]~11_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[0]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[8]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[0]~32_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[0]~33\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[1]~34_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|pixel_receive~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[1]~35\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[2]~36_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[2]~37\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[3]~38_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[3]~39\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[4]~40_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[4]~41\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[5]~42_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[5]~43\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[6]~44_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[6]~45\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[7]~46_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[7]~47\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[8]~48_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[8]~49\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[9]~50_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[9]~51\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[10]~52_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[10]~53\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[11]~54_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[11]~55\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[12]~56_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[12]~57\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[13]~58_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[13]~59\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[14]~60_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[14]~61\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[15]~62_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[15]~63\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[16]~64_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[16]~65\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[17]~66_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[17]~67\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[18]~68_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[18]~69\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[19]~70_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[19]~71\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[20]~72_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[20]~73\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[21]~74_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[21]~75\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[22]~76_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[22]~77\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[23]~78_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[23]~79\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[24]~80_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[24]~81\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[25]~82_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[25]~83\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[26]~84_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[26]~85\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[27]~86_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[27]~87\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[28]~88_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[28]~89\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[29]~90_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[29]~91\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[30]~92_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[30]~93\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[31]~94_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~7_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan4~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[7]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[6]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[5]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][4]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[4]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][3]~q\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][2]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][2]~q\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[1]~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][0]~q\ : std_logic;
SIGNAL \sevs_module|curr_val~24_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][1]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][1]~q\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~23_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~25_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~16_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~30_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~15_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~18_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~21_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~19_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~20_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~22_combout\ : std_logic;
SIGNAL \sevs_module|Equal4~0_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~2_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~3_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~4_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~5_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~13_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~12_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~14_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~9_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~10_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~11_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~6_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~7_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~8_combout\ : std_logic;
SIGNAL \sevs_module|Equal12~0_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~26_combout\ : std_logic;
SIGNAL \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~27_combout\ : std_logic;
SIGNAL \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~28_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~29_combout\ : std_logic;
SIGNAL \sevs_module|Equal4~1_combout\ : std_logic;
SIGNAL \sevs_module|Equal7~0_combout\ : std_logic;
SIGNAL \sevs_module|WideOr2~10_combout\ : std_logic;
SIGNAL \sevs_module|WideOr5~combout\ : std_logic;
SIGNAL \sevs_module|Equal4~2_combout\ : std_logic;
SIGNAL \sevs_module|Equal6~0_combout\ : std_logic;
SIGNAL \sevs_module|WideOr4~0_combout\ : std_logic;
SIGNAL \sevs_module|WideOr3~3_combout\ : std_logic;
SIGNAL \sevs_module|WideOr3~2_combout\ : std_logic;
SIGNAL \sevs_module|WideOr2~5_combout\ : std_logic;
SIGNAL \sevs_module|WideOr2~3_combout\ : std_logic;
SIGNAL \sevs_module|WideOr2~combout\ : std_logic;
SIGNAL \sevs_module|WideOr1~5_combout\ : std_logic;
SIGNAL \sevs_module|WideOr1~3_combout\ : std_logic;
SIGNAL \sevs_module|WideOr1~10_combout\ : std_logic;
SIGNAL \sevs_module|WideOr0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|pixel_receive~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|pixel_receive~q\ : std_logic;
SIGNAL \uart_module|u_Control|current_state.RX_EN~0_combout\ : std_logic;
SIGNAL \uart_module|u_Control|current_state.RX_EN~q\ : std_logic;
SIGNAL \uart_module|led1~0_combout\ : std_logic;
SIGNAL \uart_module|led1~q\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~3_combout\ : std_logic;
SIGNAL \uart_module|s_TX_START~feeder_combout\ : std_logic;
SIGNAL \uart_module|s_TX_START~q\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[0]~9_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[0]~10\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[1]~11_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[1]~12\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[2]~13_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[2]~14\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[3]~15_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[3]~16\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[4]~17_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[4]~18\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[5]~19_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[5]~20\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[6]~21_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[6]~22\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[7]~23_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[7]~24\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[8]~25_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|s_TRANSMITING_FLAG~q\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[9]~32_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[0]~33_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixel_transmit~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[0]~34\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[1]~35_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[1]~36\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[2]~37_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[2]~38\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[3]~39_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[3]~40\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[4]~41_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[4]~42\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[5]~43_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[5]~44\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[6]~45_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[6]~46\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[7]~47_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[7]~48\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[8]~49_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[8]~50\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[9]~51_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[9]~52\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[10]~53_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[10]~54\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[11]~55_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[11]~56\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[12]~57_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[12]~58\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[13]~59_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[13]~60\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[14]~61_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[14]~62\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[15]~63_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[15]~64\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[16]~65_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[16]~66\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[17]~67_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[17]~68\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[18]~69_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[18]~70\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[19]~71_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[19]~72\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[20]~73_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[20]~74\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[21]~75_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[21]~76\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[22]~77_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[22]~78\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[23]~79_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[23]~80\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[24]~81_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[24]~82\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[25]~83_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[25]~84\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[26]~85_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[26]~86\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[27]~87_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[27]~88\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[28]~89_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[28]~90\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[29]~91_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[29]~92\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[30]~93_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[30]~94\ : std_logic;
SIGNAL \uart_module|u_TX|pixval_ctr[31]~95_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~5_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~6_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~7_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~8_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~4_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan2~9_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixel_transmit~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|pixel_transmit~q\ : std_logic;
SIGNAL \uart_module|u_Control|Selector1~0_combout\ : std_logic;
SIGNAL \uart_module|u_Control|current_state.TX_EN~q\ : std_logic;
SIGNAL \uart_module|led2~feeder_combout\ : std_logic;
SIGNAL \uart_module|led2~q\ : std_logic;
SIGNAL \uart_module|led3~feeder_combout\ : std_logic;
SIGNAL \uart_module|led4~0_combout\ : std_logic;
SIGNAL \uart_module|led3~q\ : std_logic;
SIGNAL \uart_module|led4~feeder_combout\ : std_logic;
SIGNAL \uart_module|led4~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][5]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][5]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux2~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux2~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|process_0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][6]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux1~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][4]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][4]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux3~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux3~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][3]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux4~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux4~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~4_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][7]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][2]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][2]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux5~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux5~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][1]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][1]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux6~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux6~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_DATA_BUFFER[0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][0]~q\ : std_logic;
SIGNAL \uart_module|u_TX|Mux7~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux7~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux8~6_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_TX_LINE~q\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_PRESCALER\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clockmodifier_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sevs_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_module|u_RX|rgb_elcount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sevs_module|curr_val\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_module|u_TX|pixval_ctr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sevs_module|dig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevs_module|sevseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sevs_module|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|ALT_INV_o_TX_LINE~q\ : std_logic;
SIGNAL \uart_module|ALT_INV_led4~q\ : std_logic;
SIGNAL \uart_module|ALT_INV_led3~q\ : std_logic;
SIGNAL \uart_module|ALT_INV_led2~q\ : std_logic;
SIGNAL \uart_module|ALT_INV_led1~q\ : std_logic;
SIGNAL \sevs_module|ALT_INV_WideOr3~2_combout\ : std_logic;
SIGNAL \sevs_module|ALT_INV_dig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_module|u_RX|ALT_INV_s_RECIEVING_FLAG~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_btn1 <= i_btn1;
ww_i_btn2 <= i_btn2;
ww_i_btn3 <= i_btn3;
ww_i_btn4 <= i_btn4;
ww_i_clk <= i_clk;
ww_i_IR <= i_IR;
ww_i_Rx <= i_Rx;
dig <= ww_dig;
sevseg <= ww_sevseg;
o_led1 <= ww_o_led1;
o_led2 <= ww_o_led2;
o_led3 <= ww_o_led3;
o_led4 <= ww_o_led4;
o_r0 <= ww_o_r0;
o_r1 <= ww_o_r1;
o_r2 <= ww_o_r2;
o_r3 <= ww_o_r3;
o_r4 <= ww_o_r4;
o_r5 <= ww_o_r5;
o_r6 <= ww_o_r6;
o_r7 <= ww_o_r7;
o_g0 <= ww_o_g0;
o_g1 <= ww_o_g1;
o_g2 <= ww_o_g2;
o_g3 <= ww_o_g3;
o_g4 <= ww_o_g4;
o_g5 <= ww_o_g5;
o_g6 <= ww_o_g6;
o_g7 <= ww_o_g7;
o_b0 <= ww_o_b0;
o_b1 <= ww_o_b1;
o_b2 <= ww_o_b2;
o_b3 <= ww_o_b3;
o_b4 <= ww_o_b4;
o_b5 <= ww_o_b5;
o_b6 <= ww_o_b6;
o_b7 <= ww_o_b7;
o_vga_hs <= ww_o_vga_hs;
o_vga_vs <= ww_o_vga_vs;
o_buzz <= ww_o_buzz;
o_Tx <= ww_o_Tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clockmodifier_module|clk_out_intem~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockmodifier_module|clk_out_intem~q\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\sevs_module|ALT_INV_WideOr0~2_combout\ <= NOT \sevs_module|WideOr0~2_combout\;
\uart_module|u_TX|ALT_INV_o_TX_LINE~q\ <= NOT \uart_module|u_TX|o_TX_LINE~q\;
\uart_module|ALT_INV_led4~q\ <= NOT \uart_module|led4~q\;
\uart_module|ALT_INV_led3~q\ <= NOT \uart_module|led3~q\;
\uart_module|ALT_INV_led2~q\ <= NOT \uart_module|led2~q\;
\uart_module|ALT_INV_led1~q\ <= NOT \uart_module|led1~q\;
\sevs_module|ALT_INV_WideOr3~2_combout\ <= NOT \sevs_module|WideOr3~2_combout\;
\sevs_module|ALT_INV_dig\(3) <= NOT \sevs_module|dig\(3);
\sevs_module|ALT_INV_dig\(2) <= NOT \sevs_module|dig\(2);
\sevs_module|ALT_INV_dig\(1) <= NOT \sevs_module|dig\(1);
\sevs_module|ALT_INV_dig\(0) <= NOT \sevs_module|dig\(0);
\uart_module|u_RX|ALT_INV_s_RECIEVING_FLAG~q\ <= NOT \uart_module|u_RX|s_RECIEVING_FLAG~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|ALT_INV_dig\(0),
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|ALT_INV_dig\(1),
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|ALT_INV_dig\(2),
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|ALT_INV_dig\(3),
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\sevseg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|WideOr5~combout\,
	devoe => ww_devoe,
	o => \sevseg[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\sevseg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \sevseg[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\sevseg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|ALT_INV_WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \sevseg[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\sevseg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|WideOr2~combout\,
	devoe => ww_devoe,
	o => \sevseg[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\sevseg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|sevseg\(4),
	devoe => ww_devoe,
	o => \sevseg[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\sevseg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|WideOr1~10_combout\,
	devoe => ww_devoe,
	o => \sevseg[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\sevseg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevs_module|ALT_INV_WideOr0~2_combout\,
	devoe => ww_devoe,
	o => \sevseg[6]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\o_led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_module|ALT_INV_led1~q\,
	devoe => ww_devoe,
	o => \o_led1~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\o_led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_module|ALT_INV_led2~q\,
	devoe => ww_devoe,
	o => \o_led2~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\o_led3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_module|ALT_INV_led3~q\,
	devoe => ww_devoe,
	o => \o_led3~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\o_led4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_module|ALT_INV_led4~q\,
	devoe => ww_devoe,
	o => \o_led4~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\o_r0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r0~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\o_r1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r1~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\o_r2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r2~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\o_r3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r3~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_r4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r4~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\o_r5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r5~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\o_r6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r6~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\o_r7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_r7~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\o_g0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g0~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\o_g1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g1~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\o_g2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g2~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\o_g3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g3~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\o_g4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g4~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\o_g5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g5~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\o_g6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g6~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_g7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_g7~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\o_b0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b0~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\o_b1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b1~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_b2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b2~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\o_b3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b3~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\o_b4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b4~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\o_b5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b5~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o_b6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b6~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\o_b7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_b7~output_o\);

-- Location: IOOBUF_X34_Y18_N23
\o_vga_hs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_vga_hs~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\o_vga_vs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_vga_vs~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\o_buzz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_buzz~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\o_Tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_module|u_TX|ALT_INV_o_TX_LINE~q\,
	devoe => ww_devoe,
	o => \o_Tx~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G2
\i_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y13_N0
\clockmodifier_module|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~0_combout\ = \clockmodifier_module|counter\(0) $ (VCC)
-- \clockmodifier_module|Add0~1\ = CARRY(\clockmodifier_module|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(0),
	datad => VCC,
	combout => \clockmodifier_module|Add0~0_combout\,
	cout => \clockmodifier_module|Add0~1\);

-- Location: LCCOMB_X11_Y13_N26
\clockmodifier_module|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~5_combout\ = (\clockmodifier_module|Add0~0_combout\ & ((!\clockmodifier_module|Equal0~4_combout\) # (!\clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|Add0~0_combout\,
	datac => \clockmodifier_module|Equal0~9_combout\,
	datad => \clockmodifier_module|Equal0~4_combout\,
	combout => \clockmodifier_module|counter~5_combout\);

-- Location: FF_X12_Y13_N25
\clockmodifier_module|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \clockmodifier_module|counter~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(0));

-- Location: LCCOMB_X12_Y13_N2
\clockmodifier_module|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~2_combout\ = (\clockmodifier_module|counter\(1) & (!\clockmodifier_module|Add0~1\)) # (!\clockmodifier_module|counter\(1) & ((\clockmodifier_module|Add0~1\) # (GND)))
-- \clockmodifier_module|Add0~3\ = CARRY((!\clockmodifier_module|Add0~1\) # (!\clockmodifier_module|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(1),
	datad => VCC,
	cin => \clockmodifier_module|Add0~1\,
	combout => \clockmodifier_module|Add0~2_combout\,
	cout => \clockmodifier_module|Add0~3\);

-- Location: FF_X12_Y13_N3
\clockmodifier_module|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(1));

-- Location: LCCOMB_X12_Y13_N4
\clockmodifier_module|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~4_combout\ = (\clockmodifier_module|counter\(2) & (\clockmodifier_module|Add0~3\ $ (GND))) # (!\clockmodifier_module|counter\(2) & (!\clockmodifier_module|Add0~3\ & VCC))
-- \clockmodifier_module|Add0~5\ = CARRY((\clockmodifier_module|counter\(2) & !\clockmodifier_module|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(2),
	datad => VCC,
	cin => \clockmodifier_module|Add0~3\,
	combout => \clockmodifier_module|Add0~4_combout\,
	cout => \clockmodifier_module|Add0~5\);

-- Location: FF_X12_Y13_N5
\clockmodifier_module|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(2));

-- Location: LCCOMB_X12_Y13_N6
\clockmodifier_module|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~6_combout\ = (\clockmodifier_module|counter\(3) & (!\clockmodifier_module|Add0~5\)) # (!\clockmodifier_module|counter\(3) & ((\clockmodifier_module|Add0~5\) # (GND)))
-- \clockmodifier_module|Add0~7\ = CARRY((!\clockmodifier_module|Add0~5\) # (!\clockmodifier_module|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(3),
	datad => VCC,
	cin => \clockmodifier_module|Add0~5\,
	combout => \clockmodifier_module|Add0~6_combout\,
	cout => \clockmodifier_module|Add0~7\);

-- Location: FF_X12_Y13_N7
\clockmodifier_module|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(3));

-- Location: LCCOMB_X12_Y13_N8
\clockmodifier_module|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~8_combout\ = (\clockmodifier_module|counter\(4) & (\clockmodifier_module|Add0~7\ $ (GND))) # (!\clockmodifier_module|counter\(4) & (!\clockmodifier_module|Add0~7\ & VCC))
-- \clockmodifier_module|Add0~9\ = CARRY((\clockmodifier_module|counter\(4) & !\clockmodifier_module|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(4),
	datad => VCC,
	cin => \clockmodifier_module|Add0~7\,
	combout => \clockmodifier_module|Add0~8_combout\,
	cout => \clockmodifier_module|Add0~9\);

-- Location: FF_X12_Y13_N9
\clockmodifier_module|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(4));

-- Location: LCCOMB_X12_Y13_N10
\clockmodifier_module|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~10_combout\ = (\clockmodifier_module|counter\(5) & (!\clockmodifier_module|Add0~9\)) # (!\clockmodifier_module|counter\(5) & ((\clockmodifier_module|Add0~9\) # (GND)))
-- \clockmodifier_module|Add0~11\ = CARRY((!\clockmodifier_module|Add0~9\) # (!\clockmodifier_module|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(5),
	datad => VCC,
	cin => \clockmodifier_module|Add0~9\,
	combout => \clockmodifier_module|Add0~10_combout\,
	cout => \clockmodifier_module|Add0~11\);

-- Location: LCCOMB_X11_Y13_N6
\clockmodifier_module|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~4_combout\ = (\clockmodifier_module|Add0~10_combout\ & ((!\clockmodifier_module|Equal0~4_combout\) # (!\clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~9_combout\,
	datab => \clockmodifier_module|Equal0~4_combout\,
	datac => \clockmodifier_module|Add0~10_combout\,
	combout => \clockmodifier_module|counter~4_combout\);

-- Location: FF_X11_Y13_N7
\clockmodifier_module|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(5));

-- Location: LCCOMB_X12_Y13_N12
\clockmodifier_module|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~12_combout\ = (\clockmodifier_module|counter\(6) & (\clockmodifier_module|Add0~11\ $ (GND))) # (!\clockmodifier_module|counter\(6) & (!\clockmodifier_module|Add0~11\ & VCC))
-- \clockmodifier_module|Add0~13\ = CARRY((\clockmodifier_module|counter\(6) & !\clockmodifier_module|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(6),
	datad => VCC,
	cin => \clockmodifier_module|Add0~11\,
	combout => \clockmodifier_module|Add0~12_combout\,
	cout => \clockmodifier_module|Add0~13\);

-- Location: LCCOMB_X11_Y13_N16
\clockmodifier_module|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~3_combout\ = (\clockmodifier_module|Add0~12_combout\ & ((!\clockmodifier_module|Equal0~4_combout\) # (!\clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~9_combout\,
	datab => \clockmodifier_module|Equal0~4_combout\,
	datac => \clockmodifier_module|Add0~12_combout\,
	combout => \clockmodifier_module|counter~3_combout\);

-- Location: FF_X11_Y13_N17
\clockmodifier_module|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(6));

-- Location: LCCOMB_X12_Y13_N14
\clockmodifier_module|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~14_combout\ = (\clockmodifier_module|counter\(7) & (!\clockmodifier_module|Add0~13\)) # (!\clockmodifier_module|counter\(7) & ((\clockmodifier_module|Add0~13\) # (GND)))
-- \clockmodifier_module|Add0~15\ = CARRY((!\clockmodifier_module|Add0~13\) # (!\clockmodifier_module|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(7),
	datad => VCC,
	cin => \clockmodifier_module|Add0~13\,
	combout => \clockmodifier_module|Add0~14_combout\,
	cout => \clockmodifier_module|Add0~15\);

-- Location: FF_X12_Y13_N15
\clockmodifier_module|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(7));

-- Location: LCCOMB_X12_Y13_N16
\clockmodifier_module|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~16_combout\ = (\clockmodifier_module|counter\(8) & (\clockmodifier_module|Add0~15\ $ (GND))) # (!\clockmodifier_module|counter\(8) & (!\clockmodifier_module|Add0~15\ & VCC))
-- \clockmodifier_module|Add0~17\ = CARRY((\clockmodifier_module|counter\(8) & !\clockmodifier_module|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(8),
	datad => VCC,
	cin => \clockmodifier_module|Add0~15\,
	combout => \clockmodifier_module|Add0~16_combout\,
	cout => \clockmodifier_module|Add0~17\);

-- Location: LCCOMB_X11_Y13_N12
\clockmodifier_module|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~2_combout\ = (\clockmodifier_module|Add0~16_combout\ & ((!\clockmodifier_module|Equal0~9_combout\) # (!\clockmodifier_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|Equal0~4_combout\,
	datac => \clockmodifier_module|Equal0~9_combout\,
	datad => \clockmodifier_module|Add0~16_combout\,
	combout => \clockmodifier_module|counter~2_combout\);

-- Location: FF_X11_Y13_N13
\clockmodifier_module|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(8));

-- Location: LCCOMB_X12_Y13_N18
\clockmodifier_module|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~18_combout\ = (\clockmodifier_module|counter\(9) & (!\clockmodifier_module|Add0~17\)) # (!\clockmodifier_module|counter\(9) & ((\clockmodifier_module|Add0~17\) # (GND)))
-- \clockmodifier_module|Add0~19\ = CARRY((!\clockmodifier_module|Add0~17\) # (!\clockmodifier_module|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(9),
	datad => VCC,
	cin => \clockmodifier_module|Add0~17\,
	combout => \clockmodifier_module|Add0~18_combout\,
	cout => \clockmodifier_module|Add0~19\);

-- Location: FF_X12_Y13_N19
\clockmodifier_module|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(9));

-- Location: LCCOMB_X12_Y13_N20
\clockmodifier_module|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~20_combout\ = (\clockmodifier_module|counter\(10) & (\clockmodifier_module|Add0~19\ $ (GND))) # (!\clockmodifier_module|counter\(10) & (!\clockmodifier_module|Add0~19\ & VCC))
-- \clockmodifier_module|Add0~21\ = CARRY((\clockmodifier_module|counter\(10) & !\clockmodifier_module|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(10),
	datad => VCC,
	cin => \clockmodifier_module|Add0~19\,
	combout => \clockmodifier_module|Add0~20_combout\,
	cout => \clockmodifier_module|Add0~21\);

-- Location: FF_X12_Y13_N21
\clockmodifier_module|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(10));

-- Location: LCCOMB_X12_Y13_N22
\clockmodifier_module|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~22_combout\ = (\clockmodifier_module|counter\(11) & (!\clockmodifier_module|Add0~21\)) # (!\clockmodifier_module|counter\(11) & ((\clockmodifier_module|Add0~21\) # (GND)))
-- \clockmodifier_module|Add0~23\ = CARRY((!\clockmodifier_module|Add0~21\) # (!\clockmodifier_module|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(11),
	datad => VCC,
	cin => \clockmodifier_module|Add0~21\,
	combout => \clockmodifier_module|Add0~22_combout\,
	cout => \clockmodifier_module|Add0~23\);

-- Location: FF_X12_Y13_N23
\clockmodifier_module|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(11));

-- Location: LCCOMB_X12_Y13_N24
\clockmodifier_module|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~24_combout\ = (\clockmodifier_module|counter\(12) & (\clockmodifier_module|Add0~23\ $ (GND))) # (!\clockmodifier_module|counter\(12) & (!\clockmodifier_module|Add0~23\ & VCC))
-- \clockmodifier_module|Add0~25\ = CARRY((\clockmodifier_module|counter\(12) & !\clockmodifier_module|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(12),
	datad => VCC,
	cin => \clockmodifier_module|Add0~23\,
	combout => \clockmodifier_module|Add0~24_combout\,
	cout => \clockmodifier_module|Add0~25\);

-- Location: LCCOMB_X11_Y13_N24
\clockmodifier_module|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~1_combout\ = (\clockmodifier_module|Add0~24_combout\ & ((!\clockmodifier_module|Equal0~9_combout\) # (!\clockmodifier_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|Equal0~4_combout\,
	datac => \clockmodifier_module|Equal0~9_combout\,
	datad => \clockmodifier_module|Add0~24_combout\,
	combout => \clockmodifier_module|counter~1_combout\);

-- Location: FF_X11_Y13_N25
\clockmodifier_module|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(12));

-- Location: LCCOMB_X12_Y13_N26
\clockmodifier_module|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~26_combout\ = (\clockmodifier_module|counter\(13) & (!\clockmodifier_module|Add0~25\)) # (!\clockmodifier_module|counter\(13) & ((\clockmodifier_module|Add0~25\) # (GND)))
-- \clockmodifier_module|Add0~27\ = CARRY((!\clockmodifier_module|Add0~25\) # (!\clockmodifier_module|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(13),
	datad => VCC,
	cin => \clockmodifier_module|Add0~25\,
	combout => \clockmodifier_module|Add0~26_combout\,
	cout => \clockmodifier_module|Add0~27\);

-- Location: FF_X12_Y13_N27
\clockmodifier_module|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(13));

-- Location: LCCOMB_X12_Y13_N28
\clockmodifier_module|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~28_combout\ = (\clockmodifier_module|counter\(14) & (\clockmodifier_module|Add0~27\ $ (GND))) # (!\clockmodifier_module|counter\(14) & (!\clockmodifier_module|Add0~27\ & VCC))
-- \clockmodifier_module|Add0~29\ = CARRY((\clockmodifier_module|counter\(14) & !\clockmodifier_module|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(14),
	datad => VCC,
	cin => \clockmodifier_module|Add0~27\,
	combout => \clockmodifier_module|Add0~28_combout\,
	cout => \clockmodifier_module|Add0~29\);

-- Location: LCCOMB_X12_Y13_N30
\clockmodifier_module|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~30_combout\ = (\clockmodifier_module|counter\(15) & (!\clockmodifier_module|Add0~29\)) # (!\clockmodifier_module|counter\(15) & ((\clockmodifier_module|Add0~29\) # (GND)))
-- \clockmodifier_module|Add0~31\ = CARRY((!\clockmodifier_module|Add0~29\) # (!\clockmodifier_module|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(15),
	datad => VCC,
	cin => \clockmodifier_module|Add0~29\,
	combout => \clockmodifier_module|Add0~30_combout\,
	cout => \clockmodifier_module|Add0~31\);

-- Location: FF_X12_Y13_N31
\clockmodifier_module|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(15));

-- Location: LCCOMB_X12_Y12_N0
\clockmodifier_module|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~32_combout\ = (\clockmodifier_module|counter\(16) & (\clockmodifier_module|Add0~31\ $ (GND))) # (!\clockmodifier_module|counter\(16) & (!\clockmodifier_module|Add0~31\ & VCC))
-- \clockmodifier_module|Add0~33\ = CARRY((\clockmodifier_module|counter\(16) & !\clockmodifier_module|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(16),
	datad => VCC,
	cin => \clockmodifier_module|Add0~31\,
	combout => \clockmodifier_module|Add0~32_combout\,
	cout => \clockmodifier_module|Add0~33\);

-- Location: FF_X12_Y12_N1
\clockmodifier_module|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(16));

-- Location: LCCOMB_X12_Y12_N2
\clockmodifier_module|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~34_combout\ = (\clockmodifier_module|counter\(17) & (!\clockmodifier_module|Add0~33\)) # (!\clockmodifier_module|counter\(17) & ((\clockmodifier_module|Add0~33\) # (GND)))
-- \clockmodifier_module|Add0~35\ = CARRY((!\clockmodifier_module|Add0~33\) # (!\clockmodifier_module|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(17),
	datad => VCC,
	cin => \clockmodifier_module|Add0~33\,
	combout => \clockmodifier_module|Add0~34_combout\,
	cout => \clockmodifier_module|Add0~35\);

-- Location: FF_X12_Y12_N3
\clockmodifier_module|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(17));

-- Location: LCCOMB_X12_Y12_N4
\clockmodifier_module|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~36_combout\ = (\clockmodifier_module|counter\(18) & (\clockmodifier_module|Add0~35\ $ (GND))) # (!\clockmodifier_module|counter\(18) & (!\clockmodifier_module|Add0~35\ & VCC))
-- \clockmodifier_module|Add0~37\ = CARRY((\clockmodifier_module|counter\(18) & !\clockmodifier_module|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(18),
	datad => VCC,
	cin => \clockmodifier_module|Add0~35\,
	combout => \clockmodifier_module|Add0~36_combout\,
	cout => \clockmodifier_module|Add0~37\);

-- Location: FF_X12_Y12_N5
\clockmodifier_module|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(18));

-- Location: LCCOMB_X12_Y12_N6
\clockmodifier_module|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~38_combout\ = (\clockmodifier_module|counter\(19) & (!\clockmodifier_module|Add0~37\)) # (!\clockmodifier_module|counter\(19) & ((\clockmodifier_module|Add0~37\) # (GND)))
-- \clockmodifier_module|Add0~39\ = CARRY((!\clockmodifier_module|Add0~37\) # (!\clockmodifier_module|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(19),
	datad => VCC,
	cin => \clockmodifier_module|Add0~37\,
	combout => \clockmodifier_module|Add0~38_combout\,
	cout => \clockmodifier_module|Add0~39\);

-- Location: FF_X12_Y12_N7
\clockmodifier_module|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(19));

-- Location: LCCOMB_X12_Y12_N8
\clockmodifier_module|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~40_combout\ = (\clockmodifier_module|counter\(20) & (\clockmodifier_module|Add0~39\ $ (GND))) # (!\clockmodifier_module|counter\(20) & (!\clockmodifier_module|Add0~39\ & VCC))
-- \clockmodifier_module|Add0~41\ = CARRY((\clockmodifier_module|counter\(20) & !\clockmodifier_module|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(20),
	datad => VCC,
	cin => \clockmodifier_module|Add0~39\,
	combout => \clockmodifier_module|Add0~40_combout\,
	cout => \clockmodifier_module|Add0~41\);

-- Location: FF_X12_Y12_N9
\clockmodifier_module|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(20));

-- Location: LCCOMB_X12_Y12_N10
\clockmodifier_module|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~42_combout\ = (\clockmodifier_module|counter\(21) & (!\clockmodifier_module|Add0~41\)) # (!\clockmodifier_module|counter\(21) & ((\clockmodifier_module|Add0~41\) # (GND)))
-- \clockmodifier_module|Add0~43\ = CARRY((!\clockmodifier_module|Add0~41\) # (!\clockmodifier_module|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(21),
	datad => VCC,
	cin => \clockmodifier_module|Add0~41\,
	combout => \clockmodifier_module|Add0~42_combout\,
	cout => \clockmodifier_module|Add0~43\);

-- Location: FF_X12_Y12_N11
\clockmodifier_module|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(21));

-- Location: LCCOMB_X12_Y12_N12
\clockmodifier_module|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~44_combout\ = (\clockmodifier_module|counter\(22) & (\clockmodifier_module|Add0~43\ $ (GND))) # (!\clockmodifier_module|counter\(22) & (!\clockmodifier_module|Add0~43\ & VCC))
-- \clockmodifier_module|Add0~45\ = CARRY((\clockmodifier_module|counter\(22) & !\clockmodifier_module|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(22),
	datad => VCC,
	cin => \clockmodifier_module|Add0~43\,
	combout => \clockmodifier_module|Add0~44_combout\,
	cout => \clockmodifier_module|Add0~45\);

-- Location: FF_X12_Y12_N13
\clockmodifier_module|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(22));

-- Location: LCCOMB_X12_Y12_N14
\clockmodifier_module|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~46_combout\ = (\clockmodifier_module|counter\(23) & (!\clockmodifier_module|Add0~45\)) # (!\clockmodifier_module|counter\(23) & ((\clockmodifier_module|Add0~45\) # (GND)))
-- \clockmodifier_module|Add0~47\ = CARRY((!\clockmodifier_module|Add0~45\) # (!\clockmodifier_module|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(23),
	datad => VCC,
	cin => \clockmodifier_module|Add0~45\,
	combout => \clockmodifier_module|Add0~46_combout\,
	cout => \clockmodifier_module|Add0~47\);

-- Location: FF_X12_Y12_N15
\clockmodifier_module|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(23));

-- Location: LCCOMB_X12_Y12_N16
\clockmodifier_module|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~48_combout\ = (\clockmodifier_module|counter\(24) & (\clockmodifier_module|Add0~47\ $ (GND))) # (!\clockmodifier_module|counter\(24) & (!\clockmodifier_module|Add0~47\ & VCC))
-- \clockmodifier_module|Add0~49\ = CARRY((\clockmodifier_module|counter\(24) & !\clockmodifier_module|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(24),
	datad => VCC,
	cin => \clockmodifier_module|Add0~47\,
	combout => \clockmodifier_module|Add0~48_combout\,
	cout => \clockmodifier_module|Add0~49\);

-- Location: FF_X12_Y12_N17
\clockmodifier_module|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(24));

-- Location: LCCOMB_X12_Y12_N18
\clockmodifier_module|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~50_combout\ = (\clockmodifier_module|counter\(25) & (!\clockmodifier_module|Add0~49\)) # (!\clockmodifier_module|counter\(25) & ((\clockmodifier_module|Add0~49\) # (GND)))
-- \clockmodifier_module|Add0~51\ = CARRY((!\clockmodifier_module|Add0~49\) # (!\clockmodifier_module|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(25),
	datad => VCC,
	cin => \clockmodifier_module|Add0~49\,
	combout => \clockmodifier_module|Add0~50_combout\,
	cout => \clockmodifier_module|Add0~51\);

-- Location: FF_X12_Y12_N19
\clockmodifier_module|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(25));

-- Location: LCCOMB_X12_Y12_N20
\clockmodifier_module|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~52_combout\ = (\clockmodifier_module|counter\(26) & (\clockmodifier_module|Add0~51\ $ (GND))) # (!\clockmodifier_module|counter\(26) & (!\clockmodifier_module|Add0~51\ & VCC))
-- \clockmodifier_module|Add0~53\ = CARRY((\clockmodifier_module|counter\(26) & !\clockmodifier_module|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(26),
	datad => VCC,
	cin => \clockmodifier_module|Add0~51\,
	combout => \clockmodifier_module|Add0~52_combout\,
	cout => \clockmodifier_module|Add0~53\);

-- Location: FF_X12_Y12_N21
\clockmodifier_module|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(26));

-- Location: LCCOMB_X12_Y12_N22
\clockmodifier_module|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~54_combout\ = (\clockmodifier_module|counter\(27) & (!\clockmodifier_module|Add0~53\)) # (!\clockmodifier_module|counter\(27) & ((\clockmodifier_module|Add0~53\) # (GND)))
-- \clockmodifier_module|Add0~55\ = CARRY((!\clockmodifier_module|Add0~53\) # (!\clockmodifier_module|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(27),
	datad => VCC,
	cin => \clockmodifier_module|Add0~53\,
	combout => \clockmodifier_module|Add0~54_combout\,
	cout => \clockmodifier_module|Add0~55\);

-- Location: FF_X12_Y12_N23
\clockmodifier_module|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(27));

-- Location: LCCOMB_X11_Y12_N30
\clockmodifier_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~1_combout\ = (!\clockmodifier_module|counter\(26) & (!\clockmodifier_module|counter\(27) & (!\clockmodifier_module|counter\(25) & !\clockmodifier_module|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(26),
	datab => \clockmodifier_module|counter\(27),
	datac => \clockmodifier_module|counter\(25),
	datad => \clockmodifier_module|counter\(24),
	combout => \clockmodifier_module|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y12_N24
\clockmodifier_module|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~56_combout\ = (\clockmodifier_module|counter\(28) & (\clockmodifier_module|Add0~55\ $ (GND))) # (!\clockmodifier_module|counter\(28) & (!\clockmodifier_module|Add0~55\ & VCC))
-- \clockmodifier_module|Add0~57\ = CARRY((\clockmodifier_module|counter\(28) & !\clockmodifier_module|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(28),
	datad => VCC,
	cin => \clockmodifier_module|Add0~55\,
	combout => \clockmodifier_module|Add0~56_combout\,
	cout => \clockmodifier_module|Add0~57\);

-- Location: FF_X12_Y12_N25
\clockmodifier_module|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(28));

-- Location: LCCOMB_X12_Y12_N26
\clockmodifier_module|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~58_combout\ = (\clockmodifier_module|counter\(29) & (!\clockmodifier_module|Add0~57\)) # (!\clockmodifier_module|counter\(29) & ((\clockmodifier_module|Add0~57\) # (GND)))
-- \clockmodifier_module|Add0~59\ = CARRY((!\clockmodifier_module|Add0~57\) # (!\clockmodifier_module|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(29),
	datad => VCC,
	cin => \clockmodifier_module|Add0~57\,
	combout => \clockmodifier_module|Add0~58_combout\,
	cout => \clockmodifier_module|Add0~59\);

-- Location: FF_X12_Y12_N27
\clockmodifier_module|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(29));

-- Location: LCCOMB_X12_Y12_N28
\clockmodifier_module|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~60_combout\ = (\clockmodifier_module|counter\(30) & (\clockmodifier_module|Add0~59\ $ (GND))) # (!\clockmodifier_module|counter\(30) & (!\clockmodifier_module|Add0~59\ & VCC))
-- \clockmodifier_module|Add0~61\ = CARRY((\clockmodifier_module|counter\(30) & !\clockmodifier_module|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(30),
	datad => VCC,
	cin => \clockmodifier_module|Add0~59\,
	combout => \clockmodifier_module|Add0~60_combout\,
	cout => \clockmodifier_module|Add0~61\);

-- Location: FF_X12_Y12_N29
\clockmodifier_module|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(30));

-- Location: LCCOMB_X12_Y12_N30
\clockmodifier_module|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~62_combout\ = \clockmodifier_module|counter\(31) $ (\clockmodifier_module|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(31),
	cin => \clockmodifier_module|Add0~61\,
	combout => \clockmodifier_module|Add0~62_combout\);

-- Location: FF_X12_Y12_N31
\clockmodifier_module|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(31));

-- Location: LCCOMB_X11_Y12_N28
\clockmodifier_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~0_combout\ = (!\clockmodifier_module|counter\(31) & (!\clockmodifier_module|counter\(30) & (!\clockmodifier_module|counter\(28) & !\clockmodifier_module|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(31),
	datab => \clockmodifier_module|counter\(30),
	datac => \clockmodifier_module|counter\(28),
	datad => \clockmodifier_module|counter\(29),
	combout => \clockmodifier_module|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y12_N8
\clockmodifier_module|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~2_combout\ = (!\clockmodifier_module|counter\(22) & (!\clockmodifier_module|counter\(21) & (!\clockmodifier_module|counter\(20) & !\clockmodifier_module|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(22),
	datab => \clockmodifier_module|counter\(21),
	datac => \clockmodifier_module|counter\(20),
	datad => \clockmodifier_module|counter\(23),
	combout => \clockmodifier_module|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y12_N18
\clockmodifier_module|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~3_combout\ = (!\clockmodifier_module|counter\(18) & (!\clockmodifier_module|counter\(16) & (!\clockmodifier_module|counter\(17) & !\clockmodifier_module|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(18),
	datab => \clockmodifier_module|counter\(16),
	datac => \clockmodifier_module|counter\(17),
	datad => \clockmodifier_module|counter\(19),
	combout => \clockmodifier_module|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y12_N0
\clockmodifier_module|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~4_combout\ = (\clockmodifier_module|Equal0~1_combout\ & (\clockmodifier_module|Equal0~0_combout\ & (\clockmodifier_module|Equal0~2_combout\ & \clockmodifier_module|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~1_combout\,
	datab => \clockmodifier_module|Equal0~0_combout\,
	datac => \clockmodifier_module|Equal0~2_combout\,
	datad => \clockmodifier_module|Equal0~3_combout\,
	combout => \clockmodifier_module|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y13_N10
\clockmodifier_module|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~0_combout\ = (\clockmodifier_module|Add0~28_combout\ & ((!\clockmodifier_module|Equal0~9_combout\) # (!\clockmodifier_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|Equal0~4_combout\,
	datac => \clockmodifier_module|Equal0~9_combout\,
	datad => \clockmodifier_module|Add0~28_combout\,
	combout => \clockmodifier_module|counter~0_combout\);

-- Location: FF_X11_Y13_N11
\clockmodifier_module|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|counter\(14));

-- Location: LCCOMB_X11_Y13_N30
\clockmodifier_module|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~5_combout\ = (\clockmodifier_module|counter\(14) & (\clockmodifier_module|counter\(12) & (!\clockmodifier_module|counter\(15) & !\clockmodifier_module|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(14),
	datab => \clockmodifier_module|counter\(12),
	datac => \clockmodifier_module|counter\(15),
	datad => \clockmodifier_module|counter\(13),
	combout => \clockmodifier_module|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y13_N20
\clockmodifier_module|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~6_combout\ = (\clockmodifier_module|counter\(8) & (!\clockmodifier_module|counter\(9) & (!\clockmodifier_module|counter\(10) & !\clockmodifier_module|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(8),
	datab => \clockmodifier_module|counter\(9),
	datac => \clockmodifier_module|counter\(10),
	datad => \clockmodifier_module|counter\(11),
	combout => \clockmodifier_module|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y13_N8
\clockmodifier_module|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~8_combout\ = (!\clockmodifier_module|counter\(2) & (!\clockmodifier_module|counter\(3) & (!\clockmodifier_module|counter\(0) & !\clockmodifier_module|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(2),
	datab => \clockmodifier_module|counter\(3),
	datac => \clockmodifier_module|counter\(0),
	datad => \clockmodifier_module|counter\(1),
	combout => \clockmodifier_module|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y13_N28
\clockmodifier_module|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~7_combout\ = (\clockmodifier_module|counter\(5) & (!\clockmodifier_module|counter\(4) & (!\clockmodifier_module|counter\(7) & \clockmodifier_module|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(5),
	datab => \clockmodifier_module|counter\(4),
	datac => \clockmodifier_module|counter\(7),
	datad => \clockmodifier_module|counter\(6),
	combout => \clockmodifier_module|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y13_N22
\clockmodifier_module|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~9_combout\ = (\clockmodifier_module|Equal0~5_combout\ & (\clockmodifier_module|Equal0~6_combout\ & (\clockmodifier_module|Equal0~8_combout\ & \clockmodifier_module|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~5_combout\,
	datab => \clockmodifier_module|Equal0~6_combout\,
	datac => \clockmodifier_module|Equal0~8_combout\,
	datad => \clockmodifier_module|Equal0~7_combout\,
	combout => \clockmodifier_module|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y13_N18
\clockmodifier_module|clk_out_intem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|clk_out_intem~0_combout\ = \clockmodifier_module|clk_out_intem~q\ $ (((\clockmodifier_module|Equal0~9_combout\ & \clockmodifier_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~9_combout\,
	datac => \clockmodifier_module|clk_out_intem~q\,
	datad => \clockmodifier_module|Equal0~4_combout\,
	combout => \clockmodifier_module|clk_out_intem~0_combout\);

-- Location: LCCOMB_X11_Y13_N14
\clockmodifier_module|clk_out_intem~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|clk_out_intem~feeder_combout\ = \clockmodifier_module|clk_out_intem~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|clk_out_intem~0_combout\,
	combout => \clockmodifier_module|clk_out_intem~feeder_combout\);

-- Location: FF_X11_Y13_N15
\clockmodifier_module|clk_out_intem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \clockmodifier_module|clk_out_intem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockmodifier_module|clk_out_intem~q\);

-- Location: CLKCTRL_G4
\clockmodifier_module|clk_out_intem~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockmodifier_module|clk_out_intem~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y15_N0
\sevs_module|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~0_combout\ = \sevs_module|counter\(0) $ (GND)
-- \sevs_module|Add0~1\ = CARRY(!\sevs_module|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(0),
	datad => VCC,
	combout => \sevs_module|Add0~0_combout\,
	cout => \sevs_module|Add0~1\);

-- Location: LCCOMB_X22_Y15_N6
\sevs_module|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|counter[0]~1_combout\ = !\sevs_module|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~0_combout\,
	combout => \sevs_module|counter[0]~1_combout\);

-- Location: FF_X23_Y15_N1
\sevs_module|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|counter[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(0));

-- Location: LCCOMB_X23_Y15_N2
\sevs_module|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~2_combout\ = (\sevs_module|counter\(1) & (!\sevs_module|Add0~1\)) # (!\sevs_module|counter\(1) & ((\sevs_module|Add0~1\) # (GND)))
-- \sevs_module|Add0~3\ = CARRY((!\sevs_module|Add0~1\) # (!\sevs_module|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(1),
	datad => VCC,
	cin => \sevs_module|Add0~1\,
	combout => \sevs_module|Add0~2_combout\,
	cout => \sevs_module|Add0~3\);

-- Location: FF_X23_Y15_N3
\sevs_module|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(1));

-- Location: LCCOMB_X23_Y15_N4
\sevs_module|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~4_combout\ = (\sevs_module|counter\(2) & (\sevs_module|Add0~3\ $ (GND))) # (!\sevs_module|counter\(2) & (!\sevs_module|Add0~3\ & VCC))
-- \sevs_module|Add0~5\ = CARRY((\sevs_module|counter\(2) & !\sevs_module|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(2),
	datad => VCC,
	cin => \sevs_module|Add0~3\,
	combout => \sevs_module|Add0~4_combout\,
	cout => \sevs_module|Add0~5\);

-- Location: LCCOMB_X23_Y15_N6
\sevs_module|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~6_combout\ = (\sevs_module|counter\(3) & (!\sevs_module|Add0~5\)) # (!\sevs_module|counter\(3) & ((\sevs_module|Add0~5\) # (GND)))
-- \sevs_module|Add0~7\ = CARRY((!\sevs_module|Add0~5\) # (!\sevs_module|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(3),
	datad => VCC,
	cin => \sevs_module|Add0~5\,
	combout => \sevs_module|Add0~6_combout\,
	cout => \sevs_module|Add0~7\);

-- Location: FF_X23_Y15_N7
\sevs_module|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(3));

-- Location: LCCOMB_X23_Y15_N8
\sevs_module|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~8_combout\ = (\sevs_module|counter\(4) & (\sevs_module|Add0~7\ $ (GND))) # (!\sevs_module|counter\(4) & (!\sevs_module|Add0~7\ & VCC))
-- \sevs_module|Add0~9\ = CARRY((\sevs_module|counter\(4) & !\sevs_module|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(4),
	datad => VCC,
	cin => \sevs_module|Add0~7\,
	combout => \sevs_module|Add0~8_combout\,
	cout => \sevs_module|Add0~9\);

-- Location: FF_X23_Y15_N9
\sevs_module|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(4));

-- Location: LCCOMB_X23_Y15_N10
\sevs_module|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~10_combout\ = (\sevs_module|counter\(5) & (!\sevs_module|Add0~9\)) # (!\sevs_module|counter\(5) & ((\sevs_module|Add0~9\) # (GND)))
-- \sevs_module|Add0~11\ = CARRY((!\sevs_module|Add0~9\) # (!\sevs_module|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(5),
	datad => VCC,
	cin => \sevs_module|Add0~9\,
	combout => \sevs_module|Add0~10_combout\,
	cout => \sevs_module|Add0~11\);

-- Location: FF_X23_Y15_N11
\sevs_module|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(5));

-- Location: LCCOMB_X23_Y15_N12
\sevs_module|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~12_combout\ = (\sevs_module|counter\(6) & (\sevs_module|Add0~11\ $ (GND))) # (!\sevs_module|counter\(6) & (!\sevs_module|Add0~11\ & VCC))
-- \sevs_module|Add0~13\ = CARRY((\sevs_module|counter\(6) & !\sevs_module|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(6),
	datad => VCC,
	cin => \sevs_module|Add0~11\,
	combout => \sevs_module|Add0~12_combout\,
	cout => \sevs_module|Add0~13\);

-- Location: FF_X23_Y15_N13
\sevs_module|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(6));

-- Location: LCCOMB_X23_Y15_N14
\sevs_module|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~14_combout\ = (\sevs_module|counter\(7) & (!\sevs_module|Add0~13\)) # (!\sevs_module|counter\(7) & ((\sevs_module|Add0~13\) # (GND)))
-- \sevs_module|Add0~15\ = CARRY((!\sevs_module|Add0~13\) # (!\sevs_module|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(7),
	datad => VCC,
	cin => \sevs_module|Add0~13\,
	combout => \sevs_module|Add0~14_combout\,
	cout => \sevs_module|Add0~15\);

-- Location: FF_X23_Y15_N15
\sevs_module|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(7));

-- Location: LCCOMB_X23_Y15_N16
\sevs_module|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~16_combout\ = (\sevs_module|counter\(8) & (\sevs_module|Add0~15\ $ (GND))) # (!\sevs_module|counter\(8) & (!\sevs_module|Add0~15\ & VCC))
-- \sevs_module|Add0~17\ = CARRY((\sevs_module|counter\(8) & !\sevs_module|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(8),
	datad => VCC,
	cin => \sevs_module|Add0~15\,
	combout => \sevs_module|Add0~16_combout\,
	cout => \sevs_module|Add0~17\);

-- Location: FF_X22_Y14_N29
\sevs_module|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|Add0~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(8));

-- Location: LCCOMB_X23_Y15_N18
\sevs_module|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~18_combout\ = (\sevs_module|counter\(9) & (!\sevs_module|Add0~17\)) # (!\sevs_module|counter\(9) & ((\sevs_module|Add0~17\) # (GND)))
-- \sevs_module|Add0~19\ = CARRY((!\sevs_module|Add0~17\) # (!\sevs_module|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(9),
	datad => VCC,
	cin => \sevs_module|Add0~17\,
	combout => \sevs_module|Add0~18_combout\,
	cout => \sevs_module|Add0~19\);

-- Location: FF_X23_Y15_N19
\sevs_module|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(9));

-- Location: LCCOMB_X23_Y15_N20
\sevs_module|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~20_combout\ = (\sevs_module|counter\(10) & (\sevs_module|Add0~19\ $ (GND))) # (!\sevs_module|counter\(10) & (!\sevs_module|Add0~19\ & VCC))
-- \sevs_module|Add0~21\ = CARRY((\sevs_module|counter\(10) & !\sevs_module|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(10),
	datad => VCC,
	cin => \sevs_module|Add0~19\,
	combout => \sevs_module|Add0~20_combout\,
	cout => \sevs_module|Add0~21\);

-- Location: FF_X23_Y15_N21
\sevs_module|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(10));

-- Location: LCCOMB_X23_Y15_N22
\sevs_module|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~22_combout\ = (\sevs_module|counter\(11) & (!\sevs_module|Add0~21\)) # (!\sevs_module|counter\(11) & ((\sevs_module|Add0~21\) # (GND)))
-- \sevs_module|Add0~23\ = CARRY((!\sevs_module|Add0~21\) # (!\sevs_module|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(11),
	datad => VCC,
	cin => \sevs_module|Add0~21\,
	combout => \sevs_module|Add0~22_combout\,
	cout => \sevs_module|Add0~23\);

-- Location: FF_X22_Y14_N27
\sevs_module|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|Add0~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(11));

-- Location: LCCOMB_X23_Y15_N24
\sevs_module|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~24_combout\ = (\sevs_module|counter\(12) & (\sevs_module|Add0~23\ $ (GND))) # (!\sevs_module|counter\(12) & (!\sevs_module|Add0~23\ & VCC))
-- \sevs_module|Add0~25\ = CARRY((\sevs_module|counter\(12) & !\sevs_module|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(12),
	datad => VCC,
	cin => \sevs_module|Add0~23\,
	combout => \sevs_module|Add0~24_combout\,
	cout => \sevs_module|Add0~25\);

-- Location: FF_X23_Y15_N25
\sevs_module|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(12));

-- Location: LCCOMB_X23_Y15_N26
\sevs_module|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~26_combout\ = (\sevs_module|counter\(13) & (!\sevs_module|Add0~25\)) # (!\sevs_module|counter\(13) & ((\sevs_module|Add0~25\) # (GND)))
-- \sevs_module|Add0~27\ = CARRY((!\sevs_module|Add0~25\) # (!\sevs_module|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(13),
	datad => VCC,
	cin => \sevs_module|Add0~25\,
	combout => \sevs_module|Add0~26_combout\,
	cout => \sevs_module|Add0~27\);

-- Location: FF_X23_Y15_N27
\sevs_module|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(13));

-- Location: LCCOMB_X23_Y15_N28
\sevs_module|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~28_combout\ = (\sevs_module|counter\(14) & (\sevs_module|Add0~27\ $ (GND))) # (!\sevs_module|counter\(14) & (!\sevs_module|Add0~27\ & VCC))
-- \sevs_module|Add0~29\ = CARRY((\sevs_module|counter\(14) & !\sevs_module|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(14),
	datad => VCC,
	cin => \sevs_module|Add0~27\,
	combout => \sevs_module|Add0~28_combout\,
	cout => \sevs_module|Add0~29\);

-- Location: FF_X23_Y15_N29
\sevs_module|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(14));

-- Location: LCCOMB_X23_Y15_N30
\sevs_module|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~30_combout\ = (\sevs_module|counter\(15) & (!\sevs_module|Add0~29\)) # (!\sevs_module|counter\(15) & ((\sevs_module|Add0~29\) # (GND)))
-- \sevs_module|Add0~31\ = CARRY((!\sevs_module|Add0~29\) # (!\sevs_module|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(15),
	datad => VCC,
	cin => \sevs_module|Add0~29\,
	combout => \sevs_module|Add0~30_combout\,
	cout => \sevs_module|Add0~31\);

-- Location: FF_X23_Y15_N31
\sevs_module|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(15));

-- Location: LCCOMB_X23_Y14_N0
\sevs_module|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~32_combout\ = (\sevs_module|counter\(16) & (\sevs_module|Add0~31\ $ (GND))) # (!\sevs_module|counter\(16) & (!\sevs_module|Add0~31\ & VCC))
-- \sevs_module|Add0~33\ = CARRY((\sevs_module|counter\(16) & !\sevs_module|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(16),
	datad => VCC,
	cin => \sevs_module|Add0~31\,
	combout => \sevs_module|Add0~32_combout\,
	cout => \sevs_module|Add0~33\);

-- Location: FF_X23_Y14_N1
\sevs_module|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(16));

-- Location: LCCOMB_X23_Y14_N2
\sevs_module|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~34_combout\ = (\sevs_module|counter\(17) & (!\sevs_module|Add0~33\)) # (!\sevs_module|counter\(17) & ((\sevs_module|Add0~33\) # (GND)))
-- \sevs_module|Add0~35\ = CARRY((!\sevs_module|Add0~33\) # (!\sevs_module|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(17),
	datad => VCC,
	cin => \sevs_module|Add0~33\,
	combout => \sevs_module|Add0~34_combout\,
	cout => \sevs_module|Add0~35\);

-- Location: FF_X23_Y14_N3
\sevs_module|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(17));

-- Location: LCCOMB_X23_Y14_N4
\sevs_module|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~36_combout\ = (\sevs_module|counter\(18) & (\sevs_module|Add0~35\ $ (GND))) # (!\sevs_module|counter\(18) & (!\sevs_module|Add0~35\ & VCC))
-- \sevs_module|Add0~37\ = CARRY((\sevs_module|counter\(18) & !\sevs_module|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(18),
	datad => VCC,
	cin => \sevs_module|Add0~35\,
	combout => \sevs_module|Add0~36_combout\,
	cout => \sevs_module|Add0~37\);

-- Location: FF_X23_Y14_N5
\sevs_module|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(18));

-- Location: LCCOMB_X23_Y14_N6
\sevs_module|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~38_combout\ = (\sevs_module|counter\(19) & (!\sevs_module|Add0~37\)) # (!\sevs_module|counter\(19) & ((\sevs_module|Add0~37\) # (GND)))
-- \sevs_module|Add0~39\ = CARRY((!\sevs_module|Add0~37\) # (!\sevs_module|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(19),
	datad => VCC,
	cin => \sevs_module|Add0~37\,
	combout => \sevs_module|Add0~38_combout\,
	cout => \sevs_module|Add0~39\);

-- Location: FF_X23_Y14_N7
\sevs_module|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(19));

-- Location: LCCOMB_X23_Y14_N8
\sevs_module|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~40_combout\ = (\sevs_module|counter\(20) & (\sevs_module|Add0~39\ $ (GND))) # (!\sevs_module|counter\(20) & (!\sevs_module|Add0~39\ & VCC))
-- \sevs_module|Add0~41\ = CARRY((\sevs_module|counter\(20) & !\sevs_module|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(20),
	datad => VCC,
	cin => \sevs_module|Add0~39\,
	combout => \sevs_module|Add0~40_combout\,
	cout => \sevs_module|Add0~41\);

-- Location: FF_X23_Y14_N9
\sevs_module|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(20));

-- Location: LCCOMB_X23_Y14_N10
\sevs_module|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~42_combout\ = (\sevs_module|counter\(21) & (!\sevs_module|Add0~41\)) # (!\sevs_module|counter\(21) & ((\sevs_module|Add0~41\) # (GND)))
-- \sevs_module|Add0~43\ = CARRY((!\sevs_module|Add0~41\) # (!\sevs_module|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(21),
	datad => VCC,
	cin => \sevs_module|Add0~41\,
	combout => \sevs_module|Add0~42_combout\,
	cout => \sevs_module|Add0~43\);

-- Location: FF_X23_Y14_N11
\sevs_module|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(21));

-- Location: LCCOMB_X23_Y14_N12
\sevs_module|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~44_combout\ = (\sevs_module|counter\(22) & (\sevs_module|Add0~43\ $ (GND))) # (!\sevs_module|counter\(22) & (!\sevs_module|Add0~43\ & VCC))
-- \sevs_module|Add0~45\ = CARRY((\sevs_module|counter\(22) & !\sevs_module|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(22),
	datad => VCC,
	cin => \sevs_module|Add0~43\,
	combout => \sevs_module|Add0~44_combout\,
	cout => \sevs_module|Add0~45\);

-- Location: FF_X23_Y14_N13
\sevs_module|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(22));

-- Location: LCCOMB_X23_Y14_N14
\sevs_module|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~46_combout\ = (\sevs_module|counter\(23) & (!\sevs_module|Add0~45\)) # (!\sevs_module|counter\(23) & ((\sevs_module|Add0~45\) # (GND)))
-- \sevs_module|Add0~47\ = CARRY((!\sevs_module|Add0~45\) # (!\sevs_module|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(23),
	datad => VCC,
	cin => \sevs_module|Add0~45\,
	combout => \sevs_module|Add0~46_combout\,
	cout => \sevs_module|Add0~47\);

-- Location: FF_X23_Y14_N15
\sevs_module|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(23));

-- Location: LCCOMB_X23_Y14_N16
\sevs_module|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~48_combout\ = (\sevs_module|counter\(24) & (\sevs_module|Add0~47\ $ (GND))) # (!\sevs_module|counter\(24) & (!\sevs_module|Add0~47\ & VCC))
-- \sevs_module|Add0~49\ = CARRY((\sevs_module|counter\(24) & !\sevs_module|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(24),
	datad => VCC,
	cin => \sevs_module|Add0~47\,
	combout => \sevs_module|Add0~48_combout\,
	cout => \sevs_module|Add0~49\);

-- Location: FF_X23_Y14_N17
\sevs_module|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(24));

-- Location: LCCOMB_X23_Y14_N18
\sevs_module|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~50_combout\ = (\sevs_module|counter\(25) & (!\sevs_module|Add0~49\)) # (!\sevs_module|counter\(25) & ((\sevs_module|Add0~49\) # (GND)))
-- \sevs_module|Add0~51\ = CARRY((!\sevs_module|Add0~49\) # (!\sevs_module|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(25),
	datad => VCC,
	cin => \sevs_module|Add0~49\,
	combout => \sevs_module|Add0~50_combout\,
	cout => \sevs_module|Add0~51\);

-- Location: FF_X23_Y14_N19
\sevs_module|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(25));

-- Location: LCCOMB_X23_Y14_N20
\sevs_module|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~52_combout\ = (\sevs_module|counter\(26) & (\sevs_module|Add0~51\ $ (GND))) # (!\sevs_module|counter\(26) & (!\sevs_module|Add0~51\ & VCC))
-- \sevs_module|Add0~53\ = CARRY((\sevs_module|counter\(26) & !\sevs_module|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(26),
	datad => VCC,
	cin => \sevs_module|Add0~51\,
	combout => \sevs_module|Add0~52_combout\,
	cout => \sevs_module|Add0~53\);

-- Location: FF_X23_Y14_N21
\sevs_module|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(26));

-- Location: LCCOMB_X23_Y14_N22
\sevs_module|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~54_combout\ = (\sevs_module|counter\(27) & (!\sevs_module|Add0~53\)) # (!\sevs_module|counter\(27) & ((\sevs_module|Add0~53\) # (GND)))
-- \sevs_module|Add0~55\ = CARRY((!\sevs_module|Add0~53\) # (!\sevs_module|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(27),
	datad => VCC,
	cin => \sevs_module|Add0~53\,
	combout => \sevs_module|Add0~54_combout\,
	cout => \sevs_module|Add0~55\);

-- Location: FF_X23_Y14_N23
\sevs_module|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(27));

-- Location: LCCOMB_X23_Y14_N24
\sevs_module|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~56_combout\ = (\sevs_module|counter\(28) & (\sevs_module|Add0~55\ $ (GND))) # (!\sevs_module|counter\(28) & (!\sevs_module|Add0~55\ & VCC))
-- \sevs_module|Add0~57\ = CARRY((\sevs_module|counter\(28) & !\sevs_module|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(28),
	datad => VCC,
	cin => \sevs_module|Add0~55\,
	combout => \sevs_module|Add0~56_combout\,
	cout => \sevs_module|Add0~57\);

-- Location: FF_X23_Y14_N25
\sevs_module|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(28));

-- Location: LCCOMB_X22_Y14_N12
\sevs_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~0_combout\ = (!\sevs_module|counter\(27) & (!\sevs_module|counter\(28) & (!\sevs_module|counter\(26) & !\sevs_module|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(27),
	datab => \sevs_module|counter\(28),
	datac => \sevs_module|counter\(26),
	datad => \sevs_module|counter\(25),
	combout => \sevs_module|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\sevs_module|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~2_combout\ = (!\sevs_module|counter\(19) & (!\sevs_module|counter\(17) & (!\sevs_module|counter\(18) & !\sevs_module|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(19),
	datab => \sevs_module|counter\(17),
	datac => \sevs_module|counter\(18),
	datad => \sevs_module|counter\(20),
	combout => \sevs_module|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y14_N14
\sevs_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~1_combout\ = (!\sevs_module|counter\(23) & (!\sevs_module|counter\(21) & (!\sevs_module|counter\(22) & !\sevs_module|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(23),
	datab => \sevs_module|counter\(21),
	datac => \sevs_module|counter\(22),
	datad => \sevs_module|counter\(24),
	combout => \sevs_module|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y14_N18
\sevs_module|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~3_combout\ = (!\sevs_module|counter\(15) & (!\sevs_module|counter\(14) & (!\sevs_module|counter\(16) & !\sevs_module|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(15),
	datab => \sevs_module|counter\(14),
	datac => \sevs_module|counter\(16),
	datad => \sevs_module|counter\(13),
	combout => \sevs_module|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y14_N8
\sevs_module|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~4_combout\ = (\sevs_module|Equal0~0_combout\ & (\sevs_module|Equal0~2_combout\ & (\sevs_module|Equal0~1_combout\ & \sevs_module|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~0_combout\,
	datab => \sevs_module|Equal0~2_combout\,
	datac => \sevs_module|Equal0~1_combout\,
	datad => \sevs_module|Equal0~3_combout\,
	combout => \sevs_module|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y14_N26
\sevs_module|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~5_combout\ = (!\sevs_module|counter\(12) & (!\sevs_module|counter\(10) & (!\sevs_module|counter\(11) & !\sevs_module|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(12),
	datab => \sevs_module|counter\(10),
	datac => \sevs_module|counter\(11),
	datad => \sevs_module|counter\(9),
	combout => \sevs_module|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y14_N26
\sevs_module|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~58_combout\ = (\sevs_module|counter\(29) & (!\sevs_module|Add0~57\)) # (!\sevs_module|counter\(29) & ((\sevs_module|Add0~57\) # (GND)))
-- \sevs_module|Add0~59\ = CARRY((!\sevs_module|Add0~57\) # (!\sevs_module|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(29),
	datad => VCC,
	cin => \sevs_module|Add0~57\,
	combout => \sevs_module|Add0~58_combout\,
	cout => \sevs_module|Add0~59\);

-- Location: FF_X23_Y14_N27
\sevs_module|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(29));

-- Location: LCCOMB_X23_Y14_N28
\sevs_module|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~60_combout\ = (\sevs_module|counter\(30) & (\sevs_module|Add0~59\ $ (GND))) # (!\sevs_module|counter\(30) & (!\sevs_module|Add0~59\ & VCC))
-- \sevs_module|Add0~61\ = CARRY((\sevs_module|counter\(30) & !\sevs_module|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(30),
	datad => VCC,
	cin => \sevs_module|Add0~59\,
	combout => \sevs_module|Add0~60_combout\,
	cout => \sevs_module|Add0~61\);

-- Location: FF_X23_Y14_N29
\sevs_module|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(30));

-- Location: LCCOMB_X23_Y14_N30
\sevs_module|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~62_combout\ = \sevs_module|counter\(31) $ (\sevs_module|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(31),
	cin => \sevs_module|Add0~61\,
	combout => \sevs_module|Add0~62_combout\);

-- Location: FF_X23_Y14_N31
\sevs_module|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(31));

-- Location: LCCOMB_X22_Y14_N30
\sevs_module|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~6_combout\ = (!\sevs_module|counter\(8) & (!\sevs_module|counter\(7) & (!\sevs_module|counter\(6) & !\sevs_module|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(8),
	datab => \sevs_module|counter\(7),
	datac => \sevs_module|counter\(6),
	datad => \sevs_module|counter\(5),
	combout => \sevs_module|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y14_N24
\sevs_module|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~7_combout\ = (!\sevs_module|counter\(29) & (!\sevs_module|counter\(30) & (!\sevs_module|counter\(3) & !\sevs_module|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(29),
	datab => \sevs_module|counter\(30),
	datac => \sevs_module|counter\(3),
	datad => \sevs_module|counter\(4),
	combout => \sevs_module|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y14_N2
\sevs_module|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~8_combout\ = (\sevs_module|Equal0~5_combout\ & (!\sevs_module|counter\(31) & (\sevs_module|Equal0~6_combout\ & \sevs_module|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~5_combout\,
	datab => \sevs_module|counter\(31),
	datac => \sevs_module|Equal0~6_combout\,
	datad => \sevs_module|Equal0~7_combout\,
	combout => \sevs_module|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y14_N16
\sevs_module|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal3~0_combout\ = (\sevs_module|counter\(0) & (\sevs_module|counter\(2) & !\sevs_module|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(0),
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|counter\(1),
	combout => \sevs_module|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y14_N4
\sevs_module|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|counter~0_combout\ = (\sevs_module|Add0~4_combout\ & (((!\sevs_module|Equal3~0_combout\) # (!\sevs_module|Equal0~8_combout\)) # (!\sevs_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~4_combout\,
	datab => \sevs_module|Equal0~8_combout\,
	datac => \sevs_module|Equal3~0_combout\,
	datad => \sevs_module|Add0~4_combout\,
	combout => \sevs_module|counter~0_combout\);

-- Location: FF_X22_Y14_N5
\sevs_module|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(2));

-- Location: LCCOMB_X22_Y14_N28
\sevs_module|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~9_combout\ = (\sevs_module|Equal0~4_combout\ & \sevs_module|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|Equal0~4_combout\,
	datad => \sevs_module|Equal0~8_combout\,
	combout => \sevs_module|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y14_N10
\sevs_module|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~10_combout\ = (!\sevs_module|counter\(1) & (!\sevs_module|counter\(0) & (!\sevs_module|counter\(2) & \sevs_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datab => \sevs_module|counter\(0),
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal0~10_combout\);

-- Location: LCCOMB_X21_Y14_N26
\sevs_module|dig[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig[0]~feeder_combout\ = \sevs_module|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Equal0~10_combout\,
	combout => \sevs_module|dig[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N20
\sevs_module|dig[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig[0]~0_combout\ = (\sevs_module|Equal0~9_combout\ & (\sevs_module|counter\(2) $ (((\sevs_module|counter\(1)) # (!\sevs_module|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datab => \sevs_module|counter\(0),
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|dig[0]~0_combout\);

-- Location: FF_X21_Y14_N27
\sevs_module|dig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|dig[0]~feeder_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(0));

-- Location: LCCOMB_X22_Y14_N16
\sevs_module|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal1~0_combout\ = (\sevs_module|counter\(1) & (\sevs_module|counter\(0) & (!\sevs_module|counter\(2) & \sevs_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datab => \sevs_module|counter\(0),
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal1~0_combout\);

-- Location: FF_X22_Y14_N17
\sevs_module|dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Equal1~0_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(1));

-- Location: LCCOMB_X22_Y14_N22
\sevs_module|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~11_combout\ = (!\sevs_module|counter\(0) & (\sevs_module|Equal0~8_combout\ & (!\sevs_module|counter\(2) & \sevs_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(0),
	datab => \sevs_module|Equal0~8_combout\,
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|Equal0~4_combout\,
	combout => \sevs_module|Equal0~11_combout\);

-- Location: LCCOMB_X21_Y14_N20
\sevs_module|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal2~0_combout\ = (\sevs_module|counter\(1) & \sevs_module|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datad => \sevs_module|Equal0~11_combout\,
	combout => \sevs_module|Equal2~0_combout\);

-- Location: FF_X21_Y14_N21
\sevs_module|dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Equal2~0_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(2));

-- Location: LCCOMB_X22_Y14_N6
\sevs_module|dig[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig[0]~1_combout\ = ((\sevs_module|counter\(2)) # ((!\sevs_module|counter\(1) & \sevs_module|counter\(0)))) # (!\sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datab => \sevs_module|Equal0~9_combout\,
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|counter\(0),
	combout => \sevs_module|dig[0]~1_combout\);

-- Location: FF_X22_Y14_N7
\sevs_module|dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|dig[0]~1_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(3));

-- Location: LCCOMB_X21_Y14_N22
\sevs_module|curr_val~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~17_combout\ = (!\sevs_module|counter\(0) & (\sevs_module|Equal0~9_combout\ & (!\sevs_module|counter\(2) & \sevs_module|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(0),
	datab => \sevs_module|Equal0~9_combout\,
	datac => \sevs_module|counter\(2),
	datad => \sevs_module|counter\(1),
	combout => \sevs_module|curr_val~17_combout\);

-- Location: LCCOMB_X29_Y16_N4
\uart_module|u_RX|r_PRESCALER[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[0]~9_combout\ = \uart_module|u_RX|r_PRESCALER\(0) $ (VCC)
-- \uart_module|u_RX|r_PRESCALER[0]~10\ = CARRY(\uart_module|u_RX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(0),
	datad => VCC,
	combout => \uart_module|u_RX|r_PRESCALER[0]~9_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[0]~10\);

-- Location: LCCOMB_X29_Y16_N6
\uart_module|u_RX|r_PRESCALER[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[1]~11_combout\ = (\uart_module|u_RX|r_PRESCALER\(1) & (!\uart_module|u_RX|r_PRESCALER[0]~10\)) # (!\uart_module|u_RX|r_PRESCALER\(1) & ((\uart_module|u_RX|r_PRESCALER[0]~10\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[1]~12\ = CARRY((!\uart_module|u_RX|r_PRESCALER[0]~10\) # (!\uart_module|u_RX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(1),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[0]~10\,
	combout => \uart_module|u_RX|r_PRESCALER[1]~11_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[1]~12\);

-- Location: LCCOMB_X29_Y16_N8
\uart_module|u_RX|r_PRESCALER[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[2]~13_combout\ = (\uart_module|u_RX|r_PRESCALER\(2) & (\uart_module|u_RX|r_PRESCALER[1]~12\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(2) & (!\uart_module|u_RX|r_PRESCALER[1]~12\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[2]~14\ = CARRY((\uart_module|u_RX|r_PRESCALER\(2) & !\uart_module|u_RX|r_PRESCALER[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(2),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[1]~12\,
	combout => \uart_module|u_RX|r_PRESCALER[2]~13_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[2]~14\);

-- Location: IOIBUF_X28_Y24_N22
\i_Rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Rx,
	o => \i_Rx~input_o\);

-- Location: LCCOMB_X29_Y16_N22
\uart_module|u_RX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~1_combout\ = (\uart_module|u_RX|r_PRESCALER\(4) & (\uart_module|u_RX|r_PRESCALER\(6) & (!\uart_module|u_RX|r_PRESCALER\(5) & \uart_module|u_RX|r_PRESCALER\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(4),
	datab => \uart_module|u_RX|r_PRESCALER\(6),
	datac => \uart_module|u_RX|r_PRESCALER\(5),
	datad => \uart_module|u_RX|r_PRESCALER\(7),
	combout => \uart_module|u_RX|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y16_N2
\uart_module|u_RX|r_INDEX[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[1]~2_combout\ = (!\uart_module|u_RX|r_INDEX~0_combout\ & ((\i_Rx~input_o\) # (\uart_module|u_RX|s_RECIEVING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|r_INDEX[1]~2_combout\);

-- Location: LCCOMB_X30_Y16_N4
\uart_module|u_RX|r_INDEX[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[1]~3_combout\ = (\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|r_INDEX[1]~2_combout\) # ((!\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|r_INDEX~0_combout\)))) # (!\uart_module|u_RX|r_INDEX\(1) & 
-- (\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|r_INDEX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \uart_module|u_RX|r_INDEX[1]~2_combout\,
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|r_INDEX[1]~3_combout\);

-- Location: FF_X30_Y16_N5
\uart_module|u_RX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(1));

-- Location: LCCOMB_X28_Y16_N26
\uart_module|u_RX|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add1~0_combout\ = \uart_module|u_RX|r_INDEX\(2) $ (((\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|r_INDEX\(1),
	combout => \uart_module|u_RX|Add1~0_combout\);

-- Location: LCCOMB_X30_Y16_N20
\uart_module|u_RX|r_INDEX[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[2]~4_combout\ = (\uart_module|u_RX|r_INDEX~0_combout\ & ((\uart_module|u_RX|Add1~0_combout\) # ((\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|r_INDEX[1]~2_combout\)))) # (!\uart_module|u_RX|r_INDEX~0_combout\ & 
-- (((\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|r_INDEX[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX~0_combout\,
	datab => \uart_module|u_RX|Add1~0_combout\,
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX[1]~2_combout\,
	combout => \uart_module|u_RX|r_INDEX[2]~4_combout\);

-- Location: FF_X30_Y16_N21
\uart_module|u_RX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(2));

-- Location: LCCOMB_X29_Y17_N6
\uart_module|u_RX|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add1~1_combout\ = \uart_module|u_RX|r_INDEX\(3) $ (((\uart_module|u_RX|r_INDEX\(2) & (\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|r_INDEX\(1),
	combout => \uart_module|u_RX|Add1~1_combout\);

-- Location: LCCOMB_X30_Y16_N12
\uart_module|u_RX|r_INDEX[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[3]~5_combout\ = (\uart_module|u_RX|r_INDEX~0_combout\ & ((\uart_module|u_RX|Add1~1_combout\) # ((\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|r_INDEX[1]~2_combout\)))) # (!\uart_module|u_RX|r_INDEX~0_combout\ & 
-- (((\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|r_INDEX[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX~0_combout\,
	datab => \uart_module|u_RX|Add1~1_combout\,
	datac => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|r_INDEX[1]~2_combout\,
	combout => \uart_module|u_RX|r_INDEX[3]~5_combout\);

-- Location: FF_X30_Y16_N13
\uart_module|u_RX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(3));

-- Location: LCCOMB_X30_Y16_N28
\uart_module|u_RX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan1~0_combout\ = ((!\uart_module|u_RX|r_INDEX\(1) & (!\uart_module|u_RX|r_INDEX\(0) & !\uart_module|u_RX|r_INDEX\(2)))) # (!\uart_module|u_RX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(1),
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y16_N2
\uart_module|u_RX|pixel_receive~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|pixel_receive~0_combout\ = (\uart_module|u_RX|r_PRESCALER\(8)) # (((\uart_module|u_RX|LessThan1~0_combout\) # (!\uart_module|u_RX|Equal0~1_combout\)) # (!\uart_module|u_RX|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(8),
	datab => \uart_module|u_RX|Equal0~0_combout\,
	datac => \uart_module|u_RX|Equal0~1_combout\,
	datad => \uart_module|u_RX|LessThan1~0_combout\,
	combout => \uart_module|u_RX|pixel_receive~0_combout\);

-- Location: LCCOMB_X31_Y16_N4
\uart_module|u_RX|s_RECIEVING_FLAG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\ = \uart_module|u_RX|pixel_receive~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|pixel_receive~0_combout\,
	combout => \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\);

-- Location: LCCOMB_X31_Y16_N8
\i_Rx~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_Rx~_wirecell_combout\ = !\i_Rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Rx~input_o\,
	combout => \i_Rx~_wirecell_combout\);

-- Location: FF_X31_Y16_N5
\uart_module|u_RX|s_RECIEVING_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\,
	asdata => \i_Rx~_wirecell_combout\,
	sload => \uart_module|u_RX|ALT_INV_s_RECIEVING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|s_RECIEVING_FLAG~q\);

-- Location: LCCOMB_X28_Y16_N16
\uart_module|u_RX|r_PRESCALER~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER~18_combout\ = (\uart_module|u_RX|s_RECIEVING_FLAG~q\) # (!\i_Rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|r_PRESCALER~18_combout\);

-- Location: FF_X29_Y16_N9
\uart_module|u_RX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[2]~13_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(2));

-- Location: LCCOMB_X29_Y16_N10
\uart_module|u_RX|r_PRESCALER[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[3]~19_combout\ = (\uart_module|u_RX|r_PRESCALER\(3) & (!\uart_module|u_RX|r_PRESCALER[2]~14\)) # (!\uart_module|u_RX|r_PRESCALER\(3) & ((\uart_module|u_RX|r_PRESCALER[2]~14\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[3]~20\ = CARRY((!\uart_module|u_RX|r_PRESCALER[2]~14\) # (!\uart_module|u_RX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(3),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[2]~14\,
	combout => \uart_module|u_RX|r_PRESCALER[3]~19_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[3]~20\);

-- Location: FF_X29_Y16_N11
\uart_module|u_RX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[3]~19_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(3));

-- Location: LCCOMB_X29_Y16_N12
\uart_module|u_RX|r_PRESCALER[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[4]~21_combout\ = (\uart_module|u_RX|r_PRESCALER\(4) & (\uart_module|u_RX|r_PRESCALER[3]~20\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(4) & (!\uart_module|u_RX|r_PRESCALER[3]~20\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[4]~22\ = CARRY((\uart_module|u_RX|r_PRESCALER\(4) & !\uart_module|u_RX|r_PRESCALER[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(4),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[3]~20\,
	combout => \uart_module|u_RX|r_PRESCALER[4]~21_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[4]~22\);

-- Location: FF_X29_Y16_N13
\uart_module|u_RX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[4]~21_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(4));

-- Location: LCCOMB_X29_Y16_N14
\uart_module|u_RX|r_PRESCALER[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[5]~23_combout\ = (\uart_module|u_RX|r_PRESCALER\(5) & (!\uart_module|u_RX|r_PRESCALER[4]~22\)) # (!\uart_module|u_RX|r_PRESCALER\(5) & ((\uart_module|u_RX|r_PRESCALER[4]~22\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[5]~24\ = CARRY((!\uart_module|u_RX|r_PRESCALER[4]~22\) # (!\uart_module|u_RX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(5),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[4]~22\,
	combout => \uart_module|u_RX|r_PRESCALER[5]~23_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[5]~24\);

-- Location: FF_X29_Y16_N15
\uart_module|u_RX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[5]~23_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(5));

-- Location: LCCOMB_X29_Y16_N16
\uart_module|u_RX|r_PRESCALER[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[6]~25_combout\ = (\uart_module|u_RX|r_PRESCALER\(6) & (\uart_module|u_RX|r_PRESCALER[5]~24\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(6) & (!\uart_module|u_RX|r_PRESCALER[5]~24\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[6]~26\ = CARRY((\uart_module|u_RX|r_PRESCALER\(6) & !\uart_module|u_RX|r_PRESCALER[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(6),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[5]~24\,
	combout => \uart_module|u_RX|r_PRESCALER[6]~25_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[6]~26\);

-- Location: FF_X29_Y16_N17
\uart_module|u_RX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[6]~25_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(6));

-- Location: LCCOMB_X29_Y16_N18
\uart_module|u_RX|r_PRESCALER[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[7]~27_combout\ = (\uart_module|u_RX|r_PRESCALER\(7) & (!\uart_module|u_RX|r_PRESCALER[6]~26\)) # (!\uart_module|u_RX|r_PRESCALER\(7) & ((\uart_module|u_RX|r_PRESCALER[6]~26\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[7]~28\ = CARRY((!\uart_module|u_RX|r_PRESCALER[6]~26\) # (!\uart_module|u_RX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(7),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[6]~26\,
	combout => \uart_module|u_RX|r_PRESCALER[7]~27_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[7]~28\);

-- Location: FF_X29_Y16_N19
\uart_module|u_RX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[7]~27_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(7));

-- Location: LCCOMB_X29_Y16_N20
\uart_module|u_RX|r_PRESCALER[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[8]~29_combout\ = \uart_module|u_RX|r_PRESCALER[7]~28\ $ (!\uart_module|u_RX|r_PRESCALER\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_PRESCALER\(8),
	cin => \uart_module|u_RX|r_PRESCALER[7]~28\,
	combout => \uart_module|u_RX|r_PRESCALER[8]~29_combout\);

-- Location: FF_X29_Y16_N21
\uart_module|u_RX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[8]~29_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(8));

-- Location: LCCOMB_X30_Y16_N0
\uart_module|u_RX|r_PRESCALER[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[3]~15_combout\ = (!\uart_module|u_RX|r_PRESCALER\(2) & (!\uart_module|u_RX|r_PRESCALER\(1) & (!\uart_module|u_RX|r_PRESCALER\(0) & !\uart_module|u_RX|r_PRESCALER\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(2),
	datab => \uart_module|u_RX|r_PRESCALER\(1),
	datac => \uart_module|u_RX|r_PRESCALER\(0),
	datad => \uart_module|u_RX|r_PRESCALER\(3),
	combout => \uart_module|u_RX|r_PRESCALER[3]~15_combout\);

-- Location: LCCOMB_X30_Y16_N26
\uart_module|u_RX|r_PRESCALER[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[3]~16_combout\ = (!\uart_module|u_RX|r_PRESCALER\(6) & (((\uart_module|u_RX|r_PRESCALER[3]~15_combout\) # (!\uart_module|u_RX|r_PRESCALER\(5))) # (!\uart_module|u_RX|r_PRESCALER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(4),
	datab => \uart_module|u_RX|r_PRESCALER\(5),
	datac => \uart_module|u_RX|r_PRESCALER\(6),
	datad => \uart_module|u_RX|r_PRESCALER[3]~15_combout\,
	combout => \uart_module|u_RX|r_PRESCALER[3]~16_combout\);

-- Location: LCCOMB_X29_Y16_N28
\uart_module|u_RX|r_PRESCALER[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[3]~17_combout\ = ((\uart_module|u_RX|r_PRESCALER\(8) & (\uart_module|u_RX|r_PRESCALER\(7) & !\uart_module|u_RX|r_PRESCALER[3]~16_combout\))) # (!\uart_module|u_RX|s_RECIEVING_FLAG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(8),
	datab => \uart_module|u_RX|r_PRESCALER\(7),
	datac => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datad => \uart_module|u_RX|r_PRESCALER[3]~16_combout\,
	combout => \uart_module|u_RX|r_PRESCALER[3]~17_combout\);

-- Location: FF_X29_Y16_N5
\uart_module|u_RX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[0]~9_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(0));

-- Location: FF_X29_Y16_N7
\uart_module|u_RX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[1]~11_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[3]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(1));

-- Location: LCCOMB_X29_Y16_N0
\uart_module|u_RX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~0_combout\ = (!\uart_module|u_RX|r_PRESCALER\(1) & (!\uart_module|u_RX|r_PRESCALER\(0) & (\uart_module|u_RX|r_PRESCALER\(2) & \uart_module|u_RX|r_PRESCALER\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(1),
	datab => \uart_module|u_RX|r_PRESCALER\(0),
	datac => \uart_module|u_RX|r_PRESCALER\(2),
	datad => \uart_module|u_RX|r_PRESCALER\(3),
	combout => \uart_module|u_RX|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y16_N24
\uart_module|u_RX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~2_combout\ = (!\uart_module|u_RX|r_PRESCALER\(8) & \uart_module|u_RX|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(8),
	datad => \uart_module|u_RX|Equal0~1_combout\,
	combout => \uart_module|u_RX|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y16_N6
\uart_module|u_RX|r_INDEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX~0_combout\ = (\uart_module|u_RX|Equal0~0_combout\ & (\uart_module|u_RX|LessThan1~0_combout\ & (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & \uart_module|u_RX|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Equal0~0_combout\,
	datab => \uart_module|u_RX|LessThan1~0_combout\,
	datac => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datad => \uart_module|u_RX|Equal0~2_combout\,
	combout => \uart_module|u_RX|r_INDEX~0_combout\);

-- Location: LCCOMB_X30_Y16_N8
\uart_module|u_RX|r_INDEX[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[0]~1_combout\ = (\uart_module|u_RX|r_INDEX~0_combout\ & (((!\uart_module|u_RX|r_INDEX\(0))))) # (!\uart_module|u_RX|r_INDEX~0_combout\ & (\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|s_RECIEVING_FLAG~q\) # 
-- (\i_Rx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX~0_combout\,
	datab => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_INDEX[0]~1_combout\);

-- Location: FF_X30_Y16_N9
\uart_module|u_RX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(0));

-- Location: LCCOMB_X30_Y17_N30
\uart_module|u_RX|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~0_combout\ = (!\uart_module|u_RX|r_INDEX\(2) & (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (!\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(2),
	datab => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(3),
	combout => \uart_module|u_RX|Decoder0~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\uart_module|u_RX|r_DATA_BUFFER[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[8]~0_combout\ = (\uart_module|u_RX|r_INDEX\(0) & (((\uart_module|u_RX|r_DATA_BUFFER\(8))))) # (!\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|Decoder0~0_combout\ & (\i_Rx~input_o\)) # 
-- (!\uart_module|u_RX|Decoder0~0_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(8),
	datad => \uart_module|u_RX|Decoder0~0_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[8]~0_combout\);

-- Location: FF_X30_Y17_N21
\uart_module|u_RX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(8));

-- Location: LCCOMB_X29_Y13_N0
\uart_module|u_RX|rgb_elcount[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[0]~32_combout\ = \uart_module|u_RX|rgb_elcount\(0) $ (VCC)
-- \uart_module|u_RX|rgb_elcount[0]~33\ = CARRY(\uart_module|u_RX|rgb_elcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(0),
	datad => VCC,
	combout => \uart_module|u_RX|rgb_elcount[0]~32_combout\,
	cout => \uart_module|u_RX|rgb_elcount[0]~33\);

-- Location: LCCOMB_X29_Y13_N2
\uart_module|u_RX|rgb_elcount[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[1]~34_combout\ = (\uart_module|u_RX|rgb_elcount\(1) & (!\uart_module|u_RX|rgb_elcount[0]~33\)) # (!\uart_module|u_RX|rgb_elcount\(1) & ((\uart_module|u_RX|rgb_elcount[0]~33\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[1]~35\ = CARRY((!\uart_module|u_RX|rgb_elcount[0]~33\) # (!\uart_module|u_RX|rgb_elcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(1),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[0]~33\,
	combout => \uart_module|u_RX|rgb_elcount[1]~34_combout\,
	cout => \uart_module|u_RX|rgb_elcount[1]~35\);

-- Location: LCCOMB_X30_Y16_N30
\uart_module|u_RX|r_DATA_BUFFER[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\ = (\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|Decoder0~0_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~0_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(9)))))) # 
-- (!\uart_module|u_RX|r_INDEX\(0) & (((\uart_module|u_RX|r_DATA_BUFFER\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(9),
	datad => \uart_module|u_RX|Decoder0~0_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\);

-- Location: FF_X30_Y16_N31
\uart_module|u_RX|r_DATA_BUFFER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(9));

-- Location: LCCOMB_X28_Y16_N22
\uart_module|u_RX|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~2_combout\ = (!\uart_module|u_RX|r_INDEX\(0) & (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & !\uart_module|u_RX|r_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datad => \uart_module|u_RX|r_INDEX\(3),
	combout => \uart_module|u_RX|Decoder0~2_combout\);

-- Location: LCCOMB_X30_Y17_N8
\uart_module|u_RX|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~1_combout\ = (!\uart_module|u_RX|r_INDEX\(2) & !\uart_module|u_RX|r_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_INDEX\(1),
	combout => \uart_module|u_RX|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y16_N4
\uart_module|u_RX|r_DATA_BUFFER[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\ = (\uart_module|u_RX|Decoder0~2_combout\ & ((\uart_module|u_RX|Decoder0~1_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~1_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(0)))))) # 
-- (!\uart_module|u_RX|Decoder0~2_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~2_combout\,
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|Decoder0~1_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\);

-- Location: FF_X28_Y16_N5
\uart_module|u_RX|r_DATA_BUFFER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(0));

-- Location: LCCOMB_X29_Y16_N24
\uart_module|u_RX|pixel_receive~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|pixel_receive~1_combout\ = (\uart_module|u_RX|r_DATA_BUFFER\(9) & (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (!\uart_module|u_RX|r_DATA_BUFFER\(0) & !\uart_module|u_RX|pixel_receive~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_DATA_BUFFER\(9),
	datab => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|pixel_receive~0_combout\,
	combout => \uart_module|u_RX|pixel_receive~1_combout\);

-- Location: FF_X29_Y13_N3
\uart_module|u_RX|rgb_elcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[1]~34_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(1));

-- Location: LCCOMB_X29_Y13_N4
\uart_module|u_RX|rgb_elcount[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[2]~36_combout\ = (\uart_module|u_RX|rgb_elcount\(2) & (\uart_module|u_RX|rgb_elcount[1]~35\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(2) & (!\uart_module|u_RX|rgb_elcount[1]~35\ & VCC))
-- \uart_module|u_RX|rgb_elcount[2]~37\ = CARRY((\uart_module|u_RX|rgb_elcount\(2) & !\uart_module|u_RX|rgb_elcount[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(2),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[1]~35\,
	combout => \uart_module|u_RX|rgb_elcount[2]~36_combout\,
	cout => \uart_module|u_RX|rgb_elcount[2]~37\);

-- Location: FF_X29_Y13_N5
\uart_module|u_RX|rgb_elcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[2]~36_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(2));

-- Location: LCCOMB_X29_Y13_N6
\uart_module|u_RX|rgb_elcount[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[3]~38_combout\ = (\uart_module|u_RX|rgb_elcount\(3) & (!\uart_module|u_RX|rgb_elcount[2]~37\)) # (!\uart_module|u_RX|rgb_elcount\(3) & ((\uart_module|u_RX|rgb_elcount[2]~37\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[3]~39\ = CARRY((!\uart_module|u_RX|rgb_elcount[2]~37\) # (!\uart_module|u_RX|rgb_elcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(3),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[2]~37\,
	combout => \uart_module|u_RX|rgb_elcount[3]~38_combout\,
	cout => \uart_module|u_RX|rgb_elcount[3]~39\);

-- Location: FF_X29_Y13_N7
\uart_module|u_RX|rgb_elcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[3]~38_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(3));

-- Location: LCCOMB_X29_Y13_N8
\uart_module|u_RX|rgb_elcount[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[4]~40_combout\ = (\uart_module|u_RX|rgb_elcount\(4) & (\uart_module|u_RX|rgb_elcount[3]~39\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(4) & (!\uart_module|u_RX|rgb_elcount[3]~39\ & VCC))
-- \uart_module|u_RX|rgb_elcount[4]~41\ = CARRY((\uart_module|u_RX|rgb_elcount\(4) & !\uart_module|u_RX|rgb_elcount[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(4),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[3]~39\,
	combout => \uart_module|u_RX|rgb_elcount[4]~40_combout\,
	cout => \uart_module|u_RX|rgb_elcount[4]~41\);

-- Location: FF_X29_Y13_N9
\uart_module|u_RX|rgb_elcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[4]~40_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(4));

-- Location: LCCOMB_X29_Y13_N10
\uart_module|u_RX|rgb_elcount[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[5]~42_combout\ = (\uart_module|u_RX|rgb_elcount\(5) & (!\uart_module|u_RX|rgb_elcount[4]~41\)) # (!\uart_module|u_RX|rgb_elcount\(5) & ((\uart_module|u_RX|rgb_elcount[4]~41\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[5]~43\ = CARRY((!\uart_module|u_RX|rgb_elcount[4]~41\) # (!\uart_module|u_RX|rgb_elcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(5),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[4]~41\,
	combout => \uart_module|u_RX|rgb_elcount[5]~42_combout\,
	cout => \uart_module|u_RX|rgb_elcount[5]~43\);

-- Location: FF_X29_Y13_N11
\uart_module|u_RX|rgb_elcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[5]~42_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(5));

-- Location: LCCOMB_X29_Y13_N12
\uart_module|u_RX|rgb_elcount[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[6]~44_combout\ = (\uart_module|u_RX|rgb_elcount\(6) & (\uart_module|u_RX|rgb_elcount[5]~43\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(6) & (!\uart_module|u_RX|rgb_elcount[5]~43\ & VCC))
-- \uart_module|u_RX|rgb_elcount[6]~45\ = CARRY((\uart_module|u_RX|rgb_elcount\(6) & !\uart_module|u_RX|rgb_elcount[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(6),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[5]~43\,
	combout => \uart_module|u_RX|rgb_elcount[6]~44_combout\,
	cout => \uart_module|u_RX|rgb_elcount[6]~45\);

-- Location: FF_X29_Y13_N13
\uart_module|u_RX|rgb_elcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[6]~44_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(6));

-- Location: LCCOMB_X29_Y13_N14
\uart_module|u_RX|rgb_elcount[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[7]~46_combout\ = (\uart_module|u_RX|rgb_elcount\(7) & (!\uart_module|u_RX|rgb_elcount[6]~45\)) # (!\uart_module|u_RX|rgb_elcount\(7) & ((\uart_module|u_RX|rgb_elcount[6]~45\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[7]~47\ = CARRY((!\uart_module|u_RX|rgb_elcount[6]~45\) # (!\uart_module|u_RX|rgb_elcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(7),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[6]~45\,
	combout => \uart_module|u_RX|rgb_elcount[7]~46_combout\,
	cout => \uart_module|u_RX|rgb_elcount[7]~47\);

-- Location: FF_X29_Y13_N15
\uart_module|u_RX|rgb_elcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[7]~46_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(7));

-- Location: LCCOMB_X29_Y13_N16
\uart_module|u_RX|rgb_elcount[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[8]~48_combout\ = (\uart_module|u_RX|rgb_elcount\(8) & (\uart_module|u_RX|rgb_elcount[7]~47\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(8) & (!\uart_module|u_RX|rgb_elcount[7]~47\ & VCC))
-- \uart_module|u_RX|rgb_elcount[8]~49\ = CARRY((\uart_module|u_RX|rgb_elcount\(8) & !\uart_module|u_RX|rgb_elcount[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(8),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[7]~47\,
	combout => \uart_module|u_RX|rgb_elcount[8]~48_combout\,
	cout => \uart_module|u_RX|rgb_elcount[8]~49\);

-- Location: FF_X29_Y13_N17
\uart_module|u_RX|rgb_elcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[8]~48_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(8));

-- Location: LCCOMB_X29_Y13_N18
\uart_module|u_RX|rgb_elcount[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[9]~50_combout\ = (\uart_module|u_RX|rgb_elcount\(9) & (!\uart_module|u_RX|rgb_elcount[8]~49\)) # (!\uart_module|u_RX|rgb_elcount\(9) & ((\uart_module|u_RX|rgb_elcount[8]~49\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[9]~51\ = CARRY((!\uart_module|u_RX|rgb_elcount[8]~49\) # (!\uart_module|u_RX|rgb_elcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(9),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[8]~49\,
	combout => \uart_module|u_RX|rgb_elcount[9]~50_combout\,
	cout => \uart_module|u_RX|rgb_elcount[9]~51\);

-- Location: FF_X29_Y13_N19
\uart_module|u_RX|rgb_elcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[9]~50_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(9));

-- Location: LCCOMB_X29_Y13_N20
\uart_module|u_RX|rgb_elcount[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[10]~52_combout\ = (\uart_module|u_RX|rgb_elcount\(10) & (\uart_module|u_RX|rgb_elcount[9]~51\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(10) & (!\uart_module|u_RX|rgb_elcount[9]~51\ & VCC))
-- \uart_module|u_RX|rgb_elcount[10]~53\ = CARRY((\uart_module|u_RX|rgb_elcount\(10) & !\uart_module|u_RX|rgb_elcount[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(10),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[9]~51\,
	combout => \uart_module|u_RX|rgb_elcount[10]~52_combout\,
	cout => \uart_module|u_RX|rgb_elcount[10]~53\);

-- Location: FF_X29_Y13_N21
\uart_module|u_RX|rgb_elcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[10]~52_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(10));

-- Location: LCCOMB_X29_Y13_N22
\uart_module|u_RX|rgb_elcount[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[11]~54_combout\ = (\uart_module|u_RX|rgb_elcount\(11) & (!\uart_module|u_RX|rgb_elcount[10]~53\)) # (!\uart_module|u_RX|rgb_elcount\(11) & ((\uart_module|u_RX|rgb_elcount[10]~53\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[11]~55\ = CARRY((!\uart_module|u_RX|rgb_elcount[10]~53\) # (!\uart_module|u_RX|rgb_elcount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(11),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[10]~53\,
	combout => \uart_module|u_RX|rgb_elcount[11]~54_combout\,
	cout => \uart_module|u_RX|rgb_elcount[11]~55\);

-- Location: FF_X29_Y13_N23
\uart_module|u_RX|rgb_elcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[11]~54_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(11));

-- Location: LCCOMB_X29_Y13_N24
\uart_module|u_RX|rgb_elcount[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[12]~56_combout\ = (\uart_module|u_RX|rgb_elcount\(12) & (\uart_module|u_RX|rgb_elcount[11]~55\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(12) & (!\uart_module|u_RX|rgb_elcount[11]~55\ & VCC))
-- \uart_module|u_RX|rgb_elcount[12]~57\ = CARRY((\uart_module|u_RX|rgb_elcount\(12) & !\uart_module|u_RX|rgb_elcount[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(12),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[11]~55\,
	combout => \uart_module|u_RX|rgb_elcount[12]~56_combout\,
	cout => \uart_module|u_RX|rgb_elcount[12]~57\);

-- Location: FF_X29_Y13_N25
\uart_module|u_RX|rgb_elcount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[12]~56_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(12));

-- Location: LCCOMB_X29_Y13_N26
\uart_module|u_RX|rgb_elcount[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[13]~58_combout\ = (\uart_module|u_RX|rgb_elcount\(13) & (!\uart_module|u_RX|rgb_elcount[12]~57\)) # (!\uart_module|u_RX|rgb_elcount\(13) & ((\uart_module|u_RX|rgb_elcount[12]~57\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[13]~59\ = CARRY((!\uart_module|u_RX|rgb_elcount[12]~57\) # (!\uart_module|u_RX|rgb_elcount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(13),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[12]~57\,
	combout => \uart_module|u_RX|rgb_elcount[13]~58_combout\,
	cout => \uart_module|u_RX|rgb_elcount[13]~59\);

-- Location: FF_X29_Y13_N27
\uart_module|u_RX|rgb_elcount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[13]~58_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(13));

-- Location: LCCOMB_X29_Y13_N28
\uart_module|u_RX|rgb_elcount[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[14]~60_combout\ = (\uart_module|u_RX|rgb_elcount\(14) & (\uart_module|u_RX|rgb_elcount[13]~59\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(14) & (!\uart_module|u_RX|rgb_elcount[13]~59\ & VCC))
-- \uart_module|u_RX|rgb_elcount[14]~61\ = CARRY((\uart_module|u_RX|rgb_elcount\(14) & !\uart_module|u_RX|rgb_elcount[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(14),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[13]~59\,
	combout => \uart_module|u_RX|rgb_elcount[14]~60_combout\,
	cout => \uart_module|u_RX|rgb_elcount[14]~61\);

-- Location: FF_X29_Y13_N29
\uart_module|u_RX|rgb_elcount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[14]~60_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(14));

-- Location: LCCOMB_X29_Y13_N30
\uart_module|u_RX|rgb_elcount[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[15]~62_combout\ = (\uart_module|u_RX|rgb_elcount\(15) & (!\uart_module|u_RX|rgb_elcount[14]~61\)) # (!\uart_module|u_RX|rgb_elcount\(15) & ((\uart_module|u_RX|rgb_elcount[14]~61\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[15]~63\ = CARRY((!\uart_module|u_RX|rgb_elcount[14]~61\) # (!\uart_module|u_RX|rgb_elcount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(15),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[14]~61\,
	combout => \uart_module|u_RX|rgb_elcount[15]~62_combout\,
	cout => \uart_module|u_RX|rgb_elcount[15]~63\);

-- Location: FF_X29_Y13_N31
\uart_module|u_RX|rgb_elcount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[15]~62_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(15));

-- Location: LCCOMB_X29_Y12_N0
\uart_module|u_RX|rgb_elcount[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[16]~64_combout\ = (\uart_module|u_RX|rgb_elcount\(16) & (\uart_module|u_RX|rgb_elcount[15]~63\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(16) & (!\uart_module|u_RX|rgb_elcount[15]~63\ & VCC))
-- \uart_module|u_RX|rgb_elcount[16]~65\ = CARRY((\uart_module|u_RX|rgb_elcount\(16) & !\uart_module|u_RX|rgb_elcount[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(16),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[15]~63\,
	combout => \uart_module|u_RX|rgb_elcount[16]~64_combout\,
	cout => \uart_module|u_RX|rgb_elcount[16]~65\);

-- Location: FF_X29_Y12_N1
\uart_module|u_RX|rgb_elcount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[16]~64_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(16));

-- Location: LCCOMB_X29_Y12_N2
\uart_module|u_RX|rgb_elcount[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[17]~66_combout\ = (\uart_module|u_RX|rgb_elcount\(17) & (!\uart_module|u_RX|rgb_elcount[16]~65\)) # (!\uart_module|u_RX|rgb_elcount\(17) & ((\uart_module|u_RX|rgb_elcount[16]~65\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[17]~67\ = CARRY((!\uart_module|u_RX|rgb_elcount[16]~65\) # (!\uart_module|u_RX|rgb_elcount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(17),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[16]~65\,
	combout => \uart_module|u_RX|rgb_elcount[17]~66_combout\,
	cout => \uart_module|u_RX|rgb_elcount[17]~67\);

-- Location: FF_X29_Y12_N3
\uart_module|u_RX|rgb_elcount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[17]~66_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(17));

-- Location: LCCOMB_X29_Y12_N4
\uart_module|u_RX|rgb_elcount[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[18]~68_combout\ = (\uart_module|u_RX|rgb_elcount\(18) & (\uart_module|u_RX|rgb_elcount[17]~67\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(18) & (!\uart_module|u_RX|rgb_elcount[17]~67\ & VCC))
-- \uart_module|u_RX|rgb_elcount[18]~69\ = CARRY((\uart_module|u_RX|rgb_elcount\(18) & !\uart_module|u_RX|rgb_elcount[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(18),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[17]~67\,
	combout => \uart_module|u_RX|rgb_elcount[18]~68_combout\,
	cout => \uart_module|u_RX|rgb_elcount[18]~69\);

-- Location: FF_X29_Y12_N5
\uart_module|u_RX|rgb_elcount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[18]~68_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(18));

-- Location: LCCOMB_X29_Y12_N6
\uart_module|u_RX|rgb_elcount[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[19]~70_combout\ = (\uart_module|u_RX|rgb_elcount\(19) & (!\uart_module|u_RX|rgb_elcount[18]~69\)) # (!\uart_module|u_RX|rgb_elcount\(19) & ((\uart_module|u_RX|rgb_elcount[18]~69\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[19]~71\ = CARRY((!\uart_module|u_RX|rgb_elcount[18]~69\) # (!\uart_module|u_RX|rgb_elcount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(19),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[18]~69\,
	combout => \uart_module|u_RX|rgb_elcount[19]~70_combout\,
	cout => \uart_module|u_RX|rgb_elcount[19]~71\);

-- Location: FF_X29_Y12_N7
\uart_module|u_RX|rgb_elcount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[19]~70_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(19));

-- Location: LCCOMB_X29_Y12_N8
\uart_module|u_RX|rgb_elcount[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[20]~72_combout\ = (\uart_module|u_RX|rgb_elcount\(20) & (\uart_module|u_RX|rgb_elcount[19]~71\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(20) & (!\uart_module|u_RX|rgb_elcount[19]~71\ & VCC))
-- \uart_module|u_RX|rgb_elcount[20]~73\ = CARRY((\uart_module|u_RX|rgb_elcount\(20) & !\uart_module|u_RX|rgb_elcount[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(20),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[19]~71\,
	combout => \uart_module|u_RX|rgb_elcount[20]~72_combout\,
	cout => \uart_module|u_RX|rgb_elcount[20]~73\);

-- Location: FF_X29_Y12_N9
\uart_module|u_RX|rgb_elcount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[20]~72_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(20));

-- Location: LCCOMB_X29_Y12_N10
\uart_module|u_RX|rgb_elcount[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[21]~74_combout\ = (\uart_module|u_RX|rgb_elcount\(21) & (!\uart_module|u_RX|rgb_elcount[20]~73\)) # (!\uart_module|u_RX|rgb_elcount\(21) & ((\uart_module|u_RX|rgb_elcount[20]~73\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[21]~75\ = CARRY((!\uart_module|u_RX|rgb_elcount[20]~73\) # (!\uart_module|u_RX|rgb_elcount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(21),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[20]~73\,
	combout => \uart_module|u_RX|rgb_elcount[21]~74_combout\,
	cout => \uart_module|u_RX|rgb_elcount[21]~75\);

-- Location: FF_X29_Y12_N11
\uart_module|u_RX|rgb_elcount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[21]~74_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(21));

-- Location: LCCOMB_X29_Y12_N12
\uart_module|u_RX|rgb_elcount[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[22]~76_combout\ = (\uart_module|u_RX|rgb_elcount\(22) & (\uart_module|u_RX|rgb_elcount[21]~75\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(22) & (!\uart_module|u_RX|rgb_elcount[21]~75\ & VCC))
-- \uart_module|u_RX|rgb_elcount[22]~77\ = CARRY((\uart_module|u_RX|rgb_elcount\(22) & !\uart_module|u_RX|rgb_elcount[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(22),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[21]~75\,
	combout => \uart_module|u_RX|rgb_elcount[22]~76_combout\,
	cout => \uart_module|u_RX|rgb_elcount[22]~77\);

-- Location: FF_X29_Y12_N13
\uart_module|u_RX|rgb_elcount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[22]~76_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(22));

-- Location: LCCOMB_X29_Y12_N14
\uart_module|u_RX|rgb_elcount[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[23]~78_combout\ = (\uart_module|u_RX|rgb_elcount\(23) & (!\uart_module|u_RX|rgb_elcount[22]~77\)) # (!\uart_module|u_RX|rgb_elcount\(23) & ((\uart_module|u_RX|rgb_elcount[22]~77\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[23]~79\ = CARRY((!\uart_module|u_RX|rgb_elcount[22]~77\) # (!\uart_module|u_RX|rgb_elcount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(23),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[22]~77\,
	combout => \uart_module|u_RX|rgb_elcount[23]~78_combout\,
	cout => \uart_module|u_RX|rgb_elcount[23]~79\);

-- Location: FF_X29_Y12_N15
\uart_module|u_RX|rgb_elcount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[23]~78_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(23));

-- Location: LCCOMB_X29_Y12_N16
\uart_module|u_RX|rgb_elcount[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[24]~80_combout\ = (\uart_module|u_RX|rgb_elcount\(24) & (\uart_module|u_RX|rgb_elcount[23]~79\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(24) & (!\uart_module|u_RX|rgb_elcount[23]~79\ & VCC))
-- \uart_module|u_RX|rgb_elcount[24]~81\ = CARRY((\uart_module|u_RX|rgb_elcount\(24) & !\uart_module|u_RX|rgb_elcount[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(24),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[23]~79\,
	combout => \uart_module|u_RX|rgb_elcount[24]~80_combout\,
	cout => \uart_module|u_RX|rgb_elcount[24]~81\);

-- Location: FF_X29_Y12_N17
\uart_module|u_RX|rgb_elcount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[24]~80_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(24));

-- Location: LCCOMB_X29_Y12_N18
\uart_module|u_RX|rgb_elcount[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[25]~82_combout\ = (\uart_module|u_RX|rgb_elcount\(25) & (!\uart_module|u_RX|rgb_elcount[24]~81\)) # (!\uart_module|u_RX|rgb_elcount\(25) & ((\uart_module|u_RX|rgb_elcount[24]~81\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[25]~83\ = CARRY((!\uart_module|u_RX|rgb_elcount[24]~81\) # (!\uart_module|u_RX|rgb_elcount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(25),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[24]~81\,
	combout => \uart_module|u_RX|rgb_elcount[25]~82_combout\,
	cout => \uart_module|u_RX|rgb_elcount[25]~83\);

-- Location: FF_X29_Y12_N19
\uart_module|u_RX|rgb_elcount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[25]~82_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(25));

-- Location: LCCOMB_X29_Y12_N20
\uart_module|u_RX|rgb_elcount[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[26]~84_combout\ = (\uart_module|u_RX|rgb_elcount\(26) & (\uart_module|u_RX|rgb_elcount[25]~83\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(26) & (!\uart_module|u_RX|rgb_elcount[25]~83\ & VCC))
-- \uart_module|u_RX|rgb_elcount[26]~85\ = CARRY((\uart_module|u_RX|rgb_elcount\(26) & !\uart_module|u_RX|rgb_elcount[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(26),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[25]~83\,
	combout => \uart_module|u_RX|rgb_elcount[26]~84_combout\,
	cout => \uart_module|u_RX|rgb_elcount[26]~85\);

-- Location: FF_X29_Y12_N21
\uart_module|u_RX|rgb_elcount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[26]~84_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(26));

-- Location: LCCOMB_X29_Y12_N22
\uart_module|u_RX|rgb_elcount[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[27]~86_combout\ = (\uart_module|u_RX|rgb_elcount\(27) & (!\uart_module|u_RX|rgb_elcount[26]~85\)) # (!\uart_module|u_RX|rgb_elcount\(27) & ((\uart_module|u_RX|rgb_elcount[26]~85\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[27]~87\ = CARRY((!\uart_module|u_RX|rgb_elcount[26]~85\) # (!\uart_module|u_RX|rgb_elcount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(27),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[26]~85\,
	combout => \uart_module|u_RX|rgb_elcount[27]~86_combout\,
	cout => \uart_module|u_RX|rgb_elcount[27]~87\);

-- Location: FF_X29_Y12_N23
\uart_module|u_RX|rgb_elcount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[27]~86_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(27));

-- Location: LCCOMB_X29_Y12_N24
\uart_module|u_RX|rgb_elcount[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[28]~88_combout\ = (\uart_module|u_RX|rgb_elcount\(28) & (\uart_module|u_RX|rgb_elcount[27]~87\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(28) & (!\uart_module|u_RX|rgb_elcount[27]~87\ & VCC))
-- \uart_module|u_RX|rgb_elcount[28]~89\ = CARRY((\uart_module|u_RX|rgb_elcount\(28) & !\uart_module|u_RX|rgb_elcount[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(28),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[27]~87\,
	combout => \uart_module|u_RX|rgb_elcount[28]~88_combout\,
	cout => \uart_module|u_RX|rgb_elcount[28]~89\);

-- Location: FF_X29_Y12_N25
\uart_module|u_RX|rgb_elcount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[28]~88_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(28));

-- Location: LCCOMB_X29_Y12_N26
\uart_module|u_RX|rgb_elcount[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[29]~90_combout\ = (\uart_module|u_RX|rgb_elcount\(29) & (!\uart_module|u_RX|rgb_elcount[28]~89\)) # (!\uart_module|u_RX|rgb_elcount\(29) & ((\uart_module|u_RX|rgb_elcount[28]~89\) # (GND)))
-- \uart_module|u_RX|rgb_elcount[29]~91\ = CARRY((!\uart_module|u_RX|rgb_elcount[28]~89\) # (!\uart_module|u_RX|rgb_elcount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(29),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[28]~89\,
	combout => \uart_module|u_RX|rgb_elcount[29]~90_combout\,
	cout => \uart_module|u_RX|rgb_elcount[29]~91\);

-- Location: FF_X29_Y12_N27
\uart_module|u_RX|rgb_elcount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[29]~90_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(29));

-- Location: LCCOMB_X29_Y12_N28
\uart_module|u_RX|rgb_elcount[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[30]~92_combout\ = (\uart_module|u_RX|rgb_elcount\(30) & (\uart_module|u_RX|rgb_elcount[29]~91\ $ (GND))) # (!\uart_module|u_RX|rgb_elcount\(30) & (!\uart_module|u_RX|rgb_elcount[29]~91\ & VCC))
-- \uart_module|u_RX|rgb_elcount[30]~93\ = CARRY((\uart_module|u_RX|rgb_elcount\(30) & !\uart_module|u_RX|rgb_elcount[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(30),
	datad => VCC,
	cin => \uart_module|u_RX|rgb_elcount[29]~91\,
	combout => \uart_module|u_RX|rgb_elcount[30]~92_combout\,
	cout => \uart_module|u_RX|rgb_elcount[30]~93\);

-- Location: FF_X29_Y12_N29
\uart_module|u_RX|rgb_elcount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[30]~92_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(30));

-- Location: LCCOMB_X29_Y12_N30
\uart_module|u_RX|rgb_elcount[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[31]~94_combout\ = \uart_module|u_RX|rgb_elcount\(31) $ (\uart_module|u_RX|rgb_elcount[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(31),
	cin => \uart_module|u_RX|rgb_elcount[30]~93\,
	combout => \uart_module|u_RX|rgb_elcount[31]~94_combout\);

-- Location: FF_X29_Y12_N31
\uart_module|u_RX|rgb_elcount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[31]~94_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(31));

-- Location: LCCOMB_X30_Y13_N16
\uart_module|u_RX|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~0_combout\ = (!\uart_module|u_RX|rgb_elcount\(19) & (!\uart_module|u_RX|rgb_elcount\(17) & (!\uart_module|u_RX|rgb_elcount\(18) & !\uart_module|u_RX|rgb_elcount\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(19),
	datab => \uart_module|u_RX|rgb_elcount\(17),
	datac => \uart_module|u_RX|rgb_elcount\(18),
	datad => \uart_module|u_RX|rgb_elcount\(20),
	combout => \uart_module|u_RX|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y13_N12
\uart_module|u_RX|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~2_combout\ = (!\uart_module|u_RX|rgb_elcount\(6) & (!\uart_module|u_RX|rgb_elcount\(5) & (!\uart_module|u_RX|rgb_elcount\(8) & !\uart_module|u_RX|rgb_elcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(6),
	datab => \uart_module|u_RX|rgb_elcount\(5),
	datac => \uart_module|u_RX|rgb_elcount\(8),
	datad => \uart_module|u_RX|rgb_elcount\(7),
	combout => \uart_module|u_RX|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y13_N14
\uart_module|u_RX|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~3_combout\ = (!\uart_module|u_RX|rgb_elcount\(10) & (!\uart_module|u_RX|rgb_elcount\(11) & (!\uart_module|u_RX|rgb_elcount\(12) & !\uart_module|u_RX|rgb_elcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(10),
	datab => \uart_module|u_RX|rgb_elcount\(11),
	datac => \uart_module|u_RX|rgb_elcount\(12),
	datad => \uart_module|u_RX|rgb_elcount\(9),
	combout => \uart_module|u_RX|LessThan4~3_combout\);

-- Location: LCCOMB_X30_Y13_N22
\uart_module|u_RX|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~1_combout\ = (!\uart_module|u_RX|rgb_elcount\(3) & (!\uart_module|u_RX|rgb_elcount\(2) & (!\uart_module|u_RX|rgb_elcount\(1) & !\uart_module|u_RX|rgb_elcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(3),
	datab => \uart_module|u_RX|rgb_elcount\(2),
	datac => \uart_module|u_RX|rgb_elcount\(1),
	datad => \uart_module|u_RX|rgb_elcount\(4),
	combout => \uart_module|u_RX|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y13_N20
\uart_module|u_RX|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~4_combout\ = (!\uart_module|u_RX|rgb_elcount\(15) & (!\uart_module|u_RX|rgb_elcount\(14) & (!\uart_module|u_RX|rgb_elcount\(16) & !\uart_module|u_RX|rgb_elcount\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(15),
	datab => \uart_module|u_RX|rgb_elcount\(14),
	datac => \uart_module|u_RX|rgb_elcount\(16),
	datad => \uart_module|u_RX|rgb_elcount\(13),
	combout => \uart_module|u_RX|LessThan4~4_combout\);

-- Location: LCCOMB_X30_Y13_N26
\uart_module|u_RX|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~5_combout\ = (\uart_module|u_RX|LessThan4~2_combout\ & (\uart_module|u_RX|LessThan4~3_combout\ & (\uart_module|u_RX|LessThan4~1_combout\ & \uart_module|u_RX|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|LessThan4~2_combout\,
	datab => \uart_module|u_RX|LessThan4~3_combout\,
	datac => \uart_module|u_RX|LessThan4~1_combout\,
	datad => \uart_module|u_RX|LessThan4~4_combout\,
	combout => \uart_module|u_RX|LessThan4~5_combout\);

-- Location: LCCOMB_X30_Y13_N4
\uart_module|u_RX|LessThan4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~6_combout\ = (!\uart_module|u_RX|rgb_elcount\(23) & (!\uart_module|u_RX|rgb_elcount\(21) & (!\uart_module|u_RX|rgb_elcount\(24) & !\uart_module|u_RX|rgb_elcount\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(23),
	datab => \uart_module|u_RX|rgb_elcount\(21),
	datac => \uart_module|u_RX|rgb_elcount\(24),
	datad => \uart_module|u_RX|rgb_elcount\(22),
	combout => \uart_module|u_RX|LessThan4~6_combout\);

-- Location: LCCOMB_X30_Y13_N18
\uart_module|u_RX|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~7_combout\ = (!\uart_module|u_RX|rgb_elcount\(28) & (!\uart_module|u_RX|rgb_elcount\(27) & (!\uart_module|u_RX|rgb_elcount\(25) & !\uart_module|u_RX|rgb_elcount\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(28),
	datab => \uart_module|u_RX|rgb_elcount\(27),
	datac => \uart_module|u_RX|rgb_elcount\(25),
	datad => \uart_module|u_RX|rgb_elcount\(26),
	combout => \uart_module|u_RX|LessThan4~7_combout\);

-- Location: LCCOMB_X30_Y13_N28
\uart_module|u_RX|LessThan4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~8_combout\ = (!\uart_module|u_RX|rgb_elcount\(30) & (!\uart_module|u_RX|rgb_elcount\(29) & (\uart_module|u_RX|LessThan4~6_combout\ & \uart_module|u_RX|LessThan4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(30),
	datab => \uart_module|u_RX|rgb_elcount\(29),
	datac => \uart_module|u_RX|LessThan4~6_combout\,
	datad => \uart_module|u_RX|LessThan4~7_combout\,
	combout => \uart_module|u_RX|LessThan4~8_combout\);

-- Location: LCCOMB_X30_Y13_N30
\uart_module|u_RX|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan4~9_combout\ = (!\uart_module|u_RX|rgb_elcount\(31) & (((!\uart_module|u_RX|LessThan4~8_combout\) # (!\uart_module|u_RX|LessThan4~5_combout\)) # (!\uart_module|u_RX|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(31),
	datab => \uart_module|u_RX|LessThan4~0_combout\,
	datac => \uart_module|u_RX|LessThan4~5_combout\,
	datad => \uart_module|u_RX|LessThan4~8_combout\,
	combout => \uart_module|u_RX|LessThan4~9_combout\);

-- Location: FF_X29_Y13_N1
\uart_module|u_RX|rgb_elcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb_elcount[0]~32_combout\,
	sclr => \uart_module|u_RX|LessThan4~9_combout\,
	ena => \uart_module|u_RX|pixel_receive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(0));

-- Location: LCCOMB_X29_Y16_N26
\uart_module|u_RX|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~0_combout\ = (!\uart_module|u_RX|rgb_elcount\(0) & (!\uart_module|u_RX|rgb_elcount\(1) & \uart_module|u_RX|pixel_receive~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(0),
	datac => \uart_module|u_RX|rgb_elcount\(1),
	datad => \uart_module|u_RX|pixel_receive~1_combout\,
	combout => \uart_module|u_RX|Decoder1~0_combout\);

-- Location: FF_X24_Y16_N17
\uart_module|u_RX|rgb[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(8),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][7]~q\);

-- Location: LCCOMB_X28_Y16_N12
\uart_module|u_RX|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~3_combout\ = (!\uart_module|u_RX|r_INDEX\(3) & (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|r_INDEX\(1),
	combout => \uart_module|u_RX|Decoder0~3_combout\);

-- Location: LCCOMB_X28_Y16_N14
\uart_module|u_RX|r_DATA_BUFFER[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[7]~3_combout\ = (\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|Decoder0~3_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~3_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(7)))))) # 
-- (!\uart_module|u_RX|r_INDEX\(2) & (((\uart_module|u_RX|r_DATA_BUFFER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(7),
	datad => \uart_module|u_RX|Decoder0~3_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[7]~3_combout\);

-- Location: FF_X28_Y16_N15
\uart_module|u_RX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(7));

-- Location: FF_X24_Y16_N15
\uart_module|u_RX|rgb[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(7),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][6]~q\);

-- Location: LCCOMB_X31_Y16_N10
\uart_module|u_RX|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~4_combout\ = (!\uart_module|u_RX|r_INDEX\(3) & (!\uart_module|u_RX|r_INDEX\(0) & (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & \uart_module|u_RX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datad => \uart_module|u_RX|r_INDEX\(1),
	combout => \uart_module|u_RX|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y16_N8
\uart_module|u_RX|r_DATA_BUFFER[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[6]~4_combout\ = (\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|Decoder0~4_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~4_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(6)))))) # 
-- (!\uart_module|u_RX|r_INDEX\(2) & (((\uart_module|u_RX|r_DATA_BUFFER\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(6),
	datad => \uart_module|u_RX|Decoder0~4_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[6]~4_combout\);

-- Location: FF_X28_Y16_N9
\uart_module|u_RX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(6));

-- Location: FF_X24_Y16_N1
\uart_module|u_RX|rgb[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(6),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][5]~q\);

-- Location: LCCOMB_X30_Y17_N10
\uart_module|u_RX|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~5_combout\ = (!\uart_module|u_RX|r_INDEX\(3) & (\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|s_RECIEVING_FLAG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|Decoder0~5_combout\);

-- Location: LCCOMB_X30_Y17_N24
\uart_module|u_RX|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~6_combout\ = (\uart_module|u_RX|r_INDEX\(2) & !\uart_module|u_RX|r_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_INDEX\(1),
	combout => \uart_module|u_RX|Decoder0~6_combout\);

-- Location: LCCOMB_X30_Y17_N18
\uart_module|u_RX|r_DATA_BUFFER[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[5]~5_combout\ = (\uart_module|u_RX|Decoder0~5_combout\ & ((\uart_module|u_RX|Decoder0~6_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~6_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(5)))))) # 
-- (!\uart_module|u_RX|Decoder0~5_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~5_combout\,
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(5),
	datad => \uart_module|u_RX|Decoder0~6_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[5]~5_combout\);

-- Location: FF_X30_Y17_N19
\uart_module|u_RX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(5));

-- Location: LCCOMB_X25_Y16_N16
\uart_module|u_RX|rgb[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][4]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(5),
	combout => \uart_module|u_RX|rgb[0][4]~feeder_combout\);

-- Location: FF_X25_Y16_N17
\uart_module|u_RX|rgb[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][4]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][4]~q\);

-- Location: LCCOMB_X31_Y17_N28
\uart_module|u_RX|r_DATA_BUFFER[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[4]~6_combout\ = (\uart_module|u_RX|Decoder0~6_combout\ & ((\uart_module|u_RX|Decoder0~2_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~2_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(4)))))) # 
-- (!\uart_module|u_RX|Decoder0~6_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~6_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(4),
	datad => \uart_module|u_RX|Decoder0~2_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[4]~6_combout\);

-- Location: FF_X31_Y17_N29
\uart_module|u_RX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X25_Y16_N0
\uart_module|u_RX|rgb[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][3]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|rgb[0][3]~feeder_combout\);

-- Location: FF_X25_Y16_N1
\uart_module|u_RX|rgb[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][3]~q\);

-- Location: LCCOMB_X25_Y15_N12
\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \uart_module|u_RX|rgb[0][3]~q\ $ (VCC)
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\uart_module|u_RX|rgb[0][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][3]~q\,
	datad => VCC,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X25_Y15_N14
\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\uart_module|u_RX|rgb[0][4]~q\ & 
-- (!\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\uart_module|u_RX|rgb[0][4]~q\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X25_Y15_N16
\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\uart_module|u_RX|rgb[0][5]~q\ & ((GND) # (!\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\uart_module|u_RX|rgb[0][5]~q\ & 
-- (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\uart_module|u_RX|rgb[0][5]~q\) # (!\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][5]~q\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X25_Y15_N18
\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\uart_module|u_RX|rgb[0][6]~q\ & (!\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\uart_module|u_RX|rgb[0][6]~q\ & 
-- ((\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\uart_module|u_RX|rgb[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][6]~q\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X25_Y15_N20
\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\uart_module|u_RX|rgb[0][7]~q\ & (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\uart_module|u_RX|rgb[0][7]~q\ & 
-- (!\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\uart_module|u_RX|rgb[0][7]~q\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][7]~q\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X25_Y15_N22
\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X24_Y15_N22
\uart_module|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X24_Y15_N0
\uart_module|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\uart_module|u_RX|rgb[0][7]~q\ & \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][7]~q\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\uart_module|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \uart_module|u_RX|rgb[0][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \uart_module|u_RX|rgb[0][6]~q\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X24_Y15_N20
\uart_module|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X25_Y15_N2
\uart_module|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\uart_module|u_RX|rgb[0][5]~q\ & \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][5]~q\,
	datac => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X24_Y15_N24
\uart_module|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X24_Y15_N26
\uart_module|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X25_Y15_N24
\uart_module|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datac => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X24_Y15_N2
\uart_module|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X24_Y15_N4
\uart_module|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\uart_module|u_RX|rgb[0][3]~q\ & \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][3]~q\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X30_Y16_N22
\uart_module|u_RX|r_DATA_BUFFER[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\ = (\uart_module|u_RX|Decoder0~3_combout\ & ((\uart_module|u_RX|r_INDEX\(2) & (\uart_module|u_RX|r_DATA_BUFFER\(3))) # (!\uart_module|u_RX|r_INDEX\(2) & ((\i_Rx~input_o\))))) # 
-- (!\uart_module|u_RX|Decoder0~3_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~3_combout\,
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(3),
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\);

-- Location: FF_X30_Y16_N23
\uart_module|u_RX|r_DATA_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(3));

-- Location: LCCOMB_X26_Y16_N16
\uart_module|u_RX|rgb[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][2]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(3),
	combout => \uart_module|u_RX|rgb[0][2]~feeder_combout\);

-- Location: FF_X26_Y16_N17
\uart_module|u_RX|rgb[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][2]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][2]~q\);

-- Location: LCCOMB_X24_Y15_N30
\uart_module|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X24_Y15_N28
\uart_module|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X24_Y15_N6
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\uart_module|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\uart_module|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X24_Y15_N8
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\uart_module|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\uart_module|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X24_Y15_N10
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\uart_module|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\uart_module|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X24_Y15_N12
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\uart_module|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\uart_module|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X24_Y15_N14
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\uart_module|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\uart_module|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X24_Y15_N16
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\uart_module|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\uart_module|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X24_Y15_N18
\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X30_Y17_N28
\uart_module|u_RX|r_DATA_BUFFER[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[1]~9_combout\ = (\uart_module|u_RX|Decoder0~1_combout\ & ((\uart_module|u_RX|Decoder0~5_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~5_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(1)))))) # 
-- (!\uart_module|u_RX|Decoder0~1_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~1_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(1),
	datad => \uart_module|u_RX|Decoder0~5_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[1]~9_combout\);

-- Location: FF_X30_Y17_N29
\uart_module|u_RX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X28_Y15_N12
\uart_module|u_RX|rgb[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][0]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|rgb[0][0]~feeder_combout\);

-- Location: FF_X28_Y15_N13
\uart_module|u_RX|rgb[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][0]~q\);

-- Location: LCCOMB_X21_Y14_N30
\sevs_module|curr_val~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~24_combout\ = (!\sevs_module|counter\(1) & (\uart_module|u_RX|rgb[0][0]~q\ & \sevs_module|Equal0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datab => \uart_module|u_RX|rgb[0][0]~q\,
	datad => \sevs_module|Equal0~11_combout\,
	combout => \sevs_module|curr_val~24_combout\);

-- Location: LCCOMB_X24_Y16_N6
\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \uart_module|u_RX|rgb[0][5]~q\ $ (VCC)
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\uart_module|u_RX|rgb[0][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][5]~q\,
	datad => VCC,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y16_N8
\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\uart_module|u_RX|rgb[0][6]~q\ & (\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\uart_module|u_RX|rgb[0][6]~q\ & 
-- (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\uart_module|u_RX|rgb[0][6]~q\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][6]~q\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y16_N10
\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\uart_module|u_RX|rgb[0][7]~q\ & (\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\uart_module|u_RX|rgb[0][7]~q\ & 
-- (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\uart_module|u_RX|rgb[0][7]~q\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][7]~q\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y16_N12
\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X25_Y16_N20
\uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X25_Y16_N22
\uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X24_Y16_N18
\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y16_N30
\uart_module|Div1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\uart_module|u_RX|rgb[0][7]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][7]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X24_Y16_N28
\uart_module|Div1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X24_Y16_N14
\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X24_Y16_N4
\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\uart_module|u_RX|rgb[0][6]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][6]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X24_Y16_N16
\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\uart_module|u_RX|rgb[0][5]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][5]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X24_Y16_N0
\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X24_Y16_N20
\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y16_N22
\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X24_Y16_N24
\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y16_N26
\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y16_N2
\uart_module|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\uart_module|u_RX|rgb[0][6]~q\)) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \uart_module|u_RX|rgb[0][6]~q\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X24_Y14_N18
\uart_module|Div1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X24_Y14_N30
\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\uart_module|u_RX|rgb[0][5]~q\)) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][5]~q\,
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X24_Y14_N16
\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X25_Y14_N4
\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X24_Y14_N14
\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][4]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X23_Y16_N28
\uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\uart_module|u_RX|rgb[0][3]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][3]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X25_Y16_N2
\uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \uart_module|u_RX|rgb[0][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|u_RX|rgb[0][3]~q\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X24_Y14_N20
\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y14_N22
\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y14_N24
\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y14_N26
\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y14_N28
\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y14_N30
\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\uart_module|u_RX|rgb[0][4]~q\))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X25_Y14_N28
\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X25_Y14_N6
\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\uart_module|u_RX|rgb[0][3]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][3]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X25_Y14_N8
\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X26_Y14_N4
\uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X26_Y14_N26
\uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X25_Y14_N16
\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X25_Y14_N18
\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X25_Y14_N20
\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X25_Y14_N10
\uart_module|Div1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X25_Y14_N2
\uart_module|Div1|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X25_Y14_N22
\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y14_N24
\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y14_N26
\uart_module|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X25_Y14_N12
\uart_module|Div1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X25_Y16_N30
\uart_module|Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\uart_module|u_RX|rgb[0][3]~q\))) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \uart_module|u_RX|rgb[0][3]~q\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X25_Y14_N0
\uart_module|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X25_Y14_N14
\uart_module|Div1|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X25_Y16_N24
\uart_module|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X28_Y16_N18
\uart_module|u_RX|r_DATA_BUFFER[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\ = (\uart_module|u_RX|r_INDEX\(2) & (((\uart_module|u_RX|r_DATA_BUFFER\(2))))) # (!\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|Decoder0~4_combout\ & (\i_Rx~input_o\)) # 
-- (!\uart_module|u_RX|Decoder0~4_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(2),
	datad => \uart_module|u_RX|Decoder0~4_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\);

-- Location: FF_X28_Y16_N19
\uart_module|u_RX|r_DATA_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(2));

-- Location: LCCOMB_X26_Y16_N30
\uart_module|u_RX|rgb[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][1]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(2),
	combout => \uart_module|u_RX|rgb[0][1]~feeder_combout\);

-- Location: FF_X26_Y16_N31
\uart_module|u_RX|rgb[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][1]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][1]~q\);

-- Location: LCCOMB_X25_Y16_N26
\uart_module|Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\uart_module|u_RX|rgb[0][1]~q\ & \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][1]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X25_Y16_N28
\uart_module|Div1|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\uart_module|u_RX|rgb[0][1]~q\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][1]~q\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X25_Y16_N6
\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\uart_module|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\uart_module|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y16_N8
\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y16_N10
\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\uart_module|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\uart_module|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y16_N12
\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \uart_module|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y16_N14
\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y14_N4
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = !\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X24_Y14_N0
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X24_Y14_N2
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y14_N4
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- VCC)) # (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X24_Y14_N6
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X24_Y14_N8
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X24_Y14_N10
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X24_Y14_N12
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X22_Y16_N28
\uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\ = (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\);

-- Location: LCCOMB_X22_Y16_N22
\uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\ = (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\);

-- Location: LCCOMB_X23_Y16_N30
\uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\);

-- Location: LCCOMB_X22_Y16_N24
\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\ = (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\);

-- Location: LCCOMB_X22_Y16_N30
\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\ = (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\);

-- Location: LCCOMB_X23_Y16_N22
\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\ = (!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\);

-- Location: LCCOMB_X23_Y16_N20
\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\);

-- Location: LCCOMB_X22_Y16_N20
\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\ = (!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\);

-- Location: LCCOMB_X22_Y16_N26
\uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6_combout\);

-- Location: LCCOMB_X21_Y16_N16
\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X21_Y16_N24
\uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7_combout\ = (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7_combout\);

-- Location: LCCOMB_X22_Y16_N2
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6_combout\) # (\uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7_combout\)))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6_combout\) # (\uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~6_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|StageOut[48]~7_combout\,
	datad => VCC,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X22_Y16_N4
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\) # 
-- (\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\)))) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\ & 
-- (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\)))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\ & (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\ & 
-- !\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~5_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|StageOut[49]~4_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X22_Y16_N6
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\) # 
-- (\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\)))) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\) # 
-- (\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\)))))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\) # 
-- (\uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~3_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|StageOut[50]~2_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X22_Y16_N8
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\) # 
-- (\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\)))) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\ & 
-- (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\)))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\ & (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\ & 
-- !\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~0_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|StageOut[51]~1_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X22_Y16_N10
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\ & ((GND) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\))) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ $ (GND)))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X22_Y16_N12
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & VCC)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\ & (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\ & !\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X22_Y16_N14
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\ & ((GND) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\))) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ $ (GND)))
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\) # (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\,
	datad => VCC,
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X22_Y16_N16
\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X21_Y14_N12
\sevs_module|curr_val~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~23_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \sevs_module|Equal1~0_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~23_combout\);

-- Location: LCCOMB_X21_Y14_N28
\sevs_module|curr_val~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~25_combout\ = (\sevs_module|curr_val~24_combout\) # ((\sevs_module|curr_val~23_combout\) # ((\sevs_module|curr_val~17_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val~17_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \sevs_module|curr_val~24_combout\,
	datad => \sevs_module|curr_val~23_combout\,
	combout => \sevs_module|curr_val~25_combout\);

-- Location: FF_X21_Y14_N29
\sevs_module|curr_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~25_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(0));

-- Location: LCCOMB_X24_Y17_N4
\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \uart_module|u_RX|rgb[0][5]~q\ $ (VCC)
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\uart_module|u_RX|rgb[0][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][5]~q\,
	datad => VCC,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y17_N6
\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\uart_module|u_RX|rgb[0][6]~q\ & (\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\uart_module|u_RX|rgb[0][6]~q\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\uart_module|u_RX|rgb[0][6]~q\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][6]~q\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y17_N8
\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\uart_module|u_RX|rgb[0][7]~q\ & (\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\uart_module|u_RX|rgb[0][7]~q\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\uart_module|u_RX|rgb[0][7]~q\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][7]~q\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y17_N10
\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y17_N26
\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X24_Y17_N28
\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\uart_module|u_RX|rgb[0][7]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][7]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X24_Y17_N12
\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\uart_module|u_RX|rgb[0][6]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][6]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X24_Y17_N14
\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X25_Y17_N20
\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\uart_module|u_RX|rgb[0][5]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][5]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X24_Y17_N2
\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X24_Y17_N30
\uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X24_Y17_N0
\uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][4]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X24_Y17_N16
\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y17_N18
\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y17_N20
\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X24_Y17_N22
\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X24_Y17_N24
\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y17_N4
\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\uart_module|u_RX|rgb[0][7]~q\)) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][7]~q\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\);

-- Location: LCCOMB_X23_Y17_N24
\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X23_Y17_N10
\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\uart_module|u_RX|rgb[0][6]~q\))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \uart_module|u_RX|rgb[0][6]~q\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\);

-- Location: LCCOMB_X23_Y17_N2
\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X25_Y17_N22
\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\uart_module|u_RX|rgb[0][5]~q\)) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][5]~q\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\);

-- Location: LCCOMB_X23_Y17_N8
\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X25_Y17_N18
\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\uart_module|u_RX|rgb[0][4]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][4]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X25_Y17_N4
\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X25_Y17_N16
\uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\uart_module|u_RX|rgb[0][3]~q\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][3]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X25_Y17_N6
\uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\uart_module|u_RX|rgb[0][3]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][3]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X23_Y17_N12
\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N14
\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N16
\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X23_Y17_N18
\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X23_Y17_N20
\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\) # ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X23_Y17_N22
\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X22_Y17_N30
\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\) # 
-- ((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[36]~93_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\);

-- Location: LCCOMB_X22_Y17_N28
\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X23_Y17_N6
\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|StageOut[35]~94_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\);

-- Location: LCCOMB_X23_Y17_N26
\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X25_Y17_N14
\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|StageOut[34]~95_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X23_Y17_N28
\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X23_Y17_N30
\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X25_Y17_N12
\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\uart_module|u_RX|rgb[0][4]~q\)) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][4]~q\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\);

-- Location: LCCOMB_X25_Y17_N30
\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\uart_module|u_RX|rgb[0][3]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[0][3]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X25_Y17_N0
\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X22_Y17_N26
\uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X23_Y17_N0
\uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \uart_module|u_RX|rgb[0][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \uart_module|u_RX|rgb[0][2]~q\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X22_Y17_N12
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X22_Y17_N14
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X22_Y17_N16
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\)))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y17_N18
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X22_Y17_N20
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\) # ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X22_Y17_N22
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X22_Y17_N24
\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X25_Y17_N26
\uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\ = (\uart_module|u_RX|rgb[0][1]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][1]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\);

-- Location: LCCOMB_X25_Y17_N8
\uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82_combout\ = (\uart_module|u_RX|rgb[0][1]~q\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][1]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82_combout\);

-- Location: LCCOMB_X21_Y17_N2
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\) # (\uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[48]~82_combout\,
	datad => VCC,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X22_Y17_N6
\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\);

-- Location: LCCOMB_X21_Y17_N0
\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[45]~86_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\);

-- Location: LCCOMB_X22_Y17_N2
\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\ = (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\);

-- Location: LCCOMB_X25_Y17_N10
\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\) # 
-- ((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[44]~87_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\);

-- Location: LCCOMB_X22_Y17_N4
\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\ = (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\);

-- Location: LCCOMB_X25_Y17_N28
\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\);

-- Location: LCCOMB_X25_Y17_N24
\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\) # 
-- ((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[42]~96_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\);

-- Location: LCCOMB_X22_Y17_N8
\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\);

-- Location: LCCOMB_X21_Y17_N26
\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\uart_module|u_RX|rgb[0][3]~q\)) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \uart_module|u_RX|rgb[0][3]~q\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\);

-- Location: LCCOMB_X22_Y17_N10
\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\);

-- Location: LCCOMB_X19_Y17_N24
\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\);

-- Location: LCCOMB_X22_Y17_N0
\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\ = (\uart_module|u_RX|rgb[0][2]~q\ & \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][2]~q\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\);

-- Location: LCCOMB_X21_Y17_N4
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X21_Y17_N6
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\)))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y17_N8
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X21_Y17_N10
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\))))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\) # (GND))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\) # ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\) # 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X21_Y17_N12
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\ & 
-- (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\)))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\ & (!\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\ & 
-- !\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X21_Y17_N14
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\) # 
-- (\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\))))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\) # (GND))))
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\) # ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\) # 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\,
	datad => VCC,
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X21_Y17_N16
\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X21_Y14_N8
\sevs_module|curr_val~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~16_combout\ = (\sevs_module|Equal0~10_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\uart_module|u_RX|rgb[0][1]~q\)) # 
-- (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][1]~q\,
	datab => \sevs_module|Equal0~10_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~16_combout\);

-- Location: LCCOMB_X21_Y16_N18
\sevs_module|curr_val~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~30_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \sevs_module|curr_val~30_combout\);

-- Location: LCCOMB_X21_Y14_N10
\sevs_module|curr_val~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~15_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\sevs_module|curr_val~30_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal1~0_combout\,
	datab => \sevs_module|curr_val~30_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~15_combout\);

-- Location: LCCOMB_X21_Y14_N18
\sevs_module|curr_val~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~18_combout\ = (\sevs_module|curr_val~16_combout\) # ((\sevs_module|curr_val~15_combout\) # ((\sevs_module|curr_val~17_combout\ & !\uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val~17_combout\,
	datab => \uart_module|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \sevs_module|curr_val~16_combout\,
	datad => \sevs_module|curr_val~15_combout\,
	combout => \sevs_module|curr_val~18_combout\);

-- Location: FF_X21_Y14_N19
\sevs_module|curr_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~18_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(1));

-- Location: LCCOMB_X21_Y17_N30
\sevs_module|curr_val~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~21_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~80_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~21_combout\);

-- Location: LCCOMB_X23_Y16_N8
\sevs_module|curr_val~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~19_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \uart_module|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \sevs_module|curr_val~19_combout\);

-- Location: LCCOMB_X21_Y16_N12
\sevs_module|curr_val~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~20_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\sevs_module|curr_val~19_combout\))) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \sevs_module|curr_val~19_combout\,
	datac => \sevs_module|Equal1~0_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~20_combout\);

-- Location: LCCOMB_X21_Y16_N22
\sevs_module|curr_val~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~22_combout\ = (\sevs_module|curr_val~20_combout\) # ((\sevs_module|Equal0~10_combout\ & \sevs_module|curr_val~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~10_combout\,
	datac => \sevs_module|curr_val~21_combout\,
	datad => \sevs_module|curr_val~20_combout\,
	combout => \sevs_module|curr_val~22_combout\);

-- Location: FF_X21_Y16_N23
\sevs_module|curr_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~22_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(2));

-- Location: LCCOMB_X18_Y20_N8
\sevs_module|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal4~0_combout\ = (!\sevs_module|curr_val\(1) & !\sevs_module|curr_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|curr_val\(1),
	datad => \sevs_module|curr_val\(2),
	combout => \sevs_module|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\sevs_module|curr_val~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~2_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \sevs_module|curr_val~2_combout\);

-- Location: LCCOMB_X21_Y16_N14
\sevs_module|curr_val~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~3_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\sevs_module|curr_val~2_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val~2_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datac => \sevs_module|Equal1~0_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~3_combout\);

-- Location: LCCOMB_X21_Y17_N20
\sevs_module|curr_val~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~4_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~89_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~4_combout\);

-- Location: LCCOMB_X21_Y16_N30
\sevs_module|curr_val~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~5_combout\ = (\sevs_module|curr_val~3_combout\) # ((\sevs_module|Equal0~10_combout\ & \sevs_module|curr_val~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~10_combout\,
	datac => \sevs_module|curr_val~3_combout\,
	datad => \sevs_module|curr_val~4_combout\,
	combout => \sevs_module|curr_val~5_combout\);

-- Location: FF_X21_Y16_N31
\sevs_module|curr_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~5_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(4));

-- Location: LCCOMB_X21_Y17_N24
\sevs_module|curr_val~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~13_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~83_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[54]~90_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~13_combout\);

-- Location: LCCOMB_X22_Y16_N18
\sevs_module|curr_val~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~12_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[54]~8_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \sevs_module|Equal1~0_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~12_combout\);

-- Location: LCCOMB_X21_Y17_N22
\sevs_module|curr_val~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~14_combout\ = (\sevs_module|curr_val~12_combout\) # ((\sevs_module|curr_val~13_combout\ & \sevs_module|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|curr_val~13_combout\,
	datac => \sevs_module|Equal0~10_combout\,
	datad => \sevs_module|curr_val~12_combout\,
	combout => \sevs_module|curr_val~14_combout\);

-- Location: FF_X21_Y17_N23
\sevs_module|curr_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~14_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(7));

-- Location: LCCOMB_X22_Y16_N0
\sevs_module|curr_val~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~9_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\))) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \uart_module|Mod1|auto_generated|divider|divider|StageOut[53]~9_combout\,
	datac => \sevs_module|Equal1~0_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~9_combout\);

-- Location: LCCOMB_X21_Y17_N18
\sevs_module|curr_val~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~10_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~84_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|StageOut[53]~91_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \sevs_module|curr_val~10_combout\);

-- Location: LCCOMB_X21_Y17_N28
\sevs_module|curr_val~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~11_combout\ = (\sevs_module|curr_val~9_combout\) # ((\sevs_module|Equal0~10_combout\ & \sevs_module|curr_val~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|Equal0~10_combout\,
	datac => \sevs_module|curr_val~9_combout\,
	datad => \sevs_module|curr_val~10_combout\,
	combout => \sevs_module|curr_val~11_combout\);

-- Location: FF_X21_Y17_N29
\sevs_module|curr_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~11_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(6));

-- Location: LCCOMB_X22_Y15_N4
\sevs_module|curr_val~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~6_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod1|auto_generated|divider|divider|StageOut[52]~10_combout\,
	datab => \sevs_module|Equal1~0_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~6_combout\);

-- Location: LCCOMB_X22_Y15_N10
\sevs_module|curr_val~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~7_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~92_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[52]~85_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \sevs_module|curr_val~7_combout\);

-- Location: LCCOMB_X22_Y15_N0
\sevs_module|curr_val~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~8_combout\ = (\sevs_module|curr_val~6_combout\) # ((\sevs_module|Equal0~10_combout\ & \sevs_module|curr_val~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|Equal0~10_combout\,
	datac => \sevs_module|curr_val~6_combout\,
	datad => \sevs_module|curr_val~7_combout\,
	combout => \sevs_module|curr_val~8_combout\);

-- Location: FF_X22_Y15_N1
\sevs_module|curr_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~8_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(5));

-- Location: LCCOMB_X21_Y16_N20
\sevs_module|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal12~0_combout\ = (!\sevs_module|curr_val\(4) & (!\sevs_module|curr_val\(7) & (!\sevs_module|curr_val\(6) & !\sevs_module|curr_val\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(4),
	datab => \sevs_module|curr_val\(7),
	datac => \sevs_module|curr_val\(6),
	datad => \sevs_module|curr_val\(5),
	combout => \sevs_module|Equal12~0_combout\);

-- Location: LCCOMB_X22_Y15_N8
\sevs_module|curr_val~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~26_combout\ = (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \uart_module|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \sevs_module|curr_val~26_combout\);

-- Location: LCCOMB_X22_Y15_N30
\sevs_module|curr_val~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~27_combout\ = (\sevs_module|Equal1~0_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\sevs_module|curr_val~26_combout\)) # 
-- (!\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val~26_combout\,
	datab => \sevs_module|Equal1~0_combout\,
	datac => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \uart_module|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \sevs_module|curr_val~27_combout\);

-- Location: LCCOMB_X22_Y15_N28
\sevs_module|curr_val~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~28_combout\ = (\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\) # 
-- ((\uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\)))) # (!\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~97_combout\,
	datab => \uart_module|Mod2|auto_generated|divider|divider|StageOut[50]~78_combout\,
	datac => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \uart_module|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \sevs_module|curr_val~28_combout\);

-- Location: LCCOMB_X22_Y15_N2
\sevs_module|curr_val~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~29_combout\ = (\sevs_module|curr_val~27_combout\) # ((\sevs_module|Equal0~10_combout\ & \sevs_module|curr_val~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|Equal0~10_combout\,
	datac => \sevs_module|curr_val~27_combout\,
	datad => \sevs_module|curr_val~28_combout\,
	combout => \sevs_module|curr_val~29_combout\);

-- Location: FF_X22_Y15_N3
\sevs_module|curr_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~29_combout\,
	ena => \sevs_module|dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(3));

-- Location: LCCOMB_X18_Y20_N22
\sevs_module|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal4~1_combout\ = (!\sevs_module|curr_val\(0) & (\sevs_module|Equal4~0_combout\ & (\sevs_module|Equal12~0_combout\ & !\sevs_module|curr_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datab => \sevs_module|Equal4~0_combout\,
	datac => \sevs_module|Equal12~0_combout\,
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|Equal4~1_combout\);

-- Location: LCCOMB_X18_Y20_N20
\sevs_module|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal7~0_combout\ = (\sevs_module|curr_val\(0) & (\sevs_module|curr_val\(1) & (\sevs_module|Equal12~0_combout\ & !\sevs_module|curr_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|Equal12~0_combout\,
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|Equal7~0_combout\);

-- Location: LCCOMB_X18_Y20_N26
\sevs_module|WideOr2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr2~10_combout\ = (\sevs_module|Equal12~0_combout\ & ((\sevs_module|Equal4~0_combout\ & ((\sevs_module|curr_val\(3)) # (!\sevs_module|curr_val\(0)))) # (!\sevs_module|Equal4~0_combout\ & ((!\sevs_module|curr_val\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datab => \sevs_module|Equal4~0_combout\,
	datac => \sevs_module|Equal12~0_combout\,
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|WideOr2~10_combout\);

-- Location: LCCOMB_X18_Y20_N4
\sevs_module|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr5~combout\ = (\sevs_module|Equal4~1_combout\) # (((\sevs_module|Equal7~0_combout\ & \sevs_module|curr_val\(2))) # (!\sevs_module|WideOr2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal4~1_combout\,
	datab => \sevs_module|Equal7~0_combout\,
	datac => \sevs_module|WideOr2~10_combout\,
	datad => \sevs_module|curr_val\(2),
	combout => \sevs_module|WideOr5~combout\);

-- Location: LCCOMB_X18_Y20_N10
\sevs_module|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal4~2_combout\ = (!\sevs_module|curr_val\(0) & (\sevs_module|Equal12~0_combout\ & !\sevs_module|curr_val\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datac => \sevs_module|Equal12~0_combout\,
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|Equal4~2_combout\);

-- Location: LCCOMB_X18_Y20_N12
\sevs_module|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal6~0_combout\ = (\sevs_module|Equal4~2_combout\ & (\sevs_module|curr_val\(1) & !\sevs_module|curr_val\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal4~2_combout\,
	datac => \sevs_module|curr_val\(1),
	datad => \sevs_module|curr_val\(2),
	combout => \sevs_module|Equal6~0_combout\);

-- Location: LCCOMB_X18_Y20_N2
\sevs_module|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr4~0_combout\ = (\sevs_module|Equal7~0_combout\) # ((\sevs_module|Equal6~0_combout\) # (!\sevs_module|WideOr2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|Equal7~0_combout\,
	datac => \sevs_module|WideOr2~10_combout\,
	datad => \sevs_module|Equal6~0_combout\,
	combout => \sevs_module|WideOr4~0_combout\);

-- Location: LCCOMB_X18_Y20_N24
\sevs_module|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr3~3_combout\ = (!\sevs_module|curr_val\(0) & (!\sevs_module|curr_val\(1) & (\sevs_module|Equal12~0_combout\ & !\sevs_module|curr_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|Equal12~0_combout\,
	datad => \sevs_module|curr_val\(2),
	combout => \sevs_module|WideOr3~3_combout\);

-- Location: LCCOMB_X18_Y20_N28
\sevs_module|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr3~2_combout\ = (\sevs_module|WideOr3~3_combout\) # ((\sevs_module|Equal4~2_combout\ & \sevs_module|curr_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal4~2_combout\,
	datab => \sevs_module|WideOr3~3_combout\,
	datac => \sevs_module|curr_val\(1),
	combout => \sevs_module|WideOr3~2_combout\);

-- Location: LCCOMB_X18_Y20_N16
\sevs_module|WideOr2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr2~5_combout\ = (\sevs_module|curr_val\(1) & ((\sevs_module|curr_val\(3)) # ((\sevs_module|curr_val\(0) & \sevs_module|curr_val\(2))))) # (!\sevs_module|curr_val\(1) & (\sevs_module|curr_val\(2) $ (((\sevs_module|curr_val\(0) & 
-- !\sevs_module|curr_val\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datab => \sevs_module|curr_val\(2),
	datac => \sevs_module|curr_val\(1),
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|WideOr2~5_combout\);

-- Location: LCCOMB_X21_Y16_N8
\sevs_module|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr2~3_combout\ = (\sevs_module|curr_val\(7)) # (\sevs_module|WideOr2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|curr_val\(7),
	datad => \sevs_module|WideOr2~5_combout\,
	combout => \sevs_module|WideOr2~3_combout\);

-- Location: LCCOMB_X21_Y16_N26
\sevs_module|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr2~combout\ = (\sevs_module|curr_val\(4)) # ((\sevs_module|WideOr2~3_combout\) # ((\sevs_module|curr_val\(6)) # (\sevs_module|curr_val\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(4),
	datab => \sevs_module|WideOr2~3_combout\,
	datac => \sevs_module|curr_val\(6),
	datad => \sevs_module|curr_val\(5),
	combout => \sevs_module|WideOr2~combout\);

-- Location: LCCOMB_X18_Y20_N14
\sevs_module|sevseg[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|sevseg\(4) = (\sevs_module|Equal6~0_combout\) # (((!\sevs_module|Equal4~0_combout\ & \sevs_module|curr_val\(3))) # (!\sevs_module|Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal6~0_combout\,
	datab => \sevs_module|Equal4~0_combout\,
	datac => \sevs_module|Equal12~0_combout\,
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|sevseg\(4));

-- Location: LCCOMB_X18_Y20_N18
\sevs_module|WideOr1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr1~5_combout\ = (\sevs_module|curr_val\(2) & ((\sevs_module|curr_val\(3)) # (\sevs_module|curr_val\(0) $ (\sevs_module|curr_val\(1))))) # (!\sevs_module|curr_val\(2) & (((\sevs_module|curr_val\(1) & \sevs_module|curr_val\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(0),
	datab => \sevs_module|curr_val\(2),
	datac => \sevs_module|curr_val\(1),
	datad => \sevs_module|curr_val\(3),
	combout => \sevs_module|WideOr1~5_combout\);

-- Location: LCCOMB_X21_Y16_N28
\sevs_module|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr1~3_combout\ = (\sevs_module|curr_val\(7)) # (\sevs_module|WideOr1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|curr_val\(7),
	datad => \sevs_module|WideOr1~5_combout\,
	combout => \sevs_module|WideOr1~3_combout\);

-- Location: LCCOMB_X21_Y16_N2
\sevs_module|WideOr1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr1~10_combout\ = (\sevs_module|curr_val\(4)) # ((\sevs_module|WideOr1~3_combout\) # ((\sevs_module|curr_val\(6)) # (\sevs_module|curr_val\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(4),
	datab => \sevs_module|WideOr1~3_combout\,
	datac => \sevs_module|curr_val\(6),
	datad => \sevs_module|curr_val\(5),
	combout => \sevs_module|WideOr1~10_combout\);

-- Location: LCCOMB_X18_Y20_N30
\sevs_module|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr0~2_combout\ = (\sevs_module|WideOr2~10_combout\ & (((\sevs_module|curr_val\(1)) # (!\sevs_module|curr_val\(2))) # (!\sevs_module|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal4~2_combout\,
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|WideOr2~10_combout\,
	datad => \sevs_module|curr_val\(2),
	combout => \sevs_module|WideOr0~2_combout\);

-- Location: LCCOMB_X28_Y13_N18
\uart_module|u_RX|pixel_receive~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|pixel_receive~2_combout\ = (\uart_module|u_RX|pixel_receive~1_combout\ & ((\uart_module|u_RX|LessThan4~9_combout\))) # (!\uart_module|u_RX|pixel_receive~1_combout\ & (\uart_module|u_RX|pixel_receive~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|pixel_receive~1_combout\,
	datac => \uart_module|u_RX|pixel_receive~q\,
	datad => \uart_module|u_RX|LessThan4~9_combout\,
	combout => \uart_module|u_RX|pixel_receive~2_combout\);

-- Location: FF_X28_Y13_N19
\uart_module|u_RX|pixel_receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|pixel_receive~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|pixel_receive~q\);

-- Location: LCCOMB_X28_Y13_N12
\uart_module|u_Control|current_state.RX_EN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_Control|current_state.RX_EN~0_combout\ = (\uart_module|u_Control|current_state.RX_EN~q\) # (\uart_module|u_RX|pixel_receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_Control|current_state.RX_EN~q\,
	datad => \uart_module|u_RX|pixel_receive~q\,
	combout => \uart_module|u_Control|current_state.RX_EN~0_combout\);

-- Location: FF_X28_Y13_N13
\uart_module|u_Control|current_state.RX_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_Control|current_state.RX_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_Control|current_state.RX_EN~q\);

-- Location: LCCOMB_X28_Y13_N28
\uart_module|led1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|led1~0_combout\ = !\uart_module|u_Control|current_state.RX_EN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_Control|current_state.RX_EN~q\,
	combout => \uart_module|led1~0_combout\);

-- Location: FF_X28_Y13_N29
\uart_module|led1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|led1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|led1~q\);

-- Location: LCCOMB_X29_Y17_N18
\uart_module|u_TX|r_INDEX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~3_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & (\uart_module|u_TX|r_INDEX\(2) $ (((\uart_module|u_TX|r_INDEX\(1) & \uart_module|u_TX|r_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(1),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(2),
	datad => \uart_module|u_TX|r_INDEX\(3),
	combout => \uart_module|u_TX|r_INDEX~3_combout\);

-- Location: LCCOMB_X29_Y15_N24
\uart_module|s_TX_START~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_TX_START~feeder_combout\ = \uart_module|u_Control|current_state.TX_EN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_Control|current_state.TX_EN~q\,
	combout => \uart_module|s_TX_START~feeder_combout\);

-- Location: FF_X29_Y15_N25
\uart_module|s_TX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_TX_START~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_TX_START~q\);

-- Location: LCCOMB_X28_Y17_N8
\uart_module|u_TX|r_PRESCALER[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[0]~9_combout\ = \uart_module|u_TX|r_PRESCALER\(0) $ (VCC)
-- \uart_module|u_TX|r_PRESCALER[0]~10\ = CARRY(\uart_module|u_TX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(0),
	datad => VCC,
	combout => \uart_module|u_TX|r_PRESCALER[0]~9_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[0]~10\);

-- Location: LCCOMB_X28_Y17_N26
\uart_module|u_TX|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~0_combout\ = (!\uart_module|u_TX|r_PRESCALER\(1) & (!\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER\(0) & !\uart_module|u_TX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(1),
	datab => \uart_module|u_TX|r_PRESCALER\(3),
	datac => \uart_module|u_TX|r_PRESCALER\(0),
	datad => \uart_module|u_TX|r_PRESCALER\(2),
	combout => \uart_module|u_TX|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\uart_module|u_TX|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~1_combout\ = (!\uart_module|u_TX|r_PRESCALER\(6) & (((\uart_module|u_TX|LessThan0~0_combout\) # (!\uart_module|u_TX|r_PRESCALER\(5))) # (!\uart_module|u_TX|r_PRESCALER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(4),
	datab => \uart_module|u_TX|r_PRESCALER\(5),
	datac => \uart_module|u_TX|LessThan0~0_combout\,
	datad => \uart_module|u_TX|r_PRESCALER\(6),
	combout => \uart_module|u_TX|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y17_N2
\uart_module|u_TX|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~2_combout\ = (\uart_module|u_TX|r_PRESCALER\(8) & (!\uart_module|u_TX|LessThan0~1_combout\ & \uart_module|u_TX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datac => \uart_module|u_TX|LessThan0~1_combout\,
	datad => \uart_module|u_TX|r_PRESCALER\(7),
	combout => \uart_module|u_TX|LessThan0~2_combout\);

-- Location: FF_X28_Y17_N9
\uart_module|u_TX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[0]~9_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(0));

-- Location: LCCOMB_X28_Y17_N10
\uart_module|u_TX|r_PRESCALER[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[1]~11_combout\ = (\uart_module|u_TX|r_PRESCALER\(1) & (!\uart_module|u_TX|r_PRESCALER[0]~10\)) # (!\uart_module|u_TX|r_PRESCALER\(1) & ((\uart_module|u_TX|r_PRESCALER[0]~10\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[1]~12\ = CARRY((!\uart_module|u_TX|r_PRESCALER[0]~10\) # (!\uart_module|u_TX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(1),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[0]~10\,
	combout => \uart_module|u_TX|r_PRESCALER[1]~11_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[1]~12\);

-- Location: FF_X28_Y17_N11
\uart_module|u_TX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[1]~11_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(1));

-- Location: LCCOMB_X28_Y17_N12
\uart_module|u_TX|r_PRESCALER[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[2]~13_combout\ = (\uart_module|u_TX|r_PRESCALER\(2) & (\uart_module|u_TX|r_PRESCALER[1]~12\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(2) & (!\uart_module|u_TX|r_PRESCALER[1]~12\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[2]~14\ = CARRY((\uart_module|u_TX|r_PRESCALER\(2) & !\uart_module|u_TX|r_PRESCALER[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(2),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[1]~12\,
	combout => \uart_module|u_TX|r_PRESCALER[2]~13_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[2]~14\);

-- Location: FF_X28_Y17_N13
\uart_module|u_TX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[2]~13_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(2));

-- Location: LCCOMB_X28_Y17_N14
\uart_module|u_TX|r_PRESCALER[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[3]~15_combout\ = (\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER[2]~14\)) # (!\uart_module|u_TX|r_PRESCALER\(3) & ((\uart_module|u_TX|r_PRESCALER[2]~14\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[3]~16\ = CARRY((!\uart_module|u_TX|r_PRESCALER[2]~14\) # (!\uart_module|u_TX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(3),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[2]~14\,
	combout => \uart_module|u_TX|r_PRESCALER[3]~15_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[3]~16\);

-- Location: FF_X28_Y17_N15
\uart_module|u_TX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[3]~15_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(3));

-- Location: LCCOMB_X28_Y17_N16
\uart_module|u_TX|r_PRESCALER[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[4]~17_combout\ = (\uart_module|u_TX|r_PRESCALER\(4) & (\uart_module|u_TX|r_PRESCALER[3]~16\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(4) & (!\uart_module|u_TX|r_PRESCALER[3]~16\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[4]~18\ = CARRY((\uart_module|u_TX|r_PRESCALER\(4) & !\uart_module|u_TX|r_PRESCALER[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(4),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[3]~16\,
	combout => \uart_module|u_TX|r_PRESCALER[4]~17_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[4]~18\);

-- Location: FF_X28_Y17_N17
\uart_module|u_TX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[4]~17_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(4));

-- Location: LCCOMB_X28_Y17_N18
\uart_module|u_TX|r_PRESCALER[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[5]~19_combout\ = (\uart_module|u_TX|r_PRESCALER\(5) & (!\uart_module|u_TX|r_PRESCALER[4]~18\)) # (!\uart_module|u_TX|r_PRESCALER\(5) & ((\uart_module|u_TX|r_PRESCALER[4]~18\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[5]~20\ = CARRY((!\uart_module|u_TX|r_PRESCALER[4]~18\) # (!\uart_module|u_TX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(5),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[4]~18\,
	combout => \uart_module|u_TX|r_PRESCALER[5]~19_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[5]~20\);

-- Location: FF_X28_Y17_N19
\uart_module|u_TX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[5]~19_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(5));

-- Location: LCCOMB_X28_Y17_N20
\uart_module|u_TX|r_PRESCALER[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[6]~21_combout\ = (\uart_module|u_TX|r_PRESCALER\(6) & (\uart_module|u_TX|r_PRESCALER[5]~20\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(6) & (!\uart_module|u_TX|r_PRESCALER[5]~20\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[6]~22\ = CARRY((\uart_module|u_TX|r_PRESCALER\(6) & !\uart_module|u_TX|r_PRESCALER[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(6),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[5]~20\,
	combout => \uart_module|u_TX|r_PRESCALER[6]~21_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[6]~22\);

-- Location: FF_X28_Y17_N21
\uart_module|u_TX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[6]~21_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(6));

-- Location: LCCOMB_X28_Y17_N22
\uart_module|u_TX|r_PRESCALER[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[7]~23_combout\ = (\uart_module|u_TX|r_PRESCALER\(7) & (!\uart_module|u_TX|r_PRESCALER[6]~22\)) # (!\uart_module|u_TX|r_PRESCALER\(7) & ((\uart_module|u_TX|r_PRESCALER[6]~22\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[7]~24\ = CARRY((!\uart_module|u_TX|r_PRESCALER[6]~22\) # (!\uart_module|u_TX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(7),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[6]~22\,
	combout => \uart_module|u_TX|r_PRESCALER[7]~23_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[7]~24\);

-- Location: FF_X28_Y17_N23
\uart_module|u_TX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[7]~23_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(7));

-- Location: LCCOMB_X28_Y17_N24
\uart_module|u_TX|r_PRESCALER[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[8]~25_combout\ = \uart_module|u_TX|r_PRESCALER[7]~24\ $ (!\uart_module|u_TX|r_PRESCALER\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_TX|r_PRESCALER\(8),
	cin => \uart_module|u_TX|r_PRESCALER[7]~24\,
	combout => \uart_module|u_TX|r_PRESCALER[8]~25_combout\);

-- Location: FF_X28_Y17_N25
\uart_module|u_TX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[8]~25_combout\,
	sclr => \uart_module|u_TX|LessThan0~2_combout\,
	ena => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(8));

-- Location: LCCOMB_X28_Y17_N30
\uart_module|u_TX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~1_combout\ = (\uart_module|u_TX|r_PRESCALER\(7) & (\uart_module|u_TX|r_PRESCALER\(4) & (\uart_module|u_TX|r_PRESCALER\(6) & !\uart_module|u_TX|r_PRESCALER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(7),
	datab => \uart_module|u_TX|r_PRESCALER\(4),
	datac => \uart_module|u_TX|r_PRESCALER\(6),
	datad => \uart_module|u_TX|r_PRESCALER\(5),
	combout => \uart_module|u_TX|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y17_N0
\uart_module|u_TX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~0_combout\ = (!\uart_module|u_TX|r_PRESCALER\(1) & (\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER\(0) & \uart_module|u_TX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(1),
	datab => \uart_module|u_TX|r_PRESCALER\(3),
	datac => \uart_module|u_TX|r_PRESCALER\(0),
	datad => \uart_module|u_TX|r_PRESCALER\(2),
	combout => \uart_module|u_TX|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\uart_module|u_TX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~2_combout\ = (!\uart_module|u_TX|r_PRESCALER\(8) & (\uart_module|u_TX|Equal0~1_combout\ & \uart_module|u_TX|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datac => \uart_module|u_TX|Equal0~1_combout\,
	datad => \uart_module|u_TX|Equal0~0_combout\,
	combout => \uart_module|u_TX|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y17_N16
\uart_module|u_TX|s_TRANSMITING_FLAG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\ = (\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & ((\uart_module|u_TX|LessThan1~0_combout\) # ((!\uart_module|u_TX|Equal0~2_combout\)))) # (!\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & 
-- (((\uart_module|s_TX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|LessThan1~0_combout\,
	datab => \uart_module|s_TX_START~q\,
	datac => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	datad => \uart_module|u_TX|Equal0~2_combout\,
	combout => \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\);

-- Location: FF_X26_Y17_N17
\uart_module|u_TX|s_TRANSMITING_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|s_TRANSMITING_FLAG~q\);

-- Location: LCCOMB_X28_Y17_N28
\uart_module|u_TX|pixval_ctr[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[9]~32_combout\ = (\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & (!\uart_module|u_TX|r_PRESCALER\(8) & (\uart_module|u_TX|Equal0~1_combout\ & \uart_module|u_TX|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datac => \uart_module|u_TX|Equal0~1_combout\,
	datad => \uart_module|u_TX|Equal0~0_combout\,
	combout => \uart_module|u_TX|pixval_ctr[9]~32_combout\);

-- Location: FF_X29_Y17_N19
\uart_module|u_TX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~3_combout\,
	ena => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(2));

-- Location: LCCOMB_X29_Y17_N8
\uart_module|u_TX|r_INDEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~1_combout\ = (!\uart_module|u_TX|r_INDEX\(0) & (((!\uart_module|u_TX|r_INDEX\(1) & !\uart_module|u_TX|r_INDEX\(2))) # (!\uart_module|u_TX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(1),
	datab => \uart_module|u_TX|r_INDEX\(2),
	datac => \uart_module|u_TX|r_INDEX\(0),
	datad => \uart_module|u_TX|r_INDEX\(3),
	combout => \uart_module|u_TX|r_INDEX~1_combout\);

-- Location: FF_X29_Y17_N9
\uart_module|u_TX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~1_combout\,
	ena => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(0));

-- Location: LCCOMB_X29_Y17_N30
\uart_module|u_TX|r_INDEX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~2_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & (\uart_module|u_TX|r_INDEX\(0) $ (\uart_module|u_TX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_INDEX\(3),
	combout => \uart_module|u_TX|r_INDEX~2_combout\);

-- Location: FF_X29_Y17_N31
\uart_module|u_TX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~2_combout\,
	ena => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(1));

-- Location: LCCOMB_X29_Y17_N10
\uart_module|u_TX|r_INDEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~0_combout\ = (\uart_module|u_TX|r_INDEX\(1) & (\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_INDEX\(3) & \uart_module|u_TX|r_INDEX\(2)))) # (!\uart_module|u_TX|r_INDEX\(1) & (!\uart_module|u_TX|r_INDEX\(0) & 
-- (\uart_module|u_TX|r_INDEX\(3) & !\uart_module|u_TX|r_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(1),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(3),
	datad => \uart_module|u_TX|r_INDEX\(2),
	combout => \uart_module|u_TX|r_INDEX~0_combout\);

-- Location: FF_X29_Y17_N11
\uart_module|u_TX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~0_combout\,
	ena => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(3));

-- Location: LCCOMB_X29_Y17_N12
\uart_module|u_TX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan1~0_combout\ = ((!\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_INDEX\(1) & !\uart_module|u_TX|r_INDEX\(2)))) # (!\uart_module|u_TX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(3),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_INDEX\(2),
	combout => \uart_module|u_TX|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y15_N0
\uart_module|u_TX|pixval_ctr[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[0]~33_combout\ = \uart_module|u_TX|pixval_ctr\(0) $ (VCC)
-- \uart_module|u_TX|pixval_ctr[0]~34\ = CARRY(\uart_module|u_TX|pixval_ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datad => VCC,
	combout => \uart_module|u_TX|pixval_ctr[0]~33_combout\,
	cout => \uart_module|u_TX|pixval_ctr[0]~34\);

-- Location: LCCOMB_X29_Y17_N20
\uart_module|u_TX|pixel_transmit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixel_transmit~1_combout\ = (!\uart_module|u_TX|LessThan1~0_combout\ & \uart_module|u_TX|pixval_ctr[9]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|LessThan1~0_combout\,
	datad => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	combout => \uart_module|u_TX|pixel_transmit~1_combout\);

-- Location: FF_X30_Y15_N1
\uart_module|u_TX|pixval_ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[0]~33_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(0));

-- Location: LCCOMB_X30_Y15_N2
\uart_module|u_TX|pixval_ctr[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[1]~35_combout\ = (\uart_module|u_TX|pixval_ctr\(1) & (!\uart_module|u_TX|pixval_ctr[0]~34\)) # (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr[0]~34\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[1]~36\ = CARRY((!\uart_module|u_TX|pixval_ctr[0]~34\) # (!\uart_module|u_TX|pixval_ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(1),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[0]~34\,
	combout => \uart_module|u_TX|pixval_ctr[1]~35_combout\,
	cout => \uart_module|u_TX|pixval_ctr[1]~36\);

-- Location: FF_X30_Y15_N3
\uart_module|u_TX|pixval_ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[1]~35_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(1));

-- Location: LCCOMB_X30_Y15_N4
\uart_module|u_TX|pixval_ctr[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[2]~37_combout\ = (\uart_module|u_TX|pixval_ctr\(2) & (\uart_module|u_TX|pixval_ctr[1]~36\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(2) & (!\uart_module|u_TX|pixval_ctr[1]~36\ & VCC))
-- \uart_module|u_TX|pixval_ctr[2]~38\ = CARRY((\uart_module|u_TX|pixval_ctr\(2) & !\uart_module|u_TX|pixval_ctr[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(2),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[1]~36\,
	combout => \uart_module|u_TX|pixval_ctr[2]~37_combout\,
	cout => \uart_module|u_TX|pixval_ctr[2]~38\);

-- Location: FF_X30_Y15_N5
\uart_module|u_TX|pixval_ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[2]~37_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(2));

-- Location: LCCOMB_X30_Y15_N6
\uart_module|u_TX|pixval_ctr[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[3]~39_combout\ = (\uart_module|u_TX|pixval_ctr\(3) & (!\uart_module|u_TX|pixval_ctr[2]~38\)) # (!\uart_module|u_TX|pixval_ctr\(3) & ((\uart_module|u_TX|pixval_ctr[2]~38\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[3]~40\ = CARRY((!\uart_module|u_TX|pixval_ctr[2]~38\) # (!\uart_module|u_TX|pixval_ctr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(3),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[2]~38\,
	combout => \uart_module|u_TX|pixval_ctr[3]~39_combout\,
	cout => \uart_module|u_TX|pixval_ctr[3]~40\);

-- Location: FF_X30_Y15_N7
\uart_module|u_TX|pixval_ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[3]~39_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(3));

-- Location: LCCOMB_X30_Y15_N8
\uart_module|u_TX|pixval_ctr[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[4]~41_combout\ = (\uart_module|u_TX|pixval_ctr\(4) & (\uart_module|u_TX|pixval_ctr[3]~40\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(4) & (!\uart_module|u_TX|pixval_ctr[3]~40\ & VCC))
-- \uart_module|u_TX|pixval_ctr[4]~42\ = CARRY((\uart_module|u_TX|pixval_ctr\(4) & !\uart_module|u_TX|pixval_ctr[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(4),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[3]~40\,
	combout => \uart_module|u_TX|pixval_ctr[4]~41_combout\,
	cout => \uart_module|u_TX|pixval_ctr[4]~42\);

-- Location: FF_X30_Y15_N9
\uart_module|u_TX|pixval_ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[4]~41_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(4));

-- Location: LCCOMB_X30_Y15_N10
\uart_module|u_TX|pixval_ctr[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[5]~43_combout\ = (\uart_module|u_TX|pixval_ctr\(5) & (!\uart_module|u_TX|pixval_ctr[4]~42\)) # (!\uart_module|u_TX|pixval_ctr\(5) & ((\uart_module|u_TX|pixval_ctr[4]~42\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[5]~44\ = CARRY((!\uart_module|u_TX|pixval_ctr[4]~42\) # (!\uart_module|u_TX|pixval_ctr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(5),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[4]~42\,
	combout => \uart_module|u_TX|pixval_ctr[5]~43_combout\,
	cout => \uart_module|u_TX|pixval_ctr[5]~44\);

-- Location: FF_X30_Y15_N11
\uart_module|u_TX|pixval_ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[5]~43_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(5));

-- Location: LCCOMB_X30_Y15_N12
\uart_module|u_TX|pixval_ctr[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[6]~45_combout\ = (\uart_module|u_TX|pixval_ctr\(6) & (\uart_module|u_TX|pixval_ctr[5]~44\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(6) & (!\uart_module|u_TX|pixval_ctr[5]~44\ & VCC))
-- \uart_module|u_TX|pixval_ctr[6]~46\ = CARRY((\uart_module|u_TX|pixval_ctr\(6) & !\uart_module|u_TX|pixval_ctr[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(6),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[5]~44\,
	combout => \uart_module|u_TX|pixval_ctr[6]~45_combout\,
	cout => \uart_module|u_TX|pixval_ctr[6]~46\);

-- Location: FF_X30_Y15_N13
\uart_module|u_TX|pixval_ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[6]~45_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(6));

-- Location: LCCOMB_X30_Y15_N14
\uart_module|u_TX|pixval_ctr[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[7]~47_combout\ = (\uart_module|u_TX|pixval_ctr\(7) & (!\uart_module|u_TX|pixval_ctr[6]~46\)) # (!\uart_module|u_TX|pixval_ctr\(7) & ((\uart_module|u_TX|pixval_ctr[6]~46\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[7]~48\ = CARRY((!\uart_module|u_TX|pixval_ctr[6]~46\) # (!\uart_module|u_TX|pixval_ctr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(7),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[6]~46\,
	combout => \uart_module|u_TX|pixval_ctr[7]~47_combout\,
	cout => \uart_module|u_TX|pixval_ctr[7]~48\);

-- Location: FF_X30_Y15_N15
\uart_module|u_TX|pixval_ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[7]~47_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(7));

-- Location: LCCOMB_X30_Y15_N16
\uart_module|u_TX|pixval_ctr[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[8]~49_combout\ = (\uart_module|u_TX|pixval_ctr\(8) & (\uart_module|u_TX|pixval_ctr[7]~48\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(8) & (!\uart_module|u_TX|pixval_ctr[7]~48\ & VCC))
-- \uart_module|u_TX|pixval_ctr[8]~50\ = CARRY((\uart_module|u_TX|pixval_ctr\(8) & !\uart_module|u_TX|pixval_ctr[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(8),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[7]~48\,
	combout => \uart_module|u_TX|pixval_ctr[8]~49_combout\,
	cout => \uart_module|u_TX|pixval_ctr[8]~50\);

-- Location: FF_X30_Y15_N17
\uart_module|u_TX|pixval_ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[8]~49_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(8));

-- Location: LCCOMB_X30_Y15_N18
\uart_module|u_TX|pixval_ctr[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[9]~51_combout\ = (\uart_module|u_TX|pixval_ctr\(9) & (!\uart_module|u_TX|pixval_ctr[8]~50\)) # (!\uart_module|u_TX|pixval_ctr\(9) & ((\uart_module|u_TX|pixval_ctr[8]~50\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[9]~52\ = CARRY((!\uart_module|u_TX|pixval_ctr[8]~50\) # (!\uart_module|u_TX|pixval_ctr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(9),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[8]~50\,
	combout => \uart_module|u_TX|pixval_ctr[9]~51_combout\,
	cout => \uart_module|u_TX|pixval_ctr[9]~52\);

-- Location: FF_X30_Y15_N19
\uart_module|u_TX|pixval_ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[9]~51_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(9));

-- Location: LCCOMB_X30_Y15_N20
\uart_module|u_TX|pixval_ctr[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[10]~53_combout\ = (\uart_module|u_TX|pixval_ctr\(10) & (\uart_module|u_TX|pixval_ctr[9]~52\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(10) & (!\uart_module|u_TX|pixval_ctr[9]~52\ & VCC))
-- \uart_module|u_TX|pixval_ctr[10]~54\ = CARRY((\uart_module|u_TX|pixval_ctr\(10) & !\uart_module|u_TX|pixval_ctr[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(10),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[9]~52\,
	combout => \uart_module|u_TX|pixval_ctr[10]~53_combout\,
	cout => \uart_module|u_TX|pixval_ctr[10]~54\);

-- Location: FF_X30_Y15_N21
\uart_module|u_TX|pixval_ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[10]~53_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(10));

-- Location: LCCOMB_X30_Y15_N22
\uart_module|u_TX|pixval_ctr[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[11]~55_combout\ = (\uart_module|u_TX|pixval_ctr\(11) & (!\uart_module|u_TX|pixval_ctr[10]~54\)) # (!\uart_module|u_TX|pixval_ctr\(11) & ((\uart_module|u_TX|pixval_ctr[10]~54\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[11]~56\ = CARRY((!\uart_module|u_TX|pixval_ctr[10]~54\) # (!\uart_module|u_TX|pixval_ctr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(11),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[10]~54\,
	combout => \uart_module|u_TX|pixval_ctr[11]~55_combout\,
	cout => \uart_module|u_TX|pixval_ctr[11]~56\);

-- Location: FF_X30_Y15_N23
\uart_module|u_TX|pixval_ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[11]~55_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(11));

-- Location: LCCOMB_X30_Y15_N24
\uart_module|u_TX|pixval_ctr[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[12]~57_combout\ = (\uart_module|u_TX|pixval_ctr\(12) & (\uart_module|u_TX|pixval_ctr[11]~56\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(12) & (!\uart_module|u_TX|pixval_ctr[11]~56\ & VCC))
-- \uart_module|u_TX|pixval_ctr[12]~58\ = CARRY((\uart_module|u_TX|pixval_ctr\(12) & !\uart_module|u_TX|pixval_ctr[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(12),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[11]~56\,
	combout => \uart_module|u_TX|pixval_ctr[12]~57_combout\,
	cout => \uart_module|u_TX|pixval_ctr[12]~58\);

-- Location: FF_X30_Y15_N25
\uart_module|u_TX|pixval_ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[12]~57_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(12));

-- Location: LCCOMB_X30_Y15_N26
\uart_module|u_TX|pixval_ctr[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[13]~59_combout\ = (\uart_module|u_TX|pixval_ctr\(13) & (!\uart_module|u_TX|pixval_ctr[12]~58\)) # (!\uart_module|u_TX|pixval_ctr\(13) & ((\uart_module|u_TX|pixval_ctr[12]~58\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[13]~60\ = CARRY((!\uart_module|u_TX|pixval_ctr[12]~58\) # (!\uart_module|u_TX|pixval_ctr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(13),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[12]~58\,
	combout => \uart_module|u_TX|pixval_ctr[13]~59_combout\,
	cout => \uart_module|u_TX|pixval_ctr[13]~60\);

-- Location: FF_X30_Y15_N27
\uart_module|u_TX|pixval_ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[13]~59_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(13));

-- Location: LCCOMB_X30_Y15_N28
\uart_module|u_TX|pixval_ctr[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[14]~61_combout\ = (\uart_module|u_TX|pixval_ctr\(14) & (\uart_module|u_TX|pixval_ctr[13]~60\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(14) & (!\uart_module|u_TX|pixval_ctr[13]~60\ & VCC))
-- \uart_module|u_TX|pixval_ctr[14]~62\ = CARRY((\uart_module|u_TX|pixval_ctr\(14) & !\uart_module|u_TX|pixval_ctr[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(14),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[13]~60\,
	combout => \uart_module|u_TX|pixval_ctr[14]~61_combout\,
	cout => \uart_module|u_TX|pixval_ctr[14]~62\);

-- Location: FF_X30_Y15_N29
\uart_module|u_TX|pixval_ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[14]~61_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(14));

-- Location: LCCOMB_X30_Y15_N30
\uart_module|u_TX|pixval_ctr[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[15]~63_combout\ = (\uart_module|u_TX|pixval_ctr\(15) & (!\uart_module|u_TX|pixval_ctr[14]~62\)) # (!\uart_module|u_TX|pixval_ctr\(15) & ((\uart_module|u_TX|pixval_ctr[14]~62\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[15]~64\ = CARRY((!\uart_module|u_TX|pixval_ctr[14]~62\) # (!\uart_module|u_TX|pixval_ctr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(15),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[14]~62\,
	combout => \uart_module|u_TX|pixval_ctr[15]~63_combout\,
	cout => \uart_module|u_TX|pixval_ctr[15]~64\);

-- Location: FF_X30_Y15_N31
\uart_module|u_TX|pixval_ctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[15]~63_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(15));

-- Location: LCCOMB_X30_Y14_N0
\uart_module|u_TX|pixval_ctr[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[16]~65_combout\ = (\uart_module|u_TX|pixval_ctr\(16) & (\uart_module|u_TX|pixval_ctr[15]~64\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(16) & (!\uart_module|u_TX|pixval_ctr[15]~64\ & VCC))
-- \uart_module|u_TX|pixval_ctr[16]~66\ = CARRY((\uart_module|u_TX|pixval_ctr\(16) & !\uart_module|u_TX|pixval_ctr[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(16),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[15]~64\,
	combout => \uart_module|u_TX|pixval_ctr[16]~65_combout\,
	cout => \uart_module|u_TX|pixval_ctr[16]~66\);

-- Location: FF_X30_Y14_N1
\uart_module|u_TX|pixval_ctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[16]~65_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(16));

-- Location: LCCOMB_X30_Y14_N2
\uart_module|u_TX|pixval_ctr[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[17]~67_combout\ = (\uart_module|u_TX|pixval_ctr\(17) & (!\uart_module|u_TX|pixval_ctr[16]~66\)) # (!\uart_module|u_TX|pixval_ctr\(17) & ((\uart_module|u_TX|pixval_ctr[16]~66\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[17]~68\ = CARRY((!\uart_module|u_TX|pixval_ctr[16]~66\) # (!\uart_module|u_TX|pixval_ctr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(17),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[16]~66\,
	combout => \uart_module|u_TX|pixval_ctr[17]~67_combout\,
	cout => \uart_module|u_TX|pixval_ctr[17]~68\);

-- Location: FF_X30_Y14_N3
\uart_module|u_TX|pixval_ctr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[17]~67_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(17));

-- Location: LCCOMB_X30_Y14_N4
\uart_module|u_TX|pixval_ctr[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[18]~69_combout\ = (\uart_module|u_TX|pixval_ctr\(18) & (\uart_module|u_TX|pixval_ctr[17]~68\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(18) & (!\uart_module|u_TX|pixval_ctr[17]~68\ & VCC))
-- \uart_module|u_TX|pixval_ctr[18]~70\ = CARRY((\uart_module|u_TX|pixval_ctr\(18) & !\uart_module|u_TX|pixval_ctr[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(18),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[17]~68\,
	combout => \uart_module|u_TX|pixval_ctr[18]~69_combout\,
	cout => \uart_module|u_TX|pixval_ctr[18]~70\);

-- Location: FF_X30_Y14_N5
\uart_module|u_TX|pixval_ctr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[18]~69_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(18));

-- Location: LCCOMB_X30_Y14_N6
\uart_module|u_TX|pixval_ctr[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[19]~71_combout\ = (\uart_module|u_TX|pixval_ctr\(19) & (!\uart_module|u_TX|pixval_ctr[18]~70\)) # (!\uart_module|u_TX|pixval_ctr\(19) & ((\uart_module|u_TX|pixval_ctr[18]~70\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[19]~72\ = CARRY((!\uart_module|u_TX|pixval_ctr[18]~70\) # (!\uart_module|u_TX|pixval_ctr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(19),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[18]~70\,
	combout => \uart_module|u_TX|pixval_ctr[19]~71_combout\,
	cout => \uart_module|u_TX|pixval_ctr[19]~72\);

-- Location: FF_X30_Y14_N7
\uart_module|u_TX|pixval_ctr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[19]~71_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(19));

-- Location: LCCOMB_X30_Y14_N8
\uart_module|u_TX|pixval_ctr[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[20]~73_combout\ = (\uart_module|u_TX|pixval_ctr\(20) & (\uart_module|u_TX|pixval_ctr[19]~72\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(20) & (!\uart_module|u_TX|pixval_ctr[19]~72\ & VCC))
-- \uart_module|u_TX|pixval_ctr[20]~74\ = CARRY((\uart_module|u_TX|pixval_ctr\(20) & !\uart_module|u_TX|pixval_ctr[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(20),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[19]~72\,
	combout => \uart_module|u_TX|pixval_ctr[20]~73_combout\,
	cout => \uart_module|u_TX|pixval_ctr[20]~74\);

-- Location: FF_X30_Y14_N9
\uart_module|u_TX|pixval_ctr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[20]~73_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(20));

-- Location: LCCOMB_X30_Y14_N10
\uart_module|u_TX|pixval_ctr[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[21]~75_combout\ = (\uart_module|u_TX|pixval_ctr\(21) & (!\uart_module|u_TX|pixval_ctr[20]~74\)) # (!\uart_module|u_TX|pixval_ctr\(21) & ((\uart_module|u_TX|pixval_ctr[20]~74\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[21]~76\ = CARRY((!\uart_module|u_TX|pixval_ctr[20]~74\) # (!\uart_module|u_TX|pixval_ctr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(21),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[20]~74\,
	combout => \uart_module|u_TX|pixval_ctr[21]~75_combout\,
	cout => \uart_module|u_TX|pixval_ctr[21]~76\);

-- Location: FF_X30_Y14_N11
\uart_module|u_TX|pixval_ctr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[21]~75_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(21));

-- Location: LCCOMB_X30_Y14_N12
\uart_module|u_TX|pixval_ctr[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[22]~77_combout\ = (\uart_module|u_TX|pixval_ctr\(22) & (\uart_module|u_TX|pixval_ctr[21]~76\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(22) & (!\uart_module|u_TX|pixval_ctr[21]~76\ & VCC))
-- \uart_module|u_TX|pixval_ctr[22]~78\ = CARRY((\uart_module|u_TX|pixval_ctr\(22) & !\uart_module|u_TX|pixval_ctr[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(22),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[21]~76\,
	combout => \uart_module|u_TX|pixval_ctr[22]~77_combout\,
	cout => \uart_module|u_TX|pixval_ctr[22]~78\);

-- Location: FF_X30_Y14_N13
\uart_module|u_TX|pixval_ctr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[22]~77_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(22));

-- Location: LCCOMB_X30_Y14_N14
\uart_module|u_TX|pixval_ctr[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[23]~79_combout\ = (\uart_module|u_TX|pixval_ctr\(23) & (!\uart_module|u_TX|pixval_ctr[22]~78\)) # (!\uart_module|u_TX|pixval_ctr\(23) & ((\uart_module|u_TX|pixval_ctr[22]~78\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[23]~80\ = CARRY((!\uart_module|u_TX|pixval_ctr[22]~78\) # (!\uart_module|u_TX|pixval_ctr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(23),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[22]~78\,
	combout => \uart_module|u_TX|pixval_ctr[23]~79_combout\,
	cout => \uart_module|u_TX|pixval_ctr[23]~80\);

-- Location: FF_X30_Y14_N15
\uart_module|u_TX|pixval_ctr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[23]~79_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(23));

-- Location: LCCOMB_X30_Y14_N16
\uart_module|u_TX|pixval_ctr[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[24]~81_combout\ = (\uart_module|u_TX|pixval_ctr\(24) & (\uart_module|u_TX|pixval_ctr[23]~80\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(24) & (!\uart_module|u_TX|pixval_ctr[23]~80\ & VCC))
-- \uart_module|u_TX|pixval_ctr[24]~82\ = CARRY((\uart_module|u_TX|pixval_ctr\(24) & !\uart_module|u_TX|pixval_ctr[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(24),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[23]~80\,
	combout => \uart_module|u_TX|pixval_ctr[24]~81_combout\,
	cout => \uart_module|u_TX|pixval_ctr[24]~82\);

-- Location: FF_X30_Y14_N17
\uart_module|u_TX|pixval_ctr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[24]~81_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(24));

-- Location: LCCOMB_X30_Y14_N18
\uart_module|u_TX|pixval_ctr[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[25]~83_combout\ = (\uart_module|u_TX|pixval_ctr\(25) & (!\uart_module|u_TX|pixval_ctr[24]~82\)) # (!\uart_module|u_TX|pixval_ctr\(25) & ((\uart_module|u_TX|pixval_ctr[24]~82\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[25]~84\ = CARRY((!\uart_module|u_TX|pixval_ctr[24]~82\) # (!\uart_module|u_TX|pixval_ctr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(25),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[24]~82\,
	combout => \uart_module|u_TX|pixval_ctr[25]~83_combout\,
	cout => \uart_module|u_TX|pixval_ctr[25]~84\);

-- Location: FF_X30_Y14_N19
\uart_module|u_TX|pixval_ctr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[25]~83_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(25));

-- Location: LCCOMB_X30_Y14_N20
\uart_module|u_TX|pixval_ctr[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[26]~85_combout\ = (\uart_module|u_TX|pixval_ctr\(26) & (\uart_module|u_TX|pixval_ctr[25]~84\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(26) & (!\uart_module|u_TX|pixval_ctr[25]~84\ & VCC))
-- \uart_module|u_TX|pixval_ctr[26]~86\ = CARRY((\uart_module|u_TX|pixval_ctr\(26) & !\uart_module|u_TX|pixval_ctr[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(26),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[25]~84\,
	combout => \uart_module|u_TX|pixval_ctr[26]~85_combout\,
	cout => \uart_module|u_TX|pixval_ctr[26]~86\);

-- Location: FF_X30_Y14_N21
\uart_module|u_TX|pixval_ctr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[26]~85_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(26));

-- Location: LCCOMB_X30_Y14_N22
\uart_module|u_TX|pixval_ctr[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[27]~87_combout\ = (\uart_module|u_TX|pixval_ctr\(27) & (!\uart_module|u_TX|pixval_ctr[26]~86\)) # (!\uart_module|u_TX|pixval_ctr\(27) & ((\uart_module|u_TX|pixval_ctr[26]~86\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[27]~88\ = CARRY((!\uart_module|u_TX|pixval_ctr[26]~86\) # (!\uart_module|u_TX|pixval_ctr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(27),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[26]~86\,
	combout => \uart_module|u_TX|pixval_ctr[27]~87_combout\,
	cout => \uart_module|u_TX|pixval_ctr[27]~88\);

-- Location: FF_X30_Y14_N23
\uart_module|u_TX|pixval_ctr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[27]~87_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(27));

-- Location: LCCOMB_X30_Y14_N24
\uart_module|u_TX|pixval_ctr[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[28]~89_combout\ = (\uart_module|u_TX|pixval_ctr\(28) & (\uart_module|u_TX|pixval_ctr[27]~88\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(28) & (!\uart_module|u_TX|pixval_ctr[27]~88\ & VCC))
-- \uart_module|u_TX|pixval_ctr[28]~90\ = CARRY((\uart_module|u_TX|pixval_ctr\(28) & !\uart_module|u_TX|pixval_ctr[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(28),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[27]~88\,
	combout => \uart_module|u_TX|pixval_ctr[28]~89_combout\,
	cout => \uart_module|u_TX|pixval_ctr[28]~90\);

-- Location: FF_X30_Y14_N25
\uart_module|u_TX|pixval_ctr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[28]~89_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(28));

-- Location: LCCOMB_X30_Y14_N26
\uart_module|u_TX|pixval_ctr[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[29]~91_combout\ = (\uart_module|u_TX|pixval_ctr\(29) & (!\uart_module|u_TX|pixval_ctr[28]~90\)) # (!\uart_module|u_TX|pixval_ctr\(29) & ((\uart_module|u_TX|pixval_ctr[28]~90\) # (GND)))
-- \uart_module|u_TX|pixval_ctr[29]~92\ = CARRY((!\uart_module|u_TX|pixval_ctr[28]~90\) # (!\uart_module|u_TX|pixval_ctr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(29),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[28]~90\,
	combout => \uart_module|u_TX|pixval_ctr[29]~91_combout\,
	cout => \uart_module|u_TX|pixval_ctr[29]~92\);

-- Location: FF_X30_Y14_N27
\uart_module|u_TX|pixval_ctr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[29]~91_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(29));

-- Location: LCCOMB_X30_Y14_N28
\uart_module|u_TX|pixval_ctr[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[30]~93_combout\ = (\uart_module|u_TX|pixval_ctr\(30) & (\uart_module|u_TX|pixval_ctr[29]~92\ $ (GND))) # (!\uart_module|u_TX|pixval_ctr\(30) & (!\uart_module|u_TX|pixval_ctr[29]~92\ & VCC))
-- \uart_module|u_TX|pixval_ctr[30]~94\ = CARRY((\uart_module|u_TX|pixval_ctr\(30) & !\uart_module|u_TX|pixval_ctr[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(30),
	datad => VCC,
	cin => \uart_module|u_TX|pixval_ctr[29]~92\,
	combout => \uart_module|u_TX|pixval_ctr[30]~93_combout\,
	cout => \uart_module|u_TX|pixval_ctr[30]~94\);

-- Location: FF_X30_Y14_N29
\uart_module|u_TX|pixval_ctr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[30]~93_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(30));

-- Location: LCCOMB_X30_Y14_N30
\uart_module|u_TX|pixval_ctr[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixval_ctr[31]~95_combout\ = \uart_module|u_TX|pixval_ctr\(31) $ (\uart_module|u_TX|pixval_ctr[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(31),
	cin => \uart_module|u_TX|pixval_ctr[30]~94\,
	combout => \uart_module|u_TX|pixval_ctr[31]~95_combout\);

-- Location: FF_X30_Y14_N31
\uart_module|u_TX|pixval_ctr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixval_ctr[31]~95_combout\,
	sclr => \uart_module|u_TX|LessThan2~9_combout\,
	ena => \uart_module|u_TX|pixel_transmit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixval_ctr\(31));

-- Location: LCCOMB_X29_Y14_N12
\uart_module|u_TX|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~5_combout\ = (!\uart_module|u_TX|pixval_ctr\(19) & (!\uart_module|u_TX|pixval_ctr\(20) & (!\uart_module|u_TX|pixval_ctr\(17) & !\uart_module|u_TX|pixval_ctr\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(19),
	datab => \uart_module|u_TX|pixval_ctr\(20),
	datac => \uart_module|u_TX|pixval_ctr\(17),
	datad => \uart_module|u_TX|pixval_ctr\(18),
	combout => \uart_module|u_TX|LessThan2~5_combout\);

-- Location: LCCOMB_X29_Y14_N30
\uart_module|u_TX|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~6_combout\ = (!\uart_module|u_TX|pixval_ctr\(23) & (!\uart_module|u_TX|pixval_ctr\(21) & (!\uart_module|u_TX|pixval_ctr\(22) & !\uart_module|u_TX|pixval_ctr\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(23),
	datab => \uart_module|u_TX|pixval_ctr\(21),
	datac => \uart_module|u_TX|pixval_ctr\(22),
	datad => \uart_module|u_TX|pixval_ctr\(24),
	combout => \uart_module|u_TX|LessThan2~6_combout\);

-- Location: LCCOMB_X29_Y14_N16
\uart_module|u_TX|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~7_combout\ = (!\uart_module|u_TX|pixval_ctr\(27) & (!\uart_module|u_TX|pixval_ctr\(28) & (!\uart_module|u_TX|pixval_ctr\(25) & !\uart_module|u_TX|pixval_ctr\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(27),
	datab => \uart_module|u_TX|pixval_ctr\(28),
	datac => \uart_module|u_TX|pixval_ctr\(25),
	datad => \uart_module|u_TX|pixval_ctr\(26),
	combout => \uart_module|u_TX|LessThan2~7_combout\);

-- Location: LCCOMB_X29_Y14_N14
\uart_module|u_TX|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~8_combout\ = (\uart_module|u_TX|LessThan2~5_combout\ & (!\uart_module|u_TX|pixval_ctr\(30) & (\uart_module|u_TX|LessThan2~6_combout\ & \uart_module|u_TX|LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|LessThan2~5_combout\,
	datab => \uart_module|u_TX|pixval_ctr\(30),
	datac => \uart_module|u_TX|LessThan2~6_combout\,
	datad => \uart_module|u_TX|LessThan2~7_combout\,
	combout => \uart_module|u_TX|LessThan2~8_combout\);

-- Location: LCCOMB_X29_Y14_N26
\uart_module|u_TX|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & (!\uart_module|u_TX|pixval_ctr\(2) & (!\uart_module|u_TX|pixval_ctr\(4) & !\uart_module|u_TX|pixval_ctr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(1),
	datab => \uart_module|u_TX|pixval_ctr\(2),
	datac => \uart_module|u_TX|pixval_ctr\(4),
	datad => \uart_module|u_TX|pixval_ctr\(3),
	combout => \uart_module|u_TX|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y14_N28
\uart_module|u_TX|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~3_combout\ = (!\uart_module|u_TX|pixval_ctr\(16) & (!\uart_module|u_TX|pixval_ctr\(13) & (!\uart_module|u_TX|pixval_ctr\(15) & !\uart_module|u_TX|pixval_ctr\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(16),
	datab => \uart_module|u_TX|pixval_ctr\(13),
	datac => \uart_module|u_TX|pixval_ctr\(15),
	datad => \uart_module|u_TX|pixval_ctr\(14),
	combout => \uart_module|u_TX|LessThan2~3_combout\);

-- Location: LCCOMB_X29_Y14_N22
\uart_module|u_TX|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~2_combout\ = (!\uart_module|u_TX|pixval_ctr\(9) & (!\uart_module|u_TX|pixval_ctr\(12) & (!\uart_module|u_TX|pixval_ctr\(11) & !\uart_module|u_TX|pixval_ctr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(9),
	datab => \uart_module|u_TX|pixval_ctr\(12),
	datac => \uart_module|u_TX|pixval_ctr\(11),
	datad => \uart_module|u_TX|pixval_ctr\(10),
	combout => \uart_module|u_TX|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y14_N24
\uart_module|u_TX|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~1_combout\ = (!\uart_module|u_TX|pixval_ctr\(6) & (!\uart_module|u_TX|pixval_ctr\(8) & (!\uart_module|u_TX|pixval_ctr\(5) & !\uart_module|u_TX|pixval_ctr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(6),
	datab => \uart_module|u_TX|pixval_ctr\(8),
	datac => \uart_module|u_TX|pixval_ctr\(5),
	datad => \uart_module|u_TX|pixval_ctr\(7),
	combout => \uart_module|u_TX|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y14_N10
\uart_module|u_TX|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~4_combout\ = (\uart_module|u_TX|LessThan2~0_combout\ & (\uart_module|u_TX|LessThan2~3_combout\ & (\uart_module|u_TX|LessThan2~2_combout\ & \uart_module|u_TX|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|LessThan2~0_combout\,
	datab => \uart_module|u_TX|LessThan2~3_combout\,
	datac => \uart_module|u_TX|LessThan2~2_combout\,
	datad => \uart_module|u_TX|LessThan2~1_combout\,
	combout => \uart_module|u_TX|LessThan2~4_combout\);

-- Location: LCCOMB_X29_Y14_N0
\uart_module|u_TX|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan2~9_combout\ = (!\uart_module|u_TX|pixval_ctr\(31) & ((\uart_module|u_TX|pixval_ctr\(29)) # ((!\uart_module|u_TX|LessThan2~4_combout\) # (!\uart_module|u_TX|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(29),
	datab => \uart_module|u_TX|pixval_ctr\(31),
	datac => \uart_module|u_TX|LessThan2~8_combout\,
	datad => \uart_module|u_TX|LessThan2~4_combout\,
	combout => \uart_module|u_TX|LessThan2~9_combout\);

-- Location: LCCOMB_X29_Y14_N20
\uart_module|u_TX|pixel_transmit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|pixel_transmit~0_combout\ = (\uart_module|u_TX|LessThan1~0_combout\ & (((\uart_module|u_TX|pixel_transmit~q\)))) # (!\uart_module|u_TX|LessThan1~0_combout\ & ((\uart_module|u_TX|pixval_ctr[9]~32_combout\ & 
-- ((\uart_module|u_TX|LessThan2~9_combout\))) # (!\uart_module|u_TX|pixval_ctr[9]~32_combout\ & (\uart_module|u_TX|pixel_transmit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|LessThan1~0_combout\,
	datab => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	datac => \uart_module|u_TX|pixel_transmit~q\,
	datad => \uart_module|u_TX|LessThan2~9_combout\,
	combout => \uart_module|u_TX|pixel_transmit~0_combout\);

-- Location: FF_X29_Y14_N21
\uart_module|u_TX|pixel_transmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|pixel_transmit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|pixel_transmit~q\);

-- Location: LCCOMB_X28_Y13_N22
\uart_module|u_Control|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_Control|Selector1~0_combout\ = (\uart_module|u_Control|current_state.RX_EN~q\ & (((\uart_module|u_Control|current_state.TX_EN~q\ & !\uart_module|u_TX|pixel_transmit~q\)))) # (!\uart_module|u_Control|current_state.RX_EN~q\ & 
-- ((\uart_module|u_RX|pixel_receive~q\) # ((\uart_module|u_Control|current_state.TX_EN~q\ & !\uart_module|u_TX|pixel_transmit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_Control|current_state.RX_EN~q\,
	datab => \uart_module|u_RX|pixel_receive~q\,
	datac => \uart_module|u_Control|current_state.TX_EN~q\,
	datad => \uart_module|u_TX|pixel_transmit~q\,
	combout => \uart_module|u_Control|Selector1~0_combout\);

-- Location: FF_X28_Y13_N23
\uart_module|u_Control|current_state.TX_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_Control|current_state.TX_EN~q\);

-- Location: LCCOMB_X28_Y13_N30
\uart_module|led2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|led2~feeder_combout\ = \uart_module|u_Control|current_state.TX_EN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_Control|current_state.TX_EN~q\,
	combout => \uart_module|led2~feeder_combout\);

-- Location: FF_X28_Y13_N31
\uart_module|led2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|led2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|led2~q\);

-- Location: LCCOMB_X28_Y13_N20
\uart_module|led3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|led3~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_module|led3~feeder_combout\);

-- Location: LCCOMB_X28_Y13_N4
\uart_module|led4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|led4~0_combout\ = (!\uart_module|u_Control|current_state.TX_EN~q\ & \uart_module|u_Control|current_state.RX_EN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_Control|current_state.TX_EN~q\,
	datad => \uart_module|u_Control|current_state.RX_EN~q\,
	combout => \uart_module|led4~0_combout\);

-- Location: FF_X28_Y13_N21
\uart_module|led3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|led3~feeder_combout\,
	ena => \uart_module|led4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|led3~q\);

-- Location: LCCOMB_X28_Y13_N10
\uart_module|led4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|led4~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_module|led4~feeder_combout\);

-- Location: FF_X28_Y13_N11
\uart_module|led4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|led4~feeder_combout\,
	ena => \uart_module|led4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|led4~q\);

-- Location: LCCOMB_X28_Y16_N24
\uart_module|u_RX|rgb[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][5]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(6),
	combout => \uart_module|u_RX|rgb[2][5]~feeder_combout\);

-- Location: LCCOMB_X28_Y16_N0
\uart_module|u_RX|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~2_combout\ = (\uart_module|u_RX|rgb_elcount\(1) & (!\uart_module|u_RX|rgb_elcount\(0) & \uart_module|u_RX|pixel_receive~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(1),
	datab => \uart_module|u_RX|rgb_elcount\(0),
	datad => \uart_module|u_RX|pixel_receive~1_combout\,
	combout => \uart_module|u_RX|Decoder1~2_combout\);

-- Location: FF_X28_Y16_N25
\uart_module|u_RX|rgb[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][5]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][5]~q\);

-- Location: LCCOMB_X29_Y16_N30
\uart_module|u_RX|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~1_combout\ = (\uart_module|u_RX|rgb_elcount\(0) & (!\uart_module|u_RX|rgb_elcount\(1) & \uart_module|u_RX|pixel_receive~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(0),
	datac => \uart_module|u_RX|rgb_elcount\(1),
	datad => \uart_module|u_RX|pixel_receive~1_combout\,
	combout => \uart_module|u_RX|Decoder1~1_combout\);

-- Location: FF_X30_Y16_N17
\uart_module|u_RX|rgb[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(6),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][5]~q\);

-- Location: LCCOMB_X30_Y16_N16
\uart_module|u_TX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux2~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[1][5]~q\))) # (!\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(0),
	datab => \uart_module|u_RX|rgb[0][5]~q\,
	datac => \uart_module|u_RX|rgb[1][5]~q\,
	datad => \uart_module|u_TX|pixval_ctr\(1),
	combout => \uart_module|u_TX|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y15_N14
\uart_module|u_TX|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux2~1_combout\ = (!\uart_module|u_TX|Mux2~0_combout\ & ((!\uart_module|u_TX|pixval_ctr\(1)) # (!\uart_module|u_RX|rgb[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[2][5]~q\,
	datac => \uart_module|u_TX|pixval_ctr\(1),
	datad => \uart_module|u_TX|Mux2~0_combout\,
	combout => \uart_module|u_TX|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y15_N22
\uart_module|u_TX|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|process_0~0_combout\ = (\uart_module|s_TX_START~q\ & !\uart_module|u_TX|s_TRANSMITING_FLAG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_TX_START~q\,
	datad => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	combout => \uart_module|u_TX|process_0~0_combout\);

-- Location: FF_X29_Y15_N15
\uart_module|u_TX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux2~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(6));

-- Location: FF_X28_Y16_N23
\uart_module|u_RX|rgb[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(7),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][6]~q\);

-- Location: FF_X30_Y16_N11
\uart_module|u_RX|rgb[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(7),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][6]~q\);

-- Location: LCCOMB_X30_Y16_N10
\uart_module|u_TX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux1~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[1][6]~q\))) # (!\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][6]~q\,
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][6]~q\,
	datad => \uart_module|u_TX|pixval_ctr\(1),
	combout => \uart_module|u_TX|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y15_N26
\uart_module|u_TX|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux1~1_combout\ = (!\uart_module|u_TX|Mux1~0_combout\ & ((!\uart_module|u_RX|rgb[2][6]~q\) # (!\uart_module|u_TX|pixval_ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(1),
	datac => \uart_module|u_RX|rgb[2][6]~q\,
	datad => \uart_module|u_TX|Mux1~0_combout\,
	combout => \uart_module|u_TX|Mux1~1_combout\);

-- Location: FF_X29_Y15_N27
\uart_module|u_TX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux1~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(7));

-- Location: LCCOMB_X28_Y16_N30
\uart_module|u_RX|rgb[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][4]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(5),
	combout => \uart_module|u_RX|rgb[2][4]~feeder_combout\);

-- Location: FF_X28_Y16_N31
\uart_module|u_RX|rgb[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][4]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][4]~q\);

-- Location: FF_X30_Y16_N19
\uart_module|u_RX|rgb[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(5),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][4]~q\);

-- Location: LCCOMB_X30_Y16_N18
\uart_module|u_TX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux3~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[1][4]~q\))) # (!\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][4]~q\,
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][4]~q\,
	datad => \uart_module|u_TX|pixval_ctr\(1),
	combout => \uart_module|u_TX|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y17_N26
\uart_module|u_TX|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux3~1_combout\ = (!\uart_module|u_TX|Mux3~0_combout\ & ((!\uart_module|u_RX|rgb[2][4]~q\) # (!\uart_module|u_TX|pixval_ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(1),
	datac => \uart_module|u_RX|rgb[2][4]~q\,
	datad => \uart_module|u_TX|Mux3~0_combout\,
	combout => \uart_module|u_TX|Mux3~1_combout\);

-- Location: FF_X29_Y17_N27
\uart_module|u_TX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux3~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(5));

-- Location: LCCOMB_X28_Y16_N28
\uart_module|u_RX|rgb[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][3]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|rgb[2][3]~feeder_combout\);

-- Location: FF_X28_Y16_N29
\uart_module|u_RX|rgb[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][3]~q\);

-- Location: FF_X28_Y15_N25
\uart_module|u_RX|rgb[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(4),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][3]~q\);

-- Location: LCCOMB_X28_Y15_N24
\uart_module|u_TX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux4~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[1][3]~q\)) # (!\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(1),
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][3]~q\,
	datad => \uart_module|u_RX|rgb[0][3]~q\,
	combout => \uart_module|u_TX|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y15_N16
\uart_module|u_TX|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux4~1_combout\ = (!\uart_module|u_TX|Mux4~0_combout\ & ((!\uart_module|u_TX|pixval_ctr\(1)) # (!\uart_module|u_RX|rgb[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[2][3]~q\,
	datac => \uart_module|u_TX|pixval_ctr\(1),
	datad => \uart_module|u_TX|Mux4~0_combout\,
	combout => \uart_module|u_TX|Mux4~1_combout\);

-- Location: FF_X29_Y15_N17
\uart_module|u_TX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux4~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X29_Y17_N16
\uart_module|u_TX|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~4_combout\ = (\uart_module|u_TX|r_INDEX\(1) & (\uart_module|u_TX|r_INDEX\(0))) # (!\uart_module|u_TX|r_INDEX\(1) & ((\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_DATA_BUFFER\(5))) # (!\uart_module|u_TX|r_INDEX\(0) & 
-- ((!\uart_module|u_TX|r_DATA_BUFFER\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(1),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_DATA_BUFFER\(5),
	datad => \uart_module|u_TX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_TX|Mux8~4_combout\);

-- Location: LCCOMB_X29_Y17_N22
\uart_module|u_TX|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~5_combout\ = (\uart_module|u_TX|r_INDEX\(1) & ((\uart_module|u_TX|Mux8~4_combout\ & ((!\uart_module|u_TX|r_DATA_BUFFER\(7)))) # (!\uart_module|u_TX|Mux8~4_combout\ & (!\uart_module|u_TX|r_DATA_BUFFER\(6))))) # 
-- (!\uart_module|u_TX|r_INDEX\(1) & (((\uart_module|u_TX|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(6),
	datab => \uart_module|u_TX|r_DATA_BUFFER\(7),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|Mux8~4_combout\,
	combout => \uart_module|u_TX|Mux8~5_combout\);

-- Location: FF_X28_Y16_N1
\uart_module|u_RX|rgb[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(8),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][7]~q\);

-- Location: FF_X28_Y15_N15
\uart_module|u_RX|rgb[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(8),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][7]~q\);

-- Location: LCCOMB_X28_Y15_N14
\uart_module|u_TX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[1][7]~q\)) # (!\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|pixval_ctr\(1),
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][7]~q\,
	datad => \uart_module|u_RX|rgb[0][7]~q\,
	combout => \uart_module|u_TX|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y15_N12
\uart_module|u_TX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~1_combout\ = (!\uart_module|u_TX|Mux0~0_combout\ & ((!\uart_module|u_TX|pixval_ctr\(1)) # (!\uart_module|u_RX|rgb[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[2][7]~q\,
	datac => \uart_module|u_TX|pixval_ctr\(1),
	datad => \uart_module|u_TX|Mux0~0_combout\,
	combout => \uart_module|u_TX|Mux0~1_combout\);

-- Location: FF_X29_Y15_N13
\uart_module|u_TX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux0~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(8));

-- Location: LCCOMB_X29_Y17_N4
\uart_module|u_TX|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~0_combout\ = (\uart_module|u_TX|r_INDEX\(3) & (!\uart_module|u_TX|r_INDEX\(1) & ((\uart_module|u_TX|r_INDEX\(0)) # (!\uart_module|u_TX|r_DATA_BUFFER\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(3),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_DATA_BUFFER\(8),
	combout => \uart_module|u_TX|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y16_N10
\uart_module|u_RX|rgb[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][2]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(3),
	combout => \uart_module|u_RX|rgb[2][2]~feeder_combout\);

-- Location: FF_X28_Y16_N11
\uart_module|u_RX|rgb[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][2]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][2]~q\);

-- Location: FF_X30_Y16_N15
\uart_module|u_RX|rgb[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(3),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][2]~q\);

-- Location: LCCOMB_X30_Y16_N14
\uart_module|u_TX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux5~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[1][2]~q\))) # (!\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][2]~q\,
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][2]~q\,
	datad => \uart_module|u_TX|pixval_ctr\(1),
	combout => \uart_module|u_TX|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y15_N6
\uart_module|u_TX|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux5~1_combout\ = (!\uart_module|u_TX|Mux5~0_combout\ & ((!\uart_module|u_RX|rgb[2][2]~q\) # (!\uart_module|u_TX|pixval_ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(1),
	datac => \uart_module|u_RX|rgb[2][2]~q\,
	datad => \uart_module|u_TX|Mux5~0_combout\,
	combout => \uart_module|u_TX|Mux5~1_combout\);

-- Location: FF_X29_Y15_N7
\uart_module|u_TX|r_DATA_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux5~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(3));

-- Location: LCCOMB_X28_Y16_N2
\uart_module|u_RX|rgb[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][1]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(2),
	combout => \uart_module|u_RX|rgb[2][1]~feeder_combout\);

-- Location: FF_X28_Y16_N3
\uart_module|u_RX|rgb[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][1]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][1]~q\);

-- Location: FF_X28_Y15_N9
\uart_module|u_RX|rgb[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(2),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][1]~q\);

-- Location: LCCOMB_X28_Y15_N8
\uart_module|u_TX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux6~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[1][1]~q\))) # (!\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][1]~q\,
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][1]~q\,
	datad => \uart_module|u_TX|pixval_ctr\(1),
	combout => \uart_module|u_TX|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y15_N18
\uart_module|u_TX|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux6~1_combout\ = (!\uart_module|u_TX|Mux6~0_combout\ & ((!\uart_module|u_RX|rgb[2][1]~q\) # (!\uart_module|u_TX|pixval_ctr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|pixval_ctr\(1),
	datac => \uart_module|u_RX|rgb[2][1]~q\,
	datad => \uart_module|u_TX|Mux6~0_combout\,
	combout => \uart_module|u_TX|Mux6~1_combout\);

-- Location: FF_X29_Y15_N19
\uart_module|u_TX|r_DATA_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux6~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(2));

-- Location: LCCOMB_X29_Y15_N10
\uart_module|u_TX|r_DATA_BUFFER[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_DATA_BUFFER[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_module|u_TX|r_DATA_BUFFER[0]~feeder_combout\);

-- Location: FF_X29_Y15_N11
\uart_module|u_TX|r_DATA_BUFFER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_DATA_BUFFER[0]~feeder_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(0));

-- Location: LCCOMB_X28_Y16_N20
\uart_module|u_RX|rgb[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][0]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|rgb[2][0]~feeder_combout\);

-- Location: FF_X28_Y16_N21
\uart_module|u_RX|rgb[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][0]~q\);

-- Location: FF_X28_Y15_N11
\uart_module|u_RX|rgb[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(1),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][0]~q\);

-- Location: LCCOMB_X28_Y15_N10
\uart_module|u_TX|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux7~0_combout\ = (!\uart_module|u_TX|pixval_ctr\(1) & ((\uart_module|u_TX|pixval_ctr\(0) & ((\uart_module|u_RX|rgb[1][0]~q\))) # (!\uart_module|u_TX|pixval_ctr\(0) & (\uart_module|u_RX|rgb[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb[0][0]~q\,
	datab => \uart_module|u_TX|pixval_ctr\(0),
	datac => \uart_module|u_RX|rgb[1][0]~q\,
	datad => \uart_module|u_TX|pixval_ctr\(1),
	combout => \uart_module|u_TX|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y15_N28
\uart_module|u_TX|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux7~1_combout\ = (!\uart_module|u_TX|Mux7~0_combout\ & ((!\uart_module|u_TX|pixval_ctr\(1)) # (!\uart_module|u_RX|rgb[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb[2][0]~q\,
	datac => \uart_module|u_TX|pixval_ctr\(1),
	datad => \uart_module|u_TX|Mux7~0_combout\,
	combout => \uart_module|u_TX|Mux7~1_combout\);

-- Location: FF_X29_Y15_N29
\uart_module|u_TX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux7~1_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X29_Y15_N20
\uart_module|u_TX|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~1_combout\ = (\uart_module|u_TX|r_INDEX\(1) & (((\uart_module|u_TX|r_INDEX\(0))))) # (!\uart_module|u_TX|r_INDEX\(1) & ((\uart_module|u_TX|r_INDEX\(0) & ((!\uart_module|u_TX|r_DATA_BUFFER\(1)))) # (!\uart_module|u_TX|r_INDEX\(0) & 
-- (!\uart_module|u_TX|r_DATA_BUFFER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(0),
	datab => \uart_module|u_TX|r_DATA_BUFFER\(1),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_INDEX\(0),
	combout => \uart_module|u_TX|Mux8~1_combout\);

-- Location: LCCOMB_X29_Y15_N4
\uart_module|u_TX|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~2_combout\ = (\uart_module|u_TX|r_INDEX\(1) & ((\uart_module|u_TX|Mux8~1_combout\ & (!\uart_module|u_TX|r_DATA_BUFFER\(3))) # (!\uart_module|u_TX|Mux8~1_combout\ & ((!\uart_module|u_TX|r_DATA_BUFFER\(2)))))) # 
-- (!\uart_module|u_TX|r_INDEX\(1) & (((\uart_module|u_TX|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(3),
	datab => \uart_module|u_TX|r_DATA_BUFFER\(2),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|Mux8~1_combout\,
	combout => \uart_module|u_TX|Mux8~2_combout\);

-- Location: LCCOMB_X29_Y17_N24
\uart_module|u_TX|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~3_combout\ = (!\uart_module|u_TX|r_INDEX\(2) & ((\uart_module|u_TX|Mux8~0_combout\) # ((!\uart_module|u_TX|r_INDEX\(3) & \uart_module|u_TX|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(3),
	datab => \uart_module|u_TX|r_INDEX\(2),
	datac => \uart_module|u_TX|Mux8~0_combout\,
	datad => \uart_module|u_TX|Mux8~2_combout\,
	combout => \uart_module|u_TX|Mux8~3_combout\);

-- Location: LCCOMB_X29_Y17_N28
\uart_module|u_TX|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux8~6_combout\ = (!\uart_module|u_TX|Mux8~3_combout\ & ((\uart_module|u_TX|r_INDEX\(3)) # ((!\uart_module|u_TX|Mux8~5_combout\) # (!\uart_module|u_TX|r_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(3),
	datab => \uart_module|u_TX|r_INDEX\(2),
	datac => \uart_module|u_TX|Mux8~5_combout\,
	datad => \uart_module|u_TX|Mux8~3_combout\,
	combout => \uart_module|u_TX|Mux8~6_combout\);

-- Location: FF_X29_Y17_N29
\uart_module|u_TX|o_TX_LINE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux8~6_combout\,
	ena => \uart_module|u_TX|pixval_ctr[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|o_TX_LINE~q\);

-- Location: IOIBUF_X0_Y23_N8
\i_btn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn1,
	o => \i_btn1~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\i_btn2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn2,
	o => \i_btn2~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\i_btn3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn3,
	o => \i_btn3~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\i_btn4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn4,
	o => \i_btn4~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\i_IR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IR,
	o => \i_IR~input_o\);

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_sevseg(0) <= \sevseg[0]~output_o\;

ww_sevseg(1) <= \sevseg[1]~output_o\;

ww_sevseg(2) <= \sevseg[2]~output_o\;

ww_sevseg(3) <= \sevseg[3]~output_o\;

ww_sevseg(4) <= \sevseg[4]~output_o\;

ww_sevseg(5) <= \sevseg[5]~output_o\;

ww_sevseg(6) <= \sevseg[6]~output_o\;

ww_o_led1 <= \o_led1~output_o\;

ww_o_led2 <= \o_led2~output_o\;

ww_o_led3 <= \o_led3~output_o\;

ww_o_led4 <= \o_led4~output_o\;

ww_o_r0 <= \o_r0~output_o\;

ww_o_r1 <= \o_r1~output_o\;

ww_o_r2 <= \o_r2~output_o\;

ww_o_r3 <= \o_r3~output_o\;

ww_o_r4 <= \o_r4~output_o\;

ww_o_r5 <= \o_r5~output_o\;

ww_o_r6 <= \o_r6~output_o\;

ww_o_r7 <= \o_r7~output_o\;

ww_o_g0 <= \o_g0~output_o\;

ww_o_g1 <= \o_g1~output_o\;

ww_o_g2 <= \o_g2~output_o\;

ww_o_g3 <= \o_g3~output_o\;

ww_o_g4 <= \o_g4~output_o\;

ww_o_g5 <= \o_g5~output_o\;

ww_o_g6 <= \o_g6~output_o\;

ww_o_g7 <= \o_g7~output_o\;

ww_o_b0 <= \o_b0~output_o\;

ww_o_b1 <= \o_b1~output_o\;

ww_o_b2 <= \o_b2~output_o\;

ww_o_b3 <= \o_b3~output_o\;

ww_o_b4 <= \o_b4~output_o\;

ww_o_b5 <= \o_b5~output_o\;

ww_o_b6 <= \o_b6~output_o\;

ww_o_b7 <= \o_b7~output_o\;

ww_o_vga_hs <= \o_vga_hs~output_o\;

ww_o_vga_vs <= \o_vga_vs~output_o\;

ww_o_buzz <= \o_buzz~output_o\;

ww_o_Tx <= \o_Tx~output_o\;
END structure;


