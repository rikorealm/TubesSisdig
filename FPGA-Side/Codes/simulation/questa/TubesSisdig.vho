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

-- DATE "01/10/2025 10:41:14"

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
-- o_r0	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r1	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r2	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r3	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r4	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r5	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r6	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r7	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g0	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g1	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g2	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g3	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g4	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g5	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g6	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g7	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b0	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b1	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b2	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b3	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b4	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b5	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b6	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b7	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clockmodifier_module|Equal0~8_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~9_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~15\ : std_logic;
SIGNAL \clockmodifier_module|Add0~16_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~2_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~17\ : std_logic;
SIGNAL \clockmodifier_module|Add0~18_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~19\ : std_logic;
SIGNAL \clockmodifier_module|Add0~20_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~21\ : std_logic;
SIGNAL \clockmodifier_module|Add0~22_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~6_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~23\ : std_logic;
SIGNAL \clockmodifier_module|Add0~24_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~1_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~25\ : std_logic;
SIGNAL \clockmodifier_module|Add0~26_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~27\ : std_logic;
SIGNAL \clockmodifier_module|Add0~28_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~29\ : std_logic;
SIGNAL \clockmodifier_module|Add0~30_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~5_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~7_combout\ : std_logic;
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
SIGNAL \clockmodifier_module|Equal0~2_combout\ : std_logic;
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
SIGNAL \clockmodifier_module|Equal0~3_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~4_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~10_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~feeder_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~q\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~clkctrl_outclk\ : std_logic;
SIGNAL \sevs_module|Add0~0_combout\ : std_logic;
SIGNAL \sevs_module|Add0~3\ : std_logic;
SIGNAL \sevs_module|Add0~4_combout\ : std_logic;
SIGNAL \sevs_module|Add0~90_combout\ : std_logic;
SIGNAL \sevs_module|Add0~5\ : std_logic;
SIGNAL \sevs_module|Add0~6_combout\ : std_logic;
SIGNAL \sevs_module|Add0~59_combout\ : std_logic;
SIGNAL \sevs_module|Add0~7\ : std_logic;
SIGNAL \sevs_module|Add0~8_combout\ : std_logic;
SIGNAL \sevs_module|Add0~58_combout\ : std_logic;
SIGNAL \sevs_module|Add0~9\ : std_logic;
SIGNAL \sevs_module|Add0~10_combout\ : std_logic;
SIGNAL \sevs_module|Add0~57_combout\ : std_logic;
SIGNAL \sevs_module|Add0~11\ : std_logic;
SIGNAL \sevs_module|Add0~12_combout\ : std_logic;
SIGNAL \sevs_module|Add0~56_combout\ : std_logic;
SIGNAL \sevs_module|Add0~13\ : std_logic;
SIGNAL \sevs_module|Add0~14_combout\ : std_logic;
SIGNAL \sevs_module|Add0~55_combout\ : std_logic;
SIGNAL \sevs_module|Add0~15\ : std_logic;
SIGNAL \sevs_module|Add0~16_combout\ : std_logic;
SIGNAL \sevs_module|Add0~54_combout\ : std_logic;
SIGNAL \sevs_module|Add0~17\ : std_logic;
SIGNAL \sevs_module|Add0~18_combout\ : std_logic;
SIGNAL \sevs_module|Add0~53_combout\ : std_logic;
SIGNAL \sevs_module|Add0~19\ : std_logic;
SIGNAL \sevs_module|Add0~20_combout\ : std_logic;
SIGNAL \sevs_module|Add0~52_combout\ : std_logic;
SIGNAL \sevs_module|Add0~21\ : std_logic;
SIGNAL \sevs_module|Add0~22_combout\ : std_logic;
SIGNAL \sevs_module|Add0~51_combout\ : std_logic;
SIGNAL \sevs_module|Add0~23\ : std_logic;
SIGNAL \sevs_module|Add0~24_combout\ : std_logic;
SIGNAL \sevs_module|Add0~50_combout\ : std_logic;
SIGNAL \sevs_module|Add0~25\ : std_logic;
SIGNAL \sevs_module|Add0~26_combout\ : std_logic;
SIGNAL \sevs_module|Add0~49_combout\ : std_logic;
SIGNAL \sevs_module|Add0~27\ : std_logic;
SIGNAL \sevs_module|Add0~28_combout\ : std_logic;
SIGNAL \sevs_module|Add0~48_combout\ : std_logic;
SIGNAL \sevs_module|Add0~29\ : std_logic;
SIGNAL \sevs_module|Add0~30_combout\ : std_logic;
SIGNAL \sevs_module|Add0~47_combout\ : std_logic;
SIGNAL \sevs_module|Add0~31\ : std_logic;
SIGNAL \sevs_module|Add0~32_combout\ : std_logic;
SIGNAL \sevs_module|Add0~46_combout\ : std_logic;
SIGNAL \sevs_module|Add0~33\ : std_logic;
SIGNAL \sevs_module|Add0~34_combout\ : std_logic;
SIGNAL \sevs_module|Add0~45_combout\ : std_logic;
SIGNAL \sevs_module|Add0~35\ : std_logic;
SIGNAL \sevs_module|Add0~36_combout\ : std_logic;
SIGNAL \sevs_module|Add0~44_combout\ : std_logic;
SIGNAL \sevs_module|Add0~37\ : std_logic;
SIGNAL \sevs_module|Add0~38_combout\ : std_logic;
SIGNAL \sevs_module|Add0~43_combout\ : std_logic;
SIGNAL \sevs_module|Add0~39\ : std_logic;
SIGNAL \sevs_module|Add0~40_combout\ : std_logic;
SIGNAL \sevs_module|Add0~42_combout\ : std_logic;
SIGNAL \sevs_module|Add0~41\ : std_logic;
SIGNAL \sevs_module|Add0~60_combout\ : std_logic;
SIGNAL \sevs_module|Add0~62_combout\ : std_logic;
SIGNAL \sevs_module|Add0~61\ : std_logic;
SIGNAL \sevs_module|Add0~63_combout\ : std_logic;
SIGNAL \sevs_module|Add0~65_combout\ : std_logic;
SIGNAL \sevs_module|Add0~64\ : std_logic;
SIGNAL \sevs_module|Add0~66_combout\ : std_logic;
SIGNAL \sevs_module|Add0~68_combout\ : std_logic;
SIGNAL \sevs_module|Add0~67\ : std_logic;
SIGNAL \sevs_module|Add0~69_combout\ : std_logic;
SIGNAL \sevs_module|Add0~71_combout\ : std_logic;
SIGNAL \sevs_module|Add0~70\ : std_logic;
SIGNAL \sevs_module|Add0~72_combout\ : std_logic;
SIGNAL \sevs_module|Add0~74_combout\ : std_logic;
SIGNAL \sevs_module|Add0~73\ : std_logic;
SIGNAL \sevs_module|Add0~75_combout\ : std_logic;
SIGNAL \sevs_module|Add0~77_combout\ : std_logic;
SIGNAL \sevs_module|Add0~76\ : std_logic;
SIGNAL \sevs_module|Add0~78_combout\ : std_logic;
SIGNAL \sevs_module|Add0~80_combout\ : std_logic;
SIGNAL \sevs_module|Add0~79\ : std_logic;
SIGNAL \sevs_module|Add0~81_combout\ : std_logic;
SIGNAL \sevs_module|Add0~83_combout\ : std_logic;
SIGNAL \sevs_module|Add0~82\ : std_logic;
SIGNAL \sevs_module|Add0~84_combout\ : std_logic;
SIGNAL \sevs_module|Add0~86_combout\ : std_logic;
SIGNAL \sevs_module|Add0~85\ : std_logic;
SIGNAL \sevs_module|Add0~87_combout\ : std_logic;
SIGNAL \sevs_module|Add0~89_combout\ : std_logic;
SIGNAL \sevs_module|Add0~88\ : std_logic;
SIGNAL \sevs_module|Add0~91_combout\ : std_logic;
SIGNAL \sevs_module|Add0~93_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~6_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~5_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~7_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~8_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~1_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~3_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~2_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~4_combout\ : std_logic;
SIGNAL \sevs_module|LessThan0~0_combout\ : std_logic;
SIGNAL \sevs_module|Add0~95_combout\ : std_logic;
SIGNAL \sevs_module|Add0~1\ : std_logic;
SIGNAL \sevs_module|Add0~2_combout\ : std_logic;
SIGNAL \sevs_module|Add0~94_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~9_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~10_combout\ : std_logic;
SIGNAL \sevs_module|Equal3~0_combout\ : std_logic;
SIGNAL \sevs_module|dig[1]~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal1~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal2~0_combout\ : std_logic;
SIGNAL \sevs_module|dig~1_combout\ : std_logic;
SIGNAL \i_Rx~input_o\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~13_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~20_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[0]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[2]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[3]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|o_BUSY~0_combout\ : std_logic;
SIGNAL \i_Rx~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|o_BUSY~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~19_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~21_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER~22_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~14\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[1]~15_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[1]~16\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[2]~17_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[2]~18\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~23_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~24\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[4]~25_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[4]~26\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[5]~27_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[5]~28\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~29_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~30\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[7]~31_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[7]~32\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[8]~33_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[8]~34\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[9]~35_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[9]~36\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[10]~37_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[10]~38\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[11]~39_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[11]~40\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[12]~41_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[0]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[1]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[4]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[0]~32_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[1]~38\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[2]~39_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[1]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[2]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[6]~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[5]~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[7]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[8]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal1~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|img_state~10_combout\ : std_logic;
SIGNAL \uart_module|u_RX|img_state~11_combout\ : std_logic;
SIGNAL \uart_module|u_RX|img_state~12_combout\ : std_logic;
SIGNAL \uart_module|u_RX|img_state.initial~q\ : std_logic;
SIGNAL \uart_module|u_RX|img_state.running~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|img_state.running~q\ : std_logic;
SIGNAL \uart_module|u_RX|w_arr_en~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|w_arr_en~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|w_arr_en~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr_en~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr_en~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr_en~q\ : std_logic;
SIGNAL \uart_module|u_RX|process_0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|process_0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[1]~35_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[1]~36_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[2]~40\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[3]~41_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[3]~42\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[4]~43_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[4]~44\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[5]~45_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[5]~46\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[6]~47_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[6]~48\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[7]~49_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[7]~50\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[8]~51_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[8]~52\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[9]~53_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[9]~54\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[10]~55_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[10]~56\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[11]~57_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[11]~58\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[12]~59_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[12]~60\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[13]~61_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[13]~62\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[14]~63_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[14]~64\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[15]~65_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[15]~66\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[16]~67_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[16]~68\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[17]~69_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[17]~70\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[18]~71_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[18]~72\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[19]~73_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[19]~74\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[20]~75_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[20]~76\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[21]~77_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[21]~78\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[22]~79_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[22]~80\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[23]~81_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[23]~82\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[24]~83_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[24]~84\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[25]~85_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[25]~86\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[26]~87_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[26]~88\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[27]~89_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[27]~90\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[28]~91_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[28]~92\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[29]~93_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[29]~94\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[30]~95_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[30]~96\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[31]~97_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~7_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal2~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[13]~34_combout\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[0]~33\ : std_logic;
SIGNAL \uart_module|u_RX|wh_arr_counter[1]~37_combout\ : std_logic;
SIGNAL \uart_module|u_RX|process_0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][3]~q\ : std_logic;
SIGNAL \sevs_module|curr_val[0]~1_combout\ : std_logic;
SIGNAL \sevs_module|curr_val[0]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][3]~q\ : std_logic;
SIGNAL \sevs_module|curr_val~4_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~5_combout\ : std_logic;
SIGNAL \sevs_module|curr_val[31]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][0]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][0]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][0]~q\ : std_logic;
SIGNAL \sevs_module|curr_val~2_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~3_combout\ : std_logic;
SIGNAL \sevs_module|Equal5~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][2]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][2]~7_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][2]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][2]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][2]~q\ : std_logic;
SIGNAL \sevs_module|curr_val~8_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][1]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[1][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[3][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][1]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[0][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][1]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|h_arr[2][1]~q\ : std_logic;
SIGNAL \sevs_module|curr_val~6_combout\ : std_logic;
SIGNAL \sevs_module|curr_val~7_combout\ : std_logic;
SIGNAL \sevs_module|WideNor0~0_combout\ : std_logic;
SIGNAL \sevs_module|WideOr2~2_combout\ : std_logic;
SIGNAL \sevs_module|Equal4~0_combout\ : std_logic;
SIGNAL \sevs_module|WideOr5~combout\ : std_logic;
SIGNAL \sevs_module|WideOr4~2_combout\ : std_logic;
SIGNAL \sevs_module|WideOr4~combout\ : std_logic;
SIGNAL \sevs_module|WideOr3~3_combout\ : std_logic;
SIGNAL \sevs_module|WideOr3~combout\ : std_logic;
SIGNAL \sevs_module|WideOr2~combout\ : std_logic;
SIGNAL \sevs_module|sevseg~0_combout\ : std_logic;
SIGNAL \sevs_module|WideOr1~2_combout\ : std_logic;
SIGNAL \sevs_module|WideOr1~combout\ : std_logic;
SIGNAL \sevs_module|WideOr0~2_combout\ : std_logic;
SIGNAL \sevs_module|WideOr0~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_DATA_BUFFER[0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[0]~13_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[0]~14\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[1]~15_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[1]~16\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[2]~17_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[2]~18\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[3]~19_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[3]~20\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[4]~21_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[4]~22\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[5]~23_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[5]~24\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[6]~25_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[6]~26\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[7]~27_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[7]~28\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[8]~29_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[8]~30\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[9]~31_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[9]~32\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[10]~33_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[10]~34\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[11]~35_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[11]~36\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[12]~37_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~4_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX[0]~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\ : std_logic;
SIGNAL \uart_module|s_TX_START~0_combout\ : std_logic;
SIGNAL \uart_module|s_TX_START~q\ : std_logic;
SIGNAL \uart_module|u_TX|o_BUSY~q\ : std_logic;
SIGNAL \uart_module|u_TX|process_0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~0_combout\ : std_logic;
SIGNAL \uart_module|r_TX_DATA[0]~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_TX_LINE~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \sevs_module|curr_val\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_PRESCALER\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_module|u_RX|wh_arr_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sevs_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sevs_module|dig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockmodifier_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sevs_module|sevseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_module|r_TX_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_module|u_TX|ALT_INV_o_BUSY~q\ : std_logic;
SIGNAL \uart_module|u_RX|ALT_INV_o_BUSY~q\ : std_logic;
SIGNAL \uart_module|u_TX|ALT_INV_o_TX_LINE~q\ : std_logic;
SIGNAL \sevs_module|ALT_INV_sevseg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sevs_module|ALT_INV_dig\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

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
\uart_module|u_TX|ALT_INV_o_BUSY~q\ <= NOT \uart_module|u_TX|o_BUSY~q\;
\uart_module|u_RX|ALT_INV_o_BUSY~q\ <= NOT \uart_module|u_RX|o_BUSY~q\;
\uart_module|u_TX|ALT_INV_o_TX_LINE~q\ <= NOT \uart_module|u_TX|o_TX_LINE~q\;
\sevs_module|ALT_INV_sevseg\(6) <= NOT \sevs_module|sevseg\(6);
\sevs_module|ALT_INV_sevseg\(5) <= NOT \sevs_module|sevseg\(5);
\sevs_module|ALT_INV_sevseg\(4) <= NOT \sevs_module|sevseg\(4);
\sevs_module|ALT_INV_sevseg\(3) <= NOT \sevs_module|sevseg\(3);
\sevs_module|ALT_INV_sevseg\(2) <= NOT \sevs_module|sevseg\(2);
\sevs_module|ALT_INV_sevseg\(1) <= NOT \sevs_module|sevseg\(1);
\sevs_module|ALT_INV_sevseg\(0) <= NOT \sevs_module|sevseg\(0);
\sevs_module|ALT_INV_dig\(3) <= NOT \sevs_module|dig\(3);
\sevs_module|ALT_INV_dig\(2) <= NOT \sevs_module|dig\(2);
\sevs_module|ALT_INV_dig\(1) <= NOT \sevs_module|dig\(1);
\sevs_module|ALT_INV_dig\(0) <= NOT \sevs_module|dig\(0);
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
	i => \sevs_module|ALT_INV_sevseg\(0),
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
	i => \sevs_module|ALT_INV_sevseg\(1),
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
	i => \sevs_module|ALT_INV_sevseg\(2),
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
	i => \sevs_module|ALT_INV_sevseg\(3),
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
	i => \sevs_module|ALT_INV_sevseg\(4),
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
	i => \sevs_module|ALT_INV_sevseg\(5),
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
	i => \sevs_module|ALT_INV_sevseg\(6),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \uart_module|u_RX|o_BUSY~q\,
	devoe => ww_devoe,
	o => \o_led4~output_o\);

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X5_Y24_N9
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: LCCOMB_X25_Y16_N0
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

-- Location: LCCOMB_X26_Y16_N0
\clockmodifier_module|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~5_combout\ = (\clockmodifier_module|Add0~0_combout\ & !\clockmodifier_module|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockmodifier_module|Add0~0_combout\,
	datad => \clockmodifier_module|Equal0~10_combout\,
	combout => \clockmodifier_module|counter~5_combout\);

-- Location: FF_X25_Y16_N25
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

-- Location: LCCOMB_X25_Y16_N2
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

-- Location: FF_X25_Y16_N3
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

-- Location: LCCOMB_X25_Y16_N4
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

-- Location: FF_X25_Y16_N5
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

-- Location: LCCOMB_X25_Y16_N6
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

-- Location: FF_X25_Y16_N7
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

-- Location: LCCOMB_X25_Y16_N8
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

-- Location: FF_X25_Y16_N9
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

-- Location: LCCOMB_X25_Y16_N10
\clockmodifier_module|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~10_combout\ = (\clockmodifier_module|counter\(5) & (!\clockmodifier_module|Add0~9\)) # (!\clockmodifier_module|counter\(5) & ((\clockmodifier_module|Add0~9\) # (GND)))
-- \clockmodifier_module|Add0~11\ = CARRY((!\clockmodifier_module|Add0~9\) # (!\clockmodifier_module|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(5),
	datad => VCC,
	cin => \clockmodifier_module|Add0~9\,
	combout => \clockmodifier_module|Add0~10_combout\,
	cout => \clockmodifier_module|Add0~11\);

-- Location: LCCOMB_X26_Y16_N30
\clockmodifier_module|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~4_combout\ = (!\clockmodifier_module|Equal0~10_combout\ & \clockmodifier_module|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~10_combout\,
	datad => \clockmodifier_module|Add0~10_combout\,
	combout => \clockmodifier_module|counter~4_combout\);

-- Location: FF_X26_Y16_N31
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

-- Location: LCCOMB_X25_Y16_N12
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

-- Location: LCCOMB_X26_Y16_N20
\clockmodifier_module|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~3_combout\ = (!\clockmodifier_module|Equal0~10_combout\ & \clockmodifier_module|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~10_combout\,
	datad => \clockmodifier_module|Add0~12_combout\,
	combout => \clockmodifier_module|counter~3_combout\);

-- Location: FF_X26_Y16_N21
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

-- Location: LCCOMB_X25_Y16_N14
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

-- Location: FF_X25_Y16_N15
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

-- Location: LCCOMB_X26_Y16_N22
\clockmodifier_module|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~8_combout\ = (!\clockmodifier_module|counter\(4) & (\clockmodifier_module|counter\(6) & (\clockmodifier_module|counter\(5) & !\clockmodifier_module|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(4),
	datab => \clockmodifier_module|counter\(6),
	datac => \clockmodifier_module|counter\(5),
	datad => \clockmodifier_module|counter\(7),
	combout => \clockmodifier_module|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y16_N14
\clockmodifier_module|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~9_combout\ = (!\clockmodifier_module|counter\(0) & (!\clockmodifier_module|counter\(2) & (!\clockmodifier_module|counter\(3) & !\clockmodifier_module|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(0),
	datab => \clockmodifier_module|counter\(2),
	datac => \clockmodifier_module|counter\(3),
	datad => \clockmodifier_module|counter\(1),
	combout => \clockmodifier_module|Equal0~9_combout\);

-- Location: LCCOMB_X25_Y16_N16
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

-- Location: LCCOMB_X26_Y16_N4
\clockmodifier_module|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~2_combout\ = (\clockmodifier_module|Add0~16_combout\ & !\clockmodifier_module|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockmodifier_module|Add0~16_combout\,
	datad => \clockmodifier_module|Equal0~10_combout\,
	combout => \clockmodifier_module|counter~2_combout\);

-- Location: FF_X26_Y16_N5
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

-- Location: LCCOMB_X25_Y16_N18
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

-- Location: FF_X25_Y16_N19
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

-- Location: LCCOMB_X25_Y16_N20
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

-- Location: FF_X25_Y16_N21
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

-- Location: LCCOMB_X25_Y16_N22
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

-- Location: FF_X25_Y16_N23
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

-- Location: LCCOMB_X26_Y16_N26
\clockmodifier_module|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~6_combout\ = (!\clockmodifier_module|counter\(11) & (!\clockmodifier_module|counter\(10) & (\clockmodifier_module|counter\(8) & !\clockmodifier_module|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(11),
	datab => \clockmodifier_module|counter\(10),
	datac => \clockmodifier_module|counter\(8),
	datad => \clockmodifier_module|counter\(9),
	combout => \clockmodifier_module|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y16_N24
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

-- Location: LCCOMB_X26_Y16_N12
\clockmodifier_module|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~1_combout\ = (!\clockmodifier_module|Equal0~10_combout\ & \clockmodifier_module|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~10_combout\,
	datad => \clockmodifier_module|Add0~24_combout\,
	combout => \clockmodifier_module|counter~1_combout\);

-- Location: FF_X26_Y16_N13
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

-- Location: LCCOMB_X25_Y16_N26
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

-- Location: FF_X25_Y16_N27
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

-- Location: LCCOMB_X25_Y16_N28
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

-- Location: LCCOMB_X26_Y16_N6
\clockmodifier_module|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~0_combout\ = (!\clockmodifier_module|Equal0~10_combout\ & \clockmodifier_module|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~10_combout\,
	datad => \clockmodifier_module|Add0~28_combout\,
	combout => \clockmodifier_module|counter~0_combout\);

-- Location: FF_X26_Y16_N7
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

-- Location: LCCOMB_X25_Y16_N30
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

-- Location: FF_X25_Y16_N31
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

-- Location: LCCOMB_X26_Y16_N16
\clockmodifier_module|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~5_combout\ = (!\clockmodifier_module|counter\(13) & (\clockmodifier_module|counter\(12) & (!\clockmodifier_module|counter\(15) & \clockmodifier_module|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(13),
	datab => \clockmodifier_module|counter\(12),
	datac => \clockmodifier_module|counter\(15),
	datad => \clockmodifier_module|counter\(14),
	combout => \clockmodifier_module|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y16_N8
\clockmodifier_module|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~7_combout\ = (\clockmodifier_module|Equal0~6_combout\ & \clockmodifier_module|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockmodifier_module|Equal0~6_combout\,
	datad => \clockmodifier_module|Equal0~5_combout\,
	combout => \clockmodifier_module|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y15_N0
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

-- Location: FF_X25_Y15_N1
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

-- Location: LCCOMB_X25_Y15_N2
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

-- Location: FF_X25_Y15_N3
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

-- Location: LCCOMB_X25_Y15_N4
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

-- Location: FF_X25_Y15_N5
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

-- Location: LCCOMB_X25_Y15_N6
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

-- Location: FF_X25_Y15_N7
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

-- Location: LCCOMB_X25_Y15_N8
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

-- Location: FF_X25_Y15_N9
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

-- Location: LCCOMB_X25_Y15_N10
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

-- Location: FF_X25_Y15_N11
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

-- Location: LCCOMB_X25_Y15_N12
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

-- Location: FF_X25_Y15_N13
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

-- Location: LCCOMB_X25_Y15_N14
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

-- Location: FF_X25_Y15_N15
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

-- Location: LCCOMB_X26_Y15_N12
\clockmodifier_module|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~2_combout\ = (!\clockmodifier_module|counter\(21) & (!\clockmodifier_module|counter\(22) & (!\clockmodifier_module|counter\(23) & !\clockmodifier_module|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(21),
	datab => \clockmodifier_module|counter\(22),
	datac => \clockmodifier_module|counter\(23),
	datad => \clockmodifier_module|counter\(20),
	combout => \clockmodifier_module|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y15_N16
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

-- Location: FF_X25_Y15_N17
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

-- Location: LCCOMB_X25_Y15_N18
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

-- Location: FF_X25_Y15_N19
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

-- Location: LCCOMB_X25_Y15_N20
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

-- Location: FF_X25_Y15_N21
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

-- Location: LCCOMB_X25_Y15_N22
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

-- Location: FF_X25_Y15_N23
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

-- Location: LCCOMB_X26_Y15_N18
\clockmodifier_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~1_combout\ = (!\clockmodifier_module|counter\(24) & (!\clockmodifier_module|counter\(26) & (!\clockmodifier_module|counter\(27) & !\clockmodifier_module|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(24),
	datab => \clockmodifier_module|counter\(26),
	datac => \clockmodifier_module|counter\(27),
	datad => \clockmodifier_module|counter\(25),
	combout => \clockmodifier_module|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y15_N24
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

-- Location: FF_X25_Y15_N25
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

-- Location: LCCOMB_X25_Y15_N26
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

-- Location: FF_X25_Y15_N27
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

-- Location: LCCOMB_X25_Y15_N28
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

-- Location: FF_X25_Y15_N29
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

-- Location: LCCOMB_X25_Y15_N30
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

-- Location: FF_X25_Y15_N31
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

-- Location: LCCOMB_X26_Y15_N8
\clockmodifier_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~0_combout\ = (!\clockmodifier_module|counter\(29) & (!\clockmodifier_module|counter\(28) & (!\clockmodifier_module|counter\(31) & !\clockmodifier_module|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(29),
	datab => \clockmodifier_module|counter\(28),
	datac => \clockmodifier_module|counter\(31),
	datad => \clockmodifier_module|counter\(30),
	combout => \clockmodifier_module|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\clockmodifier_module|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~3_combout\ = (!\clockmodifier_module|counter\(16) & (!\clockmodifier_module|counter\(19) & (!\clockmodifier_module|counter\(18) & !\clockmodifier_module|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(16),
	datab => \clockmodifier_module|counter\(19),
	datac => \clockmodifier_module|counter\(18),
	datad => \clockmodifier_module|counter\(17),
	combout => \clockmodifier_module|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y15_N0
\clockmodifier_module|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~4_combout\ = (\clockmodifier_module|Equal0~2_combout\ & (\clockmodifier_module|Equal0~1_combout\ & (\clockmodifier_module|Equal0~0_combout\ & \clockmodifier_module|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~2_combout\,
	datab => \clockmodifier_module|Equal0~1_combout\,
	datac => \clockmodifier_module|Equal0~0_combout\,
	datad => \clockmodifier_module|Equal0~3_combout\,
	combout => \clockmodifier_module|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y16_N10
\clockmodifier_module|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~10_combout\ = (\clockmodifier_module|Equal0~8_combout\ & (\clockmodifier_module|Equal0~9_combout\ & (\clockmodifier_module|Equal0~7_combout\ & \clockmodifier_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~8_combout\,
	datab => \clockmodifier_module|Equal0~9_combout\,
	datac => \clockmodifier_module|Equal0~7_combout\,
	datad => \clockmodifier_module|Equal0~4_combout\,
	combout => \clockmodifier_module|Equal0~10_combout\);

-- Location: LCCOMB_X26_Y16_N2
\clockmodifier_module|clk_out_intem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|clk_out_intem~0_combout\ = \clockmodifier_module|clk_out_intem~q\ $ (\clockmodifier_module|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|clk_out_intem~q\,
	datad => \clockmodifier_module|Equal0~10_combout\,
	combout => \clockmodifier_module|clk_out_intem~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
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

-- Location: FF_X26_Y16_N25
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X24_Y20_N0
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

-- Location: LCCOMB_X24_Y20_N2
\sevs_module|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~2_combout\ = (\sevs_module|counter\(1) & (!\sevs_module|Add0~1\)) # (!\sevs_module|counter\(1) & ((\sevs_module|Add0~1\) # (GND)))
-- \sevs_module|Add0~3\ = CARRY((!\sevs_module|Add0~1\) # (!\sevs_module|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datad => VCC,
	cin => \sevs_module|Add0~1\,
	combout => \sevs_module|Add0~2_combout\,
	cout => \sevs_module|Add0~3\);

-- Location: LCCOMB_X24_Y20_N4
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

-- Location: LCCOMB_X26_Y20_N2
\sevs_module|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~90_combout\ = (\sevs_module|Add0~4_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~4_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~90_combout\);

-- Location: FF_X24_Y20_N23
\sevs_module|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|Add0~90_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(2));

-- Location: LCCOMB_X24_Y20_N6
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

-- Location: LCCOMB_X23_Y20_N16
\sevs_module|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~59_combout\ = (\sevs_module|Add0~6_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Add0~6_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~59_combout\);

-- Location: FF_X23_Y20_N17
\sevs_module|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(3));

-- Location: LCCOMB_X24_Y20_N8
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

-- Location: LCCOMB_X23_Y20_N6
\sevs_module|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~58_combout\ = (\sevs_module|Add0~8_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~8_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~58_combout\);

-- Location: FF_X23_Y20_N7
\sevs_module|counter[4]\ : dffeas
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
	q => \sevs_module|counter\(4));

-- Location: LCCOMB_X24_Y20_N10
\sevs_module|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~10_combout\ = (\sevs_module|counter\(5) & (!\sevs_module|Add0~9\)) # (!\sevs_module|counter\(5) & ((\sevs_module|Add0~9\) # (GND)))
-- \sevs_module|Add0~11\ = CARRY((!\sevs_module|Add0~9\) # (!\sevs_module|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(5),
	datad => VCC,
	cin => \sevs_module|Add0~9\,
	combout => \sevs_module|Add0~10_combout\,
	cout => \sevs_module|Add0~11\);

-- Location: LCCOMB_X25_Y20_N14
\sevs_module|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~57_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~10_combout\,
	combout => \sevs_module|Add0~57_combout\);

-- Location: FF_X25_Y20_N15
\sevs_module|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(5));

-- Location: LCCOMB_X24_Y20_N12
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

-- Location: LCCOMB_X25_Y20_N20
\sevs_module|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~56_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~12_combout\,
	combout => \sevs_module|Add0~56_combout\);

-- Location: FF_X25_Y20_N21
\sevs_module|counter[6]\ : dffeas
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
	q => \sevs_module|counter\(6));

-- Location: LCCOMB_X24_Y20_N14
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

-- Location: LCCOMB_X25_Y20_N22
\sevs_module|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~55_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~14_combout\,
	combout => \sevs_module|Add0~55_combout\);

-- Location: FF_X25_Y20_N23
\sevs_module|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(7));

-- Location: LCCOMB_X24_Y20_N16
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

-- Location: LCCOMB_X25_Y20_N12
\sevs_module|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~54_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|LessThan0~0_combout\,
	datac => \sevs_module|Add0~16_combout\,
	combout => \sevs_module|Add0~54_combout\);

-- Location: FF_X25_Y20_N13
\sevs_module|counter[8]\ : dffeas
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
	q => \sevs_module|counter\(8));

-- Location: LCCOMB_X24_Y20_N18
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

-- Location: LCCOMB_X25_Y20_N28
\sevs_module|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~53_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~18_combout\,
	combout => \sevs_module|Add0~53_combout\);

-- Location: FF_X25_Y20_N29
\sevs_module|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(9));

-- Location: LCCOMB_X24_Y20_N20
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

-- Location: LCCOMB_X25_Y20_N26
\sevs_module|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~52_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~20_combout\,
	combout => \sevs_module|Add0~52_combout\);

-- Location: FF_X25_Y20_N27
\sevs_module|counter[10]\ : dffeas
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
	q => \sevs_module|counter\(10));

-- Location: LCCOMB_X24_Y20_N22
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

-- Location: LCCOMB_X23_Y20_N0
\sevs_module|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~51_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~22_combout\,
	combout => \sevs_module|Add0~51_combout\);

-- Location: FF_X23_Y20_N1
\sevs_module|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(11));

-- Location: LCCOMB_X24_Y20_N24
\sevs_module|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~24_combout\ = (\sevs_module|counter\(12) & (\sevs_module|Add0~23\ $ (GND))) # (!\sevs_module|counter\(12) & (!\sevs_module|Add0~23\ & VCC))
-- \sevs_module|Add0~25\ = CARRY((\sevs_module|counter\(12) & !\sevs_module|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(12),
	datad => VCC,
	cin => \sevs_module|Add0~23\,
	combout => \sevs_module|Add0~24_combout\,
	cout => \sevs_module|Add0~25\);

-- Location: LCCOMB_X25_Y20_N4
\sevs_module|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~50_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~24_combout\,
	combout => \sevs_module|Add0~50_combout\);

-- Location: FF_X25_Y20_N5
\sevs_module|counter[12]\ : dffeas
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
	q => \sevs_module|counter\(12));

-- Location: LCCOMB_X24_Y20_N26
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

-- Location: LCCOMB_X23_Y20_N12
\sevs_module|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~49_combout\ = (\sevs_module|Add0~26_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~26_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~49_combout\);

-- Location: FF_X23_Y20_N13
\sevs_module|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(13));

-- Location: LCCOMB_X24_Y20_N28
\sevs_module|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~28_combout\ = (\sevs_module|counter\(14) & (\sevs_module|Add0~27\ $ (GND))) # (!\sevs_module|counter\(14) & (!\sevs_module|Add0~27\ & VCC))
-- \sevs_module|Add0~29\ = CARRY((\sevs_module|counter\(14) & !\sevs_module|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(14),
	datad => VCC,
	cin => \sevs_module|Add0~27\,
	combout => \sevs_module|Add0~28_combout\,
	cout => \sevs_module|Add0~29\);

-- Location: LCCOMB_X23_Y20_N14
\sevs_module|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~48_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~28_combout\,
	combout => \sevs_module|Add0~48_combout\);

-- Location: FF_X23_Y20_N15
\sevs_module|counter[14]\ : dffeas
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
	q => \sevs_module|counter\(14));

-- Location: LCCOMB_X24_Y20_N30
\sevs_module|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~30_combout\ = (\sevs_module|counter\(15) & (!\sevs_module|Add0~29\)) # (!\sevs_module|counter\(15) & ((\sevs_module|Add0~29\) # (GND)))
-- \sevs_module|Add0~31\ = CARRY((!\sevs_module|Add0~29\) # (!\sevs_module|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(15),
	datad => VCC,
	cin => \sevs_module|Add0~29\,
	combout => \sevs_module|Add0~30_combout\,
	cout => \sevs_module|Add0~31\);

-- Location: LCCOMB_X23_Y20_N20
\sevs_module|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~47_combout\ = (\sevs_module|Add0~30_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~30_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~47_combout\);

-- Location: FF_X23_Y20_N21
\sevs_module|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(15));

-- Location: LCCOMB_X24_Y19_N0
\sevs_module|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~32_combout\ = (\sevs_module|counter\(16) & (\sevs_module|Add0~31\ $ (GND))) # (!\sevs_module|counter\(16) & (!\sevs_module|Add0~31\ & VCC))
-- \sevs_module|Add0~33\ = CARRY((\sevs_module|counter\(16) & !\sevs_module|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(16),
	datad => VCC,
	cin => \sevs_module|Add0~31\,
	combout => \sevs_module|Add0~32_combout\,
	cout => \sevs_module|Add0~33\);

-- Location: LCCOMB_X23_Y20_N30
\sevs_module|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~46_combout\ = (\sevs_module|Add0~32_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~32_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~46_combout\);

-- Location: FF_X23_Y20_N31
\sevs_module|counter[16]\ : dffeas
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
	q => \sevs_module|counter\(16));

-- Location: LCCOMB_X24_Y19_N2
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

-- Location: LCCOMB_X23_Y20_N26
\sevs_module|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~45_combout\ = (\sevs_module|Add0~34_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~34_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~45_combout\);

-- Location: FF_X23_Y20_N27
\sevs_module|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(17));

-- Location: LCCOMB_X24_Y19_N4
\sevs_module|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~36_combout\ = (\sevs_module|counter\(18) & (\sevs_module|Add0~35\ $ (GND))) # (!\sevs_module|counter\(18) & (!\sevs_module|Add0~35\ & VCC))
-- \sevs_module|Add0~37\ = CARRY((\sevs_module|counter\(18) & !\sevs_module|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(18),
	datad => VCC,
	cin => \sevs_module|Add0~35\,
	combout => \sevs_module|Add0~36_combout\,
	cout => \sevs_module|Add0~37\);

-- Location: LCCOMB_X23_Y20_N8
\sevs_module|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~44_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~36_combout\,
	combout => \sevs_module|Add0~44_combout\);

-- Location: FF_X23_Y20_N9
\sevs_module|counter[18]\ : dffeas
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
	q => \sevs_module|counter\(18));

-- Location: LCCOMB_X24_Y19_N6
\sevs_module|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~38_combout\ = (\sevs_module|counter\(19) & (!\sevs_module|Add0~37\)) # (!\sevs_module|counter\(19) & ((\sevs_module|Add0~37\) # (GND)))
-- \sevs_module|Add0~39\ = CARRY((!\sevs_module|Add0~37\) # (!\sevs_module|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(19),
	datad => VCC,
	cin => \sevs_module|Add0~37\,
	combout => \sevs_module|Add0~38_combout\,
	cout => \sevs_module|Add0~39\);

-- Location: LCCOMB_X23_Y20_N10
\sevs_module|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~43_combout\ = (\sevs_module|Add0~38_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~38_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~43_combout\);

-- Location: FF_X23_Y20_N11
\sevs_module|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(19));

-- Location: LCCOMB_X24_Y19_N8
\sevs_module|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~40_combout\ = (\sevs_module|counter\(20) & (\sevs_module|Add0~39\ $ (GND))) # (!\sevs_module|counter\(20) & (!\sevs_module|Add0~39\ & VCC))
-- \sevs_module|Add0~41\ = CARRY((\sevs_module|counter\(20) & !\sevs_module|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(20),
	datad => VCC,
	cin => \sevs_module|Add0~39\,
	combout => \sevs_module|Add0~40_combout\,
	cout => \sevs_module|Add0~41\);

-- Location: LCCOMB_X23_Y20_N4
\sevs_module|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~42_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~40_combout\,
	combout => \sevs_module|Add0~42_combout\);

-- Location: FF_X23_Y20_N5
\sevs_module|counter[20]\ : dffeas
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
	q => \sevs_module|counter\(20));

-- Location: LCCOMB_X24_Y19_N10
\sevs_module|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~60_combout\ = (\sevs_module|counter\(21) & (!\sevs_module|Add0~41\)) # (!\sevs_module|counter\(21) & ((\sevs_module|Add0~41\) # (GND)))
-- \sevs_module|Add0~61\ = CARRY((!\sevs_module|Add0~41\) # (!\sevs_module|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(21),
	datad => VCC,
	cin => \sevs_module|Add0~41\,
	combout => \sevs_module|Add0~60_combout\,
	cout => \sevs_module|Add0~61\);

-- Location: LCCOMB_X23_Y20_N22
\sevs_module|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~62_combout\ = (\sevs_module|Add0~60_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|Add0~60_combout\,
	datad => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~62_combout\);

-- Location: FF_X23_Y20_N23
\sevs_module|counter[21]\ : dffeas
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
	q => \sevs_module|counter\(21));

-- Location: LCCOMB_X24_Y19_N12
\sevs_module|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~63_combout\ = (\sevs_module|counter\(22) & (\sevs_module|Add0~61\ $ (GND))) # (!\sevs_module|counter\(22) & (!\sevs_module|Add0~61\ & VCC))
-- \sevs_module|Add0~64\ = CARRY((\sevs_module|counter\(22) & !\sevs_module|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(22),
	datad => VCC,
	cin => \sevs_module|Add0~61\,
	combout => \sevs_module|Add0~63_combout\,
	cout => \sevs_module|Add0~64\);

-- Location: LCCOMB_X23_Y20_N24
\sevs_module|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~65_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~63_combout\,
	combout => \sevs_module|Add0~65_combout\);

-- Location: FF_X23_Y20_N25
\sevs_module|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(22));

-- Location: LCCOMB_X24_Y19_N14
\sevs_module|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~66_combout\ = (\sevs_module|counter\(23) & (!\sevs_module|Add0~64\)) # (!\sevs_module|counter\(23) & ((\sevs_module|Add0~64\) # (GND)))
-- \sevs_module|Add0~67\ = CARRY((!\sevs_module|Add0~64\) # (!\sevs_module|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(23),
	datad => VCC,
	cin => \sevs_module|Add0~64\,
	combout => \sevs_module|Add0~66_combout\,
	cout => \sevs_module|Add0~67\);

-- Location: LCCOMB_X25_Y19_N28
\sevs_module|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~68_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~66_combout\,
	combout => \sevs_module|Add0~68_combout\);

-- Location: FF_X25_Y19_N29
\sevs_module|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(23));

-- Location: LCCOMB_X24_Y19_N16
\sevs_module|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~69_combout\ = (\sevs_module|counter\(24) & (\sevs_module|Add0~67\ $ (GND))) # (!\sevs_module|counter\(24) & (!\sevs_module|Add0~67\ & VCC))
-- \sevs_module|Add0~70\ = CARRY((\sevs_module|counter\(24) & !\sevs_module|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(24),
	datad => VCC,
	cin => \sevs_module|Add0~67\,
	combout => \sevs_module|Add0~69_combout\,
	cout => \sevs_module|Add0~70\);

-- Location: LCCOMB_X25_Y19_N30
\sevs_module|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~71_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datac => \sevs_module|Add0~69_combout\,
	combout => \sevs_module|Add0~71_combout\);

-- Location: FF_X25_Y19_N31
\sevs_module|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(24));

-- Location: LCCOMB_X24_Y19_N18
\sevs_module|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~72_combout\ = (\sevs_module|counter\(25) & (!\sevs_module|Add0~70\)) # (!\sevs_module|counter\(25) & ((\sevs_module|Add0~70\) # (GND)))
-- \sevs_module|Add0~73\ = CARRY((!\sevs_module|Add0~70\) # (!\sevs_module|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(25),
	datad => VCC,
	cin => \sevs_module|Add0~70\,
	combout => \sevs_module|Add0~72_combout\,
	cout => \sevs_module|Add0~73\);

-- Location: LCCOMB_X25_Y19_N16
\sevs_module|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~74_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~72_combout\,
	combout => \sevs_module|Add0~74_combout\);

-- Location: FF_X25_Y19_N17
\sevs_module|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(25));

-- Location: LCCOMB_X24_Y19_N20
\sevs_module|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~75_combout\ = (\sevs_module|counter\(26) & (\sevs_module|Add0~73\ $ (GND))) # (!\sevs_module|counter\(26) & (!\sevs_module|Add0~73\ & VCC))
-- \sevs_module|Add0~76\ = CARRY((\sevs_module|counter\(26) & !\sevs_module|Add0~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(26),
	datad => VCC,
	cin => \sevs_module|Add0~73\,
	combout => \sevs_module|Add0~75_combout\,
	cout => \sevs_module|Add0~76\);

-- Location: LCCOMB_X25_Y19_N14
\sevs_module|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~77_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~75_combout\,
	combout => \sevs_module|Add0~77_combout\);

-- Location: FF_X25_Y19_N15
\sevs_module|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(26));

-- Location: LCCOMB_X24_Y19_N22
\sevs_module|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~78_combout\ = (\sevs_module|counter\(27) & (!\sevs_module|Add0~76\)) # (!\sevs_module|counter\(27) & ((\sevs_module|Add0~76\) # (GND)))
-- \sevs_module|Add0~79\ = CARRY((!\sevs_module|Add0~76\) # (!\sevs_module|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(27),
	datad => VCC,
	cin => \sevs_module|Add0~76\,
	combout => \sevs_module|Add0~78_combout\,
	cout => \sevs_module|Add0~79\);

-- Location: LCCOMB_X25_Y19_N26
\sevs_module|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~80_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~78_combout\,
	combout => \sevs_module|Add0~80_combout\);

-- Location: FF_X25_Y19_N27
\sevs_module|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(27));

-- Location: LCCOMB_X24_Y19_N24
\sevs_module|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~81_combout\ = (\sevs_module|counter\(28) & (\sevs_module|Add0~79\ $ (GND))) # (!\sevs_module|counter\(28) & (!\sevs_module|Add0~79\ & VCC))
-- \sevs_module|Add0~82\ = CARRY((\sevs_module|counter\(28) & !\sevs_module|Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(28),
	datad => VCC,
	cin => \sevs_module|Add0~79\,
	combout => \sevs_module|Add0~81_combout\,
	cout => \sevs_module|Add0~82\);

-- Location: LCCOMB_X25_Y19_N24
\sevs_module|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~83_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~81_combout\,
	combout => \sevs_module|Add0~83_combout\);

-- Location: FF_X25_Y19_N25
\sevs_module|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(28));

-- Location: LCCOMB_X24_Y19_N26
\sevs_module|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~84_combout\ = (\sevs_module|counter\(29) & (!\sevs_module|Add0~82\)) # (!\sevs_module|counter\(29) & ((\sevs_module|Add0~82\) # (GND)))
-- \sevs_module|Add0~85\ = CARRY((!\sevs_module|Add0~82\) # (!\sevs_module|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(29),
	datad => VCC,
	cin => \sevs_module|Add0~82\,
	combout => \sevs_module|Add0~84_combout\,
	cout => \sevs_module|Add0~85\);

-- Location: LCCOMB_X25_Y19_N18
\sevs_module|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~86_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|LessThan0~0_combout\,
	datac => \sevs_module|Add0~84_combout\,
	combout => \sevs_module|Add0~86_combout\);

-- Location: FF_X25_Y19_N19
\sevs_module|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(29));

-- Location: LCCOMB_X24_Y19_N28
\sevs_module|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~87_combout\ = (\sevs_module|counter\(30) & (\sevs_module|Add0~85\ $ (GND))) # (!\sevs_module|counter\(30) & (!\sevs_module|Add0~85\ & VCC))
-- \sevs_module|Add0~88\ = CARRY((\sevs_module|counter\(30) & !\sevs_module|Add0~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(30),
	datad => VCC,
	cin => \sevs_module|Add0~85\,
	combout => \sevs_module|Add0~87_combout\,
	cout => \sevs_module|Add0~88\);

-- Location: LCCOMB_X25_Y19_N12
\sevs_module|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~89_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~87_combout\,
	combout => \sevs_module|Add0~89_combout\);

-- Location: FF_X25_Y19_N13
\sevs_module|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(30));

-- Location: LCCOMB_X24_Y19_N30
\sevs_module|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~91_combout\ = \sevs_module|Add0~88\ $ (\sevs_module|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sevs_module|counter\(31),
	cin => \sevs_module|Add0~88\,
	combout => \sevs_module|Add0~91_combout\);

-- Location: LCCOMB_X25_Y19_N20
\sevs_module|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~93_combout\ = (\sevs_module|LessThan0~0_combout\ & \sevs_module|Add0~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|LessThan0~0_combout\,
	datad => \sevs_module|Add0~91_combout\,
	combout => \sevs_module|Add0~93_combout\);

-- Location: FF_X25_Y19_N21
\sevs_module|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(31));

-- Location: LCCOMB_X25_Y19_N0
\sevs_module|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~6_combout\ = (!\sevs_module|counter\(24) & (!\sevs_module|counter\(25) & (!\sevs_module|counter\(26) & !\sevs_module|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(24),
	datab => \sevs_module|counter\(25),
	datac => \sevs_module|counter\(26),
	datad => \sevs_module|counter\(23),
	combout => \sevs_module|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y20_N2
\sevs_module|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~5_combout\ = (!\sevs_module|counter\(4) & (!\sevs_module|counter\(3) & (!\sevs_module|counter\(21) & !\sevs_module|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(4),
	datab => \sevs_module|counter\(3),
	datac => \sevs_module|counter\(21),
	datad => \sevs_module|counter\(22),
	combout => \sevs_module|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y19_N10
\sevs_module|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~7_combout\ = (!\sevs_module|counter\(30) & (!\sevs_module|counter\(29) & (!\sevs_module|counter\(27) & !\sevs_module|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(30),
	datab => \sevs_module|counter\(29),
	datac => \sevs_module|counter\(27),
	datad => \sevs_module|counter\(28),
	combout => \sevs_module|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y20_N8
\sevs_module|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~8_combout\ = (\sevs_module|Equal0~6_combout\ & (\sevs_module|Equal0~5_combout\ & \sevs_module|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|Equal0~6_combout\,
	datac => \sevs_module|Equal0~5_combout\,
	datad => \sevs_module|Equal0~7_combout\,
	combout => \sevs_module|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y20_N18
\sevs_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~1_combout\ = (!\sevs_module|counter\(16) & (!\sevs_module|counter\(15) & (!\sevs_module|counter\(14) & !\sevs_module|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(16),
	datab => \sevs_module|counter\(15),
	datac => \sevs_module|counter\(14),
	datad => \sevs_module|counter\(13),
	combout => \sevs_module|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y20_N24
\sevs_module|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~3_combout\ = (!\sevs_module|counter\(7) & (!\sevs_module|counter\(6) & (!\sevs_module|counter\(5) & !\sevs_module|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(7),
	datab => \sevs_module|counter\(6),
	datac => \sevs_module|counter\(5),
	datad => \sevs_module|counter\(8),
	combout => \sevs_module|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y20_N28
\sevs_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~0_combout\ = (!\sevs_module|counter\(17) & (!\sevs_module|counter\(18) & (!\sevs_module|counter\(20) & !\sevs_module|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(17),
	datab => \sevs_module|counter\(18),
	datac => \sevs_module|counter\(20),
	datad => \sevs_module|counter\(19),
	combout => \sevs_module|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y20_N18
\sevs_module|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~2_combout\ = (!\sevs_module|counter\(10) & (!\sevs_module|counter\(9) & (!\sevs_module|counter\(12) & !\sevs_module|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(10),
	datab => \sevs_module|counter\(9),
	datac => \sevs_module|counter\(12),
	datad => \sevs_module|counter\(11),
	combout => \sevs_module|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y20_N6
\sevs_module|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~4_combout\ = (\sevs_module|Equal0~1_combout\ & (\sevs_module|Equal0~3_combout\ & (\sevs_module|Equal0~0_combout\ & \sevs_module|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~1_combout\,
	datab => \sevs_module|Equal0~3_combout\,
	datac => \sevs_module|Equal0~0_combout\,
	datad => \sevs_module|Equal0~2_combout\,
	combout => \sevs_module|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y20_N30
\sevs_module|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|LessThan0~0_combout\ = (\sevs_module|counter\(31)) # ((!\sevs_module|counter\(2) & (\sevs_module|Equal0~8_combout\ & \sevs_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(31),
	datab => \sevs_module|counter\(2),
	datac => \sevs_module|Equal0~8_combout\,
	datad => \sevs_module|Equal0~4_combout\,
	combout => \sevs_module|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y20_N10
\sevs_module|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~95_combout\ = (!\sevs_module|Add0~0_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Add0~0_combout\,
	datac => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~95_combout\);

-- Location: FF_X24_Y20_N17
\sevs_module|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|Add0~95_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(0));

-- Location: LCCOMB_X25_Y20_N0
\sevs_module|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~94_combout\ = (\sevs_module|Add0~2_combout\ & \sevs_module|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Add0~2_combout\,
	datac => \sevs_module|LessThan0~0_combout\,
	combout => \sevs_module|Add0~94_combout\);

-- Location: FF_X24_Y20_N7
\sevs_module|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|Add0~94_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(1));

-- Location: LCCOMB_X26_Y20_N12
\sevs_module|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~9_combout\ = (!\sevs_module|counter\(31) & (!\sevs_module|counter\(2) & (\sevs_module|Equal0~4_combout\ & \sevs_module|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(31),
	datab => \sevs_module|counter\(2),
	datac => \sevs_module|Equal0~4_combout\,
	datad => \sevs_module|Equal0~8_combout\,
	combout => \sevs_module|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y20_N8
\sevs_module|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~10_combout\ = (!\sevs_module|counter\(1) & (!\sevs_module|counter\(0) & \sevs_module|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(1),
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y20_N2
\sevs_module|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal3~0_combout\ = (!\sevs_module|counter\(31) & (\sevs_module|Equal0~8_combout\ & \sevs_module|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(31),
	datac => \sevs_module|Equal0~8_combout\,
	datad => \sevs_module|Equal0~4_combout\,
	combout => \sevs_module|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y20_N16
\sevs_module|dig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig[1]~0_combout\ = (\sevs_module|Equal3~0_combout\ & (\sevs_module|counter\(2) $ (((\sevs_module|counter\(1)) # (!\sevs_module|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(0),
	datab => \sevs_module|counter\(2),
	datac => \sevs_module|counter\(1),
	datad => \sevs_module|Equal3~0_combout\,
	combout => \sevs_module|dig[1]~0_combout\);

-- Location: FF_X26_Y20_N9
\sevs_module|dig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Equal0~10_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(0));

-- Location: LCCOMB_X26_Y20_N22
\sevs_module|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal1~0_combout\ = (\sevs_module|counter\(1) & (\sevs_module|counter\(0) & \sevs_module|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(1),
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal1~0_combout\);

-- Location: FF_X26_Y20_N23
\sevs_module|dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Equal1~0_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(1));

-- Location: LCCOMB_X26_Y20_N16
\sevs_module|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal2~0_combout\ = (\sevs_module|counter\(1) & (!\sevs_module|counter\(0) & \sevs_module|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(1),
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal2~0_combout\);

-- Location: FF_X26_Y20_N17
\sevs_module|dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Equal2~0_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(2));

-- Location: LCCOMB_X26_Y20_N18
\sevs_module|dig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig~1_combout\ = ((!\sevs_module|counter\(1) & \sevs_module|counter\(0))) # (!\sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(1),
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|dig~1_combout\);

-- Location: FF_X26_Y20_N19
\sevs_module|dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|dig~1_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(3));

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

-- Location: LCCOMB_X29_Y14_N4
\uart_module|u_RX|r_PRESCALER[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[0]~13_combout\ = \uart_module|u_RX|r_PRESCALER\(0) $ (VCC)
-- \uart_module|u_RX|r_PRESCALER[0]~14\ = CARRY(\uart_module|u_RX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(0),
	datad => VCC,
	combout => \uart_module|u_RX|r_PRESCALER[0]~13_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[0]~14\);

-- Location: LCCOMB_X30_Y14_N26
\uart_module|u_RX|r_PRESCALER[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[6]~20_combout\ = (!\uart_module|u_RX|r_PRESCALER\(7) & (!\uart_module|u_RX|r_PRESCALER\(9) & (!\uart_module|u_RX|r_PRESCALER\(11) & !\uart_module|u_RX|r_PRESCALER\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(7),
	datab => \uart_module|u_RX|r_PRESCALER\(9),
	datac => \uart_module|u_RX|r_PRESCALER\(11),
	datad => \uart_module|u_RX|r_PRESCALER\(8),
	combout => \uart_module|u_RX|r_PRESCALER[6]~20_combout\);

-- Location: LCCOMB_X30_Y14_N18
\uart_module|u_RX|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan0~0_combout\ = (!\uart_module|u_RX|r_PRESCALER\(3) & (((!\uart_module|u_RX|r_PRESCALER\(1)) # (!\uart_module|u_RX|r_PRESCALER\(0))) # (!\uart_module|u_RX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(2),
	datab => \uart_module|u_RX|r_PRESCALER\(0),
	datac => \uart_module|u_RX|r_PRESCALER\(1),
	datad => \uart_module|u_RX|r_PRESCALER\(3),
	combout => \uart_module|u_RX|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y14_N24
\uart_module|u_RX|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan0~1_combout\ = ((!\uart_module|u_RX|r_PRESCALER\(5) & ((\uart_module|u_RX|LessThan0~0_combout\) # (!\uart_module|u_RX|r_PRESCALER\(4))))) # (!\uart_module|u_RX|r_PRESCALER\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(5),
	datab => \uart_module|u_RX|r_PRESCALER\(4),
	datac => \uart_module|u_RX|r_PRESCALER\(6),
	datad => \uart_module|u_RX|LessThan0~0_combout\,
	combout => \uart_module|u_RX|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y18_N28
\uart_module|u_RX|r_INDEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX~0_combout\ = (\uart_module|u_RX|LessThan1~0_combout\ & (\uart_module|u_RX|Equal0~3_combout\ & \uart_module|u_RX|o_BUSY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|LessThan1~0_combout\,
	datac => \uart_module|u_RX|Equal0~3_combout\,
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|r_INDEX~0_combout\);

-- Location: LCCOMB_X29_Y18_N18
\uart_module|u_RX|r_INDEX[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[0]~1_combout\ = (\uart_module|u_RX|r_INDEX~0_combout\ & (((!\uart_module|u_RX|r_INDEX\(0))))) # (!\uart_module|u_RX|r_INDEX~0_combout\ & (\uart_module|u_RX|r_INDEX\(0) & ((\i_Rx~input_o\) # (\uart_module|u_RX|o_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX~0_combout\,
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|r_INDEX[0]~1_combout\);

-- Location: FF_X29_Y18_N19
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

-- Location: LCCOMB_X29_Y18_N24
\uart_module|u_RX|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add1~0_combout\ = \uart_module|u_RX|r_INDEX\(2) $ (((\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|r_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|Add1~0_combout\);

-- Location: LCCOMB_X29_Y18_N14
\uart_module|u_RX|r_INDEX[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[2]~4_combout\ = (\uart_module|u_RX|r_INDEX[0]~2_combout\ & ((\uart_module|u_RX|r_INDEX\(2)) # ((\uart_module|u_RX|Add1~0_combout\ & \uart_module|u_RX|r_INDEX~0_combout\)))) # (!\uart_module|u_RX|r_INDEX[0]~2_combout\ & 
-- (\uart_module|u_RX|Add1~0_combout\ & ((\uart_module|u_RX|r_INDEX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX[0]~2_combout\,
	datab => \uart_module|u_RX|Add1~0_combout\,
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|r_INDEX[2]~4_combout\);

-- Location: FF_X29_Y18_N15
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

-- Location: LCCOMB_X29_Y18_N2
\uart_module|u_RX|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add1~1_combout\ = \uart_module|u_RX|r_INDEX\(3) $ (((\uart_module|u_RX|r_INDEX\(1) & (\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|r_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datab => \uart_module|u_RX|r_INDEX\(3),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|Add1~1_combout\);

-- Location: LCCOMB_X29_Y18_N20
\uart_module|u_RX|r_INDEX[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[3]~5_combout\ = (\uart_module|u_RX|r_INDEX[0]~2_combout\ & ((\uart_module|u_RX|r_INDEX\(3)) # ((\uart_module|u_RX|Add1~1_combout\ & \uart_module|u_RX|r_INDEX~0_combout\)))) # (!\uart_module|u_RX|r_INDEX[0]~2_combout\ & 
-- (\uart_module|u_RX|Add1~1_combout\ & ((\uart_module|u_RX|r_INDEX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX[0]~2_combout\,
	datab => \uart_module|u_RX|Add1~1_combout\,
	datac => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|r_INDEX[3]~5_combout\);

-- Location: FF_X29_Y18_N21
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

-- Location: LCCOMB_X29_Y18_N30
\uart_module|u_RX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan1~0_combout\ = ((!\uart_module|u_RX|r_INDEX\(1) & (!\uart_module|u_RX|r_INDEX\(2) & !\uart_module|u_RX|r_INDEX\(0)))) # (!\uart_module|u_RX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datab => \uart_module|u_RX|r_INDEX\(3),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y18_N8
\uart_module|u_RX|o_BUSY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|o_BUSY~0_combout\ = (\uart_module|u_RX|LessThan1~0_combout\) # (!\uart_module|u_RX|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|LessThan1~0_combout\,
	datab => \uart_module|u_RX|Equal0~3_combout\,
	combout => \uart_module|u_RX|o_BUSY~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
\i_Rx~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_Rx~_wirecell_combout\ = !\i_Rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Rx~input_o\,
	combout => \i_Rx~_wirecell_combout\);

-- Location: FF_X29_Y18_N9
\uart_module|u_RX|o_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|o_BUSY~0_combout\,
	asdata => \i_Rx~_wirecell_combout\,
	sload => \uart_module|u_RX|ALT_INV_o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|o_BUSY~q\);

-- Location: LCCOMB_X30_Y14_N28
\uart_module|u_RX|r_PRESCALER[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[6]~19_combout\ = ((!\uart_module|u_RX|r_PRESCALER\(10) & !\uart_module|u_RX|r_PRESCALER\(11))) # (!\uart_module|u_RX|r_PRESCALER\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(10),
	datac => \uart_module|u_RX|r_PRESCALER\(11),
	datad => \uart_module|u_RX|r_PRESCALER\(12),
	combout => \uart_module|u_RX|r_PRESCALER[6]~19_combout\);

-- Location: LCCOMB_X30_Y14_N8
\uart_module|u_RX|r_PRESCALER[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[6]~21_combout\ = ((!\uart_module|u_RX|r_PRESCALER[6]~19_combout\ & ((!\uart_module|u_RX|LessThan0~1_combout\) # (!\uart_module|u_RX|r_PRESCALER[6]~20_combout\)))) # (!\uart_module|u_RX|o_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER[6]~20_combout\,
	datab => \uart_module|u_RX|LessThan0~1_combout\,
	datac => \uart_module|u_RX|o_BUSY~q\,
	datad => \uart_module|u_RX|r_PRESCALER[6]~19_combout\,
	combout => \uart_module|u_RX|r_PRESCALER[6]~21_combout\);

-- Location: LCCOMB_X29_Y17_N14
\uart_module|u_RX|r_PRESCALER~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER~22_combout\ = (\uart_module|u_RX|o_BUSY~q\) # (!\i_Rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Rx~input_o\,
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|r_PRESCALER~22_combout\);

-- Location: FF_X29_Y14_N5
\uart_module|u_RX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[0]~13_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(0));

-- Location: LCCOMB_X29_Y14_N6
\uart_module|u_RX|r_PRESCALER[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[1]~15_combout\ = (\uart_module|u_RX|r_PRESCALER\(1) & (!\uart_module|u_RX|r_PRESCALER[0]~14\)) # (!\uart_module|u_RX|r_PRESCALER\(1) & ((\uart_module|u_RX|r_PRESCALER[0]~14\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[1]~16\ = CARRY((!\uart_module|u_RX|r_PRESCALER[0]~14\) # (!\uart_module|u_RX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(1),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[0]~14\,
	combout => \uart_module|u_RX|r_PRESCALER[1]~15_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[1]~16\);

-- Location: FF_X29_Y14_N7
\uart_module|u_RX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[1]~15_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(1));

-- Location: LCCOMB_X29_Y14_N8
\uart_module|u_RX|r_PRESCALER[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[2]~17_combout\ = (\uart_module|u_RX|r_PRESCALER\(2) & (\uart_module|u_RX|r_PRESCALER[1]~16\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(2) & (!\uart_module|u_RX|r_PRESCALER[1]~16\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[2]~18\ = CARRY((\uart_module|u_RX|r_PRESCALER\(2) & !\uart_module|u_RX|r_PRESCALER[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(2),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[1]~16\,
	combout => \uart_module|u_RX|r_PRESCALER[2]~17_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[2]~18\);

-- Location: FF_X29_Y14_N9
\uart_module|u_RX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[2]~17_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(2));

-- Location: LCCOMB_X29_Y14_N10
\uart_module|u_RX|r_PRESCALER[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[3]~23_combout\ = (\uart_module|u_RX|r_PRESCALER\(3) & (!\uart_module|u_RX|r_PRESCALER[2]~18\)) # (!\uart_module|u_RX|r_PRESCALER\(3) & ((\uart_module|u_RX|r_PRESCALER[2]~18\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[3]~24\ = CARRY((!\uart_module|u_RX|r_PRESCALER[2]~18\) # (!\uart_module|u_RX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(3),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[2]~18\,
	combout => \uart_module|u_RX|r_PRESCALER[3]~23_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[3]~24\);

-- Location: FF_X29_Y14_N11
\uart_module|u_RX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[3]~23_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(3));

-- Location: LCCOMB_X29_Y14_N12
\uart_module|u_RX|r_PRESCALER[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[4]~25_combout\ = (\uart_module|u_RX|r_PRESCALER\(4) & (\uart_module|u_RX|r_PRESCALER[3]~24\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(4) & (!\uart_module|u_RX|r_PRESCALER[3]~24\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[4]~26\ = CARRY((\uart_module|u_RX|r_PRESCALER\(4) & !\uart_module|u_RX|r_PRESCALER[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(4),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[3]~24\,
	combout => \uart_module|u_RX|r_PRESCALER[4]~25_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[4]~26\);

-- Location: FF_X30_Y14_N31
\uart_module|u_RX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_PRESCALER[4]~25_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(4));

-- Location: LCCOMB_X29_Y14_N14
\uart_module|u_RX|r_PRESCALER[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[5]~27_combout\ = (\uart_module|u_RX|r_PRESCALER\(5) & (!\uart_module|u_RX|r_PRESCALER[4]~26\)) # (!\uart_module|u_RX|r_PRESCALER\(5) & ((\uart_module|u_RX|r_PRESCALER[4]~26\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[5]~28\ = CARRY((!\uart_module|u_RX|r_PRESCALER[4]~26\) # (!\uart_module|u_RX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(5),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[4]~26\,
	combout => \uart_module|u_RX|r_PRESCALER[5]~27_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[5]~28\);

-- Location: FF_X30_Y14_N21
\uart_module|u_RX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_PRESCALER[5]~27_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(5));

-- Location: LCCOMB_X29_Y14_N16
\uart_module|u_RX|r_PRESCALER[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[6]~29_combout\ = (\uart_module|u_RX|r_PRESCALER\(6) & (\uart_module|u_RX|r_PRESCALER[5]~28\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(6) & (!\uart_module|u_RX|r_PRESCALER[5]~28\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[6]~30\ = CARRY((\uart_module|u_RX|r_PRESCALER\(6) & !\uart_module|u_RX|r_PRESCALER[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(6),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[5]~28\,
	combout => \uart_module|u_RX|r_PRESCALER[6]~29_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[6]~30\);

-- Location: FF_X30_Y14_N5
\uart_module|u_RX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_PRESCALER[6]~29_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(6));

-- Location: LCCOMB_X29_Y14_N18
\uart_module|u_RX|r_PRESCALER[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[7]~31_combout\ = (\uart_module|u_RX|r_PRESCALER\(7) & (!\uart_module|u_RX|r_PRESCALER[6]~30\)) # (!\uart_module|u_RX|r_PRESCALER\(7) & ((\uart_module|u_RX|r_PRESCALER[6]~30\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[7]~32\ = CARRY((!\uart_module|u_RX|r_PRESCALER[6]~30\) # (!\uart_module|u_RX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(7),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[6]~30\,
	combout => \uart_module|u_RX|r_PRESCALER[7]~31_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[7]~32\);

-- Location: FF_X29_Y14_N19
\uart_module|u_RX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[7]~31_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(7));

-- Location: LCCOMB_X29_Y14_N20
\uart_module|u_RX|r_PRESCALER[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[8]~33_combout\ = (\uart_module|u_RX|r_PRESCALER\(8) & (\uart_module|u_RX|r_PRESCALER[7]~32\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(8) & (!\uart_module|u_RX|r_PRESCALER[7]~32\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[8]~34\ = CARRY((\uart_module|u_RX|r_PRESCALER\(8) & !\uart_module|u_RX|r_PRESCALER[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(8),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[7]~32\,
	combout => \uart_module|u_RX|r_PRESCALER[8]~33_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[8]~34\);

-- Location: FF_X29_Y14_N21
\uart_module|u_RX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[8]~33_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(8));

-- Location: LCCOMB_X29_Y14_N22
\uart_module|u_RX|r_PRESCALER[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[9]~35_combout\ = (\uart_module|u_RX|r_PRESCALER\(9) & (!\uart_module|u_RX|r_PRESCALER[8]~34\)) # (!\uart_module|u_RX|r_PRESCALER\(9) & ((\uart_module|u_RX|r_PRESCALER[8]~34\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[9]~36\ = CARRY((!\uart_module|u_RX|r_PRESCALER[8]~34\) # (!\uart_module|u_RX|r_PRESCALER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(9),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[8]~34\,
	combout => \uart_module|u_RX|r_PRESCALER[9]~35_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[9]~36\);

-- Location: FF_X29_Y14_N23
\uart_module|u_RX|r_PRESCALER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[9]~35_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(9));

-- Location: LCCOMB_X29_Y14_N24
\uart_module|u_RX|r_PRESCALER[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[10]~37_combout\ = (\uart_module|u_RX|r_PRESCALER\(10) & (\uart_module|u_RX|r_PRESCALER[9]~36\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(10) & (!\uart_module|u_RX|r_PRESCALER[9]~36\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[10]~38\ = CARRY((\uart_module|u_RX|r_PRESCALER\(10) & !\uart_module|u_RX|r_PRESCALER[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(10),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[9]~36\,
	combout => \uart_module|u_RX|r_PRESCALER[10]~37_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[10]~38\);

-- Location: FF_X29_Y14_N25
\uart_module|u_RX|r_PRESCALER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[10]~37_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(10));

-- Location: LCCOMB_X29_Y14_N26
\uart_module|u_RX|r_PRESCALER[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[11]~39_combout\ = (\uart_module|u_RX|r_PRESCALER\(11) & (!\uart_module|u_RX|r_PRESCALER[10]~38\)) # (!\uart_module|u_RX|r_PRESCALER\(11) & ((\uart_module|u_RX|r_PRESCALER[10]~38\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[11]~40\ = CARRY((!\uart_module|u_RX|r_PRESCALER[10]~38\) # (!\uart_module|u_RX|r_PRESCALER\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(11),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[10]~38\,
	combout => \uart_module|u_RX|r_PRESCALER[11]~39_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[11]~40\);

-- Location: FF_X29_Y14_N27
\uart_module|u_RX|r_PRESCALER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[11]~39_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(11));

-- Location: LCCOMB_X29_Y14_N28
\uart_module|u_RX|r_PRESCALER[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[12]~41_combout\ = \uart_module|u_RX|r_PRESCALER[11]~40\ $ (!\uart_module|u_RX|r_PRESCALER\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_PRESCALER\(12),
	cin => \uart_module|u_RX|r_PRESCALER[11]~40\,
	combout => \uart_module|u_RX|r_PRESCALER[12]~41_combout\);

-- Location: FF_X29_Y14_N29
\uart_module|u_RX|r_PRESCALER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[12]~41_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[6]~21_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(12));

-- Location: LCCOMB_X29_Y14_N0
\uart_module|u_RX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~0_combout\ = (!\uart_module|u_RX|r_PRESCALER\(1) & (!\uart_module|u_RX|r_PRESCALER\(0) & (\uart_module|u_RX|r_PRESCALER\(2) & !\uart_module|u_RX|r_PRESCALER\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(1),
	datab => \uart_module|u_RX|r_PRESCALER\(0),
	datac => \uart_module|u_RX|r_PRESCALER\(2),
	datad => \uart_module|u_RX|r_PRESCALER\(3),
	combout => \uart_module|u_RX|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y14_N30
\uart_module|u_RX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~2_combout\ = (!\uart_module|u_RX|r_PRESCALER\(9) & (\uart_module|u_RX|r_PRESCALER\(8) & (\uart_module|u_RX|r_PRESCALER\(11) & !\uart_module|u_RX|r_PRESCALER\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(9),
	datab => \uart_module|u_RX|r_PRESCALER\(8),
	datac => \uart_module|u_RX|r_PRESCALER\(11),
	datad => \uart_module|u_RX|r_PRESCALER\(10),
	combout => \uart_module|u_RX|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y14_N2
\uart_module|u_RX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~1_combout\ = (!\uart_module|u_RX|r_PRESCALER\(4) & (!\uart_module|u_RX|r_PRESCALER\(5) & (\uart_module|u_RX|r_PRESCALER\(6) & \uart_module|u_RX|r_PRESCALER\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(4),
	datab => \uart_module|u_RX|r_PRESCALER\(5),
	datac => \uart_module|u_RX|r_PRESCALER\(6),
	datad => \uart_module|u_RX|r_PRESCALER\(7),
	combout => \uart_module|u_RX|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y14_N2
\uart_module|u_RX|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~3_combout\ = (!\uart_module|u_RX|r_PRESCALER\(12) & (\uart_module|u_RX|Equal0~0_combout\ & (\uart_module|u_RX|Equal0~2_combout\ & \uart_module|u_RX|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(12),
	datab => \uart_module|u_RX|Equal0~0_combout\,
	datac => \uart_module|u_RX|Equal0~2_combout\,
	datad => \uart_module|u_RX|Equal0~1_combout\,
	combout => \uart_module|u_RX|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y18_N26
\uart_module|u_RX|r_INDEX[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[0]~2_combout\ = (\uart_module|u_RX|o_BUSY~q\ & (((!\uart_module|u_RX|LessThan1~0_combout\) # (!\uart_module|u_RX|Equal0~3_combout\)))) # (!\uart_module|u_RX|o_BUSY~q\ & (\i_Rx~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Equal0~3_combout\,
	datac => \uart_module|u_RX|LessThan1~0_combout\,
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|r_INDEX[0]~2_combout\);

-- Location: LCCOMB_X29_Y18_N12
\uart_module|u_RX|r_INDEX[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[1]~3_combout\ = (\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|r_INDEX[0]~2_combout\) # ((!\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|r_INDEX~0_combout\)))) # (!\uart_module|u_RX|r_INDEX\(1) & 
-- (((\uart_module|u_RX|r_INDEX\(0) & \uart_module|u_RX|r_INDEX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX[0]~2_combout\,
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|r_INDEX[1]~3_combout\);

-- Location: FF_X29_Y18_N13
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

-- Location: LCCOMB_X29_Y17_N22
\uart_module|u_RX|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~5_combout\ = (!\uart_module|u_RX|r_INDEX\(0) & (!\uart_module|u_RX|r_INDEX\(3) & (\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|o_BUSY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \uart_module|u_RX|r_INDEX\(3),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|Decoder0~5_combout\);

-- Location: LCCOMB_X28_Y17_N10
\uart_module|u_RX|r_DATA_BUFFER[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[4]~5_combout\ = (\uart_module|u_RX|r_INDEX\(1) & (((\uart_module|u_RX|r_DATA_BUFFER\(4))))) # (!\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|Decoder0~5_combout\ & (\i_Rx~input_o\)) # 
-- (!\uart_module|u_RX|Decoder0~5_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(4),
	datad => \uart_module|u_RX|Decoder0~5_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[4]~5_combout\);

-- Location: FF_X28_Y17_N11
\uart_module|u_RX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X26_Y17_N6
\uart_module|u_RX|h_arr[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[2][3]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|h_arr[2][3]~feeder_combout\);

-- Location: LCCOMB_X31_Y18_N0
\uart_module|u_RX|wh_arr_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[0]~32_combout\ = \uart_module|u_RX|wh_arr_counter\(0) $ (VCC)
-- \uart_module|u_RX|wh_arr_counter[0]~33\ = CARRY(\uart_module|u_RX|wh_arr_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(0),
	datad => VCC,
	combout => \uart_module|u_RX|wh_arr_counter[0]~32_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[0]~33\);

-- Location: LCCOMB_X31_Y18_N2
\uart_module|u_RX|wh_arr_counter[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[1]~37_combout\ = (\uart_module|u_RX|wh_arr_counter\(1) & (!\uart_module|u_RX|wh_arr_counter[0]~33\)) # (!\uart_module|u_RX|wh_arr_counter\(1) & ((\uart_module|u_RX|wh_arr_counter[0]~33\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[1]~38\ = CARRY((!\uart_module|u_RX|wh_arr_counter[0]~33\) # (!\uart_module|u_RX|wh_arr_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(1),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[0]~33\,
	combout => \uart_module|u_RX|wh_arr_counter[1]~37_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[1]~38\);

-- Location: LCCOMB_X31_Y18_N4
\uart_module|u_RX|wh_arr_counter[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[2]~39_combout\ = (\uart_module|u_RX|wh_arr_counter\(2) & (\uart_module|u_RX|wh_arr_counter[1]~38\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(2) & (!\uart_module|u_RX|wh_arr_counter[1]~38\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[2]~40\ = CARRY((\uart_module|u_RX|wh_arr_counter\(2) & !\uart_module|u_RX|wh_arr_counter[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(2),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[1]~38\,
	combout => \uart_module|u_RX|wh_arr_counter[2]~39_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[2]~40\);

-- Location: LCCOMB_X28_Y17_N30
\uart_module|u_RX|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~1_combout\ = (\uart_module|u_RX|o_BUSY~q\ & (\uart_module|u_RX|r_INDEX\(0) & !\uart_module|u_RX|r_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|o_BUSY~q\,
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|r_INDEX\(3),
	combout => \uart_module|u_RX|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y17_N28
\uart_module|u_RX|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~0_combout\ = (!\uart_module|u_RX|r_INDEX\(1) & !\uart_module|u_RX|r_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\uart_module|u_RX|r_DATA_BUFFER[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[1]~0_combout\ = (\uart_module|u_RX|Decoder0~1_combout\ & ((\uart_module|u_RX|Decoder0~0_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~0_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(1)))))) # 
-- (!\uart_module|u_RX|Decoder0~1_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~1_combout\,
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(1),
	datad => \uart_module|u_RX|Decoder0~0_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[1]~0_combout\);

-- Location: FF_X28_Y17_N5
\uart_module|u_RX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X29_Y17_N16
\uart_module|u_RX|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~3_combout\ = (!\uart_module|u_RX|r_INDEX\(0) & (!\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|o_BUSY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|Decoder0~3_combout\);

-- Location: LCCOMB_X28_Y17_N18
\uart_module|u_RX|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~6_combout\ = (\uart_module|u_RX|r_INDEX\(1) & !\uart_module|u_RX|r_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|Decoder0~6_combout\);

-- Location: LCCOMB_X28_Y17_N8
\uart_module|u_RX|r_DATA_BUFFER[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[2]~6_combout\ = (\uart_module|u_RX|Decoder0~3_combout\ & ((\uart_module|u_RX|Decoder0~6_combout\ & ((\i_Rx~input_o\))) # (!\uart_module|u_RX|Decoder0~6_combout\ & (\uart_module|u_RX|r_DATA_BUFFER\(2))))) # 
-- (!\uart_module|u_RX|Decoder0~3_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~3_combout\,
	datab => \uart_module|u_RX|Decoder0~6_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(2),
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[2]~6_combout\);

-- Location: FF_X28_Y17_N9
\uart_module|u_RX|r_DATA_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(2));

-- Location: LCCOMB_X28_Y17_N16
\uart_module|u_RX|r_DATA_BUFFER[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[6]~9_combout\ = (\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|Decoder0~5_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~5_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(6)))))) # 
-- (!\uart_module|u_RX|r_INDEX\(1) & (((\uart_module|u_RX|r_DATA_BUFFER\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(6),
	datad => \uart_module|u_RX|Decoder0~5_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[6]~9_combout\);

-- Location: FF_X28_Y17_N17
\uart_module|u_RX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(6));

-- Location: LCCOMB_X29_Y17_N28
\uart_module|u_RX|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~4_combout\ = (\uart_module|u_RX|r_INDEX\(0) & (!\uart_module|u_RX|r_INDEX\(3) & (\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|o_BUSY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(0),
	datab => \uart_module|u_RX|r_INDEX\(3),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|o_BUSY~q\,
	combout => \uart_module|u_RX|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y17_N2
\uart_module|u_RX|r_DATA_BUFFER[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[5]~8_combout\ = (\uart_module|u_RX|r_INDEX\(1) & (((\uart_module|u_RX|r_DATA_BUFFER\(5))))) # (!\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|Decoder0~4_combout\ & (\i_Rx~input_o\)) # 
-- (!\uart_module|u_RX|Decoder0~4_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(5),
	datad => \uart_module|u_RX|Decoder0~4_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[5]~8_combout\);

-- Location: FF_X28_Y17_N3
\uart_module|u_RX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(5));

-- Location: LCCOMB_X28_Y17_N14
\uart_module|u_RX|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal1~0_combout\ = (\uart_module|u_RX|r_DATA_BUFFER\(6) & \uart_module|u_RX|r_DATA_BUFFER\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_DATA_BUFFER\(6),
	datad => \uart_module|u_RX|r_DATA_BUFFER\(5),
	combout => \uart_module|u_RX|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\uart_module|u_RX|r_DATA_BUFFER[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\ = (\uart_module|u_RX|Decoder0~1_combout\ & ((\uart_module|u_RX|Decoder0~6_combout\ & ((\i_Rx~input_o\))) # (!\uart_module|u_RX|Decoder0~6_combout\ & (\uart_module|u_RX|r_DATA_BUFFER\(3))))) # 
-- (!\uart_module|u_RX|Decoder0~1_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~1_combout\,
	datab => \uart_module|u_RX|Decoder0~6_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(3),
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[3]~7_combout\);

-- Location: FF_X28_Y17_N27
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

-- Location: LCCOMB_X28_Y17_N24
\uart_module|u_RX|r_DATA_BUFFER[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[7]~4_combout\ = (\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|Decoder0~4_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~4_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(7)))))) # 
-- (!\uart_module|u_RX|r_INDEX\(1) & (((\uart_module|u_RX|r_DATA_BUFFER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(7),
	datad => \uart_module|u_RX|Decoder0~4_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[7]~4_combout\);

-- Location: FF_X28_Y17_N25
\uart_module|u_RX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(7));

-- Location: LCCOMB_X28_Y17_N20
\uart_module|u_RX|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~2_combout\ = (\uart_module|u_RX|o_BUSY~q\ & (!\uart_module|u_RX|r_INDEX\(2) & (!\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|o_BUSY~q\,
	datab => \uart_module|u_RX|r_INDEX\(2),
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(3),
	combout => \uart_module|u_RX|Decoder0~2_combout\);

-- Location: LCCOMB_X28_Y17_N22
\uart_module|u_RX|r_DATA_BUFFER[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[8]~3_combout\ = (\uart_module|u_RX|r_INDEX\(0) & (((\uart_module|u_RX|r_DATA_BUFFER\(8))))) # (!\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|Decoder0~2_combout\ & (\i_Rx~input_o\)) # 
-- (!\uart_module|u_RX|Decoder0~2_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(8),
	datad => \uart_module|u_RX|Decoder0~2_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[8]~3_combout\);

-- Location: FF_X28_Y17_N23
\uart_module|u_RX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(8));

-- Location: LCCOMB_X28_Y17_N0
\uart_module|u_RX|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal1~1_combout\ = (\uart_module|u_RX|r_DATA_BUFFER\(3) & (\uart_module|u_RX|r_DATA_BUFFER\(7) & (\uart_module|u_RX|r_DATA_BUFFER\(8) & \uart_module|u_RX|r_DATA_BUFFER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_DATA_BUFFER\(3),
	datab => \uart_module|u_RX|r_DATA_BUFFER\(7),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(8),
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y17_N6
\uart_module|u_RX|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal1~2_combout\ = (\uart_module|u_RX|r_DATA_BUFFER\(1) & (\uart_module|u_RX|r_DATA_BUFFER\(2) & (\uart_module|u_RX|Equal1~0_combout\ & \uart_module|u_RX|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_DATA_BUFFER\(1),
	datab => \uart_module|u_RX|r_DATA_BUFFER\(2),
	datac => \uart_module|u_RX|Equal1~0_combout\,
	datad => \uart_module|u_RX|Equal1~1_combout\,
	combout => \uart_module|u_RX|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y17_N30
\uart_module|u_RX|r_DATA_BUFFER[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\ = (\uart_module|u_RX|Decoder0~3_combout\ & ((\uart_module|u_RX|Decoder0~0_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~0_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(0)))))) # 
-- (!\uart_module|u_RX|Decoder0~3_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~3_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|Decoder0~0_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[0]~2_combout\);

-- Location: FF_X29_Y17_N31
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

-- Location: LCCOMB_X29_Y17_N0
\uart_module|u_RX|r_DATA_BUFFER[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\ = (\uart_module|u_RX|Decoder0~2_combout\ & ((\uart_module|u_RX|r_INDEX\(0) & (\i_Rx~input_o\)) # (!\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|r_DATA_BUFFER\(9)))))) # 
-- (!\uart_module|u_RX|Decoder0~2_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~2_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(9),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|r_DATA_BUFFER[9]~1_combout\);

-- Location: FF_X29_Y17_N1
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

-- Location: LCCOMB_X29_Y17_N4
\uart_module|u_RX|img_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|img_state~10_combout\ = (!\uart_module|u_RX|r_DATA_BUFFER\(0) & \uart_module|u_RX|r_DATA_BUFFER\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|r_DATA_BUFFER\(9),
	combout => \uart_module|u_RX|img_state~10_combout\);

-- Location: LCCOMB_X29_Y17_N10
\uart_module|u_RX|img_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|img_state~11_combout\ = (!\uart_module|u_RX|LessThan1~0_combout\ & (\uart_module|u_RX|o_BUSY~q\ & (\uart_module|u_RX|img_state~10_combout\ & \uart_module|u_RX|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|LessThan1~0_combout\,
	datab => \uart_module|u_RX|o_BUSY~q\,
	datac => \uart_module|u_RX|img_state~10_combout\,
	datad => \uart_module|u_RX|Equal0~3_combout\,
	combout => \uart_module|u_RX|img_state~11_combout\);

-- Location: LCCOMB_X30_Y17_N22
\uart_module|u_RX|img_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|img_state~12_combout\ = (\uart_module|u_RX|img_state.initial~q\) # ((\uart_module|u_RX|Equal1~2_combout\ & \uart_module|u_RX|img_state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|Equal1~2_combout\,
	datac => \uart_module|u_RX|img_state.initial~q\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|img_state~12_combout\);

-- Location: FF_X30_Y17_N23
\uart_module|u_RX|img_state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|img_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|img_state.initial~q\);

-- Location: LCCOMB_X30_Y17_N24
\uart_module|u_RX|img_state.running~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|img_state.running~0_combout\ = (\uart_module|u_RX|img_state.running~q\) # ((!\uart_module|u_RX|img_state.initial~q\ & (\uart_module|u_RX|Equal1~2_combout\ & \uart_module|u_RX|img_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|img_state.initial~q\,
	datab => \uart_module|u_RX|Equal1~2_combout\,
	datac => \uart_module|u_RX|img_state.running~q\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|img_state.running~0_combout\);

-- Location: FF_X30_Y17_N25
\uart_module|u_RX|img_state.running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|img_state.running~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|img_state.running~q\);

-- Location: LCCOMB_X30_Y17_N2
\uart_module|u_RX|w_arr_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|w_arr_en~0_combout\ = (\uart_module|u_RX|Equal1~2_combout\ & (((\uart_module|u_RX|w_arr_en~q\ & \uart_module|u_RX|img_state.running~q\)) # (!\uart_module|u_RX|img_state.initial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|img_state.initial~q\,
	datab => \uart_module|u_RX|w_arr_en~q\,
	datac => \uart_module|u_RX|Equal1~2_combout\,
	datad => \uart_module|u_RX|img_state.running~q\,
	combout => \uart_module|u_RX|w_arr_en~0_combout\);

-- Location: LCCOMB_X30_Y17_N28
\uart_module|u_RX|w_arr_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|w_arr_en~1_combout\ = (\uart_module|u_RX|w_arr_en~0_combout\ & ((\uart_module|u_RX|img_state~11_combout\ & (!\uart_module|u_RX|img_state.initial~q\)) # (!\uart_module|u_RX|img_state~11_combout\ & ((\uart_module|u_RX|w_arr_en~q\))))) # 
-- (!\uart_module|u_RX|w_arr_en~0_combout\ & (((\uart_module|u_RX|w_arr_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|img_state.initial~q\,
	datab => \uart_module|u_RX|w_arr_en~0_combout\,
	datac => \uart_module|u_RX|w_arr_en~q\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|w_arr_en~1_combout\);

-- Location: FF_X30_Y17_N29
\uart_module|u_RX|w_arr_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|w_arr_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|w_arr_en~q\);

-- Location: LCCOMB_X30_Y17_N20
\uart_module|u_RX|h_arr_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr_en~0_combout\ = (\uart_module|u_RX|img_state.running~q\ & (!\uart_module|u_RX|w_arr_en~q\ & (\uart_module|u_RX|Equal1~2_combout\ & \uart_module|u_RX|img_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|img_state.running~q\,
	datab => \uart_module|u_RX|w_arr_en~q\,
	datac => \uart_module|u_RX|Equal1~2_combout\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|h_arr_en~0_combout\);

-- Location: LCCOMB_X30_Y17_N6
\uart_module|u_RX|h_arr_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr_en~1_combout\ = (\uart_module|u_RX|h_arr_en~0_combout\ & (!\uart_module|u_RX|w_arr_en~q\)) # (!\uart_module|u_RX|h_arr_en~0_combout\ & ((\uart_module|u_RX|h_arr_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|w_arr_en~q\,
	datac => \uart_module|u_RX|h_arr_en~q\,
	datad => \uart_module|u_RX|h_arr_en~0_combout\,
	combout => \uart_module|u_RX|h_arr_en~1_combout\);

-- Location: FF_X30_Y17_N7
\uart_module|u_RX|h_arr_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr_en~q\);

-- Location: LCCOMB_X28_Y17_N12
\uart_module|u_RX|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|process_0~0_combout\ = (\uart_module|u_RX|r_DATA_BUFFER\(7)) # ((\uart_module|u_RX|r_DATA_BUFFER\(4) & ((\uart_module|u_RX|r_DATA_BUFFER\(3)) # (\uart_module|u_RX|r_DATA_BUFFER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_DATA_BUFFER\(3),
	datab => \uart_module|u_RX|r_DATA_BUFFER\(7),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(2),
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|process_0~0_combout\);

-- Location: LCCOMB_X29_Y17_N20
\uart_module|u_RX|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|process_0~1_combout\ = ((\uart_module|u_RX|r_DATA_BUFFER\(8)) # ((\uart_module|u_RX|process_0~0_combout\) # (!\uart_module|u_RX|r_DATA_BUFFER\(5)))) # (!\uart_module|u_RX|r_DATA_BUFFER\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_DATA_BUFFER\(6),
	datab => \uart_module|u_RX|r_DATA_BUFFER\(8),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(5),
	datad => \uart_module|u_RX|process_0~0_combout\,
	combout => \uart_module|u_RX|process_0~1_combout\);

-- Location: LCCOMB_X30_Y17_N26
\uart_module|u_RX|wh_arr_counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[1]~35_combout\ = (\uart_module|u_RX|Equal1~2_combout\ & (((!\uart_module|u_RX|w_arr_en~q\)))) # (!\uart_module|u_RX|Equal1~2_combout\ & (!\uart_module|u_RX|process_0~1_combout\ & ((\uart_module|u_RX|h_arr_en~q\) # 
-- (\uart_module|u_RX|w_arr_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|h_arr_en~q\,
	datab => \uart_module|u_RX|w_arr_en~q\,
	datac => \uart_module|u_RX|Equal1~2_combout\,
	datad => \uart_module|u_RX|process_0~1_combout\,
	combout => \uart_module|u_RX|wh_arr_counter[1]~35_combout\);

-- Location: LCCOMB_X30_Y17_N0
\uart_module|u_RX|wh_arr_counter[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[1]~36_combout\ = (\uart_module|u_RX|img_state.running~q\ & (\uart_module|u_RX|wh_arr_counter[1]~35_combout\ & \uart_module|u_RX|img_state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|img_state.running~q\,
	datac => \uart_module|u_RX|wh_arr_counter[1]~35_combout\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|wh_arr_counter[1]~36_combout\);

-- Location: FF_X31_Y18_N5
\uart_module|u_RX|wh_arr_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[2]~39_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(2));

-- Location: LCCOMB_X31_Y18_N6
\uart_module|u_RX|wh_arr_counter[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[3]~41_combout\ = (\uart_module|u_RX|wh_arr_counter\(3) & (!\uart_module|u_RX|wh_arr_counter[2]~40\)) # (!\uart_module|u_RX|wh_arr_counter\(3) & ((\uart_module|u_RX|wh_arr_counter[2]~40\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[3]~42\ = CARRY((!\uart_module|u_RX|wh_arr_counter[2]~40\) # (!\uart_module|u_RX|wh_arr_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(3),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[2]~40\,
	combout => \uart_module|u_RX|wh_arr_counter[3]~41_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[3]~42\);

-- Location: FF_X31_Y18_N7
\uart_module|u_RX|wh_arr_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[3]~41_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(3));

-- Location: LCCOMB_X31_Y18_N8
\uart_module|u_RX|wh_arr_counter[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[4]~43_combout\ = (\uart_module|u_RX|wh_arr_counter\(4) & (\uart_module|u_RX|wh_arr_counter[3]~42\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(4) & (!\uart_module|u_RX|wh_arr_counter[3]~42\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[4]~44\ = CARRY((\uart_module|u_RX|wh_arr_counter\(4) & !\uart_module|u_RX|wh_arr_counter[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(4),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[3]~42\,
	combout => \uart_module|u_RX|wh_arr_counter[4]~43_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[4]~44\);

-- Location: FF_X31_Y18_N9
\uart_module|u_RX|wh_arr_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[4]~43_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(4));

-- Location: LCCOMB_X31_Y18_N10
\uart_module|u_RX|wh_arr_counter[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[5]~45_combout\ = (\uart_module|u_RX|wh_arr_counter\(5) & (!\uart_module|u_RX|wh_arr_counter[4]~44\)) # (!\uart_module|u_RX|wh_arr_counter\(5) & ((\uart_module|u_RX|wh_arr_counter[4]~44\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[5]~46\ = CARRY((!\uart_module|u_RX|wh_arr_counter[4]~44\) # (!\uart_module|u_RX|wh_arr_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(5),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[4]~44\,
	combout => \uart_module|u_RX|wh_arr_counter[5]~45_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[5]~46\);

-- Location: FF_X31_Y18_N11
\uart_module|u_RX|wh_arr_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[5]~45_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(5));

-- Location: LCCOMB_X31_Y18_N12
\uart_module|u_RX|wh_arr_counter[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[6]~47_combout\ = (\uart_module|u_RX|wh_arr_counter\(6) & (\uart_module|u_RX|wh_arr_counter[5]~46\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(6) & (!\uart_module|u_RX|wh_arr_counter[5]~46\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[6]~48\ = CARRY((\uart_module|u_RX|wh_arr_counter\(6) & !\uart_module|u_RX|wh_arr_counter[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(6),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[5]~46\,
	combout => \uart_module|u_RX|wh_arr_counter[6]~47_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[6]~48\);

-- Location: FF_X31_Y18_N13
\uart_module|u_RX|wh_arr_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[6]~47_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(6));

-- Location: LCCOMB_X31_Y18_N14
\uart_module|u_RX|wh_arr_counter[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[7]~49_combout\ = (\uart_module|u_RX|wh_arr_counter\(7) & (!\uart_module|u_RX|wh_arr_counter[6]~48\)) # (!\uart_module|u_RX|wh_arr_counter\(7) & ((\uart_module|u_RX|wh_arr_counter[6]~48\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[7]~50\ = CARRY((!\uart_module|u_RX|wh_arr_counter[6]~48\) # (!\uart_module|u_RX|wh_arr_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(7),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[6]~48\,
	combout => \uart_module|u_RX|wh_arr_counter[7]~49_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[7]~50\);

-- Location: FF_X31_Y18_N15
\uart_module|u_RX|wh_arr_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[7]~49_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(7));

-- Location: LCCOMB_X31_Y18_N16
\uart_module|u_RX|wh_arr_counter[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[8]~51_combout\ = (\uart_module|u_RX|wh_arr_counter\(8) & (\uart_module|u_RX|wh_arr_counter[7]~50\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(8) & (!\uart_module|u_RX|wh_arr_counter[7]~50\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[8]~52\ = CARRY((\uart_module|u_RX|wh_arr_counter\(8) & !\uart_module|u_RX|wh_arr_counter[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(8),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[7]~50\,
	combout => \uart_module|u_RX|wh_arr_counter[8]~51_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[8]~52\);

-- Location: FF_X31_Y18_N17
\uart_module|u_RX|wh_arr_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[8]~51_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(8));

-- Location: LCCOMB_X31_Y18_N18
\uart_module|u_RX|wh_arr_counter[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[9]~53_combout\ = (\uart_module|u_RX|wh_arr_counter\(9) & (!\uart_module|u_RX|wh_arr_counter[8]~52\)) # (!\uart_module|u_RX|wh_arr_counter\(9) & ((\uart_module|u_RX|wh_arr_counter[8]~52\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[9]~54\ = CARRY((!\uart_module|u_RX|wh_arr_counter[8]~52\) # (!\uart_module|u_RX|wh_arr_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(9),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[8]~52\,
	combout => \uart_module|u_RX|wh_arr_counter[9]~53_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[9]~54\);

-- Location: FF_X31_Y18_N19
\uart_module|u_RX|wh_arr_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[9]~53_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(9));

-- Location: LCCOMB_X31_Y18_N20
\uart_module|u_RX|wh_arr_counter[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[10]~55_combout\ = (\uart_module|u_RX|wh_arr_counter\(10) & (\uart_module|u_RX|wh_arr_counter[9]~54\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(10) & (!\uart_module|u_RX|wh_arr_counter[9]~54\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[10]~56\ = CARRY((\uart_module|u_RX|wh_arr_counter\(10) & !\uart_module|u_RX|wh_arr_counter[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(10),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[9]~54\,
	combout => \uart_module|u_RX|wh_arr_counter[10]~55_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[10]~56\);

-- Location: FF_X31_Y18_N21
\uart_module|u_RX|wh_arr_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[10]~55_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(10));

-- Location: LCCOMB_X31_Y18_N22
\uart_module|u_RX|wh_arr_counter[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[11]~57_combout\ = (\uart_module|u_RX|wh_arr_counter\(11) & (!\uart_module|u_RX|wh_arr_counter[10]~56\)) # (!\uart_module|u_RX|wh_arr_counter\(11) & ((\uart_module|u_RX|wh_arr_counter[10]~56\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[11]~58\ = CARRY((!\uart_module|u_RX|wh_arr_counter[10]~56\) # (!\uart_module|u_RX|wh_arr_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(11),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[10]~56\,
	combout => \uart_module|u_RX|wh_arr_counter[11]~57_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[11]~58\);

-- Location: FF_X31_Y18_N23
\uart_module|u_RX|wh_arr_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[11]~57_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(11));

-- Location: LCCOMB_X31_Y18_N24
\uart_module|u_RX|wh_arr_counter[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[12]~59_combout\ = (\uart_module|u_RX|wh_arr_counter\(12) & (\uart_module|u_RX|wh_arr_counter[11]~58\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(12) & (!\uart_module|u_RX|wh_arr_counter[11]~58\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[12]~60\ = CARRY((\uart_module|u_RX|wh_arr_counter\(12) & !\uart_module|u_RX|wh_arr_counter[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(12),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[11]~58\,
	combout => \uart_module|u_RX|wh_arr_counter[12]~59_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[12]~60\);

-- Location: FF_X31_Y18_N25
\uart_module|u_RX|wh_arr_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[12]~59_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(12));

-- Location: LCCOMB_X31_Y18_N26
\uart_module|u_RX|wh_arr_counter[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[13]~61_combout\ = (\uart_module|u_RX|wh_arr_counter\(13) & (!\uart_module|u_RX|wh_arr_counter[12]~60\)) # (!\uart_module|u_RX|wh_arr_counter\(13) & ((\uart_module|u_RX|wh_arr_counter[12]~60\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[13]~62\ = CARRY((!\uart_module|u_RX|wh_arr_counter[12]~60\) # (!\uart_module|u_RX|wh_arr_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(13),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[12]~60\,
	combout => \uart_module|u_RX|wh_arr_counter[13]~61_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[13]~62\);

-- Location: FF_X31_Y18_N27
\uart_module|u_RX|wh_arr_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[13]~61_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(13));

-- Location: LCCOMB_X31_Y18_N28
\uart_module|u_RX|wh_arr_counter[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[14]~63_combout\ = (\uart_module|u_RX|wh_arr_counter\(14) & (\uart_module|u_RX|wh_arr_counter[13]~62\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(14) & (!\uart_module|u_RX|wh_arr_counter[13]~62\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[14]~64\ = CARRY((\uart_module|u_RX|wh_arr_counter\(14) & !\uart_module|u_RX|wh_arr_counter[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(14),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[13]~62\,
	combout => \uart_module|u_RX|wh_arr_counter[14]~63_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[14]~64\);

-- Location: FF_X31_Y18_N29
\uart_module|u_RX|wh_arr_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[14]~63_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(14));

-- Location: LCCOMB_X31_Y18_N30
\uart_module|u_RX|wh_arr_counter[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[15]~65_combout\ = (\uart_module|u_RX|wh_arr_counter\(15) & (!\uart_module|u_RX|wh_arr_counter[14]~64\)) # (!\uart_module|u_RX|wh_arr_counter\(15) & ((\uart_module|u_RX|wh_arr_counter[14]~64\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[15]~66\ = CARRY((!\uart_module|u_RX|wh_arr_counter[14]~64\) # (!\uart_module|u_RX|wh_arr_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(15),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[14]~64\,
	combout => \uart_module|u_RX|wh_arr_counter[15]~65_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[15]~66\);

-- Location: FF_X31_Y18_N31
\uart_module|u_RX|wh_arr_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[15]~65_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(15));

-- Location: LCCOMB_X31_Y17_N0
\uart_module|u_RX|wh_arr_counter[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[16]~67_combout\ = (\uart_module|u_RX|wh_arr_counter\(16) & (\uart_module|u_RX|wh_arr_counter[15]~66\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(16) & (!\uart_module|u_RX|wh_arr_counter[15]~66\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[16]~68\ = CARRY((\uart_module|u_RX|wh_arr_counter\(16) & !\uart_module|u_RX|wh_arr_counter[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(16),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[15]~66\,
	combout => \uart_module|u_RX|wh_arr_counter[16]~67_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[16]~68\);

-- Location: FF_X31_Y17_N1
\uart_module|u_RX|wh_arr_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[16]~67_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(16));

-- Location: LCCOMB_X31_Y17_N2
\uart_module|u_RX|wh_arr_counter[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[17]~69_combout\ = (\uart_module|u_RX|wh_arr_counter\(17) & (!\uart_module|u_RX|wh_arr_counter[16]~68\)) # (!\uart_module|u_RX|wh_arr_counter\(17) & ((\uart_module|u_RX|wh_arr_counter[16]~68\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[17]~70\ = CARRY((!\uart_module|u_RX|wh_arr_counter[16]~68\) # (!\uart_module|u_RX|wh_arr_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(17),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[16]~68\,
	combout => \uart_module|u_RX|wh_arr_counter[17]~69_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[17]~70\);

-- Location: FF_X31_Y17_N3
\uart_module|u_RX|wh_arr_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[17]~69_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(17));

-- Location: LCCOMB_X31_Y17_N4
\uart_module|u_RX|wh_arr_counter[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[18]~71_combout\ = (\uart_module|u_RX|wh_arr_counter\(18) & (\uart_module|u_RX|wh_arr_counter[17]~70\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(18) & (!\uart_module|u_RX|wh_arr_counter[17]~70\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[18]~72\ = CARRY((\uart_module|u_RX|wh_arr_counter\(18) & !\uart_module|u_RX|wh_arr_counter[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(18),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[17]~70\,
	combout => \uart_module|u_RX|wh_arr_counter[18]~71_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[18]~72\);

-- Location: FF_X31_Y17_N5
\uart_module|u_RX|wh_arr_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[18]~71_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(18));

-- Location: LCCOMB_X31_Y17_N6
\uart_module|u_RX|wh_arr_counter[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[19]~73_combout\ = (\uart_module|u_RX|wh_arr_counter\(19) & (!\uart_module|u_RX|wh_arr_counter[18]~72\)) # (!\uart_module|u_RX|wh_arr_counter\(19) & ((\uart_module|u_RX|wh_arr_counter[18]~72\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[19]~74\ = CARRY((!\uart_module|u_RX|wh_arr_counter[18]~72\) # (!\uart_module|u_RX|wh_arr_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(19),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[18]~72\,
	combout => \uart_module|u_RX|wh_arr_counter[19]~73_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[19]~74\);

-- Location: FF_X31_Y17_N7
\uart_module|u_RX|wh_arr_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[19]~73_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(19));

-- Location: LCCOMB_X31_Y17_N8
\uart_module|u_RX|wh_arr_counter[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[20]~75_combout\ = (\uart_module|u_RX|wh_arr_counter\(20) & (\uart_module|u_RX|wh_arr_counter[19]~74\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(20) & (!\uart_module|u_RX|wh_arr_counter[19]~74\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[20]~76\ = CARRY((\uart_module|u_RX|wh_arr_counter\(20) & !\uart_module|u_RX|wh_arr_counter[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(20),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[19]~74\,
	combout => \uart_module|u_RX|wh_arr_counter[20]~75_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[20]~76\);

-- Location: FF_X31_Y17_N9
\uart_module|u_RX|wh_arr_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[20]~75_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(20));

-- Location: LCCOMB_X31_Y17_N10
\uart_module|u_RX|wh_arr_counter[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[21]~77_combout\ = (\uart_module|u_RX|wh_arr_counter\(21) & (!\uart_module|u_RX|wh_arr_counter[20]~76\)) # (!\uart_module|u_RX|wh_arr_counter\(21) & ((\uart_module|u_RX|wh_arr_counter[20]~76\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[21]~78\ = CARRY((!\uart_module|u_RX|wh_arr_counter[20]~76\) # (!\uart_module|u_RX|wh_arr_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(21),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[20]~76\,
	combout => \uart_module|u_RX|wh_arr_counter[21]~77_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[21]~78\);

-- Location: FF_X31_Y17_N11
\uart_module|u_RX|wh_arr_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[21]~77_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(21));

-- Location: LCCOMB_X31_Y17_N12
\uart_module|u_RX|wh_arr_counter[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[22]~79_combout\ = (\uart_module|u_RX|wh_arr_counter\(22) & (\uart_module|u_RX|wh_arr_counter[21]~78\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(22) & (!\uart_module|u_RX|wh_arr_counter[21]~78\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[22]~80\ = CARRY((\uart_module|u_RX|wh_arr_counter\(22) & !\uart_module|u_RX|wh_arr_counter[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(22),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[21]~78\,
	combout => \uart_module|u_RX|wh_arr_counter[22]~79_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[22]~80\);

-- Location: FF_X31_Y17_N13
\uart_module|u_RX|wh_arr_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[22]~79_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(22));

-- Location: LCCOMB_X31_Y17_N14
\uart_module|u_RX|wh_arr_counter[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[23]~81_combout\ = (\uart_module|u_RX|wh_arr_counter\(23) & (!\uart_module|u_RX|wh_arr_counter[22]~80\)) # (!\uart_module|u_RX|wh_arr_counter\(23) & ((\uart_module|u_RX|wh_arr_counter[22]~80\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[23]~82\ = CARRY((!\uart_module|u_RX|wh_arr_counter[22]~80\) # (!\uart_module|u_RX|wh_arr_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(23),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[22]~80\,
	combout => \uart_module|u_RX|wh_arr_counter[23]~81_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[23]~82\);

-- Location: FF_X31_Y17_N15
\uart_module|u_RX|wh_arr_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[23]~81_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(23));

-- Location: LCCOMB_X31_Y17_N16
\uart_module|u_RX|wh_arr_counter[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[24]~83_combout\ = (\uart_module|u_RX|wh_arr_counter\(24) & (\uart_module|u_RX|wh_arr_counter[23]~82\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(24) & (!\uart_module|u_RX|wh_arr_counter[23]~82\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[24]~84\ = CARRY((\uart_module|u_RX|wh_arr_counter\(24) & !\uart_module|u_RX|wh_arr_counter[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(24),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[23]~82\,
	combout => \uart_module|u_RX|wh_arr_counter[24]~83_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[24]~84\);

-- Location: FF_X31_Y17_N17
\uart_module|u_RX|wh_arr_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[24]~83_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(24));

-- Location: LCCOMB_X31_Y17_N18
\uart_module|u_RX|wh_arr_counter[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[25]~85_combout\ = (\uart_module|u_RX|wh_arr_counter\(25) & (!\uart_module|u_RX|wh_arr_counter[24]~84\)) # (!\uart_module|u_RX|wh_arr_counter\(25) & ((\uart_module|u_RX|wh_arr_counter[24]~84\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[25]~86\ = CARRY((!\uart_module|u_RX|wh_arr_counter[24]~84\) # (!\uart_module|u_RX|wh_arr_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(25),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[24]~84\,
	combout => \uart_module|u_RX|wh_arr_counter[25]~85_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[25]~86\);

-- Location: FF_X31_Y17_N19
\uart_module|u_RX|wh_arr_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[25]~85_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(25));

-- Location: LCCOMB_X31_Y17_N20
\uart_module|u_RX|wh_arr_counter[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[26]~87_combout\ = (\uart_module|u_RX|wh_arr_counter\(26) & (\uart_module|u_RX|wh_arr_counter[25]~86\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(26) & (!\uart_module|u_RX|wh_arr_counter[25]~86\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[26]~88\ = CARRY((\uart_module|u_RX|wh_arr_counter\(26) & !\uart_module|u_RX|wh_arr_counter[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(26),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[25]~86\,
	combout => \uart_module|u_RX|wh_arr_counter[26]~87_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[26]~88\);

-- Location: FF_X31_Y17_N21
\uart_module|u_RX|wh_arr_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[26]~87_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(26));

-- Location: LCCOMB_X31_Y17_N22
\uart_module|u_RX|wh_arr_counter[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[27]~89_combout\ = (\uart_module|u_RX|wh_arr_counter\(27) & (!\uart_module|u_RX|wh_arr_counter[26]~88\)) # (!\uart_module|u_RX|wh_arr_counter\(27) & ((\uart_module|u_RX|wh_arr_counter[26]~88\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[27]~90\ = CARRY((!\uart_module|u_RX|wh_arr_counter[26]~88\) # (!\uart_module|u_RX|wh_arr_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(27),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[26]~88\,
	combout => \uart_module|u_RX|wh_arr_counter[27]~89_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[27]~90\);

-- Location: FF_X31_Y17_N23
\uart_module|u_RX|wh_arr_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[27]~89_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(27));

-- Location: LCCOMB_X31_Y17_N24
\uart_module|u_RX|wh_arr_counter[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[28]~91_combout\ = (\uart_module|u_RX|wh_arr_counter\(28) & (\uart_module|u_RX|wh_arr_counter[27]~90\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(28) & (!\uart_module|u_RX|wh_arr_counter[27]~90\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[28]~92\ = CARRY((\uart_module|u_RX|wh_arr_counter\(28) & !\uart_module|u_RX|wh_arr_counter[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(28),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[27]~90\,
	combout => \uart_module|u_RX|wh_arr_counter[28]~91_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[28]~92\);

-- Location: FF_X31_Y17_N25
\uart_module|u_RX|wh_arr_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[28]~91_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(28));

-- Location: LCCOMB_X31_Y17_N26
\uart_module|u_RX|wh_arr_counter[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[29]~93_combout\ = (\uart_module|u_RX|wh_arr_counter\(29) & (!\uart_module|u_RX|wh_arr_counter[28]~92\)) # (!\uart_module|u_RX|wh_arr_counter\(29) & ((\uart_module|u_RX|wh_arr_counter[28]~92\) # (GND)))
-- \uart_module|u_RX|wh_arr_counter[29]~94\ = CARRY((!\uart_module|u_RX|wh_arr_counter[28]~92\) # (!\uart_module|u_RX|wh_arr_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(29),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[28]~92\,
	combout => \uart_module|u_RX|wh_arr_counter[29]~93_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[29]~94\);

-- Location: FF_X31_Y17_N27
\uart_module|u_RX|wh_arr_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[29]~93_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(29));

-- Location: LCCOMB_X31_Y17_N28
\uart_module|u_RX|wh_arr_counter[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[30]~95_combout\ = (\uart_module|u_RX|wh_arr_counter\(30) & (\uart_module|u_RX|wh_arr_counter[29]~94\ $ (GND))) # (!\uart_module|u_RX|wh_arr_counter\(30) & (!\uart_module|u_RX|wh_arr_counter[29]~94\ & VCC))
-- \uart_module|u_RX|wh_arr_counter[30]~96\ = CARRY((\uart_module|u_RX|wh_arr_counter\(30) & !\uart_module|u_RX|wh_arr_counter[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(30),
	datad => VCC,
	cin => \uart_module|u_RX|wh_arr_counter[29]~94\,
	combout => \uart_module|u_RX|wh_arr_counter[30]~95_combout\,
	cout => \uart_module|u_RX|wh_arr_counter[30]~96\);

-- Location: FF_X31_Y17_N29
\uart_module|u_RX|wh_arr_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[30]~95_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(30));

-- Location: LCCOMB_X31_Y17_N30
\uart_module|u_RX|wh_arr_counter[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[31]~97_combout\ = \uart_module|u_RX|wh_arr_counter\(31) $ (\uart_module|u_RX|wh_arr_counter[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(31),
	cin => \uart_module|u_RX|wh_arr_counter[30]~96\,
	combout => \uart_module|u_RX|wh_arr_counter[31]~97_combout\);

-- Location: FF_X31_Y17_N31
\uart_module|u_RX|wh_arr_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[31]~97_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(31));

-- Location: LCCOMB_X30_Y17_N12
\uart_module|u_RX|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~8_combout\ = (\uart_module|u_RX|wh_arr_counter\(31)) # ((\uart_module|u_RX|wh_arr_counter\(30)) # ((\uart_module|u_RX|wh_arr_counter\(29)) # (\uart_module|u_RX|wh_arr_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(31),
	datab => \uart_module|u_RX|wh_arr_counter\(30),
	datac => \uart_module|u_RX|wh_arr_counter\(29),
	datad => \uart_module|u_RX|wh_arr_counter\(28),
	combout => \uart_module|u_RX|Equal2~8_combout\);

-- Location: LCCOMB_X30_Y17_N4
\uart_module|u_RX|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~6_combout\ = (\uart_module|u_RX|wh_arr_counter\(23)) # ((\uart_module|u_RX|wh_arr_counter\(22)) # ((\uart_module|u_RX|wh_arr_counter\(20)) # (\uart_module|u_RX|wh_arr_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(23),
	datab => \uart_module|u_RX|wh_arr_counter\(22),
	datac => \uart_module|u_RX|wh_arr_counter\(20),
	datad => \uart_module|u_RX|wh_arr_counter\(21),
	combout => \uart_module|u_RX|Equal2~6_combout\);

-- Location: LCCOMB_X30_Y17_N14
\uart_module|u_RX|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~7_combout\ = (\uart_module|u_RX|wh_arr_counter\(26)) # ((\uart_module|u_RX|wh_arr_counter\(25)) # ((\uart_module|u_RX|wh_arr_counter\(24)) # (\uart_module|u_RX|wh_arr_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(26),
	datab => \uart_module|u_RX|wh_arr_counter\(25),
	datac => \uart_module|u_RX|wh_arr_counter\(24),
	datad => \uart_module|u_RX|wh_arr_counter\(27),
	combout => \uart_module|u_RX|Equal2~7_combout\);

-- Location: LCCOMB_X30_Y17_N18
\uart_module|u_RX|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~5_combout\ = (\uart_module|u_RX|wh_arr_counter\(18)) # ((\uart_module|u_RX|wh_arr_counter\(17)) # ((\uart_module|u_RX|wh_arr_counter\(16)) # (\uart_module|u_RX|wh_arr_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(18),
	datab => \uart_module|u_RX|wh_arr_counter\(17),
	datac => \uart_module|u_RX|wh_arr_counter\(16),
	datad => \uart_module|u_RX|wh_arr_counter\(19),
	combout => \uart_module|u_RX|Equal2~5_combout\);

-- Location: LCCOMB_X30_Y17_N30
\uart_module|u_RX|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~9_combout\ = (\uart_module|u_RX|Equal2~8_combout\) # ((\uart_module|u_RX|Equal2~6_combout\) # ((\uart_module|u_RX|Equal2~7_combout\) # (\uart_module|u_RX|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Equal2~8_combout\,
	datab => \uart_module|u_RX|Equal2~6_combout\,
	datac => \uart_module|u_RX|Equal2~7_combout\,
	datad => \uart_module|u_RX|Equal2~5_combout\,
	combout => \uart_module|u_RX|Equal2~9_combout\);

-- Location: LCCOMB_X32_Y18_N12
\uart_module|u_RX|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~2_combout\ = (\uart_module|u_RX|wh_arr_counter\(8)) # ((\uart_module|u_RX|wh_arr_counter\(11)) # ((\uart_module|u_RX|wh_arr_counter\(10)) # (\uart_module|u_RX|wh_arr_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(8),
	datab => \uart_module|u_RX|wh_arr_counter\(11),
	datac => \uart_module|u_RX|wh_arr_counter\(10),
	datad => \uart_module|u_RX|wh_arr_counter\(9),
	combout => \uart_module|u_RX|Equal2~2_combout\);

-- Location: LCCOMB_X32_Y18_N18
\uart_module|u_RX|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~1_combout\ = (\uart_module|u_RX|wh_arr_counter\(7)) # ((\uart_module|u_RX|wh_arr_counter\(6)) # ((\uart_module|u_RX|wh_arr_counter\(4)) # (\uart_module|u_RX|wh_arr_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(7),
	datab => \uart_module|u_RX|wh_arr_counter\(6),
	datac => \uart_module|u_RX|wh_arr_counter\(4),
	datad => \uart_module|u_RX|wh_arr_counter\(5),
	combout => \uart_module|u_RX|Equal2~1_combout\);

-- Location: LCCOMB_X32_Y18_N8
\uart_module|u_RX|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~0_combout\ = ((\uart_module|u_RX|wh_arr_counter\(3)) # ((\uart_module|u_RX|wh_arr_counter\(2)) # (!\uart_module|u_RX|wh_arr_counter\(1)))) # (!\uart_module|u_RX|wh_arr_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(0),
	datab => \uart_module|u_RX|wh_arr_counter\(3),
	datac => \uart_module|u_RX|wh_arr_counter\(2),
	datad => \uart_module|u_RX|wh_arr_counter\(1),
	combout => \uart_module|u_RX|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y18_N2
\uart_module|u_RX|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~3_combout\ = (\uart_module|u_RX|wh_arr_counter\(13)) # ((\uart_module|u_RX|wh_arr_counter\(14)) # ((\uart_module|u_RX|wh_arr_counter\(15)) # (\uart_module|u_RX|wh_arr_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(13),
	datab => \uart_module|u_RX|wh_arr_counter\(14),
	datac => \uart_module|u_RX|wh_arr_counter\(15),
	datad => \uart_module|u_RX|wh_arr_counter\(12),
	combout => \uart_module|u_RX|Equal2~3_combout\);

-- Location: LCCOMB_X32_Y18_N28
\uart_module|u_RX|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal2~4_combout\ = (\uart_module|u_RX|Equal2~2_combout\) # ((\uart_module|u_RX|Equal2~1_combout\) # ((\uart_module|u_RX|Equal2~0_combout\) # (\uart_module|u_RX|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Equal2~2_combout\,
	datab => \uart_module|u_RX|Equal2~1_combout\,
	datac => \uart_module|u_RX|Equal2~0_combout\,
	datad => \uart_module|u_RX|Equal2~3_combout\,
	combout => \uart_module|u_RX|Equal2~4_combout\);

-- Location: LCCOMB_X30_Y17_N16
\uart_module|u_RX|wh_arr_counter[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|wh_arr_counter[13]~34_combout\ = (\uart_module|u_RX|Equal2~9_combout\ & (!\uart_module|u_RX|w_arr_en~q\ & (\uart_module|u_RX|Equal1~2_combout\))) # (!\uart_module|u_RX|Equal2~9_combout\ & (((!\uart_module|u_RX|w_arr_en~q\ & 
-- \uart_module|u_RX|Equal1~2_combout\)) # (!\uart_module|u_RX|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Equal2~9_combout\,
	datab => \uart_module|u_RX|w_arr_en~q\,
	datac => \uart_module|u_RX|Equal1~2_combout\,
	datad => \uart_module|u_RX|Equal2~4_combout\,
	combout => \uart_module|u_RX|wh_arr_counter[13]~34_combout\);

-- Location: FF_X31_Y18_N1
\uart_module|u_RX|wh_arr_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[0]~32_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(0));

-- Location: FF_X31_Y18_N3
\uart_module|u_RX|wh_arr_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|wh_arr_counter[1]~37_combout\,
	sclr => \uart_module|u_RX|wh_arr_counter[13]~34_combout\,
	ena => \uart_module|u_RX|wh_arr_counter[1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|wh_arr_counter\(1));

-- Location: LCCOMB_X29_Y17_N24
\uart_module|u_RX|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|process_0~2_combout\ = (\uart_module|u_RX|w_arr_en~q\ & (!\uart_module|u_RX|Equal1~2_combout\ & !\uart_module|u_RX|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|w_arr_en~q\,
	datac => \uart_module|u_RX|Equal1~2_combout\,
	datad => \uart_module|u_RX|process_0~1_combout\,
	combout => \uart_module|u_RX|process_0~2_combout\);

-- Location: LCCOMB_X29_Y17_N26
\uart_module|u_RX|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~0_combout\ = (\uart_module|u_RX|h_arr_en~q\ & (\uart_module|u_RX|img_state.running~q\ & !\uart_module|u_RX|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|h_arr_en~q\,
	datab => \uart_module|u_RX|img_state.running~q\,
	datad => \uart_module|u_RX|process_0~1_combout\,
	combout => \uart_module|u_RX|Decoder1~0_combout\);

-- Location: LCCOMB_X29_Y17_N12
\uart_module|u_RX|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~3_combout\ = (!\uart_module|u_RX|wh_arr_counter\(0) & (!\uart_module|u_RX|process_0~2_combout\ & (\uart_module|u_RX|Decoder1~0_combout\ & \uart_module|u_RX|img_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(0),
	datab => \uart_module|u_RX|process_0~2_combout\,
	datac => \uart_module|u_RX|Decoder1~0_combout\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|Decoder1~3_combout\);

-- Location: LCCOMB_X29_Y17_N2
\uart_module|u_RX|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~6_combout\ = (\uart_module|u_RX|wh_arr_counter\(1) & \uart_module|u_RX|Decoder1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(1),
	datad => \uart_module|u_RX|Decoder1~3_combout\,
	combout => \uart_module|u_RX|Decoder1~6_combout\);

-- Location: FF_X26_Y17_N7
\uart_module|u_RX|h_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[2][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[2][3]~q\);

-- Location: LCCOMB_X28_Y20_N12
\uart_module|u_RX|h_arr[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[0][3]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|h_arr[0][3]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N6
\uart_module|u_RX|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~4_combout\ = (!\uart_module|u_RX|wh_arr_counter\(1) & \uart_module|u_RX|Decoder1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(1),
	datad => \uart_module|u_RX|Decoder1~3_combout\,
	combout => \uart_module|u_RX|Decoder1~4_combout\);

-- Location: FF_X28_Y20_N13
\uart_module|u_RX|h_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[0][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[0][3]~q\);

-- Location: LCCOMB_X26_Y20_N10
\sevs_module|curr_val[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val[0]~1_combout\ = (!\sevs_module|counter\(0) & \sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|curr_val[0]~1_combout\);

-- Location: LCCOMB_X26_Y20_N20
\sevs_module|curr_val[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val[0]~0_combout\ = (\sevs_module|counter\(1) $ (\sevs_module|counter\(0))) # (!\sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(1),
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|curr_val[0]~0_combout\);

-- Location: LCCOMB_X26_Y17_N24
\uart_module|u_RX|h_arr[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[1][3]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|h_arr[1][3]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N18
\uart_module|u_RX|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~1_combout\ = (\uart_module|u_RX|wh_arr_counter\(0) & (!\uart_module|u_RX|process_0~2_combout\ & (\uart_module|u_RX|Decoder1~0_combout\ & \uart_module|u_RX|img_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|wh_arr_counter\(0),
	datab => \uart_module|u_RX|process_0~2_combout\,
	datac => \uart_module|u_RX|Decoder1~0_combout\,
	datad => \uart_module|u_RX|img_state~11_combout\,
	combout => \uart_module|u_RX|Decoder1~1_combout\);

-- Location: LCCOMB_X26_Y17_N4
\uart_module|u_RX|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~2_combout\ = (!\uart_module|u_RX|wh_arr_counter\(1) & \uart_module|u_RX|Decoder1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|wh_arr_counter\(1),
	datad => \uart_module|u_RX|Decoder1~1_combout\,
	combout => \uart_module|u_RX|Decoder1~2_combout\);

-- Location: FF_X26_Y17_N25
\uart_module|u_RX|h_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[1][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[1][3]~q\);

-- Location: LCCOMB_X28_Y20_N22
\uart_module|u_RX|h_arr[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[3][3]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(4),
	combout => \uart_module|u_RX|h_arr[3][3]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N8
\uart_module|u_RX|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~5_combout\ = (\uart_module|u_RX|wh_arr_counter\(1) & \uart_module|u_RX|Decoder1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|wh_arr_counter\(1),
	datad => \uart_module|u_RX|Decoder1~1_combout\,
	combout => \uart_module|u_RX|Decoder1~5_combout\);

-- Location: FF_X28_Y20_N23
\uart_module|u_RX|h_arr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[3][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[3][3]~q\);

-- Location: LCCOMB_X26_Y20_N14
\sevs_module|curr_val~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~4_combout\ = (\sevs_module|curr_val[0]~1_combout\ & (!\sevs_module|curr_val[0]~0_combout\)) # (!\sevs_module|curr_val[0]~1_combout\ & ((\sevs_module|curr_val[0]~0_combout\ & ((\uart_module|u_RX|h_arr[3][3]~q\))) # 
-- (!\sevs_module|curr_val[0]~0_combout\ & (\uart_module|u_RX|h_arr[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val[0]~1_combout\,
	datab => \sevs_module|curr_val[0]~0_combout\,
	datac => \uart_module|u_RX|h_arr[1][3]~q\,
	datad => \uart_module|u_RX|h_arr[3][3]~q\,
	combout => \sevs_module|curr_val~4_combout\);

-- Location: LCCOMB_X26_Y20_N24
\sevs_module|curr_val~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~5_combout\ = (\sevs_module|curr_val~4_combout\ & ((\uart_module|u_RX|h_arr[2][3]~q\) # ((!\sevs_module|curr_val[0]~1_combout\)))) # (!\sevs_module|curr_val~4_combout\ & (((\uart_module|u_RX|h_arr[0][3]~q\ & 
-- \sevs_module|curr_val[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|h_arr[2][3]~q\,
	datab => \uart_module|u_RX|h_arr[0][3]~q\,
	datac => \sevs_module|curr_val~4_combout\,
	datad => \sevs_module|curr_val[0]~1_combout\,
	combout => \sevs_module|curr_val~5_combout\);

-- Location: FF_X26_Y20_N25
\sevs_module|curr_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~5_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(3));

-- Location: LCCOMB_X22_Y20_N14
\sevs_module|curr_val[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sevs_module|curr_val[31]~feeder_combout\);

-- Location: FF_X22_Y20_N15
\sevs_module|curr_val[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val[31]~feeder_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(31));

-- Location: LCCOMB_X26_Y17_N12
\uart_module|u_RX|h_arr[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[1][0]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|h_arr[1][0]~feeder_combout\);

-- Location: FF_X26_Y17_N13
\uart_module|u_RX|h_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[1][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[1][0]~q\);

-- Location: LCCOMB_X26_Y17_N30
\uart_module|u_RX|h_arr[2][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[2][0]~1_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|h_arr[2][0]~1_combout\);

-- Location: FF_X26_Y17_N31
\uart_module|u_RX|h_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[2][0]~1_combout\,
	ena => \uart_module|u_RX|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[2][0]~q\);

-- Location: LCCOMB_X28_Y20_N2
\uart_module|u_RX|h_arr[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[3][0]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|h_arr[3][0]~feeder_combout\);

-- Location: FF_X28_Y20_N3
\uart_module|u_RX|h_arr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[3][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[3][0]~q\);

-- Location: LCCOMB_X28_Y20_N20
\uart_module|u_RX|h_arr[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[0][0]~0_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|h_arr[0][0]~0_combout\);

-- Location: FF_X28_Y20_N21
\uart_module|u_RX|h_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[0][0]~0_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[0][0]~q\);

-- Location: LCCOMB_X26_Y20_N4
\sevs_module|curr_val~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~2_combout\ = (\sevs_module|curr_val[0]~1_combout\ & (((!\uart_module|u_RX|h_arr[0][0]~q\)) # (!\sevs_module|curr_val[0]~0_combout\))) # (!\sevs_module|curr_val[0]~1_combout\ & (\sevs_module|curr_val[0]~0_combout\ & 
-- (\uart_module|u_RX|h_arr[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val[0]~1_combout\,
	datab => \sevs_module|curr_val[0]~0_combout\,
	datac => \uart_module|u_RX|h_arr[3][0]~q\,
	datad => \uart_module|u_RX|h_arr[0][0]~q\,
	combout => \sevs_module|curr_val~2_combout\);

-- Location: LCCOMB_X26_Y20_N6
\sevs_module|curr_val~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~3_combout\ = (\sevs_module|curr_val~2_combout\ & (((\uart_module|u_RX|h_arr[2][0]~q\ & !\sevs_module|curr_val[0]~0_combout\)))) # (!\sevs_module|curr_val~2_combout\ & (((\sevs_module|curr_val[0]~0_combout\)) # 
-- (!\uart_module|u_RX|h_arr[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|h_arr[1][0]~q\,
	datab => \uart_module|u_RX|h_arr[2][0]~q\,
	datac => \sevs_module|curr_val~2_combout\,
	datad => \sevs_module|curr_val[0]~0_combout\,
	combout => \sevs_module|curr_val~3_combout\);

-- Location: FF_X26_Y20_N7
\sevs_module|curr_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~3_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(0));

-- Location: LCCOMB_X22_Y20_N10
\sevs_module|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal5~0_combout\ = (!\sevs_module|curr_val\(3) & (\sevs_module|curr_val\(31) & !\sevs_module|curr_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datac => \sevs_module|curr_val\(31),
	datad => \sevs_module|curr_val\(0),
	combout => \sevs_module|Equal5~0_combout\);

-- Location: LCCOMB_X26_Y17_N16
\uart_module|u_RX|h_arr[1][2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[1][2]~4_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(3),
	combout => \uart_module|u_RX|h_arr[1][2]~4_combout\);

-- Location: FF_X26_Y17_N17
\uart_module|u_RX|h_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[1][2]~4_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[1][2]~q\);

-- Location: LCCOMB_X26_Y17_N10
\uart_module|u_RX|h_arr[2][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[2][2]~7_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(3),
	combout => \uart_module|u_RX|h_arr[2][2]~7_combout\);

-- Location: FF_X26_Y17_N11
\uart_module|u_RX|h_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[2][2]~7_combout\,
	ena => \uart_module|u_RX|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[2][2]~q\);

-- Location: LCCOMB_X28_Y20_N16
\uart_module|u_RX|h_arr[0][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[0][2]~5_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(3),
	combout => \uart_module|u_RX|h_arr[0][2]~5_combout\);

-- Location: FF_X28_Y20_N17
\uart_module|u_RX|h_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[0][2]~5_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[0][2]~q\);

-- Location: LCCOMB_X28_Y20_N30
\uart_module|u_RX|h_arr[3][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[3][2]~6_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(3),
	combout => \uart_module|u_RX|h_arr[3][2]~6_combout\);

-- Location: FF_X28_Y20_N31
\uart_module|u_RX|h_arr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[3][2]~6_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[3][2]~q\);

-- Location: LCCOMB_X26_Y20_N26
\sevs_module|curr_val~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~8_combout\ = (\sevs_module|curr_val[0]~1_combout\ & (((!\uart_module|u_RX|h_arr[0][2]~q\)) # (!\sevs_module|curr_val[0]~0_combout\))) # (!\sevs_module|curr_val[0]~1_combout\ & (\sevs_module|curr_val[0]~0_combout\ & 
-- ((!\uart_module|u_RX|h_arr[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val[0]~1_combout\,
	datab => \sevs_module|curr_val[0]~0_combout\,
	datac => \uart_module|u_RX|h_arr[0][2]~q\,
	datad => \uart_module|u_RX|h_arr[3][2]~q\,
	combout => \sevs_module|curr_val~8_combout\);

-- Location: LCCOMB_X26_Y20_N0
\sevs_module|curr_val~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~9_combout\ = (\sevs_module|curr_val~8_combout\ & (((\sevs_module|curr_val[0]~0_combout\) # (!\uart_module|u_RX|h_arr[2][2]~q\)))) # (!\sevs_module|curr_val~8_combout\ & (!\uart_module|u_RX|h_arr[1][2]~q\ & 
-- ((!\sevs_module|curr_val[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|h_arr[1][2]~q\,
	datab => \uart_module|u_RX|h_arr[2][2]~q\,
	datac => \sevs_module|curr_val~8_combout\,
	datad => \sevs_module|curr_val[0]~0_combout\,
	combout => \sevs_module|curr_val~9_combout\);

-- Location: FF_X26_Y20_N1
\sevs_module|curr_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~9_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(2));

-- Location: LCCOMB_X26_Y17_N0
\uart_module|u_RX|h_arr[1][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[1][1]~2_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(2),
	combout => \uart_module|u_RX|h_arr[1][1]~2_combout\);

-- Location: FF_X26_Y17_N1
\uart_module|u_RX|h_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[1][1]~2_combout\,
	ena => \uart_module|u_RX|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[1][1]~q\);

-- Location: FF_X29_Y17_N17
\uart_module|u_RX|h_arr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|r_DATA_BUFFER\(2),
	sload => VCC,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[3][1]~q\);

-- Location: LCCOMB_X25_Y17_N16
\uart_module|u_RX|h_arr[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[0][1]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(2),
	combout => \uart_module|u_RX|h_arr[0][1]~feeder_combout\);

-- Location: FF_X25_Y17_N17
\uart_module|u_RX|h_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[0][1]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[0][1]~q\);

-- Location: LCCOMB_X26_Y17_N18
\uart_module|u_RX|h_arr[2][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|h_arr[2][1]~3_combout\ = !\uart_module|u_RX|r_DATA_BUFFER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(2),
	combout => \uart_module|u_RX|h_arr[2][1]~3_combout\);

-- Location: FF_X26_Y17_N19
\uart_module|u_RX|h_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|h_arr[2][1]~3_combout\,
	ena => \uart_module|u_RX|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|h_arr[2][1]~q\);

-- Location: LCCOMB_X26_Y20_N28
\sevs_module|curr_val~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~6_combout\ = (\sevs_module|curr_val[0]~1_combout\ & ((\sevs_module|curr_val[0]~0_combout\ & (\uart_module|u_RX|h_arr[0][1]~q\)) # (!\sevs_module|curr_val[0]~0_combout\ & ((!\uart_module|u_RX|h_arr[2][1]~q\))))) # 
-- (!\sevs_module|curr_val[0]~1_combout\ & (\sevs_module|curr_val[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val[0]~1_combout\,
	datab => \sevs_module|curr_val[0]~0_combout\,
	datac => \uart_module|u_RX|h_arr[0][1]~q\,
	datad => \uart_module|u_RX|h_arr[2][1]~q\,
	combout => \sevs_module|curr_val~6_combout\);

-- Location: LCCOMB_X26_Y20_N30
\sevs_module|curr_val~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|curr_val~7_combout\ = (\sevs_module|curr_val[0]~1_combout\ & (((\sevs_module|curr_val~6_combout\)))) # (!\sevs_module|curr_val[0]~1_combout\ & ((\sevs_module|curr_val~6_combout\ & ((\uart_module|u_RX|h_arr[3][1]~q\))) # 
-- (!\sevs_module|curr_val~6_combout\ & (!\uart_module|u_RX|h_arr[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val[0]~1_combout\,
	datab => \uart_module|u_RX|h_arr[1][1]~q\,
	datac => \uart_module|u_RX|h_arr[3][1]~q\,
	datad => \sevs_module|curr_val~6_combout\,
	combout => \sevs_module|curr_val~7_combout\);

-- Location: FF_X26_Y20_N31
\sevs_module|curr_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|curr_val~7_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|curr_val\(1));

-- Location: LCCOMB_X22_Y20_N4
\sevs_module|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideNor0~0_combout\ = (\sevs_module|curr_val\(31) & (((!\sevs_module|curr_val\(2) & !\sevs_module|curr_val\(1))) # (!\sevs_module|curr_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datab => \sevs_module|curr_val\(31),
	datac => \sevs_module|curr_val\(2),
	datad => \sevs_module|curr_val\(1),
	combout => \sevs_module|WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\sevs_module|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr2~2_combout\ = (\sevs_module|WideNor0~0_combout\ & ((\sevs_module|curr_val\(2) $ (\sevs_module|curr_val\(1))) # (!\sevs_module|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal5~0_combout\,
	datab => \sevs_module|curr_val\(2),
	datac => \sevs_module|WideNor0~0_combout\,
	datad => \sevs_module|curr_val\(1),
	combout => \sevs_module|WideOr2~2_combout\);

-- Location: LCCOMB_X22_Y20_N16
\sevs_module|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal4~0_combout\ = (!\sevs_module|curr_val\(3) & (\sevs_module|curr_val\(31) & \sevs_module|curr_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datac => \sevs_module|curr_val\(31),
	datad => \sevs_module|curr_val\(0),
	combout => \sevs_module|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\sevs_module|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr5~combout\ = (\sevs_module|WideOr2~2_combout\ & (((\sevs_module|curr_val\(2)) # (\sevs_module|curr_val\(1))) # (!\sevs_module|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|WideOr2~2_combout\,
	datab => \sevs_module|Equal4~0_combout\,
	datac => \sevs_module|curr_val\(2),
	datad => \sevs_module|curr_val\(1),
	combout => \sevs_module|WideOr5~combout\);

-- Location: FF_X22_Y20_N1
\sevs_module|sevseg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(0));

-- Location: LCCOMB_X22_Y20_N2
\sevs_module|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr4~2_combout\ = (\sevs_module|curr_val\(2) & ((\sevs_module|curr_val\(3)) # ((\sevs_module|curr_val\(1) & !\sevs_module|curr_val\(0))))) # (!\sevs_module|curr_val\(2) & ((\sevs_module|curr_val\(1)) # ((!\sevs_module|curr_val\(3) & 
-- !\sevs_module|curr_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|curr_val\(2),
	datad => \sevs_module|curr_val\(0),
	combout => \sevs_module|WideOr4~2_combout\);

-- Location: LCCOMB_X22_Y20_N6
\sevs_module|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr4~combout\ = (\sevs_module|curr_val\(31) & !\sevs_module|WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|curr_val\(31),
	datad => \sevs_module|WideOr4~2_combout\,
	combout => \sevs_module|WideOr4~combout\);

-- Location: FF_X22_Y20_N7
\sevs_module|sevseg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(1));

-- Location: LCCOMB_X22_Y20_N22
\sevs_module|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr3~3_combout\ = (\sevs_module|curr_val\(1) & (!\sevs_module|curr_val\(3))) # (!\sevs_module|curr_val\(1) & ((!\sevs_module|curr_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|curr_val\(2),
	combout => \sevs_module|WideOr3~3_combout\);

-- Location: LCCOMB_X22_Y20_N8
\sevs_module|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr3~combout\ = (\sevs_module|WideOr3~3_combout\ & (\sevs_module|curr_val\(31) & \sevs_module|curr_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|WideOr3~3_combout\,
	datac => \sevs_module|curr_val\(31),
	datad => \sevs_module|curr_val\(0),
	combout => \sevs_module|WideOr3~combout\);

-- Location: FF_X22_Y20_N9
\sevs_module|sevseg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(2));

-- Location: LCCOMB_X22_Y20_N26
\sevs_module|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr2~combout\ = (\sevs_module|WideOr2~2_combout\ & (((\sevs_module|curr_val\(1)) # (!\sevs_module|curr_val\(2))) # (!\sevs_module|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|WideOr2~2_combout\,
	datab => \sevs_module|Equal4~0_combout\,
	datac => \sevs_module|curr_val\(2),
	datad => \sevs_module|curr_val\(1),
	combout => \sevs_module|WideOr2~combout\);

-- Location: FF_X22_Y20_N27
\sevs_module|sevseg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(3));

-- Location: LCCOMB_X22_Y20_N28
\sevs_module|sevseg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|sevseg~0_combout\ = (\sevs_module|WideNor0~0_combout\ & ((\sevs_module|curr_val\(2)) # ((!\sevs_module|curr_val\(1)) # (!\sevs_module|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(2),
	datab => \sevs_module|Equal4~0_combout\,
	datac => \sevs_module|WideNor0~0_combout\,
	datad => \sevs_module|curr_val\(1),
	combout => \sevs_module|sevseg~0_combout\);

-- Location: FF_X22_Y20_N29
\sevs_module|sevseg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|sevseg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(4));

-- Location: LCCOMB_X22_Y20_N12
\sevs_module|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr1~2_combout\ = (\sevs_module|curr_val\(3) & ((\sevs_module|curr_val\(1)) # ((\sevs_module|curr_val\(2))))) # (!\sevs_module|curr_val\(3) & (\sevs_module|curr_val\(2) & (\sevs_module|curr_val\(1) $ (!\sevs_module|curr_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|curr_val\(2),
	datad => \sevs_module|curr_val\(0),
	combout => \sevs_module|WideOr1~2_combout\);

-- Location: LCCOMB_X22_Y20_N18
\sevs_module|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr1~combout\ = (\sevs_module|curr_val\(31) & !\sevs_module|WideOr1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|curr_val\(31),
	datad => \sevs_module|WideOr1~2_combout\,
	combout => \sevs_module|WideOr1~combout\);

-- Location: FF_X22_Y20_N19
\sevs_module|sevseg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(5));

-- Location: LCCOMB_X22_Y20_N24
\sevs_module|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr0~2_combout\ = (\sevs_module|curr_val\(1) & (!\sevs_module|curr_val\(3))) # (!\sevs_module|curr_val\(1) & (\sevs_module|curr_val\(2) $ (((\sevs_module|curr_val\(3)) # (\sevs_module|curr_val\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|curr_val\(3),
	datab => \sevs_module|curr_val\(1),
	datac => \sevs_module|curr_val\(2),
	datad => \sevs_module|curr_val\(0),
	combout => \sevs_module|WideOr0~2_combout\);

-- Location: LCCOMB_X22_Y20_N20
\sevs_module|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|WideOr0~3_combout\ = (\sevs_module|curr_val\(31) & \sevs_module|WideOr0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|curr_val\(31),
	datad => \sevs_module|WideOr0~2_combout\,
	combout => \sevs_module|WideOr0~3_combout\);

-- Location: FF_X22_Y20_N21
\sevs_module|sevseg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|WideOr0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|sevseg\(6));

-- Location: LCCOMB_X23_Y21_N4
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

-- Location: LCCOMB_X21_Y21_N0
\uart_module|u_TX|r_PRESCALER[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[0]~13_combout\ = \uart_module|u_TX|r_PRESCALER\(0) $ (VCC)
-- \uart_module|u_TX|r_PRESCALER[0]~14\ = CARRY(\uart_module|u_TX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(0),
	datad => VCC,
	combout => \uart_module|u_TX|r_PRESCALER[0]~13_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[0]~14\);

-- Location: LCCOMB_X21_Y21_N2
\uart_module|u_TX|r_PRESCALER[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[1]~15_combout\ = (\uart_module|u_TX|r_PRESCALER\(1) & (!\uart_module|u_TX|r_PRESCALER[0]~14\)) # (!\uart_module|u_TX|r_PRESCALER\(1) & ((\uart_module|u_TX|r_PRESCALER[0]~14\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[1]~16\ = CARRY((!\uart_module|u_TX|r_PRESCALER[0]~14\) # (!\uart_module|u_TX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(1),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[0]~14\,
	combout => \uart_module|u_TX|r_PRESCALER[1]~15_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[1]~16\);

-- Location: FF_X21_Y21_N3
\uart_module|u_TX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[1]~15_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(1));

-- Location: LCCOMB_X21_Y21_N4
\uart_module|u_TX|r_PRESCALER[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[2]~17_combout\ = (\uart_module|u_TX|r_PRESCALER\(2) & (\uart_module|u_TX|r_PRESCALER[1]~16\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(2) & (!\uart_module|u_TX|r_PRESCALER[1]~16\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[2]~18\ = CARRY((\uart_module|u_TX|r_PRESCALER\(2) & !\uart_module|u_TX|r_PRESCALER[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(2),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[1]~16\,
	combout => \uart_module|u_TX|r_PRESCALER[2]~17_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[2]~18\);

-- Location: FF_X21_Y21_N5
\uart_module|u_TX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[2]~17_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(2));

-- Location: LCCOMB_X21_Y21_N6
\uart_module|u_TX|r_PRESCALER[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[3]~19_combout\ = (\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER[2]~18\)) # (!\uart_module|u_TX|r_PRESCALER\(3) & ((\uart_module|u_TX|r_PRESCALER[2]~18\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[3]~20\ = CARRY((!\uart_module|u_TX|r_PRESCALER[2]~18\) # (!\uart_module|u_TX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(3),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[2]~18\,
	combout => \uart_module|u_TX|r_PRESCALER[3]~19_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[3]~20\);

-- Location: FF_X21_Y21_N7
\uart_module|u_TX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[3]~19_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(3));

-- Location: LCCOMB_X21_Y21_N8
\uart_module|u_TX|r_PRESCALER[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[4]~21_combout\ = (\uart_module|u_TX|r_PRESCALER\(4) & (\uart_module|u_TX|r_PRESCALER[3]~20\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(4) & (!\uart_module|u_TX|r_PRESCALER[3]~20\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[4]~22\ = CARRY((\uart_module|u_TX|r_PRESCALER\(4) & !\uart_module|u_TX|r_PRESCALER[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(4),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[3]~20\,
	combout => \uart_module|u_TX|r_PRESCALER[4]~21_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[4]~22\);

-- Location: FF_X21_Y21_N9
\uart_module|u_TX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[4]~21_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(4));

-- Location: LCCOMB_X21_Y21_N10
\uart_module|u_TX|r_PRESCALER[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[5]~23_combout\ = (\uart_module|u_TX|r_PRESCALER\(5) & (!\uart_module|u_TX|r_PRESCALER[4]~22\)) # (!\uart_module|u_TX|r_PRESCALER\(5) & ((\uart_module|u_TX|r_PRESCALER[4]~22\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[5]~24\ = CARRY((!\uart_module|u_TX|r_PRESCALER[4]~22\) # (!\uart_module|u_TX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(5),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[4]~22\,
	combout => \uart_module|u_TX|r_PRESCALER[5]~23_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[5]~24\);

-- Location: FF_X21_Y21_N11
\uart_module|u_TX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[5]~23_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(5));

-- Location: LCCOMB_X21_Y21_N12
\uart_module|u_TX|r_PRESCALER[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[6]~25_combout\ = (\uart_module|u_TX|r_PRESCALER\(6) & (\uart_module|u_TX|r_PRESCALER[5]~24\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(6) & (!\uart_module|u_TX|r_PRESCALER[5]~24\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[6]~26\ = CARRY((\uart_module|u_TX|r_PRESCALER\(6) & !\uart_module|u_TX|r_PRESCALER[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(6),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[5]~24\,
	combout => \uart_module|u_TX|r_PRESCALER[6]~25_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[6]~26\);

-- Location: FF_X21_Y21_N13
\uart_module|u_TX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[6]~25_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(6));

-- Location: LCCOMB_X21_Y21_N14
\uart_module|u_TX|r_PRESCALER[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[7]~27_combout\ = (\uart_module|u_TX|r_PRESCALER\(7) & (!\uart_module|u_TX|r_PRESCALER[6]~26\)) # (!\uart_module|u_TX|r_PRESCALER\(7) & ((\uart_module|u_TX|r_PRESCALER[6]~26\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[7]~28\ = CARRY((!\uart_module|u_TX|r_PRESCALER[6]~26\) # (!\uart_module|u_TX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(7),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[6]~26\,
	combout => \uart_module|u_TX|r_PRESCALER[7]~27_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[7]~28\);

-- Location: FF_X21_Y21_N15
\uart_module|u_TX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[7]~27_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(7));

-- Location: LCCOMB_X21_Y21_N16
\uart_module|u_TX|r_PRESCALER[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[8]~29_combout\ = (\uart_module|u_TX|r_PRESCALER\(8) & (\uart_module|u_TX|r_PRESCALER[7]~28\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(8) & (!\uart_module|u_TX|r_PRESCALER[7]~28\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[8]~30\ = CARRY((\uart_module|u_TX|r_PRESCALER\(8) & !\uart_module|u_TX|r_PRESCALER[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[7]~28\,
	combout => \uart_module|u_TX|r_PRESCALER[8]~29_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[8]~30\);

-- Location: FF_X21_Y21_N17
\uart_module|u_TX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[8]~29_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(8));

-- Location: LCCOMB_X21_Y21_N18
\uart_module|u_TX|r_PRESCALER[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[9]~31_combout\ = (\uart_module|u_TX|r_PRESCALER\(9) & (!\uart_module|u_TX|r_PRESCALER[8]~30\)) # (!\uart_module|u_TX|r_PRESCALER\(9) & ((\uart_module|u_TX|r_PRESCALER[8]~30\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[9]~32\ = CARRY((!\uart_module|u_TX|r_PRESCALER[8]~30\) # (!\uart_module|u_TX|r_PRESCALER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(9),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[8]~30\,
	combout => \uart_module|u_TX|r_PRESCALER[9]~31_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[9]~32\);

-- Location: FF_X21_Y21_N19
\uart_module|u_TX|r_PRESCALER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[9]~31_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(9));

-- Location: LCCOMB_X21_Y21_N20
\uart_module|u_TX|r_PRESCALER[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[10]~33_combout\ = (\uart_module|u_TX|r_PRESCALER\(10) & (\uart_module|u_TX|r_PRESCALER[9]~32\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(10) & (!\uart_module|u_TX|r_PRESCALER[9]~32\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[10]~34\ = CARRY((\uart_module|u_TX|r_PRESCALER\(10) & !\uart_module|u_TX|r_PRESCALER[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(10),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[9]~32\,
	combout => \uart_module|u_TX|r_PRESCALER[10]~33_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[10]~34\);

-- Location: FF_X21_Y21_N21
\uart_module|u_TX|r_PRESCALER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[10]~33_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(10));

-- Location: LCCOMB_X21_Y21_N22
\uart_module|u_TX|r_PRESCALER[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[11]~35_combout\ = (\uart_module|u_TX|r_PRESCALER\(11) & (!\uart_module|u_TX|r_PRESCALER[10]~34\)) # (!\uart_module|u_TX|r_PRESCALER\(11) & ((\uart_module|u_TX|r_PRESCALER[10]~34\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[11]~36\ = CARRY((!\uart_module|u_TX|r_PRESCALER[10]~34\) # (!\uart_module|u_TX|r_PRESCALER\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(11),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[10]~34\,
	combout => \uart_module|u_TX|r_PRESCALER[11]~35_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[11]~36\);

-- Location: FF_X21_Y21_N23
\uart_module|u_TX|r_PRESCALER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[11]~35_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(11));

-- Location: LCCOMB_X21_Y21_N24
\uart_module|u_TX|r_PRESCALER[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[12]~37_combout\ = \uart_module|u_TX|r_PRESCALER[11]~36\ $ (!\uart_module|u_TX|r_PRESCALER\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_TX|r_PRESCALER\(12),
	cin => \uart_module|u_TX|r_PRESCALER[11]~36\,
	combout => \uart_module|u_TX|r_PRESCALER[12]~37_combout\);

-- Location: FF_X21_Y21_N25
\uart_module|u_TX|r_PRESCALER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[12]~37_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(12));

-- Location: LCCOMB_X21_Y21_N28
\uart_module|u_TX|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~0_combout\ = (!\uart_module|u_TX|r_PRESCALER\(3) & (((!\uart_module|u_TX|r_PRESCALER\(1) & !\uart_module|u_TX|r_PRESCALER\(0))) # (!\uart_module|u_TX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(3),
	datab => \uart_module|u_TX|r_PRESCALER\(1),
	datac => \uart_module|u_TX|r_PRESCALER\(2),
	datad => \uart_module|u_TX|r_PRESCALER\(0),
	combout => \uart_module|u_TX|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y21_N16
\uart_module|u_TX|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~1_combout\ = ((!\uart_module|u_TX|r_PRESCALER\(5) & ((\uart_module|u_TX|LessThan0~0_combout\) # (!\uart_module|u_TX|r_PRESCALER\(4))))) # (!\uart_module|u_TX|r_PRESCALER\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(6),
	datab => \uart_module|u_TX|r_PRESCALER\(4),
	datac => \uart_module|u_TX|r_PRESCALER\(5),
	datad => \uart_module|u_TX|LessThan0~0_combout\,
	combout => \uart_module|u_TX|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y21_N22
\uart_module|u_TX|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~2_combout\ = (!\uart_module|u_TX|r_PRESCALER\(7) & (!\uart_module|u_TX|r_PRESCALER\(9) & (!\uart_module|u_TX|r_PRESCALER\(8) & \uart_module|u_TX|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(7),
	datab => \uart_module|u_TX|r_PRESCALER\(9),
	datac => \uart_module|u_TX|r_PRESCALER\(8),
	datad => \uart_module|u_TX|LessThan0~1_combout\,
	combout => \uart_module|u_TX|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y21_N30
\uart_module|u_TX|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~3_combout\ = (\uart_module|u_TX|r_PRESCALER\(12) & ((\uart_module|u_TX|r_PRESCALER\(11)) # ((\uart_module|u_TX|r_PRESCALER\(10) & !\uart_module|u_TX|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(10),
	datab => \uart_module|u_TX|r_PRESCALER\(12),
	datac => \uart_module|u_TX|r_PRESCALER\(11),
	datad => \uart_module|u_TX|LessThan0~2_combout\,
	combout => \uart_module|u_TX|LessThan0~3_combout\);

-- Location: FF_X21_Y21_N1
\uart_module|u_TX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_PRESCALER[0]~13_combout\,
	sclr => \uart_module|u_TX|LessThan0~3_combout\,
	ena => \uart_module|u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_PRESCALER\(0));

-- Location: LCCOMB_X22_Y21_N10
\uart_module|u_TX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~0_combout\ = (\uart_module|u_TX|r_PRESCALER\(0) & (\uart_module|u_TX|r_PRESCALER\(1) & (!\uart_module|u_TX|r_PRESCALER\(8) & !\uart_module|u_TX|r_PRESCALER\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(0),
	datab => \uart_module|u_TX|r_PRESCALER\(1),
	datac => \uart_module|u_TX|r_PRESCALER\(8),
	datad => \uart_module|u_TX|r_PRESCALER\(7),
	combout => \uart_module|u_TX|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y21_N26
\uart_module|u_TX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~1_combout\ = (\uart_module|u_TX|r_PRESCALER\(3) & (\uart_module|u_TX|r_PRESCALER\(2) & (!\uart_module|u_TX|r_PRESCALER\(4) & \uart_module|u_TX|r_PRESCALER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(3),
	datab => \uart_module|u_TX|r_PRESCALER\(2),
	datac => \uart_module|u_TX|r_PRESCALER\(4),
	datad => \uart_module|u_TX|r_PRESCALER\(5),
	combout => \uart_module|u_TX|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y21_N20
\uart_module|u_TX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~2_combout\ = (!\uart_module|u_TX|r_PRESCALER\(6) & (\uart_module|u_TX|r_PRESCALER\(11) & (!\uart_module|u_TX|r_PRESCALER\(10) & \uart_module|u_TX|r_PRESCALER\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(6),
	datab => \uart_module|u_TX|r_PRESCALER\(11),
	datac => \uart_module|u_TX|r_PRESCALER\(10),
	datad => \uart_module|u_TX|r_PRESCALER\(9),
	combout => \uart_module|u_TX|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y21_N6
\uart_module|u_TX|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~3_combout\ = (\uart_module|u_TX|Equal0~0_combout\ & (!\uart_module|u_TX|r_PRESCALER\(12) & (\uart_module|u_TX|Equal0~1_combout\ & \uart_module|u_TX|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|Equal0~0_combout\,
	datab => \uart_module|u_TX|r_PRESCALER\(12),
	datac => \uart_module|u_TX|Equal0~1_combout\,
	datad => \uart_module|u_TX|Equal0~2_combout\,
	combout => \uart_module|u_TX|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y21_N2
\uart_module|u_TX|r_INDEX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~4_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & (\uart_module|u_TX|r_INDEX\(2) $ (((\uart_module|u_TX|r_INDEX\(0) & \uart_module|u_TX|r_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(0),
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(2),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|r_INDEX~4_combout\);

-- Location: LCCOMB_X22_Y21_N12
\uart_module|u_TX|r_INDEX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX[0]~0_combout\ = (\uart_module|u_TX|o_BUSY~q\ & \uart_module|u_TX|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|o_BUSY~q\,
	datad => \uart_module|u_TX|Equal0~3_combout\,
	combout => \uart_module|u_TX|r_INDEX[0]~0_combout\);

-- Location: FF_X22_Y21_N3
\uart_module|u_TX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~4_combout\,
	ena => \uart_module|u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(2));

-- Location: LCCOMB_X22_Y21_N8
\uart_module|u_TX|r_INDEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~1_combout\ = (\uart_module|u_TX|r_INDEX\(0) & (\uart_module|u_TX|r_INDEX\(1) & (!\uart_module|u_TX|r_INDEX\(3) & \uart_module|u_TX|r_INDEX\(2)))) # (!\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_INDEX\(1) & 
-- (\uart_module|u_TX|r_INDEX\(3) & !\uart_module|u_TX|r_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(0),
	datab => \uart_module|u_TX|r_INDEX\(1),
	datac => \uart_module|u_TX|r_INDEX\(3),
	datad => \uart_module|u_TX|r_INDEX\(2),
	combout => \uart_module|u_TX|r_INDEX~1_combout\);

-- Location: FF_X22_Y21_N9
\uart_module|u_TX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~1_combout\,
	ena => \uart_module|u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(3));

-- Location: LCCOMB_X22_Y21_N4
\uart_module|u_TX|r_INDEX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~3_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & (\uart_module|u_TX|r_INDEX\(0) $ (\uart_module|u_TX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(0),
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|r_INDEX~3_combout\);

-- Location: FF_X22_Y21_N5
\uart_module|u_TX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~3_combout\,
	ena => \uart_module|u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(1));

-- Location: LCCOMB_X22_Y21_N30
\uart_module|u_TX|r_INDEX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~2_combout\ = (!\uart_module|u_TX|r_INDEX\(0) & (((!\uart_module|u_TX|r_INDEX\(1) & !\uart_module|u_TX|r_INDEX\(2))) # (!\uart_module|u_TX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(1),
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(0),
	datad => \uart_module|u_TX|r_INDEX\(2),
	combout => \uart_module|u_TX|r_INDEX~2_combout\);

-- Location: FF_X22_Y21_N31
\uart_module|u_TX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~2_combout\,
	ena => \uart_module|u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(0));

-- Location: LCCOMB_X22_Y21_N18
\uart_module|u_TX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan1~0_combout\ = (\uart_module|u_TX|r_INDEX\(3) & ((\uart_module|u_TX|r_INDEX\(0)) # ((\uart_module|u_TX|r_INDEX\(1)) # (\uart_module|u_TX|r_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(0),
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_INDEX\(2),
	combout => \uart_module|u_TX|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\uart_module|u_TX|s_TRANSMITING_FLAG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\ = (!\uart_module|u_TX|LessThan1~0_combout\) # (!\uart_module|u_TX|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|Equal0~3_combout\,
	datad => \uart_module|u_TX|LessThan1~0_combout\,
	combout => \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\uart_module|s_TX_START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_TX_START~0_combout\ = !\uart_module|u_TX|o_BUSY~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_TX|o_BUSY~q\,
	combout => \uart_module|s_TX_START~0_combout\);

-- Location: FF_X23_Y21_N25
\uart_module|s_TX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_TX_START~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_TX_START~q\);

-- Location: FF_X22_Y21_N25
\uart_module|u_TX|o_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\,
	asdata => \uart_module|s_TX_START~q\,
	sload => \uart_module|u_TX|ALT_INV_o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|o_BUSY~q\);

-- Location: LCCOMB_X23_Y21_N26
\uart_module|u_TX|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|process_0~0_combout\ = (!\uart_module|u_TX|o_BUSY~q\ & \uart_module|s_TX_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|o_BUSY~q\,
	datad => \uart_module|s_TX_START~q\,
	combout => \uart_module|u_TX|process_0~0_combout\);

-- Location: FF_X23_Y21_N5
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

-- Location: LCCOMB_X22_Y21_N28
\uart_module|u_TX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~0_combout\ = (!\uart_module|u_TX|r_INDEX\(1) & (!\uart_module|u_TX|r_INDEX\(2) & (\uart_module|u_TX|r_INDEX\(0) $ (!\uart_module|u_TX|r_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(0),
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_INDEX\(2),
	combout => \uart_module|u_TX|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\uart_module|r_TX_DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|r_TX_DATA[0]~0_combout\ = (\uart_module|r_TX_DATA\(0)) # (!\uart_module|u_TX|o_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|r_TX_DATA\(0),
	datad => \uart_module|u_TX|o_BUSY~q\,
	combout => \uart_module|r_TX_DATA[0]~0_combout\);

-- Location: FF_X23_Y21_N23
\uart_module|r_TX_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|r_TX_DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|r_TX_DATA\(0));

-- Location: FF_X23_Y21_N27
\uart_module|u_TX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|r_TX_DATA\(0),
	sload => VCC,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X22_Y21_N14
\uart_module|u_TX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~1_combout\ = (\uart_module|u_TX|Mux0~0_combout\ & (\uart_module|u_TX|r_DATA_BUFFER\(0) & (!\uart_module|u_TX|r_INDEX\(3)))) # (!\uart_module|u_TX|Mux0~0_combout\ & (((\uart_module|u_TX|r_DATA_BUFFER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(0),
	datab => \uart_module|u_TX|Mux0~0_combout\,
	datac => \uart_module|u_TX|r_INDEX\(3),
	datad => \uart_module|u_TX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_TX|Mux0~1_combout\);

-- Location: FF_X22_Y21_N15
\uart_module|u_TX|o_TX_LINE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux0~1_combout\,
	ena => \uart_module|u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|o_TX_LINE~q\);

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


