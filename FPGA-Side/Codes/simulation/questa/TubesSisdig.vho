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

-- DATE "01/13/2025 10:38:28"

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
-- i_btn1	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_btn2	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_btn3	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_btn4	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- o_r0	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r1	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r2	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r3	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r4	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r5	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r6	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_r7	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g0	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g1	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g2	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g3	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g4	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g5	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g6	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_g7	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b0	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b1	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b2	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b3	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b4	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b5	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b6	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_b7	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_vga_hs	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_vga_vs	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_buzz	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Tx	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Rx	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IR	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clockmodifier_module|clk_out_intem~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_btn1~input_o\ : std_logic;
SIGNAL \i_btn2~input_o\ : std_logic;
SIGNAL \i_btn3~input_o\ : std_logic;
SIGNAL \i_btn4~input_o\ : std_logic;
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
SIGNAL \clockmodifier_module|Equal0~7_combout\ : std_logic;
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
SIGNAL \clockmodifier_module|Equal0~5_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~6_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~8_combout\ : std_logic;
SIGNAL \clockmodifier_module|Equal0~9_combout\ : std_logic;
SIGNAL \clockmodifier_module|Add0~27\ : std_logic;
SIGNAL \clockmodifier_module|Add0~28_combout\ : std_logic;
SIGNAL \clockmodifier_module|counter~0_combout\ : std_logic;
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
SIGNAL \clockmodifier_module|clk_out_intem~0_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~feeder_combout\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~q\ : std_logic;
SIGNAL \clockmodifier_module|clk_out_intem~clkctrl_outclk\ : std_logic;
SIGNAL \sevs_module|Add0~0_combout\ : std_logic;
SIGNAL \sevs_module|counter[0]~1_combout\ : std_logic;
SIGNAL \sevs_module|Add0~1\ : std_logic;
SIGNAL \sevs_module|Add0~2_combout\ : std_logic;
SIGNAL \sevs_module|Equal3~0_combout\ : std_logic;
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
SIGNAL \sevs_module|counter[13]~feeder_combout\ : std_logic;
SIGNAL \sevs_module|Add0~27\ : std_logic;
SIGNAL \sevs_module|Add0~28_combout\ : std_logic;
SIGNAL \sevs_module|Add0~29\ : std_logic;
SIGNAL \sevs_module|Add0~30_combout\ : std_logic;
SIGNAL \sevs_module|counter[15]~feeder_combout\ : std_logic;
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
SIGNAL \sevs_module|Equal0~1_combout\ : std_logic;
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
SIGNAL \sevs_module|Equal0~3_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~4_combout\ : std_logic;
SIGNAL \sevs_module|Add0~57\ : std_logic;
SIGNAL \sevs_module|Add0~58_combout\ : std_logic;
SIGNAL \sevs_module|Add0~59\ : std_logic;
SIGNAL \sevs_module|Add0~60_combout\ : std_logic;
SIGNAL \sevs_module|Add0~61\ : std_logic;
SIGNAL \sevs_module|Add0~62_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~6_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~5_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~7_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~8_combout\ : std_logic;
SIGNAL \sevs_module|Add0~4_combout\ : std_logic;
SIGNAL \sevs_module|counter~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~9_combout\ : std_logic;
SIGNAL \sevs_module|Equal0~10_combout\ : std_logic;
SIGNAL \sevs_module|Equal1~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal1~1_combout\ : std_logic;
SIGNAL \sevs_module|Equal3~1_combout\ : std_logic;
SIGNAL \sevs_module|dig[1]~0_combout\ : std_logic;
SIGNAL \sevs_module|Equal2~0_combout\ : std_logic;
SIGNAL \sevs_module|dig~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[0]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~15_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~16_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~26\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[7]~27_combout\ : std_logic;
SIGNAL \i_Rx~input_o\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER~18_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[7]~28\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[8]~29_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[0]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[1]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[1]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[2]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_INDEX[3]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|s_RECIEVING_FLAG~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\ : std_logic;
SIGNAL \i_Rx~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|s_RECIEVING_FLAG~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~17_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[0]~10\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[1]~11_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[1]~12\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[2]~13_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[2]~14\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~19_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[3]~20\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[4]~21_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[4]~22\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[5]~23_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[5]~24\ : std_logic;
SIGNAL \uart_module|u_RX|r_PRESCALER[6]~25_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Equal0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[0]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[9]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[0]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[0]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb_elcount[0]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[1]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~1\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[2]~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~3\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[3]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~5\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[4]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~7\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[5]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~9\ : std_logic;
SIGNAL \uart_module|u_RX|Add3~10_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[6]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|o_pixel_receive~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|o_pixel_receive~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|isFirstRun~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|isFirstRun~q\ : std_logic;
SIGNAL \uart_module|u_RX|process_0~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|o_pixel_receive~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|o_pixel_receive~q\ : std_logic;
SIGNAL \imgprocessing_module|Add0~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~2_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~1\ : std_logic;
SIGNAL \imgprocessing_module|Add0~3_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~5_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~4\ : std_logic;
SIGNAL \imgprocessing_module|Add0~6_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~8_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~7\ : std_logic;
SIGNAL \imgprocessing_module|Add0~9_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~11_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~10\ : std_logic;
SIGNAL \imgprocessing_module|Add0~12_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~18_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~13\ : std_logic;
SIGNAL \imgprocessing_module|Add0~14_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~19_combout\ : std_logic;
SIGNAL \imgprocessing_module|Add0~15\ : std_logic;
SIGNAL \imgprocessing_module|Add0~16_combout\ : std_logic;
SIGNAL \imgprocessing_module|pixelcounter~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|Equal0~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|Equal0~1_combout\ : std_logic;
SIGNAL \imgprocessing_module|processing_done~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|processing_done~q\ : std_logic;
SIGNAL \buzzer_module|counter[0]~32_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[0]~18_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[5]~29\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[6]~30_combout\ : std_logic;
SIGNAL \i_IR~input_o\ : std_logic;
SIGNAL \ir_decoder_module|Add1~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~14_combout\ : std_logic;
SIGNAL \ir_decoder_module|NB[1]~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[16]~54\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[17]~55_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan0~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|started~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|started~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|started~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|NB[1]~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~1\ : std_logic;
SIGNAL \ir_decoder_module|Add1~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~4_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~3\ : std_logic;
SIGNAL \ir_decoder_module|Add1~5_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~7_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~6\ : std_logic;
SIGNAL \ir_decoder_module|Add1~8_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~10_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~9\ : std_logic;
SIGNAL \ir_decoder_module|Add1~11_combout\ : std_logic;
SIGNAL \ir_decoder_module|Add1~13_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan2~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|decoded~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|stored~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|stored~q\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[17]~35_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[17]~36_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[6]~31\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[7]~32_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[7]~33\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[8]~37_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[8]~38\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[9]~39_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[9]~40\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[10]~41_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[10]~42\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[11]~43_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[11]~44\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[12]~45_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[12]~46\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[13]~47_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[13]~48\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[14]~49_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[14]~50\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[15]~51_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[15]~52\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[16]~53_combout\ : std_logic;
SIGNAL \ir_decoder_module|failed~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|failed~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|failed~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|failed~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector2~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|failed~4_combout\ : std_logic;
SIGNAL \ir_decoder_module|failed~q\ : std_logic;
SIGNAL \ir_decoder_module|started~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|started~q\ : std_logic;
SIGNAL \ir_decoder_module|Selector1~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector0~5_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector1~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|decoded~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|decoded~q\ : std_logic;
SIGNAL \ir_decoder_module|Selector2~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector2~4_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector3~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|success~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|success~q\ : std_logic;
SIGNAL \ir_decoder_module|Selector0~4_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector0~6_combout\ : std_logic;
SIGNAL \ir_decoder_module|Selector0~7_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[17]~34_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[0]~19\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[1]~20_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[1]~21\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[2]~22_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[2]~23\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[3]~24_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[3]~25\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[4]~26_combout\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[4]~27\ : std_logic;
SIGNAL \ir_decoder_module|cycleCounter[5]~28_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan4~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan4~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan4~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan4~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan4~4_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan0~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|LessThan4~5_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~4_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[6]~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|o_irFrame[6]~feeder_combout\ : std_logic;
SIGNAL \ir_decoder_module|o_irFrame[1]~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~5_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[7]~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|changestate~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|changestate~q\ : std_logic;
SIGNAL \controller_module|ir_prevstate~feeder_combout\ : std_logic;
SIGNAL \controller_module|ir_prevstate~q\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~3_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[4]~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~2_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[5]~0_combout\ : std_logic;
SIGNAL \ir_decoder_module|o_irFrame[5]~feeder_combout\ : std_logic;
SIGNAL \controller_module|k[0]~6_combout\ : std_logic;
SIGNAL \controller_module|k[0]~7_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~8_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[1]~6_combout\ : std_logic;
SIGNAL \controller_module|en_buzz~1_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~7_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[3]~5_combout\ : std_logic;
SIGNAL \ir_decoder_module|Decoder0~6_combout\ : std_logic;
SIGNAL \ir_decoder_module|data[2]~4_combout\ : std_logic;
SIGNAL \controller_module|k[0]~8_combout\ : std_logic;
SIGNAL \controller_module|Add1~0_combout\ : std_logic;
SIGNAL \controller_module|k[0]~20_combout\ : std_logic;
SIGNAL \controller_module|k[0]~21_combout\ : std_logic;
SIGNAL \controller_module|k[0]~9\ : std_logic;
SIGNAL \controller_module|k[1]~10_combout\ : std_logic;
SIGNAL \controller_module|Add1~1\ : std_logic;
SIGNAL \controller_module|Add1~2_combout\ : std_logic;
SIGNAL \controller_module|k[1]~11\ : std_logic;
SIGNAL \controller_module|k[2]~12_combout\ : std_logic;
SIGNAL \controller_module|Add1~3\ : std_logic;
SIGNAL \controller_module|Add1~4_combout\ : std_logic;
SIGNAL \controller_module|k[2]~13\ : std_logic;
SIGNAL \controller_module|k[3]~14_combout\ : std_logic;
SIGNAL \controller_module|Add1~5\ : std_logic;
SIGNAL \controller_module|Add1~6_combout\ : std_logic;
SIGNAL \controller_module|k[3]~15\ : std_logic;
SIGNAL \controller_module|k[4]~16_combout\ : std_logic;
SIGNAL \controller_module|Add1~7\ : std_logic;
SIGNAL \controller_module|Add1~8_combout\ : std_logic;
SIGNAL \controller_module|k[4]~17\ : std_logic;
SIGNAL \controller_module|k[5]~18_combout\ : std_logic;
SIGNAL \controller_module|Add1~9\ : std_logic;
SIGNAL \controller_module|Add1~10_combout\ : std_logic;
SIGNAL \controller_module|Add1~11\ : std_logic;
SIGNAL \controller_module|Add1~12_combout\ : std_logic;
SIGNAL \controller_module|en_buzz~0_combout\ : std_logic;
SIGNAL \controller_module|en_buzz~2_combout\ : std_logic;
SIGNAL \controller_module|en_buzz~feeder_combout\ : std_logic;
SIGNAL \controller_module|en_buzz~q\ : std_logic;
SIGNAL \buzzer_module|counter[17]~96_combout\ : std_logic;
SIGNAL \buzzer_module|counter[0]~33\ : std_logic;
SIGNAL \buzzer_module|counter[1]~34_combout\ : std_logic;
SIGNAL \buzzer_module|counter[1]~35\ : std_logic;
SIGNAL \buzzer_module|counter[2]~36_combout\ : std_logic;
SIGNAL \buzzer_module|counter[2]~37\ : std_logic;
SIGNAL \buzzer_module|counter[3]~38_combout\ : std_logic;
SIGNAL \buzzer_module|counter[3]~39\ : std_logic;
SIGNAL \buzzer_module|counter[4]~40_combout\ : std_logic;
SIGNAL \buzzer_module|counter[4]~41\ : std_logic;
SIGNAL \buzzer_module|counter[5]~42_combout\ : std_logic;
SIGNAL \buzzer_module|counter[5]~43\ : std_logic;
SIGNAL \buzzer_module|counter[6]~44_combout\ : std_logic;
SIGNAL \buzzer_module|counter[6]~45\ : std_logic;
SIGNAL \buzzer_module|counter[7]~46_combout\ : std_logic;
SIGNAL \buzzer_module|counter[7]~47\ : std_logic;
SIGNAL \buzzer_module|counter[8]~48_combout\ : std_logic;
SIGNAL \buzzer_module|counter[8]~49\ : std_logic;
SIGNAL \buzzer_module|counter[9]~50_combout\ : std_logic;
SIGNAL \buzzer_module|counter[9]~51\ : std_logic;
SIGNAL \buzzer_module|counter[10]~52_combout\ : std_logic;
SIGNAL \buzzer_module|counter[10]~53\ : std_logic;
SIGNAL \buzzer_module|counter[11]~54_combout\ : std_logic;
SIGNAL \buzzer_module|counter[11]~55\ : std_logic;
SIGNAL \buzzer_module|counter[12]~56_combout\ : std_logic;
SIGNAL \buzzer_module|counter[12]~57\ : std_logic;
SIGNAL \buzzer_module|counter[13]~58_combout\ : std_logic;
SIGNAL \buzzer_module|counter[13]~59\ : std_logic;
SIGNAL \buzzer_module|counter[14]~60_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~2_combout\ : std_logic;
SIGNAL \buzzer_module|counter[14]~61\ : std_logic;
SIGNAL \buzzer_module|counter[15]~62_combout\ : std_logic;
SIGNAL \buzzer_module|counter[15]~63\ : std_logic;
SIGNAL \buzzer_module|counter[16]~64_combout\ : std_logic;
SIGNAL \buzzer_module|counter[16]~65\ : std_logic;
SIGNAL \buzzer_module|counter[17]~66_combout\ : std_logic;
SIGNAL \buzzer_module|counter[17]~67\ : std_logic;
SIGNAL \buzzer_module|counter[18]~68_combout\ : std_logic;
SIGNAL \buzzer_module|counter[18]~69\ : std_logic;
SIGNAL \buzzer_module|counter[19]~70_combout\ : std_logic;
SIGNAL \buzzer_module|counter[19]~71\ : std_logic;
SIGNAL \buzzer_module|counter[20]~72_combout\ : std_logic;
SIGNAL \buzzer_module|counter[20]~73\ : std_logic;
SIGNAL \buzzer_module|counter[21]~74_combout\ : std_logic;
SIGNAL \buzzer_module|counter[21]~75\ : std_logic;
SIGNAL \buzzer_module|counter[22]~76_combout\ : std_logic;
SIGNAL \buzzer_module|counter[22]~77\ : std_logic;
SIGNAL \buzzer_module|counter[23]~78_combout\ : std_logic;
SIGNAL \buzzer_module|counter[23]~79\ : std_logic;
SIGNAL \buzzer_module|counter[24]~80_combout\ : std_logic;
SIGNAL \buzzer_module|counter[24]~81\ : std_logic;
SIGNAL \buzzer_module|counter[25]~82_combout\ : std_logic;
SIGNAL \buzzer_module|counter[25]~83\ : std_logic;
SIGNAL \buzzer_module|counter[26]~84_combout\ : std_logic;
SIGNAL \buzzer_module|counter[26]~85\ : std_logic;
SIGNAL \buzzer_module|counter[27]~86_combout\ : std_logic;
SIGNAL \buzzer_module|counter[27]~87\ : std_logic;
SIGNAL \buzzer_module|counter[28]~88_combout\ : std_logic;
SIGNAL \buzzer_module|counter[28]~89\ : std_logic;
SIGNAL \buzzer_module|counter[29]~90_combout\ : std_logic;
SIGNAL \buzzer_module|counter[29]~91\ : std_logic;
SIGNAL \buzzer_module|counter[30]~92_combout\ : std_logic;
SIGNAL \buzzer_module|counter[30]~93\ : std_logic;
SIGNAL \buzzer_module|counter[31]~94_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~0_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~1_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~4_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~5_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~3_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~6_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~7_combout\ : std_logic;
SIGNAL \buzzer_module|LessThan0~8_combout\ : std_logic;
SIGNAL \buzzer_module|state~0_combout\ : std_logic;
SIGNAL \buzzer_module|state~q\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[0]~9_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[3]~16\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[4]~17_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_BUSY~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_BUSY~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_BUSY~q\ : std_logic;
SIGNAL \uart_module|transmission~0_combout\ : std_logic;
SIGNAL \uart_module|s_TX_START~feeder_combout\ : std_logic;
SIGNAL \uart_module|s_TX_START~q\ : std_logic;
SIGNAL \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|s_TRANSMITING_FLAG~q\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[4]~18\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[5]~19_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[5]~20\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[6]~21_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[6]~22\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[7]~23_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[7]~24\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[8]~25_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[0]~10\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[1]~11_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[1]~12\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[2]~13_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[2]~14\ : std_logic;
SIGNAL \uart_module|u_TX|r_PRESCALER[3]~15_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Equal0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_TX_LINE~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~2_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX~3_combout\ : std_logic;
SIGNAL \uart_module|pixval_count[0]~1_combout\ : std_logic;
SIGNAL \uart_module|pixval_count[1]~0_combout\ : std_logic;
SIGNAL \uart_module|s_mem_addr~0_combout\ : std_logic;
SIGNAL \uart_module|Add1~4\ : std_logic;
SIGNAL \uart_module|Add1~6_combout\ : std_logic;
SIGNAL \uart_module|Add1~8_combout\ : std_logic;
SIGNAL \uart_module|Add1~7\ : std_logic;
SIGNAL \uart_module|Add1~9_combout\ : std_logic;
SIGNAL \uart_module|Add1~11_combout\ : std_logic;
SIGNAL \uart_module|Add1~10\ : std_logic;
SIGNAL \uart_module|Add1~12_combout\ : std_logic;
SIGNAL \uart_module|Add1~14_combout\ : std_logic;
SIGNAL \uart_module|Add1~13\ : std_logic;
SIGNAL \uart_module|Add1~15_combout\ : std_logic;
SIGNAL \uart_module|Add1~17_combout\ : std_logic;
SIGNAL \uart_module|Add1~2_combout\ : std_logic;
SIGNAL \uart_module|Add1~3_combout\ : std_logic;
SIGNAL \uart_module|Add1~5_combout\ : std_logic;
SIGNAL \uart_module|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_module|Add1~18_combout\ : std_logic;
SIGNAL \uart_module|Add1~16\ : std_logic;
SIGNAL \uart_module|Add1~19_combout\ : std_logic;
SIGNAL \uart_module|Add1~21_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \uart_module|Mux0~2_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \uart_module|Mux0~1_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \uart_module|Mux0~0_combout\ : std_logic;
SIGNAL \uart_module|Mux0~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[8]~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][7]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[11]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[9]~5_combout\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~2_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[7]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[5]~2_combout\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~1_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[1]~0_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[3]~1_combout\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[7]~9_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][6]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[0]~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[1]~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[2]~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[3]~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[4]~_wirecell_combout\ : std_logic;
SIGNAL \uart_module|u_RX|mem_addr[5]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][7]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[6]~6_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][5]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[5]~3_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][4]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[4]~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[3]~5_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][2]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][1]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_DATA_BUFFER[1]~7_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[0][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][7]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|Decoder1~4_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][6]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][5]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][1]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[1][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][6]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][5]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][4]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][3]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][2]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][1]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][1]~q\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][0]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|rgb[2][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~4_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][6]~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~25_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][6]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~18_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~27_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~8_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][7]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~20_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][7]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~18_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][5]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~11_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~9_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][4]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~2_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][5]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~12_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][3]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~5_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~14_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][2]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~7_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][3]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~24_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][1]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~17_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~20_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[0][0][0]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~13_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][1]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][1]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][0]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[0][0][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~6_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~26_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][6]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~19_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][7]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~17_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][5]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~10_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~7_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][4]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~1_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~11_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][3]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~4_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~15_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][2]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~8_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~23_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][1]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~16_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~21_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[1][1][0]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~14_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][1]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[1][0][0]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~16_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][5]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~9_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][6]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~5_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][4]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][5]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~10_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][3]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~3_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][4]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~13_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][2]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~6_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][3]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~22_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][1]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~15_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][2]~q\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \imgprocessing_module|Mux1~19_combout\ : std_logic;
SIGNAL \imgprocessing_module|curr_pixel[2][2][0]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|temp_result~12_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][1]~q\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][0]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|multiplier|result[2][0][0]~q\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \uart_module|s_tx_data~29_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \uart_module|s_tx_data~30_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~31_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~32_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data[7]~4_combout\ : std_logic;
SIGNAL \uart_module|u_TX|process_0~0_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~5_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \uart_module|s_tx_data~17_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \uart_module|s_tx_data~18_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~19_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~20_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_DATA_BUFFER[2]~feeder_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_DATA_BUFFER[0]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \uart_module|s_tx_data~22_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \uart_module|s_tx_data~23_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \uart_module|s_tx_data~21_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~24_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~2_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \uart_module|s_tx_data~25_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \uart_module|s_tx_data~26_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~27_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~28_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~3_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \uart_module|s_tx_data~5_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \uart_module|s_tx_data~6_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~7_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~8_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_DATA_BUFFER[5]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \uart_module|s_tx_data~9_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \uart_module|s_tx_data~10_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~11_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~12_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \uart_module|s_tx_data~0_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \uart_module|s_tx_data~1_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~2_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~3_combout\ : std_logic;
SIGNAL \uart_module|u_TX|r_DATA_BUFFER[6]~feeder_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \uart_module|s_tx_data~13_combout\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \uart_module|s_tx_data~14_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~15_combout\ : std_logic;
SIGNAL \uart_module|s_tx_data~16_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~1_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~4_combout\ : std_logic;
SIGNAL \uart_module|u_TX|Mux0~6_combout\ : std_logic;
SIGNAL \uart_module|u_TX|o_TX_LINE~q\ : std_logic;
SIGNAL \uart_module|u_TX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buzzer_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_PRESCALER\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_PRESCALER\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sevs_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ir_decoder_module|cycleCounter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \controller_module|k\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \imgprocessing_module|pixelcounter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sevs_module|dig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_module|u_RX|mem_addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uart_module|u_RX|rgb_elcount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \uart_module|u_TX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clockmodifier_module|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ir_decoder_module|o_irFrame\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart_module|s_tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \imgprocessing_module|temp_img_rtl_0_bypass\ : std_logic_vector(0 TO 36);
SIGNAL \ir_decoder_module|data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \uart_module|pixval_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ir_decoder_module|NB\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_module|s_mem_addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_module|u_RX|r_MEM_rtl_0_bypass\ : std_logic_vector(0 TO 36);
SIGNAL \uart_module|u_RX|ALT_INV_s_RECIEVING_FLAG~q\ : std_logic;
SIGNAL \uart_module|u_TX|ALT_INV_o_TX_LINE~q\ : std_logic;
SIGNAL \uart_module|u_RX|ALT_INV_o_pixel_receive~q\ : std_logic;
SIGNAL \sevs_module|ALT_INV_dig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller_module|ALT_INV_en_buzz~q\ : std_logic;
SIGNAL \uart_module|ALT_INV_transmission~0_combout\ : std_logic;

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

\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \imgprocessing_module|multiplier|result[2][0][0]~q\ & 
\imgprocessing_module|multiplier|result[2][0][1]~q\ & \imgprocessing_module|multiplier|result[2][0][2]~q\ & \imgprocessing_module|multiplier|result[2][0][3]~q\ & \imgprocessing_module|multiplier|result[2][0][4]~q\ & 
\imgprocessing_module|multiplier|result[2][0][5]~q\ & \imgprocessing_module|multiplier|result[2][0][6]~q\ & \imgprocessing_module|multiplier|result[2][0][7]~q\ & \imgprocessing_module|multiplier|result[1][0][0]~q\ & 
\imgprocessing_module|multiplier|result[1][0][1]~q\ & \imgprocessing_module|multiplier|result[1][0][2]~q\ & \imgprocessing_module|multiplier|result[1][0][3]~q\ & \imgprocessing_module|multiplier|result[1][0][4]~q\ & 
\imgprocessing_module|multiplier|result[1][0][5]~q\ & \imgprocessing_module|multiplier|result[1][0][6]~q\ & \imgprocessing_module|multiplier|result[1][0][7]~q\ & \imgprocessing_module|multiplier|result[0][0][0]~q\ & 
\imgprocessing_module|multiplier|result[0][0][1]~q\ & \imgprocessing_module|multiplier|result[0][0][2]~q\ & \imgprocessing_module|multiplier|result[0][0][3]~q\ & \imgprocessing_module|multiplier|result[0][0][4]~q\ & 
\imgprocessing_module|multiplier|result[0][0][5]~q\ & \imgprocessing_module|multiplier|result[0][0][6]~q\ & \imgprocessing_module|multiplier|result[0][0][7]~q\);

\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\imgprocessing_module|pixelcounter\(5) & \imgprocessing_module|pixelcounter\(4) & \imgprocessing_module|pixelcounter\(3) & \imgprocessing_module|pixelcounter\(2)
& \imgprocessing_module|pixelcounter\(1) & \imgprocessing_module|pixelcounter\(0));

\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\uart_module|Add1~21_combout\ & \uart_module|Add1~17_combout\ & \uart_module|Add1~14_combout\ & \uart_module|Add1~11_combout\ & \uart_module|Add1~8_combout\ & 
\uart_module|Add1~5_combout\);

\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a1\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a2\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a3\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a4\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a5\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a6\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a7\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a8\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a9\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a10\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a11\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a12\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a13\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a14\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a15\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a16\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a17\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a18\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a19\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a20\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a21\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a22\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a23\ <= \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);

\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \uart_module|u_RX|rgb[2][0]~q\ & \uart_module|u_RX|rgb[2][1]~q\ & \uart_module|u_RX|rgb[2][2]~q\ & 
\uart_module|u_RX|rgb[2][3]~q\ & \uart_module|u_RX|rgb[2][4]~q\ & \uart_module|u_RX|rgb[2][5]~q\ & \uart_module|u_RX|rgb[2][6]~q\ & \uart_module|u_RX|rgb[2][7]~q\ & \uart_module|u_RX|rgb[1][0]~q\ & \uart_module|u_RX|rgb[1][1]~q\ & 
\uart_module|u_RX|rgb[1][2]~q\ & \uart_module|u_RX|rgb[1][3]~q\ & \uart_module|u_RX|rgb[1][4]~q\ & \uart_module|u_RX|rgb[1][5]~q\ & \uart_module|u_RX|rgb[1][6]~q\ & \uart_module|u_RX|rgb[1][7]~q\ & \uart_module|u_RX|rgb[0][0]~q\ & 
\uart_module|u_RX|rgb[0][1]~q\ & \uart_module|u_RX|rgb[0][2]~q\ & \uart_module|u_RX|rgb[0][3]~q\ & \uart_module|u_RX|rgb[0][4]~q\ & \uart_module|u_RX|rgb[0][5]~q\ & \uart_module|u_RX|rgb[0][7]~q\ & \uart_module|u_RX|rgb[0][6]~q\);

\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\uart_module|u_RX|mem_addr[5]~_wirecell_combout\ & \uart_module|u_RX|mem_addr[4]~_wirecell_combout\ & \uart_module|u_RX|mem_addr[3]~_wirecell_combout\ & 
\uart_module|u_RX|mem_addr[2]~_wirecell_combout\ & \uart_module|u_RX|mem_addr[1]~_wirecell_combout\ & \uart_module|u_RX|mem_addr[0]~_wirecell_combout\);

\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\imgprocessing_module|Add0~19_combout\ & \imgprocessing_module|Add0~18_combout\ & \imgprocessing_module|Add0~11_combout\ & \imgprocessing_module|Add0~8_combout\ & 
\imgprocessing_module|Add0~5_combout\ & \imgprocessing_module|Add0~2_combout\);

\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a1\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a2\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a3\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a4\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a5\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a6\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a7\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a8\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a9\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a10\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a11\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a12\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a13\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a14\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a15\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a16\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a17\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a18\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a19\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a20\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a21\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a22\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a23\ <= \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);

\clockmodifier_module|clk_out_intem~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockmodifier_module|clk_out_intem~q\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\uart_module|u_RX|ALT_INV_s_RECIEVING_FLAG~q\ <= NOT \uart_module|u_RX|s_RECIEVING_FLAG~q\;
\uart_module|u_TX|ALT_INV_o_TX_LINE~q\ <= NOT \uart_module|u_TX|o_TX_LINE~q\;
\uart_module|u_RX|ALT_INV_o_pixel_receive~q\ <= NOT \uart_module|u_RX|o_pixel_receive~q\;
\sevs_module|ALT_INV_dig\(3) <= NOT \sevs_module|dig\(3);
\sevs_module|ALT_INV_dig\(2) <= NOT \sevs_module|dig\(2);
\sevs_module|ALT_INV_dig\(1) <= NOT \sevs_module|dig\(1);
\sevs_module|ALT_INV_dig\(0) <= NOT \sevs_module|dig\(0);
\controller_module|ALT_INV_en_buzz~q\ <= NOT \controller_module|en_buzz~q\;
\uart_module|ALT_INV_transmission~0_combout\ <= NOT \uart_module|transmission~0_combout\;
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \imgprocessing_module|processing_done~q\,
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
	i => \uart_module|u_RX|o_pixel_receive~q\,
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
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => \o_led4~output_o\);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X5_Y24_N9
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
	i => \buzzer_module|state~q\,
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

-- Location: LCCOMB_X3_Y10_N0
\clockmodifier_module|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~0_combout\ = \clockmodifier_module|counter\(0) $ (VCC)
-- \clockmodifier_module|Add0~1\ = CARRY(\clockmodifier_module|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(0),
	datad => VCC,
	combout => \clockmodifier_module|Add0~0_combout\,
	cout => \clockmodifier_module|Add0~1\);

-- Location: LCCOMB_X2_Y10_N16
\clockmodifier_module|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~5_combout\ = (\clockmodifier_module|Add0~0_combout\ & ((!\clockmodifier_module|Equal0~4_combout\) # (!\clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~9_combout\,
	datac => \clockmodifier_module|Add0~0_combout\,
	datad => \clockmodifier_module|Equal0~4_combout\,
	combout => \clockmodifier_module|counter~5_combout\);

-- Location: FF_X3_Y10_N13
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

-- Location: LCCOMB_X3_Y10_N2
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

-- Location: FF_X3_Y10_N3
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

-- Location: LCCOMB_X3_Y10_N4
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

-- Location: FF_X3_Y10_N5
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

-- Location: LCCOMB_X3_Y10_N6
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

-- Location: FF_X3_Y10_N7
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

-- Location: LCCOMB_X3_Y10_N8
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

-- Location: FF_X3_Y10_N9
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

-- Location: LCCOMB_X3_Y10_N10
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

-- Location: LCCOMB_X2_Y10_N28
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

-- Location: FF_X2_Y10_N29
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

-- Location: LCCOMB_X3_Y10_N12
\clockmodifier_module|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~12_combout\ = (\clockmodifier_module|counter\(6) & (\clockmodifier_module|Add0~11\ $ (GND))) # (!\clockmodifier_module|counter\(6) & (!\clockmodifier_module|Add0~11\ & VCC))
-- \clockmodifier_module|Add0~13\ = CARRY((\clockmodifier_module|counter\(6) & !\clockmodifier_module|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(6),
	datad => VCC,
	cin => \clockmodifier_module|Add0~11\,
	combout => \clockmodifier_module|Add0~12_combout\,
	cout => \clockmodifier_module|Add0~13\);

-- Location: LCCOMB_X2_Y10_N6
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

-- Location: FF_X2_Y10_N7
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

-- Location: LCCOMB_X3_Y10_N14
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

-- Location: FF_X3_Y10_N15
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

-- Location: LCCOMB_X2_Y10_N30
\clockmodifier_module|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~7_combout\ = (\clockmodifier_module|counter\(6) & (!\clockmodifier_module|counter\(4) & (!\clockmodifier_module|counter\(7) & \clockmodifier_module|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(6),
	datab => \clockmodifier_module|counter\(4),
	datac => \clockmodifier_module|counter\(7),
	datad => \clockmodifier_module|counter\(5),
	combout => \clockmodifier_module|Equal0~7_combout\);

-- Location: LCCOMB_X3_Y10_N16
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

-- Location: LCCOMB_X2_Y10_N14
\clockmodifier_module|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~2_combout\ = (\clockmodifier_module|Add0~16_combout\ & ((!\clockmodifier_module|Equal0~4_combout\) # (!\clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~9_combout\,
	datac => \clockmodifier_module|Add0~16_combout\,
	datad => \clockmodifier_module|Equal0~4_combout\,
	combout => \clockmodifier_module|counter~2_combout\);

-- Location: FF_X2_Y10_N15
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

-- Location: LCCOMB_X3_Y10_N18
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

-- Location: FF_X3_Y10_N19
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

-- Location: LCCOMB_X3_Y10_N20
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

-- Location: FF_X3_Y10_N21
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

-- Location: LCCOMB_X3_Y10_N22
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

-- Location: FF_X3_Y10_N23
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

-- Location: LCCOMB_X3_Y10_N24
\clockmodifier_module|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~24_combout\ = (\clockmodifier_module|counter\(12) & (\clockmodifier_module|Add0~23\ $ (GND))) # (!\clockmodifier_module|counter\(12) & (!\clockmodifier_module|Add0~23\ & VCC))
-- \clockmodifier_module|Add0~25\ = CARRY((\clockmodifier_module|counter\(12) & !\clockmodifier_module|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(12),
	datad => VCC,
	cin => \clockmodifier_module|Add0~23\,
	combout => \clockmodifier_module|Add0~24_combout\,
	cout => \clockmodifier_module|Add0~25\);

-- Location: LCCOMB_X2_Y10_N26
\clockmodifier_module|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|counter~1_combout\ = (\clockmodifier_module|Add0~24_combout\ & ((!\clockmodifier_module|Equal0~4_combout\) # (!\clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~9_combout\,
	datac => \clockmodifier_module|Add0~24_combout\,
	datad => \clockmodifier_module|Equal0~4_combout\,
	combout => \clockmodifier_module|counter~1_combout\);

-- Location: FF_X2_Y10_N27
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

-- Location: LCCOMB_X3_Y10_N26
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

-- Location: FF_X3_Y10_N27
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

-- Location: LCCOMB_X2_Y10_N0
\clockmodifier_module|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~5_combout\ = (\clockmodifier_module|counter\(12) & (\clockmodifier_module|counter\(14) & (!\clockmodifier_module|counter\(15) & !\clockmodifier_module|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(12),
	datab => \clockmodifier_module|counter\(14),
	datac => \clockmodifier_module|counter\(15),
	datad => \clockmodifier_module|counter\(13),
	combout => \clockmodifier_module|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y10_N4
\clockmodifier_module|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~6_combout\ = (!\clockmodifier_module|counter\(10) & (!\clockmodifier_module|counter\(9) & (\clockmodifier_module|counter\(8) & !\clockmodifier_module|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(10),
	datab => \clockmodifier_module|counter\(9),
	datac => \clockmodifier_module|counter\(8),
	datad => \clockmodifier_module|counter\(11),
	combout => \clockmodifier_module|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y10_N20
\clockmodifier_module|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~8_combout\ = (!\clockmodifier_module|counter\(2) & (!\clockmodifier_module|counter\(0) & (!\clockmodifier_module|counter\(1) & !\clockmodifier_module|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(2),
	datab => \clockmodifier_module|counter\(0),
	datac => \clockmodifier_module|counter\(1),
	datad => \clockmodifier_module|counter\(3),
	combout => \clockmodifier_module|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y10_N22
\clockmodifier_module|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~9_combout\ = (\clockmodifier_module|Equal0~7_combout\ & (\clockmodifier_module|Equal0~5_combout\ & (\clockmodifier_module|Equal0~6_combout\ & \clockmodifier_module|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~7_combout\,
	datab => \clockmodifier_module|Equal0~5_combout\,
	datac => \clockmodifier_module|Equal0~6_combout\,
	datad => \clockmodifier_module|Equal0~8_combout\,
	combout => \clockmodifier_module|Equal0~9_combout\);

-- Location: LCCOMB_X3_Y10_N28
\clockmodifier_module|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Add0~28_combout\ = (\clockmodifier_module|counter\(14) & (\clockmodifier_module|Add0~27\ $ (GND))) # (!\clockmodifier_module|counter\(14) & (!\clockmodifier_module|Add0~27\ & VCC))
-- \clockmodifier_module|Add0~29\ = CARRY((\clockmodifier_module|counter\(14) & !\clockmodifier_module|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockmodifier_module|counter\(14),
	datad => VCC,
	cin => \clockmodifier_module|Add0~27\,
	combout => \clockmodifier_module|Add0~28_combout\,
	cout => \clockmodifier_module|Add0~29\);

-- Location: LCCOMB_X2_Y10_N24
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

-- Location: FF_X2_Y10_N25
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

-- Location: LCCOMB_X3_Y10_N30
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

-- Location: FF_X3_Y10_N31
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

-- Location: LCCOMB_X3_Y9_N0
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

-- Location: FF_X3_Y9_N1
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

-- Location: LCCOMB_X3_Y9_N2
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

-- Location: FF_X3_Y9_N3
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

-- Location: LCCOMB_X3_Y9_N4
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

-- Location: FF_X3_Y9_N5
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

-- Location: LCCOMB_X3_Y9_N6
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

-- Location: FF_X3_Y9_N7
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

-- Location: LCCOMB_X3_Y9_N8
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

-- Location: FF_X3_Y9_N9
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

-- Location: LCCOMB_X3_Y9_N10
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

-- Location: FF_X3_Y9_N11
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

-- Location: LCCOMB_X3_Y9_N12
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

-- Location: FF_X3_Y9_N13
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

-- Location: LCCOMB_X3_Y9_N14
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

-- Location: FF_X3_Y9_N15
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

-- Location: LCCOMB_X3_Y9_N16
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

-- Location: FF_X3_Y9_N17
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

-- Location: LCCOMB_X3_Y9_N18
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

-- Location: FF_X3_Y9_N19
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

-- Location: LCCOMB_X3_Y9_N20
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

-- Location: FF_X3_Y9_N21
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

-- Location: LCCOMB_X3_Y9_N22
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

-- Location: FF_X3_Y9_N23
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

-- Location: LCCOMB_X2_Y9_N30
\clockmodifier_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~1_combout\ = (!\clockmodifier_module|counter\(26) & (!\clockmodifier_module|counter\(25) & (!\clockmodifier_module|counter\(27) & !\clockmodifier_module|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(26),
	datab => \clockmodifier_module|counter\(25),
	datac => \clockmodifier_module|counter\(27),
	datad => \clockmodifier_module|counter\(24),
	combout => \clockmodifier_module|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y9_N24
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

-- Location: FF_X3_Y9_N25
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

-- Location: LCCOMB_X3_Y9_N26
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

-- Location: FF_X3_Y9_N27
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

-- Location: LCCOMB_X3_Y9_N28
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

-- Location: FF_X3_Y9_N29
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

-- Location: LCCOMB_X3_Y9_N30
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

-- Location: FF_X3_Y9_N31
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

-- Location: LCCOMB_X2_Y9_N28
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

-- Location: LCCOMB_X2_Y9_N8
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

-- Location: LCCOMB_X2_Y9_N18
\clockmodifier_module|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|Equal0~3_combout\ = (!\clockmodifier_module|counter\(18) & (!\clockmodifier_module|counter\(16) & (!\clockmodifier_module|counter\(19) & !\clockmodifier_module|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|counter\(18),
	datab => \clockmodifier_module|counter\(16),
	datac => \clockmodifier_module|counter\(19),
	datad => \clockmodifier_module|counter\(17),
	combout => \clockmodifier_module|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y9_N0
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

-- Location: LCCOMB_X1_Y10_N18
\clockmodifier_module|clk_out_intem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockmodifier_module|clk_out_intem~0_combout\ = \clockmodifier_module|clk_out_intem~q\ $ (((\clockmodifier_module|Equal0~4_combout\ & \clockmodifier_module|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockmodifier_module|Equal0~4_combout\,
	datac => \clockmodifier_module|clk_out_intem~q\,
	datad => \clockmodifier_module|Equal0~9_combout\,
	combout => \clockmodifier_module|clk_out_intem~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
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

-- Location: FF_X1_Y10_N31
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

-- Location: LCCOMB_X17_Y23_N0
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

-- Location: LCCOMB_X16_Y23_N16
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

-- Location: FF_X17_Y23_N1
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

-- Location: LCCOMB_X17_Y23_N2
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

-- Location: FF_X17_Y23_N3
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

-- Location: LCCOMB_X16_Y23_N22
\sevs_module|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal3~0_combout\ = (!\sevs_module|counter\(1) & (\sevs_module|counter\(0) & \sevs_module|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datab => \sevs_module|counter\(0),
	datac => \sevs_module|counter\(2),
	combout => \sevs_module|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y23_N4
\sevs_module|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Add0~4_combout\ = (\sevs_module|counter\(2) & (\sevs_module|Add0~3\ $ (GND))) # (!\sevs_module|counter\(2) & (!\sevs_module|Add0~3\ & VCC))
-- \sevs_module|Add0~5\ = CARRY((\sevs_module|counter\(2) & !\sevs_module|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sevs_module|counter\(2),
	datad => VCC,
	cin => \sevs_module|Add0~3\,
	combout => \sevs_module|Add0~4_combout\,
	cout => \sevs_module|Add0~5\);

-- Location: LCCOMB_X17_Y23_N6
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

-- Location: FF_X17_Y23_N7
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

-- Location: LCCOMB_X17_Y23_N8
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

-- Location: FF_X17_Y23_N9
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

-- Location: LCCOMB_X17_Y23_N10
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

-- Location: FF_X17_Y23_N11
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

-- Location: LCCOMB_X17_Y23_N12
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

-- Location: FF_X17_Y23_N13
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

-- Location: LCCOMB_X17_Y23_N14
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

-- Location: FF_X17_Y23_N15
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

-- Location: LCCOMB_X17_Y23_N16
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

-- Location: FF_X17_Y23_N17
\sevs_module|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(8));

-- Location: LCCOMB_X17_Y23_N18
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

-- Location: FF_X17_Y23_N19
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

-- Location: LCCOMB_X17_Y23_N20
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

-- Location: FF_X17_Y23_N21
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

-- Location: LCCOMB_X17_Y23_N22
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

-- Location: FF_X17_Y23_N23
\sevs_module|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(11));

-- Location: LCCOMB_X17_Y23_N24
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

-- Location: FF_X17_Y23_N25
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

-- Location: LCCOMB_X17_Y23_N26
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

-- Location: LCCOMB_X16_Y22_N12
\sevs_module|counter[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|counter[13]~feeder_combout\ = \sevs_module|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sevs_module|Add0~26_combout\,
	combout => \sevs_module|counter[13]~feeder_combout\);

-- Location: FF_X16_Y22_N13
\sevs_module|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|counter[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(13));

-- Location: LCCOMB_X17_Y23_N28
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

-- Location: FF_X17_Y23_N29
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

-- Location: LCCOMB_X17_Y23_N30
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

-- Location: LCCOMB_X16_Y22_N14
\sevs_module|counter[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|counter[15]~feeder_combout\ = \sevs_module|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sevs_module|Add0~30_combout\,
	combout => \sevs_module|counter[15]~feeder_combout\);

-- Location: FF_X16_Y22_N15
\sevs_module|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|counter[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(15));

-- Location: LCCOMB_X17_Y22_N0
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

-- Location: FF_X17_Y22_N1
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

-- Location: LCCOMB_X17_Y22_N2
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

-- Location: FF_X17_Y22_N3
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

-- Location: LCCOMB_X17_Y22_N4
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

-- Location: FF_X17_Y22_N5
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

-- Location: LCCOMB_X17_Y22_N6
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

-- Location: FF_X17_Y22_N7
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

-- Location: LCCOMB_X17_Y22_N8
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

-- Location: FF_X17_Y22_N9
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

-- Location: LCCOMB_X17_Y22_N10
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

-- Location: FF_X17_Y22_N11
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

-- Location: LCCOMB_X17_Y22_N12
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

-- Location: FF_X17_Y22_N13
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

-- Location: LCCOMB_X17_Y22_N14
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

-- Location: FF_X17_Y22_N15
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

-- Location: LCCOMB_X17_Y22_N16
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

-- Location: FF_X17_Y22_N17
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

-- Location: LCCOMB_X16_Y22_N30
\sevs_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~1_combout\ = (!\sevs_module|counter\(24) & (!\sevs_module|counter\(23) & (!\sevs_module|counter\(22) & !\sevs_module|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(24),
	datab => \sevs_module|counter\(23),
	datac => \sevs_module|counter\(22),
	datad => \sevs_module|counter\(21),
	combout => \sevs_module|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y22_N18
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

-- Location: FF_X17_Y22_N19
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

-- Location: LCCOMB_X17_Y22_N20
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

-- Location: FF_X17_Y22_N21
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

-- Location: LCCOMB_X17_Y22_N22
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

-- Location: FF_X17_Y22_N23
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

-- Location: LCCOMB_X17_Y22_N24
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

-- Location: FF_X17_Y22_N25
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

-- Location: LCCOMB_X16_Y22_N28
\sevs_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~0_combout\ = (!\sevs_module|counter\(26) & (!\sevs_module|counter\(28) & (!\sevs_module|counter\(27) & !\sevs_module|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(26),
	datab => \sevs_module|counter\(28),
	datac => \sevs_module|counter\(27),
	datad => \sevs_module|counter\(25),
	combout => \sevs_module|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y22_N8
\sevs_module|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~2_combout\ = (!\sevs_module|counter\(18) & (!\sevs_module|counter\(20) & (!\sevs_module|counter\(17) & !\sevs_module|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(18),
	datab => \sevs_module|counter\(20),
	datac => \sevs_module|counter\(17),
	datad => \sevs_module|counter\(19),
	combout => \sevs_module|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y22_N6
\sevs_module|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~3_combout\ = (!\sevs_module|counter\(13) & (!\sevs_module|counter\(15) & (!\sevs_module|counter\(16) & !\sevs_module|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(13),
	datab => \sevs_module|counter\(15),
	datac => \sevs_module|counter\(16),
	datad => \sevs_module|counter\(14),
	combout => \sevs_module|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y22_N0
\sevs_module|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~4_combout\ = (\sevs_module|Equal0~1_combout\ & (\sevs_module|Equal0~0_combout\ & (\sevs_module|Equal0~2_combout\ & \sevs_module|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal0~1_combout\,
	datab => \sevs_module|Equal0~0_combout\,
	datac => \sevs_module|Equal0~2_combout\,
	datad => \sevs_module|Equal0~3_combout\,
	combout => \sevs_module|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y22_N26
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

-- Location: FF_X17_Y22_N27
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

-- Location: LCCOMB_X17_Y22_N28
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

-- Location: FF_X17_Y22_N29
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

-- Location: LCCOMB_X17_Y22_N30
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

-- Location: FF_X17_Y22_N31
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

-- Location: LCCOMB_X16_Y23_N18
\sevs_module|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~6_combout\ = (!\sevs_module|counter\(5) & (!\sevs_module|counter\(6) & (!\sevs_module|counter\(7) & !\sevs_module|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(5),
	datab => \sevs_module|counter\(6),
	datac => \sevs_module|counter\(7),
	datad => \sevs_module|counter\(8),
	combout => \sevs_module|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y23_N8
\sevs_module|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~5_combout\ = (!\sevs_module|counter\(11) & (!\sevs_module|counter\(12) & (!\sevs_module|counter\(10) & !\sevs_module|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(11),
	datab => \sevs_module|counter\(12),
	datac => \sevs_module|counter\(10),
	datad => \sevs_module|counter\(9),
	combout => \sevs_module|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y23_N20
\sevs_module|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~7_combout\ = (!\sevs_module|counter\(3) & (!\sevs_module|counter\(4) & (!\sevs_module|counter\(30) & !\sevs_module|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(3),
	datab => \sevs_module|counter\(4),
	datac => \sevs_module|counter\(30),
	datad => \sevs_module|counter\(29),
	combout => \sevs_module|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y23_N26
\sevs_module|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~8_combout\ = (!\sevs_module|counter\(31) & (\sevs_module|Equal0~6_combout\ & (\sevs_module|Equal0~5_combout\ & \sevs_module|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(31),
	datab => \sevs_module|Equal0~6_combout\,
	datac => \sevs_module|Equal0~5_combout\,
	datad => \sevs_module|Equal0~7_combout\,
	combout => \sevs_module|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y23_N6
\sevs_module|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|counter~0_combout\ = (\sevs_module|Add0~4_combout\ & (((!\sevs_module|Equal0~8_combout\) # (!\sevs_module|Equal0~4_combout\)) # (!\sevs_module|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal3~0_combout\,
	datab => \sevs_module|Equal0~4_combout\,
	datac => \sevs_module|Equal0~8_combout\,
	datad => \sevs_module|Add0~4_combout\,
	combout => \sevs_module|counter~0_combout\);

-- Location: FF_X17_Y23_N5
\sevs_module|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	asdata => \sevs_module|counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|counter\(2));

-- Location: LCCOMB_X16_Y23_N28
\sevs_module|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~9_combout\ = (!\sevs_module|counter\(2) & (!\sevs_module|counter\(0) & (\sevs_module|Equal0~8_combout\ & \sevs_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(2),
	datab => \sevs_module|counter\(0),
	datac => \sevs_module|Equal0~8_combout\,
	datad => \sevs_module|Equal0~4_combout\,
	combout => \sevs_module|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y23_N12
\sevs_module|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal0~10_combout\ = (!\sevs_module|counter\(1) & \sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal0~10_combout\);

-- Location: LCCOMB_X16_Y23_N30
\sevs_module|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal1~0_combout\ = (\sevs_module|counter\(0) & \sevs_module|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sevs_module|counter\(0),
	datad => \sevs_module|counter\(1),
	combout => \sevs_module|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y23_N10
\sevs_module|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal1~1_combout\ = (\sevs_module|Equal1~0_combout\ & (!\sevs_module|counter\(2) & (\sevs_module|Equal0~8_combout\ & \sevs_module|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal1~0_combout\,
	datab => \sevs_module|counter\(2),
	datac => \sevs_module|Equal0~8_combout\,
	datad => \sevs_module|Equal0~4_combout\,
	combout => \sevs_module|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y23_N4
\sevs_module|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal3~1_combout\ = (\sevs_module|Equal3~0_combout\ & (\sevs_module|Equal0~8_combout\ & \sevs_module|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal3~0_combout\,
	datac => \sevs_module|Equal0~8_combout\,
	datad => \sevs_module|Equal0~4_combout\,
	combout => \sevs_module|Equal3~1_combout\);

-- Location: LCCOMB_X16_Y23_N0
\sevs_module|dig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig[1]~0_combout\ = (\sevs_module|Equal1~1_combout\) # ((\sevs_module|Equal3~1_combout\) # (\sevs_module|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal1~1_combout\,
	datac => \sevs_module|Equal3~1_combout\,
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|dig[1]~0_combout\);

-- Location: FF_X16_Y23_N13
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

-- Location: FF_X16_Y23_N11
\sevs_module|dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \sevs_module|Equal1~1_combout\,
	ena => \sevs_module|dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sevs_module|dig\(1));

-- Location: LCCOMB_X16_Y23_N24
\sevs_module|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|Equal2~0_combout\ = (\sevs_module|counter\(1) & \sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|counter\(1),
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|Equal2~0_combout\);

-- Location: FF_X16_Y23_N25
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

-- Location: LCCOMB_X16_Y23_N14
\sevs_module|dig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevs_module|dig~1_combout\ = (!\sevs_module|Equal1~1_combout\ & !\sevs_module|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevs_module|Equal1~1_combout\,
	datad => \sevs_module|Equal0~9_combout\,
	combout => \sevs_module|dig~1_combout\);

-- Location: FF_X16_Y23_N15
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

-- Location: LCCOMB_X21_Y11_N0
\uart_module|u_RX|mem_addr[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[0]~6_combout\ = !\uart_module|u_RX|mem_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(0),
	combout => \uart_module|u_RX|mem_addr[0]~6_combout\);

-- Location: LCCOMB_X19_Y15_N6
\uart_module|u_RX|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~1_combout\ = (!\uart_module|u_RX|rgb_elcount\(0) & !\uart_module|u_RX|rgb_elcount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb_elcount\(0),
	datad => \uart_module|u_RX|rgb_elcount\(1),
	combout => \uart_module|u_RX|Decoder1~1_combout\);

-- Location: LCCOMB_X21_Y15_N8
\uart_module|u_RX|r_PRESCALER[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[0]~9_combout\ = \uart_module|u_RX|r_PRESCALER\(0) $ (VCC)
-- \uart_module|u_RX|r_PRESCALER[0]~10\ = CARRY(\uart_module|u_RX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(0),
	datad => VCC,
	combout => \uart_module|u_RX|r_PRESCALER[0]~9_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[0]~10\);

-- Location: LCCOMB_X21_Y15_N4
\uart_module|u_RX|r_PRESCALER[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[0]~15_combout\ = (!\uart_module|u_RX|r_PRESCALER\(1) & (!\uart_module|u_RX|r_PRESCALER\(3) & (!\uart_module|u_RX|r_PRESCALER\(0) & !\uart_module|u_RX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(1),
	datab => \uart_module|u_RX|r_PRESCALER\(3),
	datac => \uart_module|u_RX|r_PRESCALER\(0),
	datad => \uart_module|u_RX|r_PRESCALER\(2),
	combout => \uart_module|u_RX|r_PRESCALER[0]~15_combout\);

-- Location: LCCOMB_X21_Y15_N26
\uart_module|u_RX|r_PRESCALER[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[0]~16_combout\ = (!\uart_module|u_RX|r_PRESCALER\(6) & (((\uart_module|u_RX|r_PRESCALER[0]~15_combout\) # (!\uart_module|u_RX|r_PRESCALER\(4))) # (!\uart_module|u_RX|r_PRESCALER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(6),
	datab => \uart_module|u_RX|r_PRESCALER\(5),
	datac => \uart_module|u_RX|r_PRESCALER[0]~15_combout\,
	datad => \uart_module|u_RX|r_PRESCALER\(4),
	combout => \uart_module|u_RX|r_PRESCALER[0]~16_combout\);

-- Location: LCCOMB_X21_Y15_N20
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

-- Location: LCCOMB_X21_Y15_N22
\uart_module|u_RX|r_PRESCALER[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[7]~27_combout\ = (\uart_module|u_RX|r_PRESCALER\(7) & (!\uart_module|u_RX|r_PRESCALER[6]~26\)) # (!\uart_module|u_RX|r_PRESCALER\(7) & ((\uart_module|u_RX|r_PRESCALER[6]~26\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[7]~28\ = CARRY((!\uart_module|u_RX|r_PRESCALER[6]~26\) # (!\uart_module|u_RX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(7),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[6]~26\,
	combout => \uart_module|u_RX|r_PRESCALER[7]~27_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[7]~28\);

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

-- Location: LCCOMB_X21_Y15_N0
\uart_module|u_RX|r_PRESCALER~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER~18_combout\ = (\uart_module|u_RX|s_RECIEVING_FLAG~q\) # (!\i_Rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_PRESCALER~18_combout\);

-- Location: FF_X21_Y15_N23
\uart_module|u_RX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[7]~27_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(7));

-- Location: LCCOMB_X21_Y15_N24
\uart_module|u_RX|r_PRESCALER[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[8]~29_combout\ = \uart_module|u_RX|r_PRESCALER\(8) $ (!\uart_module|u_RX|r_PRESCALER[7]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(8),
	cin => \uart_module|u_RX|r_PRESCALER[7]~28\,
	combout => \uart_module|u_RX|r_PRESCALER[8]~29_combout\);

-- Location: FF_X21_Y15_N25
\uart_module|u_RX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[8]~29_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(8));

-- Location: LCCOMB_X21_Y15_N28
\uart_module|u_RX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~0_combout\ = (!\uart_module|u_RX|r_PRESCALER\(1) & (\uart_module|u_RX|r_PRESCALER\(3) & (!\uart_module|u_RX|r_PRESCALER\(0) & \uart_module|u_RX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(1),
	datab => \uart_module|u_RX|r_PRESCALER\(3),
	datac => \uart_module|u_RX|r_PRESCALER\(0),
	datad => \uart_module|u_RX|r_PRESCALER\(2),
	combout => \uart_module|u_RX|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y15_N0
\uart_module|u_RX|r_INDEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX~0_combout\ = (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (!\uart_module|u_RX|r_PRESCALER\(8) & (\uart_module|u_RX|Equal0~0_combout\ & \uart_module|u_RX|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datab => \uart_module|u_RX|r_PRESCALER\(8),
	datac => \uart_module|u_RX|Equal0~0_combout\,
	datad => \uart_module|u_RX|Equal0~1_combout\,
	combout => \uart_module|u_RX|r_INDEX~0_combout\);

-- Location: LCCOMB_X18_Y15_N26
\uart_module|u_RX|r_INDEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX~1_combout\ = (\uart_module|u_RX|r_INDEX~0_combout\ & \uart_module|u_RX|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_INDEX~0_combout\,
	datad => \uart_module|u_RX|LessThan1~0_combout\,
	combout => \uart_module|u_RX|r_INDEX~1_combout\);

-- Location: LCCOMB_X18_Y15_N28
\uart_module|u_RX|r_INDEX[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[0]~2_combout\ = (\uart_module|u_RX|r_INDEX~1_combout\ & (((!\uart_module|u_RX|r_INDEX\(0))))) # (!\uart_module|u_RX|r_INDEX~1_combout\ & (\uart_module|u_RX|r_INDEX\(0) & ((\i_Rx~input_o\) # 
-- (\uart_module|u_RX|s_RECIEVING_FLAG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX~1_combout\,
	datac => \uart_module|u_RX|r_INDEX\(0),
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|r_INDEX[0]~2_combout\);

-- Location: FF_X18_Y15_N29
\uart_module|u_RX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(0));

-- Location: LCCOMB_X19_Y15_N22
\uart_module|u_RX|r_INDEX[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[1]~3_combout\ = (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (((!\uart_module|u_RX|r_INDEX~0_combout\)) # (!\uart_module|u_RX|LessThan1~0_combout\))) # (!\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (\i_Rx~input_o\ & 
-- ((!\uart_module|u_RX|r_INDEX~0_combout\) # (!\uart_module|u_RX|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datab => \uart_module|u_RX|LessThan1~0_combout\,
	datac => \i_Rx~input_o\,
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|r_INDEX[1]~3_combout\);

-- Location: LCCOMB_X18_Y15_N2
\uart_module|u_RX|r_INDEX[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[1]~4_combout\ = (\uart_module|u_RX|r_INDEX\(1) & ((\uart_module|u_RX|r_INDEX[1]~3_combout\) # ((\uart_module|u_RX|r_INDEX~1_combout\ & !\uart_module|u_RX|r_INDEX\(0))))) # (!\uart_module|u_RX|r_INDEX\(1) & 
-- (\uart_module|u_RX|r_INDEX~1_combout\ & (\uart_module|u_RX|r_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX~1_combout\,
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX[1]~3_combout\,
	combout => \uart_module|u_RX|r_INDEX[1]~4_combout\);

-- Location: FF_X18_Y15_N3
\uart_module|u_RX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(1));

-- Location: LCCOMB_X18_Y15_N4
\uart_module|u_RX|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add1~0_combout\ = \uart_module|u_RX|r_INDEX\(2) $ (((\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|r_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(2),
	datab => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|Add1~0_combout\);

-- Location: LCCOMB_X18_Y15_N12
\uart_module|u_RX|r_INDEX[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[2]~5_combout\ = (\uart_module|u_RX|r_INDEX~1_combout\ & ((\uart_module|u_RX|Add1~0_combout\) # ((\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|r_INDEX[1]~3_combout\)))) # (!\uart_module|u_RX|r_INDEX~1_combout\ & 
-- (((\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|r_INDEX[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX~1_combout\,
	datab => \uart_module|u_RX|Add1~0_combout\,
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX[1]~3_combout\,
	combout => \uart_module|u_RX|r_INDEX[2]~5_combout\);

-- Location: FF_X18_Y15_N13
\uart_module|u_RX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(2));

-- Location: LCCOMB_X18_Y15_N14
\uart_module|u_RX|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add1~1_combout\ = \uart_module|u_RX|r_INDEX\(3) $ (((\uart_module|u_RX|r_INDEX\(1) & (\uart_module|u_RX|r_INDEX\(2) & \uart_module|u_RX|r_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(1),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|Add1~1_combout\);

-- Location: LCCOMB_X18_Y15_N22
\uart_module|u_RX|r_INDEX[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_INDEX[3]~6_combout\ = (\uart_module|u_RX|r_INDEX~1_combout\ & ((\uart_module|u_RX|Add1~1_combout\) # ((\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|r_INDEX[1]~3_combout\)))) # (!\uart_module|u_RX|r_INDEX~1_combout\ & 
-- (((\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|r_INDEX[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX~1_combout\,
	datab => \uart_module|u_RX|Add1~1_combout\,
	datac => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|r_INDEX[1]~3_combout\,
	combout => \uart_module|u_RX|r_INDEX[3]~6_combout\);

-- Location: FF_X18_Y15_N23
\uart_module|u_RX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_INDEX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_INDEX\(3));

-- Location: LCCOMB_X18_Y15_N24
\uart_module|u_RX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|LessThan1~0_combout\ = ((!\uart_module|u_RX|r_INDEX\(1) & (!\uart_module|u_RX|r_INDEX\(2) & !\uart_module|u_RX|r_INDEX\(0)))) # (!\uart_module|u_RX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(1),
	datac => \uart_module|u_RX|r_INDEX\(2),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y15_N16
\uart_module|u_RX|s_RECIEVING_FLAG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|s_RECIEVING_FLAG~0_combout\ = ((\uart_module|u_RX|LessThan1~0_combout\) # ((\uart_module|u_RX|r_PRESCALER\(8)) # (!\uart_module|u_RX|Equal0~0_combout\))) # (!\uart_module|u_RX|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Equal0~1_combout\,
	datab => \uart_module|u_RX|LessThan1~0_combout\,
	datac => \uart_module|u_RX|Equal0~0_combout\,
	datad => \uart_module|u_RX|r_PRESCALER\(8),
	combout => \uart_module|u_RX|s_RECIEVING_FLAG~0_combout\);

-- Location: LCCOMB_X19_Y15_N12
\uart_module|u_RX|s_RECIEVING_FLAG~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\ = \uart_module|u_RX|s_RECIEVING_FLAG~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~0_combout\,
	combout => \uart_module|u_RX|s_RECIEVING_FLAG~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N8
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

-- Location: FF_X19_Y15_N13
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

-- Location: LCCOMB_X21_Y15_N6
\uart_module|u_RX|r_PRESCALER[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[0]~17_combout\ = ((!\uart_module|u_RX|r_PRESCALER[0]~16_combout\ & (\uart_module|u_RX|r_PRESCALER\(7) & \uart_module|u_RX|r_PRESCALER\(8)))) # (!\uart_module|u_RX|s_RECIEVING_FLAG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER[0]~16_combout\,
	datab => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datac => \uart_module|u_RX|r_PRESCALER\(7),
	datad => \uart_module|u_RX|r_PRESCALER\(8),
	combout => \uart_module|u_RX|r_PRESCALER[0]~17_combout\);

-- Location: FF_X21_Y15_N9
\uart_module|u_RX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[0]~9_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(0));

-- Location: LCCOMB_X21_Y15_N10
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

-- Location: FF_X21_Y15_N11
\uart_module|u_RX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[1]~11_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(1));

-- Location: LCCOMB_X21_Y15_N12
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

-- Location: FF_X21_Y15_N13
\uart_module|u_RX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[2]~13_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(2));

-- Location: LCCOMB_X21_Y15_N14
\uart_module|u_RX|r_PRESCALER[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[3]~19_combout\ = (\uart_module|u_RX|r_PRESCALER\(3) & (!\uart_module|u_RX|r_PRESCALER[2]~14\)) # (!\uart_module|u_RX|r_PRESCALER\(3) & ((\uart_module|u_RX|r_PRESCALER[2]~14\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[3]~20\ = CARRY((!\uart_module|u_RX|r_PRESCALER[2]~14\) # (!\uart_module|u_RX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(3),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[2]~14\,
	combout => \uart_module|u_RX|r_PRESCALER[3]~19_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[3]~20\);

-- Location: FF_X21_Y15_N15
\uart_module|u_RX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[3]~19_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(3));

-- Location: LCCOMB_X21_Y15_N16
\uart_module|u_RX|r_PRESCALER[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[4]~21_combout\ = (\uart_module|u_RX|r_PRESCALER\(4) & (\uart_module|u_RX|r_PRESCALER[3]~20\ $ (GND))) # (!\uart_module|u_RX|r_PRESCALER\(4) & (!\uart_module|u_RX|r_PRESCALER[3]~20\ & VCC))
-- \uart_module|u_RX|r_PRESCALER[4]~22\ = CARRY((\uart_module|u_RX|r_PRESCALER\(4) & !\uart_module|u_RX|r_PRESCALER[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(4),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[3]~20\,
	combout => \uart_module|u_RX|r_PRESCALER[4]~21_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[4]~22\);

-- Location: FF_X21_Y15_N17
\uart_module|u_RX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[4]~21_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(4));

-- Location: LCCOMB_X21_Y15_N18
\uart_module|u_RX|r_PRESCALER[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_PRESCALER[5]~23_combout\ = (\uart_module|u_RX|r_PRESCALER\(5) & (!\uart_module|u_RX|r_PRESCALER[4]~22\)) # (!\uart_module|u_RX|r_PRESCALER\(5) & ((\uart_module|u_RX|r_PRESCALER[4]~22\) # (GND)))
-- \uart_module|u_RX|r_PRESCALER[5]~24\ = CARRY((!\uart_module|u_RX|r_PRESCALER[4]~22\) # (!\uart_module|u_RX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_PRESCALER\(5),
	datad => VCC,
	cin => \uart_module|u_RX|r_PRESCALER[4]~22\,
	combout => \uart_module|u_RX|r_PRESCALER[5]~23_combout\,
	cout => \uart_module|u_RX|r_PRESCALER[5]~24\);

-- Location: FF_X21_Y15_N19
\uart_module|u_RX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[5]~23_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(5));

-- Location: FF_X21_Y15_N21
\uart_module|u_RX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_PRESCALER[6]~25_combout\,
	sclr => \uart_module|u_RX|r_PRESCALER[0]~17_combout\,
	ena => \uart_module|u_RX|r_PRESCALER~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_PRESCALER\(6));

-- Location: LCCOMB_X21_Y15_N2
\uart_module|u_RX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Equal0~1_combout\ = (\uart_module|u_RX|r_PRESCALER\(6) & (\uart_module|u_RX|r_PRESCALER\(4) & (\uart_module|u_RX|r_PRESCALER\(7) & !\uart_module|u_RX|r_PRESCALER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_PRESCALER\(6),
	datab => \uart_module|u_RX|r_PRESCALER\(4),
	datac => \uart_module|u_RX|r_PRESCALER\(7),
	datad => \uart_module|u_RX|r_PRESCALER\(5),
	combout => \uart_module|u_RX|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\uart_module|u_RX|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~2_combout\ = (!\uart_module|u_RX|r_INDEX\(0) & (!\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|s_RECIEVING_FLAG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|Decoder0~2_combout\);

-- Location: LCCOMB_X17_Y15_N28
\uart_module|u_RX|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~1_combout\ = (!\uart_module|u_RX|r_INDEX\(1) & !\uart_module|u_RX|r_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|Decoder0~1_combout\);

-- Location: LCCOMB_X18_Y15_N6
\uart_module|u_RX|r_DATA_BUFFER[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[0]~1_combout\ = (\uart_module|u_RX|Decoder0~2_combout\ & ((\uart_module|u_RX|Decoder0~1_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~1_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(0)))))) # 
-- (!\uart_module|u_RX|Decoder0~2_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~2_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|Decoder0~1_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[0]~1_combout\);

-- Location: FF_X18_Y15_N7
\uart_module|u_RX|r_DATA_BUFFER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(0));

-- Location: LCCOMB_X18_Y15_N8
\uart_module|u_RX|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~0_combout\ = (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (!\uart_module|u_RX|r_INDEX\(1) & (\uart_module|u_RX|r_INDEX\(3) & !\uart_module|u_RX|r_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datab => \uart_module|u_RX|r_INDEX\(1),
	datac => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|Decoder0~0_combout\);

-- Location: LCCOMB_X19_Y15_N10
\uart_module|u_RX|r_DATA_BUFFER[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[9]~0_combout\ = (\uart_module|u_RX|Decoder0~0_combout\ & ((\uart_module|u_RX|r_INDEX\(0) & (\i_Rx~input_o\)) # (!\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|r_DATA_BUFFER\(9)))))) # 
-- (!\uart_module|u_RX|Decoder0~0_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Decoder0~0_combout\,
	datab => \i_Rx~input_o\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(9),
	datad => \uart_module|u_RX|r_INDEX\(0),
	combout => \uart_module|u_RX|r_DATA_BUFFER[9]~0_combout\);

-- Location: FF_X19_Y15_N11
\uart_module|u_RX|r_DATA_BUFFER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(9));

-- Location: LCCOMB_X19_Y15_N20
\uart_module|u_RX|rgb_elcount[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[0]~1_combout\ = (\uart_module|u_RX|s_RECIEVING_FLAG~q\ & (!\uart_module|u_RX|r_PRESCALER\(8) & (!\uart_module|u_RX|r_DATA_BUFFER\(0) & \uart_module|u_RX|r_DATA_BUFFER\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	datab => \uart_module|u_RX|r_PRESCALER\(8),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|r_DATA_BUFFER\(9),
	combout => \uart_module|u_RX|rgb_elcount[0]~1_combout\);

-- Location: LCCOMB_X19_Y15_N18
\uart_module|u_RX|rgb_elcount[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[0]~2_combout\ = (\uart_module|u_RX|Equal0~1_combout\ & (\uart_module|u_RX|rgb_elcount[0]~1_combout\ & (\uart_module|u_RX|Equal0~0_combout\ & !\uart_module|u_RX|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|Equal0~1_combout\,
	datab => \uart_module|u_RX|rgb_elcount[0]~1_combout\,
	datac => \uart_module|u_RX|Equal0~0_combout\,
	datad => \uart_module|u_RX|LessThan1~0_combout\,
	combout => \uart_module|u_RX|rgb_elcount[0]~2_combout\);

-- Location: FF_X19_Y15_N7
\uart_module|u_RX|rgb_elcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|Decoder1~1_combout\,
	ena => \uart_module|u_RX|rgb_elcount[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(0));

-- Location: LCCOMB_X19_Y15_N24
\uart_module|u_RX|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~2_combout\ = (!\uart_module|u_RX|rgb_elcount\(1) & \uart_module|u_RX|rgb_elcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb_elcount\(1),
	datad => \uart_module|u_RX|rgb_elcount\(0),
	combout => \uart_module|u_RX|Decoder1~2_combout\);

-- Location: FF_X19_Y15_N25
\uart_module|u_RX|rgb_elcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|Decoder1~2_combout\,
	ena => \uart_module|u_RX|rgb_elcount[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb_elcount\(1));

-- Location: LCCOMB_X19_Y15_N4
\uart_module|u_RX|rgb_elcount[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb_elcount[0]~0_combout\ = (\uart_module|u_RX|r_DATA_BUFFER\(9) & (!\uart_module|u_RX|r_DATA_BUFFER\(0) & !\uart_module|u_RX|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_DATA_BUFFER\(9),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(0),
	datad => \uart_module|u_RX|LessThan1~0_combout\,
	combout => \uart_module|u_RX|rgb_elcount[0]~0_combout\);

-- Location: LCCOMB_X19_Y15_N30
\uart_module|u_RX|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~0_combout\ = (\uart_module|u_RX|rgb_elcount\(1) & (\uart_module|u_RX|rgb_elcount[0]~0_combout\ & \uart_module|u_RX|r_INDEX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|rgb_elcount\(1),
	datac => \uart_module|u_RX|rgb_elcount[0]~0_combout\,
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|Decoder1~0_combout\);

-- Location: FF_X21_Y11_N1
\uart_module|u_RX|mem_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[0]~6_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(0));

-- Location: LCCOMB_X21_Y11_N14
\uart_module|u_RX|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add3~0_combout\ = (\uart_module|u_RX|mem_addr\(1) & (!\uart_module|u_RX|mem_addr\(0) & VCC)) # (!\uart_module|u_RX|mem_addr\(1) & (\uart_module|u_RX|mem_addr\(0) $ (GND)))
-- \uart_module|u_RX|Add3~1\ = CARRY((!\uart_module|u_RX|mem_addr\(1) & !\uart_module|u_RX|mem_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(1),
	datab => \uart_module|u_RX|mem_addr\(0),
	datad => VCC,
	combout => \uart_module|u_RX|Add3~0_combout\,
	cout => \uart_module|u_RX|Add3~1\);

-- Location: LCCOMB_X21_Y11_N12
\uart_module|u_RX|mem_addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[1]~0_combout\ = !\uart_module|u_RX|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|Add3~0_combout\,
	combout => \uart_module|u_RX|mem_addr[1]~0_combout\);

-- Location: FF_X21_Y11_N13
\uart_module|u_RX|mem_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[1]~0_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(1));

-- Location: LCCOMB_X21_Y11_N16
\uart_module|u_RX|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add3~2_combout\ = (\uart_module|u_RX|mem_addr\(2) & ((\uart_module|u_RX|Add3~1\) # (GND))) # (!\uart_module|u_RX|mem_addr\(2) & (!\uart_module|u_RX|Add3~1\))
-- \uart_module|u_RX|Add3~3\ = CARRY((\uart_module|u_RX|mem_addr\(2)) # (!\uart_module|u_RX|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(2),
	datad => VCC,
	cin => \uart_module|u_RX|Add3~1\,
	combout => \uart_module|u_RX|Add3~2_combout\,
	cout => \uart_module|u_RX|Add3~3\);

-- Location: LCCOMB_X21_Y11_N26
\uart_module|u_RX|mem_addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[2]~1_combout\ = !\uart_module|u_RX|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|Add3~2_combout\,
	combout => \uart_module|u_RX|mem_addr[2]~1_combout\);

-- Location: FF_X21_Y11_N27
\uart_module|u_RX|mem_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[2]~1_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(2));

-- Location: LCCOMB_X21_Y11_N18
\uart_module|u_RX|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add3~4_combout\ = (\uart_module|u_RX|mem_addr\(3) & (!\uart_module|u_RX|Add3~3\ & VCC)) # (!\uart_module|u_RX|mem_addr\(3) & (\uart_module|u_RX|Add3~3\ $ (GND)))
-- \uart_module|u_RX|Add3~5\ = CARRY((!\uart_module|u_RX|mem_addr\(3) & !\uart_module|u_RX|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|mem_addr\(3),
	datad => VCC,
	cin => \uart_module|u_RX|Add3~3\,
	combout => \uart_module|u_RX|Add3~4_combout\,
	cout => \uart_module|u_RX|Add3~5\);

-- Location: LCCOMB_X21_Y11_N8
\uart_module|u_RX|mem_addr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[3]~2_combout\ = !\uart_module|u_RX|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|Add3~4_combout\,
	combout => \uart_module|u_RX|mem_addr[3]~2_combout\);

-- Location: FF_X21_Y11_N9
\uart_module|u_RX|mem_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[3]~2_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(3));

-- Location: LCCOMB_X21_Y11_N20
\uart_module|u_RX|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add3~6_combout\ = (\uart_module|u_RX|mem_addr\(4) & ((\uart_module|u_RX|Add3~5\) # (GND))) # (!\uart_module|u_RX|mem_addr\(4) & (!\uart_module|u_RX|Add3~5\))
-- \uart_module|u_RX|Add3~7\ = CARRY((\uart_module|u_RX|mem_addr\(4)) # (!\uart_module|u_RX|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(4),
	datad => VCC,
	cin => \uart_module|u_RX|Add3~5\,
	combout => \uart_module|u_RX|Add3~6_combout\,
	cout => \uart_module|u_RX|Add3~7\);

-- Location: LCCOMB_X21_Y11_N6
\uart_module|u_RX|mem_addr[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[4]~3_combout\ = !\uart_module|u_RX|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|Add3~6_combout\,
	combout => \uart_module|u_RX|mem_addr[4]~3_combout\);

-- Location: FF_X21_Y11_N7
\uart_module|u_RX|mem_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[4]~3_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(4));

-- Location: LCCOMB_X21_Y11_N22
\uart_module|u_RX|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add3~8_combout\ = (\uart_module|u_RX|mem_addr\(5) & (!\uart_module|u_RX|Add3~7\ & VCC)) # (!\uart_module|u_RX|mem_addr\(5) & (\uart_module|u_RX|Add3~7\ $ (GND)))
-- \uart_module|u_RX|Add3~9\ = CARRY((!\uart_module|u_RX|mem_addr\(5) & !\uart_module|u_RX|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|mem_addr\(5),
	datad => VCC,
	cin => \uart_module|u_RX|Add3~7\,
	combout => \uart_module|u_RX|Add3~8_combout\,
	cout => \uart_module|u_RX|Add3~9\);

-- Location: LCCOMB_X21_Y11_N4
\uart_module|u_RX|mem_addr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[5]~5_combout\ = !\uart_module|u_RX|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|Add3~8_combout\,
	combout => \uart_module|u_RX|mem_addr[5]~5_combout\);

-- Location: FF_X21_Y11_N5
\uart_module|u_RX|mem_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[5]~5_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(5));

-- Location: LCCOMB_X21_Y11_N24
\uart_module|u_RX|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Add3~10_combout\ = \uart_module|u_RX|mem_addr\(6) $ (!\uart_module|u_RX|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(6),
	cin => \uart_module|u_RX|Add3~9\,
	combout => \uart_module|u_RX|Add3~10_combout\);

-- Location: LCCOMB_X21_Y11_N30
\uart_module|u_RX|mem_addr[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[6]~4_combout\ = !\uart_module|u_RX|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|Add3~10_combout\,
	combout => \uart_module|u_RX|mem_addr[6]~4_combout\);

-- Location: FF_X21_Y11_N31
\uart_module|u_RX|mem_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|mem_addr[6]~4_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|mem_addr\(6));

-- Location: LCCOMB_X21_Y11_N28
\uart_module|u_RX|o_pixel_receive~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|o_pixel_receive~0_combout\ = (!\uart_module|u_RX|mem_addr\(4) & (!\uart_module|u_RX|mem_addr\(3) & (!\uart_module|u_RX|mem_addr\(2) & !\uart_module|u_RX|mem_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(4),
	datab => \uart_module|u_RX|mem_addr\(3),
	datac => \uart_module|u_RX|mem_addr\(2),
	datad => \uart_module|u_RX|mem_addr\(1),
	combout => \uart_module|u_RX|o_pixel_receive~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\uart_module|u_RX|o_pixel_receive~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|o_pixel_receive~1_combout\ = (\uart_module|u_RX|mem_addr\(6) & (\uart_module|u_RX|o_pixel_receive~0_combout\ & !\uart_module|u_RX|mem_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(6),
	datab => \uart_module|u_RX|o_pixel_receive~0_combout\,
	datac => \uart_module|u_RX|mem_addr\(5),
	combout => \uart_module|u_RX|o_pixel_receive~1_combout\);

-- Location: LCCOMB_X19_Y14_N0
\uart_module|u_RX|isFirstRun~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|isFirstRun~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_module|u_RX|isFirstRun~feeder_combout\);

-- Location: FF_X19_Y14_N1
\uart_module|u_RX|isFirstRun\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|isFirstRun~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|isFirstRun~q\);

-- Location: LCCOMB_X19_Y15_N14
\uart_module|u_RX|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|process_0~0_combout\ = (!\uart_module|u_RX|rgb_elcount\(0) & (!\uart_module|u_RX|rgb_elcount\(1) & \uart_module|u_RX|isFirstRun~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(0),
	datab => \uart_module|u_RX|rgb_elcount\(1),
	datad => \uart_module|u_RX|isFirstRun~q\,
	combout => \uart_module|u_RX|process_0~0_combout\);

-- Location: LCCOMB_X19_Y11_N8
\uart_module|u_RX|o_pixel_receive~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|o_pixel_receive~2_combout\ = (\uart_module|u_RX|o_pixel_receive~q\) # ((!\uart_module|u_RX|mem_addr\(0) & (\uart_module|u_RX|o_pixel_receive~1_combout\ & \uart_module|u_RX|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|mem_addr\(0),
	datab => \uart_module|u_RX|o_pixel_receive~1_combout\,
	datac => \uart_module|u_RX|o_pixel_receive~q\,
	datad => \uart_module|u_RX|process_0~0_combout\,
	combout => \uart_module|u_RX|o_pixel_receive~2_combout\);

-- Location: FF_X19_Y11_N9
\uart_module|u_RX|o_pixel_receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|o_pixel_receive~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|o_pixel_receive~q\);

-- Location: LCCOMB_X18_Y11_N12
\imgprocessing_module|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~0_combout\ = \imgprocessing_module|pixelcounter\(0) $ (VCC)
-- \imgprocessing_module|Add0~1\ = CARRY(\imgprocessing_module|pixelcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|pixelcounter\(0),
	datad => VCC,
	combout => \imgprocessing_module|Add0~0_combout\,
	cout => \imgprocessing_module|Add0~1\);

-- Location: LCCOMB_X18_Y11_N30
\imgprocessing_module|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~2_combout\ = (\imgprocessing_module|pixelcounter\(6) & ((\imgprocessing_module|pixelcounter\(0)))) # (!\imgprocessing_module|pixelcounter\(6) & (\imgprocessing_module|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Add0~0_combout\,
	datab => \imgprocessing_module|pixelcounter\(6),
	datad => \imgprocessing_module|pixelcounter\(0),
	combout => \imgprocessing_module|Add0~2_combout\);

-- Location: FF_X18_Y11_N9
\imgprocessing_module|pixelcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~2_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(0));

-- Location: LCCOMB_X18_Y11_N14
\imgprocessing_module|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~3_combout\ = (\imgprocessing_module|pixelcounter\(1) & (!\imgprocessing_module|Add0~1\)) # (!\imgprocessing_module|pixelcounter\(1) & ((\imgprocessing_module|Add0~1\) # (GND)))
-- \imgprocessing_module|Add0~4\ = CARRY((!\imgprocessing_module|Add0~1\) # (!\imgprocessing_module|pixelcounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|pixelcounter\(1),
	datad => VCC,
	cin => \imgprocessing_module|Add0~1\,
	combout => \imgprocessing_module|Add0~3_combout\,
	cout => \imgprocessing_module|Add0~4\);

-- Location: LCCOMB_X18_Y11_N28
\imgprocessing_module|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~5_combout\ = (\imgprocessing_module|pixelcounter\(6) & ((\imgprocessing_module|pixelcounter\(1)))) # (!\imgprocessing_module|pixelcounter\(6) & (\imgprocessing_module|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Add0~3_combout\,
	datac => \imgprocessing_module|pixelcounter\(1),
	datad => \imgprocessing_module|pixelcounter\(6),
	combout => \imgprocessing_module|Add0~5_combout\);

-- Location: FF_X18_Y11_N31
\imgprocessing_module|pixelcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~5_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(1));

-- Location: LCCOMB_X18_Y11_N16
\imgprocessing_module|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~6_combout\ = (\imgprocessing_module|pixelcounter\(2) & (\imgprocessing_module|Add0~4\ $ (GND))) # (!\imgprocessing_module|pixelcounter\(2) & (!\imgprocessing_module|Add0~4\ & VCC))
-- \imgprocessing_module|Add0~7\ = CARRY((\imgprocessing_module|pixelcounter\(2) & !\imgprocessing_module|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|pixelcounter\(2),
	datad => VCC,
	cin => \imgprocessing_module|Add0~4\,
	combout => \imgprocessing_module|Add0~6_combout\,
	cout => \imgprocessing_module|Add0~7\);

-- Location: LCCOMB_X18_Y11_N26
\imgprocessing_module|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~8_combout\ = (\imgprocessing_module|pixelcounter\(6) & ((\imgprocessing_module|pixelcounter\(2)))) # (!\imgprocessing_module|pixelcounter\(6) & (\imgprocessing_module|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Add0~6_combout\,
	datab => \imgprocessing_module|pixelcounter\(2),
	datad => \imgprocessing_module|pixelcounter\(6),
	combout => \imgprocessing_module|Add0~8_combout\);

-- Location: FF_X18_Y11_N17
\imgprocessing_module|pixelcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~8_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(2));

-- Location: LCCOMB_X18_Y11_N18
\imgprocessing_module|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~9_combout\ = (\imgprocessing_module|pixelcounter\(3) & (!\imgprocessing_module|Add0~7\)) # (!\imgprocessing_module|pixelcounter\(3) & ((\imgprocessing_module|Add0~7\) # (GND)))
-- \imgprocessing_module|Add0~10\ = CARRY((!\imgprocessing_module|Add0~7\) # (!\imgprocessing_module|pixelcounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|pixelcounter\(3),
	datad => VCC,
	cin => \imgprocessing_module|Add0~7\,
	combout => \imgprocessing_module|Add0~9_combout\,
	cout => \imgprocessing_module|Add0~10\);

-- Location: LCCOMB_X18_Y11_N2
\imgprocessing_module|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~11_combout\ = (\imgprocessing_module|pixelcounter\(6) & ((\imgprocessing_module|pixelcounter\(3)))) # (!\imgprocessing_module|pixelcounter\(6) & (\imgprocessing_module|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Add0~9_combout\,
	datab => \imgprocessing_module|pixelcounter\(3),
	datad => \imgprocessing_module|pixelcounter\(6),
	combout => \imgprocessing_module|Add0~11_combout\);

-- Location: FF_X18_Y11_N19
\imgprocessing_module|pixelcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~11_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(3));

-- Location: LCCOMB_X18_Y11_N20
\imgprocessing_module|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~12_combout\ = (\imgprocessing_module|pixelcounter\(4) & (\imgprocessing_module|Add0~10\ $ (GND))) # (!\imgprocessing_module|pixelcounter\(4) & (!\imgprocessing_module|Add0~10\ & VCC))
-- \imgprocessing_module|Add0~13\ = CARRY((\imgprocessing_module|pixelcounter\(4) & !\imgprocessing_module|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|pixelcounter\(4),
	datad => VCC,
	cin => \imgprocessing_module|Add0~10\,
	combout => \imgprocessing_module|Add0~12_combout\,
	cout => \imgprocessing_module|Add0~13\);

-- Location: LCCOMB_X18_Y11_N4
\imgprocessing_module|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~18_combout\ = (\imgprocessing_module|pixelcounter\(6) & ((\imgprocessing_module|pixelcounter\(4)))) # (!\imgprocessing_module|pixelcounter\(6) & (\imgprocessing_module|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Add0~12_combout\,
	datab => \imgprocessing_module|pixelcounter\(4),
	datad => \imgprocessing_module|pixelcounter\(6),
	combout => \imgprocessing_module|Add0~18_combout\);

-- Location: FF_X18_Y11_N21
\imgprocessing_module|pixelcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~18_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(4));

-- Location: LCCOMB_X18_Y11_N22
\imgprocessing_module|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~14_combout\ = (\imgprocessing_module|pixelcounter\(5) & (!\imgprocessing_module|Add0~13\)) # (!\imgprocessing_module|pixelcounter\(5) & ((\imgprocessing_module|Add0~13\) # (GND)))
-- \imgprocessing_module|Add0~15\ = CARRY((!\imgprocessing_module|Add0~13\) # (!\imgprocessing_module|pixelcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|pixelcounter\(5),
	datad => VCC,
	cin => \imgprocessing_module|Add0~13\,
	combout => \imgprocessing_module|Add0~14_combout\,
	cout => \imgprocessing_module|Add0~15\);

-- Location: LCCOMB_X18_Y11_N6
\imgprocessing_module|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~19_combout\ = (\imgprocessing_module|pixelcounter\(6) & ((\imgprocessing_module|pixelcounter\(5)))) # (!\imgprocessing_module|pixelcounter\(6) & (\imgprocessing_module|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Add0~14_combout\,
	datab => \imgprocessing_module|pixelcounter\(5),
	datad => \imgprocessing_module|pixelcounter\(6),
	combout => \imgprocessing_module|Add0~19_combout\);

-- Location: FF_X18_Y11_N23
\imgprocessing_module|pixelcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~19_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(5));

-- Location: LCCOMB_X18_Y11_N24
\imgprocessing_module|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Add0~16_combout\ = \imgprocessing_module|Add0~15\ $ (!\imgprocessing_module|pixelcounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|pixelcounter\(6),
	cin => \imgprocessing_module|Add0~15\,
	combout => \imgprocessing_module|Add0~16_combout\);

-- Location: LCCOMB_X18_Y11_N0
\imgprocessing_module|pixelcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|pixelcounter~0_combout\ = (!\imgprocessing_module|Equal0~1_combout\ & ((\imgprocessing_module|pixelcounter\(6)) # (\imgprocessing_module|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Equal0~1_combout\,
	datac => \imgprocessing_module|pixelcounter\(6),
	datad => \imgprocessing_module|Add0~16_combout\,
	combout => \imgprocessing_module|pixelcounter~0_combout\);

-- Location: FF_X18_Y11_N1
\imgprocessing_module|pixelcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|pixelcounter~0_combout\,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|pixelcounter\(6));

-- Location: LCCOMB_X18_Y11_N8
\imgprocessing_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Equal0~0_combout\ = (!\imgprocessing_module|pixelcounter\(1) & (!\imgprocessing_module|pixelcounter\(3) & (!\imgprocessing_module|pixelcounter\(0) & !\imgprocessing_module|pixelcounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|pixelcounter\(1),
	datab => \imgprocessing_module|pixelcounter\(3),
	datac => \imgprocessing_module|pixelcounter\(0),
	datad => \imgprocessing_module|pixelcounter\(2),
	combout => \imgprocessing_module|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\imgprocessing_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Equal0~1_combout\ = (\imgprocessing_module|pixelcounter\(6) & (!\imgprocessing_module|pixelcounter\(5) & (\imgprocessing_module|Equal0~0_combout\ & !\imgprocessing_module|pixelcounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|pixelcounter\(6),
	datab => \imgprocessing_module|pixelcounter\(5),
	datac => \imgprocessing_module|Equal0~0_combout\,
	datad => \imgprocessing_module|pixelcounter\(4),
	combout => \imgprocessing_module|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y10_N16
\imgprocessing_module|processing_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|processing_done~0_combout\ = (\imgprocessing_module|processing_done~q\) # ((\uart_module|u_RX|o_pixel_receive~q\ & \imgprocessing_module|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|o_pixel_receive~q\,
	datac => \imgprocessing_module|processing_done~q\,
	datad => \imgprocessing_module|Equal0~1_combout\,
	combout => \imgprocessing_module|processing_done~0_combout\);

-- Location: FF_X18_Y10_N17
\imgprocessing_module|processing_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|processing_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|processing_done~q\);

-- Location: LCCOMB_X32_Y10_N0
\buzzer_module|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[0]~32_combout\ = \buzzer_module|counter\(0) $ (VCC)
-- \buzzer_module|counter[0]~33\ = CARRY(\buzzer_module|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(0),
	datad => VCC,
	combout => \buzzer_module|counter[0]~32_combout\,
	cout => \buzzer_module|counter[0]~33\);

-- Location: LCCOMB_X30_Y15_N14
\ir_decoder_module|cycleCounter[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[0]~18_combout\ = \ir_decoder_module|cycleCounter\(0) $ (VCC)
-- \ir_decoder_module|cycleCounter[0]~19\ = CARRY(\ir_decoder_module|cycleCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(0),
	datad => VCC,
	combout => \ir_decoder_module|cycleCounter[0]~18_combout\,
	cout => \ir_decoder_module|cycleCounter[0]~19\);

-- Location: LCCOMB_X30_Y15_N24
\ir_decoder_module|cycleCounter[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[5]~28_combout\ = (\ir_decoder_module|cycleCounter\(5) & (!\ir_decoder_module|cycleCounter[4]~27\)) # (!\ir_decoder_module|cycleCounter\(5) & ((\ir_decoder_module|cycleCounter[4]~27\) # (GND)))
-- \ir_decoder_module|cycleCounter[5]~29\ = CARRY((!\ir_decoder_module|cycleCounter[4]~27\) # (!\ir_decoder_module|cycleCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(5),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[4]~27\,
	combout => \ir_decoder_module|cycleCounter[5]~28_combout\,
	cout => \ir_decoder_module|cycleCounter[5]~29\);

-- Location: LCCOMB_X30_Y15_N26
\ir_decoder_module|cycleCounter[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[6]~30_combout\ = (\ir_decoder_module|cycleCounter\(6) & (\ir_decoder_module|cycleCounter[5]~29\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(6) & (!\ir_decoder_module|cycleCounter[5]~29\ & VCC))
-- \ir_decoder_module|cycleCounter[6]~31\ = CARRY((\ir_decoder_module|cycleCounter\(6) & !\ir_decoder_module|cycleCounter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(6),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[5]~29\,
	combout => \ir_decoder_module|cycleCounter[6]~30_combout\,
	cout => \ir_decoder_module|cycleCounter[6]~31\);

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

-- Location: LCCOMB_X31_Y14_N12
\ir_decoder_module|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~0_combout\ = (\ir_decoder_module|NB\(0) & (!\ir_decoder_module|stored~q\ & VCC)) # (!\ir_decoder_module|NB\(0) & (\ir_decoder_module|stored~q\ $ (GND)))
-- \ir_decoder_module|Add1~1\ = CARRY((!\ir_decoder_module|NB\(0) & !\ir_decoder_module|stored~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(0),
	datab => \ir_decoder_module|stored~q\,
	datad => VCC,
	combout => \ir_decoder_module|Add1~0_combout\,
	cout => \ir_decoder_module|Add1~1\);

-- Location: LCCOMB_X31_Y14_N6
\ir_decoder_module|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~14_combout\ = (!\ir_decoder_module|Selector0~7_combout\ & ((\ir_decoder_module|Selector1~1_combout\) # (!\ir_decoder_module|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Add1~0_combout\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|Add1~14_combout\);

-- Location: LCCOMB_X31_Y14_N22
\ir_decoder_module|NB[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|NB[1]~0_combout\ = (\ir_decoder_module|LessThan2~0_combout\ & (\i_IR~input_o\ & !\ir_decoder_module|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|LessThan2~0_combout\,
	datac => \i_IR~input_o\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|NB[1]~0_combout\);

-- Location: LCCOMB_X30_Y14_N14
\ir_decoder_module|cycleCounter[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[16]~53_combout\ = (\ir_decoder_module|cycleCounter\(16) & (\ir_decoder_module|cycleCounter[15]~52\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(16) & (!\ir_decoder_module|cycleCounter[15]~52\ & VCC))
-- \ir_decoder_module|cycleCounter[16]~54\ = CARRY((\ir_decoder_module|cycleCounter\(16) & !\ir_decoder_module|cycleCounter[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(16),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[15]~52\,
	combout => \ir_decoder_module|cycleCounter[16]~53_combout\,
	cout => \ir_decoder_module|cycleCounter[16]~54\);

-- Location: LCCOMB_X30_Y14_N16
\ir_decoder_module|cycleCounter[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[17]~55_combout\ = \ir_decoder_module|cycleCounter\(17) $ (\ir_decoder_module|cycleCounter[16]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(17),
	cin => \ir_decoder_module|cycleCounter[16]~54\,
	combout => \ir_decoder_module|cycleCounter[17]~55_combout\);

-- Location: FF_X30_Y14_N17
\ir_decoder_module|cycleCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[17]~55_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(17));

-- Location: LCCOMB_X29_Y15_N22
\ir_decoder_module|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan0~1_combout\ = (!\ir_decoder_module|cycleCounter\(9) & (!\ir_decoder_module|cycleCounter\(8) & ((!\ir_decoder_module|cycleCounter\(6)) # (!\ir_decoder_module|cycleCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(9),
	datab => \ir_decoder_module|cycleCounter\(7),
	datac => \ir_decoder_module|cycleCounter\(8),
	datad => \ir_decoder_module|cycleCounter\(6),
	combout => \ir_decoder_module|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y15_N12
\ir_decoder_module|started~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|started~0_combout\ = (\ir_decoder_module|cycleCounter\(12) & ((\ir_decoder_module|cycleCounter\(11)) # ((!\ir_decoder_module|LessThan0~1_combout\ & \ir_decoder_module|cycleCounter\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan0~1_combout\,
	datab => \ir_decoder_module|cycleCounter\(11),
	datac => \ir_decoder_module|cycleCounter\(12),
	datad => \ir_decoder_module|cycleCounter\(10),
	combout => \ir_decoder_module|started~0_combout\);

-- Location: LCCOMB_X29_Y15_N26
\ir_decoder_module|started~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|started~1_combout\ = (\ir_decoder_module|cycleCounter\(16) & (\ir_decoder_module|cycleCounter\(15) & ((\ir_decoder_module|cycleCounter\(13)) # (\ir_decoder_module|started~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(16),
	datab => \ir_decoder_module|cycleCounter\(15),
	datac => \ir_decoder_module|cycleCounter\(13),
	datad => \ir_decoder_module|started~0_combout\,
	combout => \ir_decoder_module|started~1_combout\);

-- Location: LCCOMB_X30_Y14_N20
\ir_decoder_module|started~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|started~2_combout\ = ((!\ir_decoder_module|cycleCounter\(17) & ((!\ir_decoder_module|started~1_combout\) # (!\ir_decoder_module|cycleCounter\(14))))) # (!\ir_decoder_module|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(14),
	datab => \ir_decoder_module|cycleCounter\(17),
	datac => \ir_decoder_module|started~1_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|started~2_combout\);

-- Location: LCCOMB_X31_Y14_N0
\ir_decoder_module|NB[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|NB[1]~1_combout\ = (\ir_decoder_module|Selector0~7_combout\) # (((\ir_decoder_module|Selector2~4_combout\ & \ir_decoder_module|NB[1]~0_combout\)) # (!\ir_decoder_module|started~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector2~4_combout\,
	datab => \ir_decoder_module|Selector0~7_combout\,
	datac => \ir_decoder_module|NB[1]~0_combout\,
	datad => \ir_decoder_module|started~2_combout\,
	combout => \ir_decoder_module|NB[1]~1_combout\);

-- Location: FF_X31_Y14_N7
\ir_decoder_module|NB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|Add1~14_combout\,
	ena => \ir_decoder_module|NB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|NB\(0));

-- Location: LCCOMB_X31_Y14_N14
\ir_decoder_module|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~2_combout\ = (\ir_decoder_module|NB\(1) & ((\ir_decoder_module|Add1~1\) # (GND))) # (!\ir_decoder_module|NB\(1) & (!\ir_decoder_module|Add1~1\))
-- \ir_decoder_module|Add1~3\ = CARRY((\ir_decoder_module|NB\(1)) # (!\ir_decoder_module|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|NB\(1),
	datad => VCC,
	cin => \ir_decoder_module|Add1~1\,
	combout => \ir_decoder_module|Add1~2_combout\,
	cout => \ir_decoder_module|Add1~3\);

-- Location: LCCOMB_X31_Y14_N2
\ir_decoder_module|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~4_combout\ = (!\ir_decoder_module|Selector0~7_combout\ & ((\ir_decoder_module|Selector1~1_combout\) # (!\ir_decoder_module|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|Add1~2_combout\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|Add1~4_combout\);

-- Location: FF_X31_Y14_N3
\ir_decoder_module|NB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|Add1~4_combout\,
	ena => \ir_decoder_module|NB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|NB\(1));

-- Location: LCCOMB_X31_Y14_N16
\ir_decoder_module|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~5_combout\ = (\ir_decoder_module|NB\(2) & (!\ir_decoder_module|Add1~3\ & VCC)) # (!\ir_decoder_module|NB\(2) & (\ir_decoder_module|Add1~3\ $ (GND)))
-- \ir_decoder_module|Add1~6\ = CARRY((!\ir_decoder_module|NB\(2) & !\ir_decoder_module|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|NB\(2),
	datad => VCC,
	cin => \ir_decoder_module|Add1~3\,
	combout => \ir_decoder_module|Add1~5_combout\,
	cout => \ir_decoder_module|Add1~6\);

-- Location: LCCOMB_X31_Y14_N8
\ir_decoder_module|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~7_combout\ = (!\ir_decoder_module|Selector0~7_combout\ & ((\ir_decoder_module|Selector1~1_combout\) # (!\ir_decoder_module|Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|Add1~5_combout\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|Add1~7_combout\);

-- Location: FF_X31_Y14_N9
\ir_decoder_module|NB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|Add1~7_combout\,
	ena => \ir_decoder_module|NB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|NB\(2));

-- Location: LCCOMB_X31_Y14_N18
\ir_decoder_module|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~8_combout\ = (\ir_decoder_module|NB\(3) & ((\ir_decoder_module|Add1~6\) # (GND))) # (!\ir_decoder_module|NB\(3) & (!\ir_decoder_module|Add1~6\))
-- \ir_decoder_module|Add1~9\ = CARRY((\ir_decoder_module|NB\(3)) # (!\ir_decoder_module|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(3),
	datad => VCC,
	cin => \ir_decoder_module|Add1~6\,
	combout => \ir_decoder_module|Add1~8_combout\,
	cout => \ir_decoder_module|Add1~9\);

-- Location: LCCOMB_X31_Y14_N30
\ir_decoder_module|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~10_combout\ = (!\ir_decoder_module|Selector0~7_combout\ & ((\ir_decoder_module|Selector1~1_combout\) # (!\ir_decoder_module|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|Add1~8_combout\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|Add1~10_combout\);

-- Location: FF_X31_Y14_N31
\ir_decoder_module|NB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|Add1~10_combout\,
	ena => \ir_decoder_module|NB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|NB\(3));

-- Location: LCCOMB_X31_Y14_N20
\ir_decoder_module|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~11_combout\ = \ir_decoder_module|Add1~9\ $ (\ir_decoder_module|NB\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ir_decoder_module|NB\(4),
	cin => \ir_decoder_module|Add1~9\,
	combout => \ir_decoder_module|Add1~11_combout\);

-- Location: LCCOMB_X31_Y14_N24
\ir_decoder_module|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Add1~13_combout\ = (!\ir_decoder_module|Selector0~7_combout\ & ((\ir_decoder_module|Selector1~1_combout\) # (!\ir_decoder_module|Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|Add1~11_combout\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|Add1~13_combout\);

-- Location: FF_X31_Y14_N25
\ir_decoder_module|NB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|Add1~13_combout\,
	ena => \ir_decoder_module|NB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|NB\(4));

-- Location: LCCOMB_X32_Y14_N24
\ir_decoder_module|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan2~0_combout\ = (\ir_decoder_module|NB\(2)) # ((\ir_decoder_module|NB\(3)) # (!\ir_decoder_module|NB\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(4),
	datad => \ir_decoder_module|NB\(3),
	combout => \ir_decoder_module|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y14_N30
\ir_decoder_module|decoded~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|decoded~2_combout\ = (\ir_decoder_module|Selector2~4_combout\ & !\ir_decoder_module|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_decoder_module|Selector2~4_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|decoded~2_combout\);

-- Location: LCCOMB_X31_Y14_N28
\ir_decoder_module|stored~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|stored~0_combout\ = (\ir_decoder_module|LessThan2~0_combout\ & ((\ir_decoder_module|decoded~2_combout\ & (\i_IR~input_o\)) # (!\ir_decoder_module|decoded~2_combout\ & ((\ir_decoder_module|stored~q\))))) # 
-- (!\ir_decoder_module|LessThan2~0_combout\ & (((\ir_decoder_module|stored~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR~input_o\,
	datab => \ir_decoder_module|LessThan2~0_combout\,
	datac => \ir_decoder_module|stored~q\,
	datad => \ir_decoder_module|decoded~2_combout\,
	combout => \ir_decoder_module|stored~0_combout\);

-- Location: FF_X31_Y14_N29
\ir_decoder_module|stored\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|stored~0_combout\,
	sclr => \ir_decoder_module|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|stored~q\);

-- Location: LCCOMB_X31_Y14_N26
\ir_decoder_module|cycleCounter[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[17]~35_combout\ = ((\ir_decoder_module|stored~q\ & \i_IR~input_o\)) # (!\ir_decoder_module|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|stored~q\,
	datac => \i_IR~input_o\,
	datad => \ir_decoder_module|LessThan2~0_combout\,
	combout => \ir_decoder_module|cycleCounter[17]~35_combout\);

-- Location: LCCOMB_X30_Y14_N24
\ir_decoder_module|cycleCounter[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[17]~36_combout\ = (\ir_decoder_module|Selector0~7_combout\) # ((\ir_decoder_module|Selector1~1_combout\) # ((!\ir_decoder_module|cycleCounter[17]~35_combout\ & \ir_decoder_module|Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector0~7_combout\,
	datab => \ir_decoder_module|cycleCounter[17]~35_combout\,
	datac => \ir_decoder_module|Selector2~4_combout\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|cycleCounter[17]~36_combout\);

-- Location: FF_X30_Y15_N27
\ir_decoder_module|cycleCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[6]~30_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(6));

-- Location: LCCOMB_X30_Y15_N28
\ir_decoder_module|cycleCounter[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[7]~32_combout\ = (\ir_decoder_module|cycleCounter\(7) & (!\ir_decoder_module|cycleCounter[6]~31\)) # (!\ir_decoder_module|cycleCounter\(7) & ((\ir_decoder_module|cycleCounter[6]~31\) # (GND)))
-- \ir_decoder_module|cycleCounter[7]~33\ = CARRY((!\ir_decoder_module|cycleCounter[6]~31\) # (!\ir_decoder_module|cycleCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(7),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[6]~31\,
	combout => \ir_decoder_module|cycleCounter[7]~32_combout\,
	cout => \ir_decoder_module|cycleCounter[7]~33\);

-- Location: FF_X30_Y15_N29
\ir_decoder_module|cycleCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[7]~32_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(7));

-- Location: LCCOMB_X30_Y15_N30
\ir_decoder_module|cycleCounter[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[8]~37_combout\ = (\ir_decoder_module|cycleCounter\(8) & (\ir_decoder_module|cycleCounter[7]~33\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(8) & (!\ir_decoder_module|cycleCounter[7]~33\ & VCC))
-- \ir_decoder_module|cycleCounter[8]~38\ = CARRY((\ir_decoder_module|cycleCounter\(8) & !\ir_decoder_module|cycleCounter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(8),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[7]~33\,
	combout => \ir_decoder_module|cycleCounter[8]~37_combout\,
	cout => \ir_decoder_module|cycleCounter[8]~38\);

-- Location: FF_X30_Y15_N31
\ir_decoder_module|cycleCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[8]~37_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(8));

-- Location: LCCOMB_X30_Y14_N0
\ir_decoder_module|cycleCounter[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[9]~39_combout\ = (\ir_decoder_module|cycleCounter\(9) & (!\ir_decoder_module|cycleCounter[8]~38\)) # (!\ir_decoder_module|cycleCounter\(9) & ((\ir_decoder_module|cycleCounter[8]~38\) # (GND)))
-- \ir_decoder_module|cycleCounter[9]~40\ = CARRY((!\ir_decoder_module|cycleCounter[8]~38\) # (!\ir_decoder_module|cycleCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(9),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[8]~38\,
	combout => \ir_decoder_module|cycleCounter[9]~39_combout\,
	cout => \ir_decoder_module|cycleCounter[9]~40\);

-- Location: FF_X30_Y14_N1
\ir_decoder_module|cycleCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[9]~39_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(9));

-- Location: LCCOMB_X30_Y14_N2
\ir_decoder_module|cycleCounter[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[10]~41_combout\ = (\ir_decoder_module|cycleCounter\(10) & (\ir_decoder_module|cycleCounter[9]~40\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(10) & (!\ir_decoder_module|cycleCounter[9]~40\ & VCC))
-- \ir_decoder_module|cycleCounter[10]~42\ = CARRY((\ir_decoder_module|cycleCounter\(10) & !\ir_decoder_module|cycleCounter[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(10),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[9]~40\,
	combout => \ir_decoder_module|cycleCounter[10]~41_combout\,
	cout => \ir_decoder_module|cycleCounter[10]~42\);

-- Location: FF_X30_Y14_N3
\ir_decoder_module|cycleCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[10]~41_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(10));

-- Location: LCCOMB_X30_Y14_N4
\ir_decoder_module|cycleCounter[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[11]~43_combout\ = (\ir_decoder_module|cycleCounter\(11) & (!\ir_decoder_module|cycleCounter[10]~42\)) # (!\ir_decoder_module|cycleCounter\(11) & ((\ir_decoder_module|cycleCounter[10]~42\) # (GND)))
-- \ir_decoder_module|cycleCounter[11]~44\ = CARRY((!\ir_decoder_module|cycleCounter[10]~42\) # (!\ir_decoder_module|cycleCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(11),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[10]~42\,
	combout => \ir_decoder_module|cycleCounter[11]~43_combout\,
	cout => \ir_decoder_module|cycleCounter[11]~44\);

-- Location: FF_X30_Y14_N5
\ir_decoder_module|cycleCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[11]~43_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(11));

-- Location: LCCOMB_X30_Y14_N6
\ir_decoder_module|cycleCounter[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[12]~45_combout\ = (\ir_decoder_module|cycleCounter\(12) & (\ir_decoder_module|cycleCounter[11]~44\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(12) & (!\ir_decoder_module|cycleCounter[11]~44\ & VCC))
-- \ir_decoder_module|cycleCounter[12]~46\ = CARRY((\ir_decoder_module|cycleCounter\(12) & !\ir_decoder_module|cycleCounter[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(12),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[11]~44\,
	combout => \ir_decoder_module|cycleCounter[12]~45_combout\,
	cout => \ir_decoder_module|cycleCounter[12]~46\);

-- Location: FF_X30_Y14_N7
\ir_decoder_module|cycleCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[12]~45_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(12));

-- Location: LCCOMB_X30_Y14_N8
\ir_decoder_module|cycleCounter[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[13]~47_combout\ = (\ir_decoder_module|cycleCounter\(13) & (!\ir_decoder_module|cycleCounter[12]~46\)) # (!\ir_decoder_module|cycleCounter\(13) & ((\ir_decoder_module|cycleCounter[12]~46\) # (GND)))
-- \ir_decoder_module|cycleCounter[13]~48\ = CARRY((!\ir_decoder_module|cycleCounter[12]~46\) # (!\ir_decoder_module|cycleCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(13),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[12]~46\,
	combout => \ir_decoder_module|cycleCounter[13]~47_combout\,
	cout => \ir_decoder_module|cycleCounter[13]~48\);

-- Location: FF_X30_Y14_N9
\ir_decoder_module|cycleCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[13]~47_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(13));

-- Location: LCCOMB_X30_Y14_N10
\ir_decoder_module|cycleCounter[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[14]~49_combout\ = (\ir_decoder_module|cycleCounter\(14) & (\ir_decoder_module|cycleCounter[13]~48\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(14) & (!\ir_decoder_module|cycleCounter[13]~48\ & VCC))
-- \ir_decoder_module|cycleCounter[14]~50\ = CARRY((\ir_decoder_module|cycleCounter\(14) & !\ir_decoder_module|cycleCounter[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(14),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[13]~48\,
	combout => \ir_decoder_module|cycleCounter[14]~49_combout\,
	cout => \ir_decoder_module|cycleCounter[14]~50\);

-- Location: FF_X30_Y14_N11
\ir_decoder_module|cycleCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[14]~49_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(14));

-- Location: LCCOMB_X30_Y14_N12
\ir_decoder_module|cycleCounter[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[15]~51_combout\ = (\ir_decoder_module|cycleCounter\(15) & (!\ir_decoder_module|cycleCounter[14]~50\)) # (!\ir_decoder_module|cycleCounter\(15) & ((\ir_decoder_module|cycleCounter[14]~50\) # (GND)))
-- \ir_decoder_module|cycleCounter[15]~52\ = CARRY((!\ir_decoder_module|cycleCounter[14]~50\) # (!\ir_decoder_module|cycleCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(15),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[14]~50\,
	combout => \ir_decoder_module|cycleCounter[15]~51_combout\,
	cout => \ir_decoder_module|cycleCounter[15]~52\);

-- Location: FF_X30_Y14_N13
\ir_decoder_module|cycleCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[15]~51_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(15));

-- Location: FF_X30_Y14_N15
\ir_decoder_module|cycleCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[16]~53_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(16));

-- Location: LCCOMB_X29_Y15_N18
\ir_decoder_module|failed~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|failed~2_combout\ = (!\ir_decoder_module|cycleCounter\(13) & (!\ir_decoder_module|cycleCounter\(14) & (!\ir_decoder_module|cycleCounter\(12) & !\ir_decoder_module|cycleCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(13),
	datab => \ir_decoder_module|cycleCounter\(14),
	datac => \ir_decoder_module|cycleCounter\(12),
	datad => \ir_decoder_module|cycleCounter\(11),
	combout => \ir_decoder_module|failed~2_combout\);

-- Location: LCCOMB_X30_Y15_N4
\ir_decoder_module|failed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|failed~0_combout\ = (!\ir_decoder_module|cycleCounter\(8) & (((!\ir_decoder_module|cycleCounter\(5) & !\ir_decoder_module|cycleCounter\(6))) # (!\ir_decoder_module|cycleCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(8),
	datab => \ir_decoder_module|cycleCounter\(5),
	datac => \ir_decoder_module|cycleCounter\(6),
	datad => \ir_decoder_module|cycleCounter\(7),
	combout => \ir_decoder_module|failed~0_combout\);

-- Location: LCCOMB_X29_Y15_N28
\ir_decoder_module|failed~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|failed~1_combout\ = ((\ir_decoder_module|failed~0_combout\) # (!\ir_decoder_module|cycleCounter\(9))) # (!\ir_decoder_module|cycleCounter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(10),
	datac => \ir_decoder_module|cycleCounter\(9),
	datad => \ir_decoder_module|failed~0_combout\,
	combout => \ir_decoder_module|failed~1_combout\);

-- Location: LCCOMB_X29_Y15_N8
\ir_decoder_module|failed~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|failed~3_combout\ = (((\ir_decoder_module|failed~2_combout\ & \ir_decoder_module|failed~1_combout\)) # (!\ir_decoder_module|cycleCounter\(15))) # (!\ir_decoder_module|cycleCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(16),
	datab => \ir_decoder_module|failed~2_combout\,
	datac => \ir_decoder_module|cycleCounter\(15),
	datad => \ir_decoder_module|failed~1_combout\,
	combout => \ir_decoder_module|failed~3_combout\);

-- Location: LCCOMB_X30_Y13_N28
\ir_decoder_module|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector2~3_combout\ = (\i_IR~input_o\ & \ir_decoder_module|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR~input_o\,
	datac => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|Selector2~3_combout\);

-- Location: LCCOMB_X30_Y13_N4
\ir_decoder_module|failed~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|failed~4_combout\ = (\ir_decoder_module|failed~q\) # ((\ir_decoder_module|failed~3_combout\ & (!\ir_decoder_module|cycleCounter\(17) & \ir_decoder_module|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|failed~3_combout\,
	datab => \ir_decoder_module|cycleCounter\(17),
	datac => \ir_decoder_module|failed~q\,
	datad => \ir_decoder_module|Selector2~3_combout\,
	combout => \ir_decoder_module|failed~4_combout\);

-- Location: FF_X30_Y13_N5
\ir_decoder_module|failed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|failed~4_combout\,
	sclr => \ir_decoder_module|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|failed~q\);

-- Location: LCCOMB_X30_Y13_N26
\ir_decoder_module|started~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|started~3_combout\ = (\ir_decoder_module|started~q\) # (!\ir_decoder_module|started~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_decoder_module|started~q\,
	datad => \ir_decoder_module|started~2_combout\,
	combout => \ir_decoder_module|started~3_combout\);

-- Location: FF_X30_Y13_N27
\ir_decoder_module|started\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|started~3_combout\,
	sclr => \ir_decoder_module|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|started~q\);

-- Location: LCCOMB_X30_Y13_N0
\ir_decoder_module|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector1~0_combout\ = (!\ir_decoder_module|started~q\ & (\ir_decoder_module|Selector0~7_combout\ & !\i_IR~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|started~q\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \i_IR~input_o\,
	combout => \ir_decoder_module|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y13_N16
\ir_decoder_module|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector0~5_combout\ = (\ir_decoder_module|Selector1~1_combout\ & ((!\i_IR~input_o\) # (!\ir_decoder_module|started~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector1~1_combout\,
	datac => \ir_decoder_module|started~q\,
	datad => \i_IR~input_o\,
	combout => \ir_decoder_module|Selector0~5_combout\);

-- Location: LCCOMB_X30_Y14_N18
\ir_decoder_module|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector1~1_combout\ = (\ir_decoder_module|Selector1~0_combout\) # ((!\ir_decoder_module|failed~q\ & \ir_decoder_module|Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|failed~q\,
	datab => \ir_decoder_module|Selector1~0_combout\,
	datad => \ir_decoder_module|Selector0~5_combout\,
	combout => \ir_decoder_module|Selector1~1_combout\);

-- Location: LCCOMB_X30_Y13_N24
\ir_decoder_module|decoded~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|decoded~3_combout\ = (\ir_decoder_module|decoded~q\) # ((!\ir_decoder_module|Selector1~1_combout\ & (\ir_decoder_module|Selector2~4_combout\ & !\ir_decoder_module|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector1~1_combout\,
	datab => \ir_decoder_module|Selector2~4_combout\,
	datac => \ir_decoder_module|decoded~q\,
	datad => \ir_decoder_module|LessThan2~0_combout\,
	combout => \ir_decoder_module|decoded~3_combout\);

-- Location: FF_X30_Y13_N25
\ir_decoder_module|decoded\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|decoded~3_combout\,
	sclr => \ir_decoder_module|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|decoded~q\);

-- Location: LCCOMB_X30_Y13_N30
\ir_decoder_module|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector2~2_combout\ = (\ir_decoder_module|Selector2~4_combout\ & (!\ir_decoder_module|failed~q\ & !\ir_decoder_module|decoded~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|Selector2~4_combout\,
	datac => \ir_decoder_module|failed~q\,
	datad => \ir_decoder_module|decoded~q\,
	combout => \ir_decoder_module|Selector2~2_combout\);

-- Location: LCCOMB_X30_Y14_N22
\ir_decoder_module|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector2~4_combout\ = (\ir_decoder_module|Selector2~2_combout\) # ((\ir_decoder_module|Selector1~1_combout\ & (\i_IR~input_o\ & \ir_decoder_module|started~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector1~1_combout\,
	datab => \i_IR~input_o\,
	datac => \ir_decoder_module|Selector2~2_combout\,
	datad => \ir_decoder_module|started~q\,
	combout => \ir_decoder_module|Selector2~4_combout\);

-- Location: LCCOMB_X30_Y10_N20
\ir_decoder_module|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector3~0_combout\ = (\ir_decoder_module|success~q\ & (((\ir_decoder_module|Selector2~4_combout\ & \ir_decoder_module|decoded~q\)))) # (!\ir_decoder_module|success~q\ & ((\ir_decoder_module|Selector3~0_combout\) # 
-- ((\ir_decoder_module|Selector2~4_combout\ & \ir_decoder_module|decoded~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|success~q\,
	datab => \ir_decoder_module|Selector3~0_combout\,
	datac => \ir_decoder_module|Selector2~4_combout\,
	datad => \ir_decoder_module|decoded~q\,
	combout => \ir_decoder_module|Selector3~0_combout\);

-- Location: LCCOMB_X29_Y10_N12
\ir_decoder_module|success~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|success~0_combout\ = (\ir_decoder_module|success~q\) # ((\ir_decoder_module|Selector3~0_combout\ & (!\ir_decoder_module|Selector2~4_combout\ & !\ir_decoder_module|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector3~0_combout\,
	datab => \ir_decoder_module|Selector2~4_combout\,
	datac => \ir_decoder_module|success~q\,
	datad => \ir_decoder_module|Selector1~1_combout\,
	combout => \ir_decoder_module|success~0_combout\);

-- Location: FF_X29_Y10_N13
\ir_decoder_module|success\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|success~0_combout\,
	sclr => \ir_decoder_module|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|success~q\);

-- Location: LCCOMB_X30_Y13_N6
\ir_decoder_module|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector0~4_combout\ = (\ir_decoder_module|Selector0~7_combout\ & ((\ir_decoder_module|started~q\) # (\i_IR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|started~q\,
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \i_IR~input_o\,
	combout => \ir_decoder_module|Selector0~4_combout\);

-- Location: LCCOMB_X30_Y13_N22
\ir_decoder_module|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector0~6_combout\ = (\ir_decoder_module|failed~q\ & ((\ir_decoder_module|Selector0~5_combout\) # ((!\ir_decoder_module|decoded~q\ & \ir_decoder_module|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|decoded~q\,
	datab => \ir_decoder_module|failed~q\,
	datac => \ir_decoder_module|Selector2~4_combout\,
	datad => \ir_decoder_module|Selector0~5_combout\,
	combout => \ir_decoder_module|Selector0~6_combout\);

-- Location: LCCOMB_X31_Y14_N4
\ir_decoder_module|Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Selector0~7_combout\ = (\ir_decoder_module|Selector0~4_combout\) # ((\ir_decoder_module|Selector0~6_combout\) # ((\ir_decoder_module|success~q\ & \ir_decoder_module|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|success~q\,
	datab => \ir_decoder_module|Selector3~0_combout\,
	datac => \ir_decoder_module|Selector0~4_combout\,
	datad => \ir_decoder_module|Selector0~6_combout\,
	combout => \ir_decoder_module|Selector0~7_combout\);

-- Location: LCCOMB_X30_Y14_N26
\ir_decoder_module|cycleCounter[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[17]~34_combout\ = (\ir_decoder_module|Selector0~7_combout\) # (((\i_IR~input_o\ & !\ir_decoder_module|Selector1~1_combout\)) # (!\ir_decoder_module|started~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector0~7_combout\,
	datab => \i_IR~input_o\,
	datac => \ir_decoder_module|Selector1~1_combout\,
	datad => \ir_decoder_module|started~2_combout\,
	combout => \ir_decoder_module|cycleCounter[17]~34_combout\);

-- Location: FF_X30_Y15_N15
\ir_decoder_module|cycleCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[0]~18_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(0));

-- Location: LCCOMB_X30_Y15_N16
\ir_decoder_module|cycleCounter[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[1]~20_combout\ = (\ir_decoder_module|cycleCounter\(1) & (!\ir_decoder_module|cycleCounter[0]~19\)) # (!\ir_decoder_module|cycleCounter\(1) & ((\ir_decoder_module|cycleCounter[0]~19\) # (GND)))
-- \ir_decoder_module|cycleCounter[1]~21\ = CARRY((!\ir_decoder_module|cycleCounter[0]~19\) # (!\ir_decoder_module|cycleCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(1),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[0]~19\,
	combout => \ir_decoder_module|cycleCounter[1]~20_combout\,
	cout => \ir_decoder_module|cycleCounter[1]~21\);

-- Location: FF_X30_Y15_N17
\ir_decoder_module|cycleCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[1]~20_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(1));

-- Location: LCCOMB_X30_Y15_N18
\ir_decoder_module|cycleCounter[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[2]~22_combout\ = (\ir_decoder_module|cycleCounter\(2) & (\ir_decoder_module|cycleCounter[1]~21\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(2) & (!\ir_decoder_module|cycleCounter[1]~21\ & VCC))
-- \ir_decoder_module|cycleCounter[2]~23\ = CARRY((\ir_decoder_module|cycleCounter\(2) & !\ir_decoder_module|cycleCounter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(2),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[1]~21\,
	combout => \ir_decoder_module|cycleCounter[2]~22_combout\,
	cout => \ir_decoder_module|cycleCounter[2]~23\);

-- Location: FF_X30_Y15_N19
\ir_decoder_module|cycleCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[2]~22_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(2));

-- Location: LCCOMB_X30_Y15_N20
\ir_decoder_module|cycleCounter[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[3]~24_combout\ = (\ir_decoder_module|cycleCounter\(3) & (!\ir_decoder_module|cycleCounter[2]~23\)) # (!\ir_decoder_module|cycleCounter\(3) & ((\ir_decoder_module|cycleCounter[2]~23\) # (GND)))
-- \ir_decoder_module|cycleCounter[3]~25\ = CARRY((!\ir_decoder_module|cycleCounter[2]~23\) # (!\ir_decoder_module|cycleCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(3),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[2]~23\,
	combout => \ir_decoder_module|cycleCounter[3]~24_combout\,
	cout => \ir_decoder_module|cycleCounter[3]~25\);

-- Location: FF_X30_Y15_N21
\ir_decoder_module|cycleCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[3]~24_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(3));

-- Location: LCCOMB_X30_Y15_N22
\ir_decoder_module|cycleCounter[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|cycleCounter[4]~26_combout\ = (\ir_decoder_module|cycleCounter\(4) & (\ir_decoder_module|cycleCounter[3]~25\ $ (GND))) # (!\ir_decoder_module|cycleCounter\(4) & (!\ir_decoder_module|cycleCounter[3]~25\ & VCC))
-- \ir_decoder_module|cycleCounter[4]~27\ = CARRY((\ir_decoder_module|cycleCounter\(4) & !\ir_decoder_module|cycleCounter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(4),
	datad => VCC,
	cin => \ir_decoder_module|cycleCounter[3]~25\,
	combout => \ir_decoder_module|cycleCounter[4]~26_combout\,
	cout => \ir_decoder_module|cycleCounter[4]~27\);

-- Location: FF_X30_Y15_N23
\ir_decoder_module|cycleCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[4]~26_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(4));

-- Location: FF_X30_Y15_N25
\ir_decoder_module|cycleCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|cycleCounter[5]~28_combout\,
	sclr => \ir_decoder_module|cycleCounter[17]~34_combout\,
	ena => \ir_decoder_module|cycleCounter[17]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|cycleCounter\(5));

-- Location: LCCOMB_X30_Y15_N12
\ir_decoder_module|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan4~1_combout\ = (\ir_decoder_module|cycleCounter\(3)) # ((\ir_decoder_module|cycleCounter\(2)) # ((\ir_decoder_module|cycleCounter\(0)) # (\ir_decoder_module|cycleCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(3),
	datab => \ir_decoder_module|cycleCounter\(2),
	datac => \ir_decoder_module|cycleCounter\(0),
	datad => \ir_decoder_module|cycleCounter\(1),
	combout => \ir_decoder_module|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y15_N6
\ir_decoder_module|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan4~2_combout\ = (\ir_decoder_module|cycleCounter\(5)) # ((\ir_decoder_module|cycleCounter\(4) & \ir_decoder_module|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(5),
	datac => \ir_decoder_module|cycleCounter\(4),
	datad => \ir_decoder_module|LessThan4~1_combout\,
	combout => \ir_decoder_module|LessThan4~2_combout\);

-- Location: LCCOMB_X29_Y15_N4
\ir_decoder_module|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan4~0_combout\ = (\ir_decoder_module|cycleCounter\(9) & (\ir_decoder_module|cycleCounter\(14) & (\ir_decoder_module|cycleCounter\(8) & \ir_decoder_module|cycleCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(9),
	datab => \ir_decoder_module|cycleCounter\(14),
	datac => \ir_decoder_module|cycleCounter\(8),
	datad => \ir_decoder_module|cycleCounter\(15),
	combout => \ir_decoder_module|LessThan4~0_combout\);

-- Location: LCCOMB_X29_Y15_N30
\ir_decoder_module|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan4~3_combout\ = (\ir_decoder_module|LessThan4~0_combout\ & ((\ir_decoder_module|cycleCounter\(7)) # ((\ir_decoder_module|LessThan4~2_combout\ & \ir_decoder_module|cycleCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~2_combout\,
	datab => \ir_decoder_module|cycleCounter\(7),
	datac => \ir_decoder_module|LessThan4~0_combout\,
	datad => \ir_decoder_module|cycleCounter\(6),
	combout => \ir_decoder_module|LessThan4~3_combout\);

-- Location: LCCOMB_X29_Y15_N10
\ir_decoder_module|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan4~4_combout\ = (\ir_decoder_module|cycleCounter\(10)) # ((\ir_decoder_module|cycleCounter\(13)) # ((\ir_decoder_module|cycleCounter\(12)) # (\ir_decoder_module|cycleCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|cycleCounter\(10),
	datab => \ir_decoder_module|cycleCounter\(13),
	datac => \ir_decoder_module|cycleCounter\(12),
	datad => \ir_decoder_module|cycleCounter\(11),
	combout => \ir_decoder_module|LessThan4~4_combout\);

-- Location: LCCOMB_X29_Y15_N24
\ir_decoder_module|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan0~0_combout\ = (\ir_decoder_module|cycleCounter\(15) & \ir_decoder_module|cycleCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|cycleCounter\(15),
	datac => \ir_decoder_module|cycleCounter\(14),
	combout => \ir_decoder_module|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y15_N0
\ir_decoder_module|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|LessThan4~5_combout\ = (\ir_decoder_module|cycleCounter\(17)) # ((\ir_decoder_module|cycleCounter\(16)) # ((\ir_decoder_module|LessThan4~4_combout\ & \ir_decoder_module|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~4_combout\,
	datab => \ir_decoder_module|LessThan0~0_combout\,
	datac => \ir_decoder_module|cycleCounter\(17),
	datad => \ir_decoder_module|cycleCounter\(16),
	combout => \ir_decoder_module|LessThan4~5_combout\);

-- Location: LCCOMB_X31_Y14_N10
\ir_decoder_module|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~0_combout\ = (\ir_decoder_module|NB\(3) & (\ir_decoder_module|NB\(4) & (!\ir_decoder_module|Selector0~7_combout\ & !\ir_decoder_module|stored~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(3),
	datab => \ir_decoder_module|NB\(4),
	datac => \ir_decoder_module|Selector0~7_combout\,
	datad => \ir_decoder_module|stored~q\,
	combout => \ir_decoder_module|Decoder0~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\ir_decoder_module|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~1_combout\ = (\ir_decoder_module|LessThan2~0_combout\ & (\i_IR~input_o\ & (\ir_decoder_module|decoded~2_combout\ & \ir_decoder_module|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan2~0_combout\,
	datab => \i_IR~input_o\,
	datac => \ir_decoder_module|decoded~2_combout\,
	datad => \ir_decoder_module|Decoder0~0_combout\,
	combout => \ir_decoder_module|Decoder0~1_combout\);

-- Location: LCCOMB_X29_Y14_N10
\ir_decoder_module|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~4_combout\ = (!\ir_decoder_module|NB\(2) & (\ir_decoder_module|NB\(0) & (!\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~4_combout\);

-- Location: LCCOMB_X29_Y14_N8
\ir_decoder_module|data[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[6]~2_combout\ = (\ir_decoder_module|Decoder0~4_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~4_combout\ & (((\ir_decoder_module|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(6),
	datad => \ir_decoder_module|Decoder0~4_combout\,
	combout => \ir_decoder_module|data[6]~2_combout\);

-- Location: FF_X29_Y14_N9
\ir_decoder_module|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(6));

-- Location: LCCOMB_X30_Y10_N0
\ir_decoder_module|o_irFrame[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|o_irFrame[6]~feeder_combout\ = \ir_decoder_module|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_decoder_module|data\(6),
	combout => \ir_decoder_module|o_irFrame[6]~feeder_combout\);

-- Location: LCCOMB_X30_Y10_N4
\ir_decoder_module|o_irFrame[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|o_irFrame[1]~0_combout\ = (!\ir_decoder_module|Selector0~7_combout\ & (\ir_decoder_module|Selector3~0_combout\ & (!\ir_decoder_module|Selector1~1_combout\ & !\ir_decoder_module|Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|Selector0~7_combout\,
	datab => \ir_decoder_module|Selector3~0_combout\,
	datac => \ir_decoder_module|Selector1~1_combout\,
	datad => \ir_decoder_module|Selector2~4_combout\,
	combout => \ir_decoder_module|o_irFrame[1]~0_combout\);

-- Location: FF_X30_Y10_N1
\ir_decoder_module|o_irFrame[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|o_irFrame[6]~feeder_combout\,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(6));

-- Location: LCCOMB_X29_Y14_N28
\ir_decoder_module|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~5_combout\ = (!\ir_decoder_module|NB\(2) & (!\ir_decoder_module|NB\(0) & (!\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~5_combout\);

-- Location: LCCOMB_X29_Y14_N26
\ir_decoder_module|data[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[7]~3_combout\ = (\ir_decoder_module|Decoder0~5_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~5_combout\ & (((\ir_decoder_module|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(7),
	datad => \ir_decoder_module|Decoder0~5_combout\,
	combout => \ir_decoder_module|data[7]~3_combout\);

-- Location: FF_X29_Y14_N27
\ir_decoder_module|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(7));

-- Location: FF_X30_Y10_N15
\ir_decoder_module|o_irFrame[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \ir_decoder_module|data\(7),
	sload => VCC,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(7));

-- Location: LCCOMB_X30_Y10_N24
\ir_decoder_module|changestate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|changestate~0_combout\ = !\ir_decoder_module|changestate~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_decoder_module|changestate~q\,
	combout => \ir_decoder_module|changestate~0_combout\);

-- Location: FF_X30_Y10_N25
\ir_decoder_module|changestate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|changestate~0_combout\,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|changestate~q\);

-- Location: LCCOMB_X30_Y10_N22
\controller_module|ir_prevstate~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|ir_prevstate~feeder_combout\ = \ir_decoder_module|changestate~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_decoder_module|changestate~q\,
	combout => \controller_module|ir_prevstate~feeder_combout\);

-- Location: FF_X30_Y10_N23
\controller_module|ir_prevstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|ir_prevstate~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|ir_prevstate~q\);

-- Location: LCCOMB_X29_Y14_N24
\ir_decoder_module|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~3_combout\ = (!\ir_decoder_module|NB\(2) & (\ir_decoder_module|NB\(0) & (\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~3_combout\);

-- Location: LCCOMB_X29_Y14_N30
\ir_decoder_module|data[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[4]~1_combout\ = (\ir_decoder_module|Decoder0~3_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~3_combout\ & (((\ir_decoder_module|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(4),
	datad => \ir_decoder_module|Decoder0~3_combout\,
	combout => \ir_decoder_module|data[4]~1_combout\);

-- Location: FF_X29_Y14_N31
\ir_decoder_module|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(4));

-- Location: FF_X30_Y10_N27
\ir_decoder_module|o_irFrame[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \ir_decoder_module|data\(4),
	sload => VCC,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(4));

-- Location: LCCOMB_X29_Y14_N2
\ir_decoder_module|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~2_combout\ = (!\ir_decoder_module|NB\(2) & (!\ir_decoder_module|NB\(0) & (\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~2_combout\);

-- Location: LCCOMB_X29_Y14_N0
\ir_decoder_module|data[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[5]~0_combout\ = (\ir_decoder_module|Decoder0~2_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~2_combout\ & (((\ir_decoder_module|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(5),
	datad => \ir_decoder_module|Decoder0~2_combout\,
	combout => \ir_decoder_module|data[5]~0_combout\);

-- Location: FF_X29_Y14_N1
\ir_decoder_module|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(5));

-- Location: LCCOMB_X30_Y10_N12
\ir_decoder_module|o_irFrame[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|o_irFrame[5]~feeder_combout\ = \ir_decoder_module|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_decoder_module|data\(5),
	combout => \ir_decoder_module|o_irFrame[5]~feeder_combout\);

-- Location: FF_X30_Y10_N13
\ir_decoder_module|o_irFrame[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|o_irFrame[5]~feeder_combout\,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(5));

-- Location: LCCOMB_X30_Y10_N26
\controller_module|k[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[0]~6_combout\ = (!\ir_decoder_module|o_irFrame\(4) & (\ir_decoder_module|o_irFrame\(5) & (\controller_module|ir_prevstate~q\ $ (\ir_decoder_module|changestate~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|ir_prevstate~q\,
	datab => \ir_decoder_module|changestate~q\,
	datac => \ir_decoder_module|o_irFrame\(4),
	datad => \ir_decoder_module|o_irFrame\(5),
	combout => \controller_module|k[0]~6_combout\);

-- Location: LCCOMB_X30_Y10_N14
\controller_module|k[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[0]~7_combout\ = (!\ir_decoder_module|o_irFrame\(6) & (!\ir_decoder_module|o_irFrame\(7) & \controller_module|k[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_decoder_module|o_irFrame\(6),
	datac => \ir_decoder_module|o_irFrame\(7),
	datad => \controller_module|k[0]~6_combout\,
	combout => \controller_module|k[0]~7_combout\);

-- Location: LCCOMB_X29_Y14_N18
\ir_decoder_module|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~8_combout\ = (\ir_decoder_module|NB\(2) & (!\ir_decoder_module|NB\(0) & (\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~8_combout\);

-- Location: LCCOMB_X29_Y14_N16
\ir_decoder_module|data[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[1]~6_combout\ = (\ir_decoder_module|Decoder0~8_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~8_combout\ & (((\ir_decoder_module|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(1),
	datad => \ir_decoder_module|Decoder0~8_combout\,
	combout => \ir_decoder_module|data[1]~6_combout\);

-- Location: FF_X29_Y14_N17
\ir_decoder_module|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(1));

-- Location: FF_X30_Y10_N9
\ir_decoder_module|o_irFrame[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \ir_decoder_module|data\(1),
	sload => VCC,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(1));

-- Location: LCCOMB_X30_Y10_N8
\controller_module|en_buzz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|en_buzz~1_combout\ = (\controller_module|en_buzz~q\ & (\controller_module|ir_prevstate~q\ $ ((\ir_decoder_module|changestate~q\)))) # (!\controller_module|en_buzz~q\ & (((\ir_decoder_module|o_irFrame\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|ir_prevstate~q\,
	datab => \ir_decoder_module|changestate~q\,
	datac => \ir_decoder_module|o_irFrame\(1),
	datad => \controller_module|en_buzz~q\,
	combout => \controller_module|en_buzz~1_combout\);

-- Location: LCCOMB_X29_Y14_N12
\ir_decoder_module|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~7_combout\ = (\ir_decoder_module|NB\(2) & (!\ir_decoder_module|NB\(0) & (!\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~7_combout\);

-- Location: LCCOMB_X29_Y14_N14
\ir_decoder_module|data[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[3]~5_combout\ = (\ir_decoder_module|Decoder0~7_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~7_combout\ & (((\ir_decoder_module|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(3),
	datad => \ir_decoder_module|Decoder0~7_combout\,
	combout => \ir_decoder_module|data[3]~5_combout\);

-- Location: FF_X29_Y14_N15
\ir_decoder_module|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(3));

-- Location: FF_X30_Y10_N11
\ir_decoder_module|o_irFrame[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \ir_decoder_module|data\(3),
	sload => VCC,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(3));

-- Location: LCCOMB_X29_Y14_N6
\ir_decoder_module|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|Decoder0~6_combout\ = (\ir_decoder_module|NB\(2) & (\ir_decoder_module|NB\(0) & (!\ir_decoder_module|NB\(1) & \ir_decoder_module|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|NB\(2),
	datab => \ir_decoder_module|NB\(0),
	datac => \ir_decoder_module|NB\(1),
	datad => \ir_decoder_module|Decoder0~1_combout\,
	combout => \ir_decoder_module|Decoder0~6_combout\);

-- Location: LCCOMB_X29_Y14_N4
\ir_decoder_module|data[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_decoder_module|data[2]~4_combout\ = (\ir_decoder_module|Decoder0~6_combout\ & ((\ir_decoder_module|LessThan4~3_combout\) # ((\ir_decoder_module|LessThan4~5_combout\)))) # (!\ir_decoder_module|Decoder0~6_combout\ & (((\ir_decoder_module|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|LessThan4~3_combout\,
	datab => \ir_decoder_module|LessThan4~5_combout\,
	datac => \ir_decoder_module|data\(2),
	datad => \ir_decoder_module|Decoder0~6_combout\,
	combout => \ir_decoder_module|data[2]~4_combout\);

-- Location: FF_X29_Y14_N5
\ir_decoder_module|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \ir_decoder_module|data[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|data\(2));

-- Location: FF_X30_Y10_N17
\ir_decoder_module|o_irFrame[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \ir_decoder_module|data\(2),
	sload => VCC,
	ena => \ir_decoder_module|o_irFrame[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir_decoder_module|o_irFrame\(2));

-- Location: LCCOMB_X30_Y11_N18
\controller_module|k[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[0]~8_combout\ = \controller_module|k\(0) $ (VCC)
-- \controller_module|k[0]~9\ = CARRY(\controller_module|k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(0),
	datad => VCC,
	combout => \controller_module|k[0]~8_combout\,
	cout => \controller_module|k[0]~9\);

-- Location: LCCOMB_X30_Y11_N2
\controller_module|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~0_combout\ = \controller_module|k\(0) $ (VCC)
-- \controller_module|Add1~1\ = CARRY(\controller_module|k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(0),
	datad => VCC,
	combout => \controller_module|Add1~0_combout\,
	cout => \controller_module|Add1~1\);

-- Location: LCCOMB_X30_Y10_N10
\controller_module|k[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[0]~20_combout\ = (\ir_decoder_module|o_irFrame\(2) & !\ir_decoder_module|o_irFrame\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|o_irFrame\(2),
	datac => \ir_decoder_module|o_irFrame\(3),
	combout => \controller_module|k[0]~20_combout\);

-- Location: LCCOMB_X30_Y10_N30
\controller_module|k[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[0]~21_combout\ = (\controller_module|k[0]~20_combout\ & (\controller_module|k[0]~7_combout\ & ((!\controller_module|Add1~12_combout\) # (!\ir_decoder_module|o_irFrame\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|k[0]~20_combout\,
	datab => \ir_decoder_module|o_irFrame\(1),
	datac => \controller_module|k[0]~7_combout\,
	datad => \controller_module|Add1~12_combout\,
	combout => \controller_module|k[0]~21_combout\);

-- Location: FF_X30_Y11_N19
\controller_module|k[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|k[0]~8_combout\,
	asdata => \controller_module|Add1~0_combout\,
	sload => \ir_decoder_module|o_irFrame\(1),
	ena => \controller_module|k[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|k\(0));

-- Location: LCCOMB_X30_Y11_N20
\controller_module|k[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[1]~10_combout\ = (\controller_module|k\(1) & (!\controller_module|k[0]~9\)) # (!\controller_module|k\(1) & ((\controller_module|k[0]~9\) # (GND)))
-- \controller_module|k[1]~11\ = CARRY((!\controller_module|k[0]~9\) # (!\controller_module|k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(1),
	datad => VCC,
	cin => \controller_module|k[0]~9\,
	combout => \controller_module|k[1]~10_combout\,
	cout => \controller_module|k[1]~11\);

-- Location: LCCOMB_X30_Y11_N4
\controller_module|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~2_combout\ = (\controller_module|k\(1) & (\controller_module|Add1~1\ & VCC)) # (!\controller_module|k\(1) & (!\controller_module|Add1~1\))
-- \controller_module|Add1~3\ = CARRY((!\controller_module|k\(1) & !\controller_module|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(1),
	datad => VCC,
	cin => \controller_module|Add1~1\,
	combout => \controller_module|Add1~2_combout\,
	cout => \controller_module|Add1~3\);

-- Location: FF_X30_Y11_N21
\controller_module|k[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|k[1]~10_combout\,
	asdata => \controller_module|Add1~2_combout\,
	sload => \ir_decoder_module|o_irFrame\(1),
	ena => \controller_module|k[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|k\(1));

-- Location: LCCOMB_X30_Y11_N22
\controller_module|k[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[2]~12_combout\ = (\controller_module|k\(2) & (\controller_module|k[1]~11\ $ (GND))) # (!\controller_module|k\(2) & (!\controller_module|k[1]~11\ & VCC))
-- \controller_module|k[2]~13\ = CARRY((\controller_module|k\(2) & !\controller_module|k[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|k\(2),
	datad => VCC,
	cin => \controller_module|k[1]~11\,
	combout => \controller_module|k[2]~12_combout\,
	cout => \controller_module|k[2]~13\);

-- Location: LCCOMB_X30_Y11_N6
\controller_module|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~4_combout\ = (\controller_module|k\(2) & ((GND) # (!\controller_module|Add1~3\))) # (!\controller_module|k\(2) & (\controller_module|Add1~3\ $ (GND)))
-- \controller_module|Add1~5\ = CARRY((\controller_module|k\(2)) # (!\controller_module|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|k\(2),
	datad => VCC,
	cin => \controller_module|Add1~3\,
	combout => \controller_module|Add1~4_combout\,
	cout => \controller_module|Add1~5\);

-- Location: FF_X30_Y11_N23
\controller_module|k[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|k[2]~12_combout\,
	asdata => \controller_module|Add1~4_combout\,
	sload => \ir_decoder_module|o_irFrame\(1),
	ena => \controller_module|k[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|k\(2));

-- Location: LCCOMB_X30_Y11_N24
\controller_module|k[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[3]~14_combout\ = (\controller_module|k\(3) & (!\controller_module|k[2]~13\)) # (!\controller_module|k\(3) & ((\controller_module|k[2]~13\) # (GND)))
-- \controller_module|k[3]~15\ = CARRY((!\controller_module|k[2]~13\) # (!\controller_module|k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(3),
	datad => VCC,
	cin => \controller_module|k[2]~13\,
	combout => \controller_module|k[3]~14_combout\,
	cout => \controller_module|k[3]~15\);

-- Location: LCCOMB_X30_Y11_N8
\controller_module|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~6_combout\ = (\controller_module|k\(3) & (\controller_module|Add1~5\ & VCC)) # (!\controller_module|k\(3) & (!\controller_module|Add1~5\))
-- \controller_module|Add1~7\ = CARRY((!\controller_module|k\(3) & !\controller_module|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(3),
	datad => VCC,
	cin => \controller_module|Add1~5\,
	combout => \controller_module|Add1~6_combout\,
	cout => \controller_module|Add1~7\);

-- Location: FF_X30_Y11_N25
\controller_module|k[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|k[3]~14_combout\,
	asdata => \controller_module|Add1~6_combout\,
	sload => \ir_decoder_module|o_irFrame\(1),
	ena => \controller_module|k[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|k\(3));

-- Location: LCCOMB_X30_Y11_N26
\controller_module|k[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[4]~16_combout\ = (\controller_module|k\(4) & (\controller_module|k[3]~15\ $ (GND))) # (!\controller_module|k\(4) & (!\controller_module|k[3]~15\ & VCC))
-- \controller_module|k[4]~17\ = CARRY((\controller_module|k\(4) & !\controller_module|k[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|k\(4),
	datad => VCC,
	cin => \controller_module|k[3]~15\,
	combout => \controller_module|k[4]~16_combout\,
	cout => \controller_module|k[4]~17\);

-- Location: LCCOMB_X30_Y11_N10
\controller_module|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~8_combout\ = (\controller_module|k\(4) & ((GND) # (!\controller_module|Add1~7\))) # (!\controller_module|k\(4) & (\controller_module|Add1~7\ $ (GND)))
-- \controller_module|Add1~9\ = CARRY((\controller_module|k\(4)) # (!\controller_module|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|k\(4),
	datad => VCC,
	cin => \controller_module|Add1~7\,
	combout => \controller_module|Add1~8_combout\,
	cout => \controller_module|Add1~9\);

-- Location: FF_X30_Y11_N27
\controller_module|k[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|k[4]~16_combout\,
	asdata => \controller_module|Add1~8_combout\,
	sload => \ir_decoder_module|o_irFrame\(1),
	ena => \controller_module|k[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|k\(4));

-- Location: LCCOMB_X30_Y11_N28
\controller_module|k[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|k[5]~18_combout\ = \controller_module|k\(5) $ (\controller_module|k[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(5),
	cin => \controller_module|k[4]~17\,
	combout => \controller_module|k[5]~18_combout\);

-- Location: LCCOMB_X30_Y11_N12
\controller_module|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~10_combout\ = (\controller_module|k\(5) & (\controller_module|Add1~9\ & VCC)) # (!\controller_module|k\(5) & (!\controller_module|Add1~9\))
-- \controller_module|Add1~11\ = CARRY((!\controller_module|k\(5) & !\controller_module|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller_module|k\(5),
	datad => VCC,
	cin => \controller_module|Add1~9\,
	combout => \controller_module|Add1~10_combout\,
	cout => \controller_module|Add1~11\);

-- Location: FF_X30_Y11_N29
\controller_module|k[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|k[5]~18_combout\,
	asdata => \controller_module|Add1~10_combout\,
	sload => \ir_decoder_module|o_irFrame\(1),
	ena => \controller_module|k[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|k\(5));

-- Location: LCCOMB_X30_Y11_N14
\controller_module|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|Add1~12_combout\ = \controller_module|Add1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \controller_module|Add1~11\,
	combout => \controller_module|Add1~12_combout\);

-- Location: LCCOMB_X30_Y10_N16
\controller_module|en_buzz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|en_buzz~0_combout\ = (\ir_decoder_module|o_irFrame\(3) & (\ir_decoder_module|o_irFrame\(1) & (!\ir_decoder_module|o_irFrame\(2)))) # (!\ir_decoder_module|o_irFrame\(3) & (\ir_decoder_module|o_irFrame\(2) & 
-- ((\controller_module|Add1~12_combout\) # (!\ir_decoder_module|o_irFrame\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_decoder_module|o_irFrame\(1),
	datab => \ir_decoder_module|o_irFrame\(3),
	datac => \ir_decoder_module|o_irFrame\(2),
	datad => \controller_module|Add1~12_combout\,
	combout => \controller_module|en_buzz~0_combout\);

-- Location: LCCOMB_X30_Y10_N18
\controller_module|en_buzz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|en_buzz~2_combout\ = (\controller_module|en_buzz~q\ & (((\controller_module|k[0]~7_combout\ & \controller_module|en_buzz~0_combout\)) # (!\controller_module|en_buzz~1_combout\))) # (!\controller_module|en_buzz~q\ & 
-- (\controller_module|k[0]~7_combout\ & (!\controller_module|en_buzz~1_combout\ & \controller_module|en_buzz~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller_module|en_buzz~q\,
	datab => \controller_module|k[0]~7_combout\,
	datac => \controller_module|en_buzz~1_combout\,
	datad => \controller_module|en_buzz~0_combout\,
	combout => \controller_module|en_buzz~2_combout\);

-- Location: LCCOMB_X31_Y10_N16
\controller_module|en_buzz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controller_module|en_buzz~feeder_combout\ = \controller_module|en_buzz~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller_module|en_buzz~2_combout\,
	combout => \controller_module|en_buzz~feeder_combout\);

-- Location: FF_X31_Y10_N17
\controller_module|en_buzz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \controller_module|en_buzz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller_module|en_buzz~q\);

-- Location: LCCOMB_X31_Y10_N30
\buzzer_module|counter[17]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[17]~96_combout\ = (\buzzer_module|LessThan0~8_combout\) # (!\controller_module|en_buzz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buzzer_module|LessThan0~8_combout\,
	datad => \controller_module|en_buzz~q\,
	combout => \buzzer_module|counter[17]~96_combout\);

-- Location: FF_X32_Y10_N1
\buzzer_module|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[0]~32_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(0));

-- Location: LCCOMB_X32_Y10_N2
\buzzer_module|counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[1]~34_combout\ = (\buzzer_module|counter\(1) & (!\buzzer_module|counter[0]~33\)) # (!\buzzer_module|counter\(1) & ((\buzzer_module|counter[0]~33\) # (GND)))
-- \buzzer_module|counter[1]~35\ = CARRY((!\buzzer_module|counter[0]~33\) # (!\buzzer_module|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(1),
	datad => VCC,
	cin => \buzzer_module|counter[0]~33\,
	combout => \buzzer_module|counter[1]~34_combout\,
	cout => \buzzer_module|counter[1]~35\);

-- Location: FF_X32_Y10_N3
\buzzer_module|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[1]~34_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(1));

-- Location: LCCOMB_X32_Y10_N4
\buzzer_module|counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[2]~36_combout\ = (\buzzer_module|counter\(2) & (\buzzer_module|counter[1]~35\ $ (GND))) # (!\buzzer_module|counter\(2) & (!\buzzer_module|counter[1]~35\ & VCC))
-- \buzzer_module|counter[2]~37\ = CARRY((\buzzer_module|counter\(2) & !\buzzer_module|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(2),
	datad => VCC,
	cin => \buzzer_module|counter[1]~35\,
	combout => \buzzer_module|counter[2]~36_combout\,
	cout => \buzzer_module|counter[2]~37\);

-- Location: FF_X32_Y10_N5
\buzzer_module|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[2]~36_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(2));

-- Location: LCCOMB_X32_Y10_N6
\buzzer_module|counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[3]~38_combout\ = (\buzzer_module|counter\(3) & (!\buzzer_module|counter[2]~37\)) # (!\buzzer_module|counter\(3) & ((\buzzer_module|counter[2]~37\) # (GND)))
-- \buzzer_module|counter[3]~39\ = CARRY((!\buzzer_module|counter[2]~37\) # (!\buzzer_module|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(3),
	datad => VCC,
	cin => \buzzer_module|counter[2]~37\,
	combout => \buzzer_module|counter[3]~38_combout\,
	cout => \buzzer_module|counter[3]~39\);

-- Location: FF_X32_Y10_N7
\buzzer_module|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[3]~38_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(3));

-- Location: LCCOMB_X32_Y10_N8
\buzzer_module|counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[4]~40_combout\ = (\buzzer_module|counter\(4) & (\buzzer_module|counter[3]~39\ $ (GND))) # (!\buzzer_module|counter\(4) & (!\buzzer_module|counter[3]~39\ & VCC))
-- \buzzer_module|counter[4]~41\ = CARRY((\buzzer_module|counter\(4) & !\buzzer_module|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(4),
	datad => VCC,
	cin => \buzzer_module|counter[3]~39\,
	combout => \buzzer_module|counter[4]~40_combout\,
	cout => \buzzer_module|counter[4]~41\);

-- Location: FF_X32_Y10_N9
\buzzer_module|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[4]~40_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(4));

-- Location: LCCOMB_X32_Y10_N10
\buzzer_module|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[5]~42_combout\ = (\buzzer_module|counter\(5) & (!\buzzer_module|counter[4]~41\)) # (!\buzzer_module|counter\(5) & ((\buzzer_module|counter[4]~41\) # (GND)))
-- \buzzer_module|counter[5]~43\ = CARRY((!\buzzer_module|counter[4]~41\) # (!\buzzer_module|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(5),
	datad => VCC,
	cin => \buzzer_module|counter[4]~41\,
	combout => \buzzer_module|counter[5]~42_combout\,
	cout => \buzzer_module|counter[5]~43\);

-- Location: FF_X32_Y10_N11
\buzzer_module|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[5]~42_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(5));

-- Location: LCCOMB_X32_Y10_N12
\buzzer_module|counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[6]~44_combout\ = (\buzzer_module|counter\(6) & (\buzzer_module|counter[5]~43\ $ (GND))) # (!\buzzer_module|counter\(6) & (!\buzzer_module|counter[5]~43\ & VCC))
-- \buzzer_module|counter[6]~45\ = CARRY((\buzzer_module|counter\(6) & !\buzzer_module|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(6),
	datad => VCC,
	cin => \buzzer_module|counter[5]~43\,
	combout => \buzzer_module|counter[6]~44_combout\,
	cout => \buzzer_module|counter[6]~45\);

-- Location: FF_X32_Y10_N13
\buzzer_module|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[6]~44_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(6));

-- Location: LCCOMB_X32_Y10_N14
\buzzer_module|counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[7]~46_combout\ = (\buzzer_module|counter\(7) & (!\buzzer_module|counter[6]~45\)) # (!\buzzer_module|counter\(7) & ((\buzzer_module|counter[6]~45\) # (GND)))
-- \buzzer_module|counter[7]~47\ = CARRY((!\buzzer_module|counter[6]~45\) # (!\buzzer_module|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(7),
	datad => VCC,
	cin => \buzzer_module|counter[6]~45\,
	combout => \buzzer_module|counter[7]~46_combout\,
	cout => \buzzer_module|counter[7]~47\);

-- Location: FF_X32_Y10_N15
\buzzer_module|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[7]~46_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(7));

-- Location: LCCOMB_X32_Y10_N16
\buzzer_module|counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[8]~48_combout\ = (\buzzer_module|counter\(8) & (\buzzer_module|counter[7]~47\ $ (GND))) # (!\buzzer_module|counter\(8) & (!\buzzer_module|counter[7]~47\ & VCC))
-- \buzzer_module|counter[8]~49\ = CARRY((\buzzer_module|counter\(8) & !\buzzer_module|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(8),
	datad => VCC,
	cin => \buzzer_module|counter[7]~47\,
	combout => \buzzer_module|counter[8]~48_combout\,
	cout => \buzzer_module|counter[8]~49\);

-- Location: FF_X32_Y10_N17
\buzzer_module|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[8]~48_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(8));

-- Location: LCCOMB_X32_Y10_N18
\buzzer_module|counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[9]~50_combout\ = (\buzzer_module|counter\(9) & (!\buzzer_module|counter[8]~49\)) # (!\buzzer_module|counter\(9) & ((\buzzer_module|counter[8]~49\) # (GND)))
-- \buzzer_module|counter[9]~51\ = CARRY((!\buzzer_module|counter[8]~49\) # (!\buzzer_module|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(9),
	datad => VCC,
	cin => \buzzer_module|counter[8]~49\,
	combout => \buzzer_module|counter[9]~50_combout\,
	cout => \buzzer_module|counter[9]~51\);

-- Location: FF_X32_Y10_N19
\buzzer_module|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[9]~50_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(9));

-- Location: LCCOMB_X32_Y10_N20
\buzzer_module|counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[10]~52_combout\ = (\buzzer_module|counter\(10) & (\buzzer_module|counter[9]~51\ $ (GND))) # (!\buzzer_module|counter\(10) & (!\buzzer_module|counter[9]~51\ & VCC))
-- \buzzer_module|counter[10]~53\ = CARRY((\buzzer_module|counter\(10) & !\buzzer_module|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(10),
	datad => VCC,
	cin => \buzzer_module|counter[9]~51\,
	combout => \buzzer_module|counter[10]~52_combout\,
	cout => \buzzer_module|counter[10]~53\);

-- Location: FF_X32_Y10_N21
\buzzer_module|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[10]~52_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(10));

-- Location: LCCOMB_X32_Y10_N22
\buzzer_module|counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[11]~54_combout\ = (\buzzer_module|counter\(11) & (!\buzzer_module|counter[10]~53\)) # (!\buzzer_module|counter\(11) & ((\buzzer_module|counter[10]~53\) # (GND)))
-- \buzzer_module|counter[11]~55\ = CARRY((!\buzzer_module|counter[10]~53\) # (!\buzzer_module|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(11),
	datad => VCC,
	cin => \buzzer_module|counter[10]~53\,
	combout => \buzzer_module|counter[11]~54_combout\,
	cout => \buzzer_module|counter[11]~55\);

-- Location: FF_X32_Y10_N23
\buzzer_module|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[11]~54_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(11));

-- Location: LCCOMB_X32_Y10_N24
\buzzer_module|counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[12]~56_combout\ = (\buzzer_module|counter\(12) & (\buzzer_module|counter[11]~55\ $ (GND))) # (!\buzzer_module|counter\(12) & (!\buzzer_module|counter[11]~55\ & VCC))
-- \buzzer_module|counter[12]~57\ = CARRY((\buzzer_module|counter\(12) & !\buzzer_module|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(12),
	datad => VCC,
	cin => \buzzer_module|counter[11]~55\,
	combout => \buzzer_module|counter[12]~56_combout\,
	cout => \buzzer_module|counter[12]~57\);

-- Location: FF_X32_Y10_N25
\buzzer_module|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[12]~56_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(12));

-- Location: LCCOMB_X32_Y10_N26
\buzzer_module|counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[13]~58_combout\ = (\buzzer_module|counter\(13) & (!\buzzer_module|counter[12]~57\)) # (!\buzzer_module|counter\(13) & ((\buzzer_module|counter[12]~57\) # (GND)))
-- \buzzer_module|counter[13]~59\ = CARRY((!\buzzer_module|counter[12]~57\) # (!\buzzer_module|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(13),
	datad => VCC,
	cin => \buzzer_module|counter[12]~57\,
	combout => \buzzer_module|counter[13]~58_combout\,
	cout => \buzzer_module|counter[13]~59\);

-- Location: FF_X32_Y10_N27
\buzzer_module|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[13]~58_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(13));

-- Location: LCCOMB_X32_Y10_N28
\buzzer_module|counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[14]~60_combout\ = (\buzzer_module|counter\(14) & (\buzzer_module|counter[13]~59\ $ (GND))) # (!\buzzer_module|counter\(14) & (!\buzzer_module|counter[13]~59\ & VCC))
-- \buzzer_module|counter[14]~61\ = CARRY((\buzzer_module|counter\(14) & !\buzzer_module|counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(14),
	datad => VCC,
	cin => \buzzer_module|counter[13]~59\,
	combout => \buzzer_module|counter[14]~60_combout\,
	cout => \buzzer_module|counter[14]~61\);

-- Location: FF_X32_Y10_N29
\buzzer_module|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[14]~60_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(14));

-- Location: LCCOMB_X31_Y10_N26
\buzzer_module|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~2_combout\ = (!\buzzer_module|counter\(14) & (!\buzzer_module|counter\(12) & (!\buzzer_module|counter\(11) & !\buzzer_module|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(14),
	datab => \buzzer_module|counter\(12),
	datac => \buzzer_module|counter\(11),
	datad => \buzzer_module|counter\(13),
	combout => \buzzer_module|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y10_N30
\buzzer_module|counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[15]~62_combout\ = (\buzzer_module|counter\(15) & (!\buzzer_module|counter[14]~61\)) # (!\buzzer_module|counter\(15) & ((\buzzer_module|counter[14]~61\) # (GND)))
-- \buzzer_module|counter[15]~63\ = CARRY((!\buzzer_module|counter[14]~61\) # (!\buzzer_module|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(15),
	datad => VCC,
	cin => \buzzer_module|counter[14]~61\,
	combout => \buzzer_module|counter[15]~62_combout\,
	cout => \buzzer_module|counter[15]~63\);

-- Location: FF_X32_Y10_N31
\buzzer_module|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[15]~62_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(15));

-- Location: LCCOMB_X32_Y9_N0
\buzzer_module|counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[16]~64_combout\ = (\buzzer_module|counter\(16) & (\buzzer_module|counter[15]~63\ $ (GND))) # (!\buzzer_module|counter\(16) & (!\buzzer_module|counter[15]~63\ & VCC))
-- \buzzer_module|counter[16]~65\ = CARRY((\buzzer_module|counter\(16) & !\buzzer_module|counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(16),
	datad => VCC,
	cin => \buzzer_module|counter[15]~63\,
	combout => \buzzer_module|counter[16]~64_combout\,
	cout => \buzzer_module|counter[16]~65\);

-- Location: FF_X32_Y9_N1
\buzzer_module|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[16]~64_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(16));

-- Location: LCCOMB_X32_Y9_N2
\buzzer_module|counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[17]~66_combout\ = (\buzzer_module|counter\(17) & (!\buzzer_module|counter[16]~65\)) # (!\buzzer_module|counter\(17) & ((\buzzer_module|counter[16]~65\) # (GND)))
-- \buzzer_module|counter[17]~67\ = CARRY((!\buzzer_module|counter[16]~65\) # (!\buzzer_module|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(17),
	datad => VCC,
	cin => \buzzer_module|counter[16]~65\,
	combout => \buzzer_module|counter[17]~66_combout\,
	cout => \buzzer_module|counter[17]~67\);

-- Location: FF_X32_Y9_N3
\buzzer_module|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[17]~66_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(17));

-- Location: LCCOMB_X32_Y9_N4
\buzzer_module|counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[18]~68_combout\ = (\buzzer_module|counter\(18) & (\buzzer_module|counter[17]~67\ $ (GND))) # (!\buzzer_module|counter\(18) & (!\buzzer_module|counter[17]~67\ & VCC))
-- \buzzer_module|counter[18]~69\ = CARRY((\buzzer_module|counter\(18) & !\buzzer_module|counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(18),
	datad => VCC,
	cin => \buzzer_module|counter[17]~67\,
	combout => \buzzer_module|counter[18]~68_combout\,
	cout => \buzzer_module|counter[18]~69\);

-- Location: FF_X32_Y9_N5
\buzzer_module|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[18]~68_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(18));

-- Location: LCCOMB_X32_Y9_N6
\buzzer_module|counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[19]~70_combout\ = (\buzzer_module|counter\(19) & (!\buzzer_module|counter[18]~69\)) # (!\buzzer_module|counter\(19) & ((\buzzer_module|counter[18]~69\) # (GND)))
-- \buzzer_module|counter[19]~71\ = CARRY((!\buzzer_module|counter[18]~69\) # (!\buzzer_module|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(19),
	datad => VCC,
	cin => \buzzer_module|counter[18]~69\,
	combout => \buzzer_module|counter[19]~70_combout\,
	cout => \buzzer_module|counter[19]~71\);

-- Location: FF_X32_Y9_N7
\buzzer_module|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[19]~70_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(19));

-- Location: LCCOMB_X32_Y9_N8
\buzzer_module|counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[20]~72_combout\ = (\buzzer_module|counter\(20) & (\buzzer_module|counter[19]~71\ $ (GND))) # (!\buzzer_module|counter\(20) & (!\buzzer_module|counter[19]~71\ & VCC))
-- \buzzer_module|counter[20]~73\ = CARRY((\buzzer_module|counter\(20) & !\buzzer_module|counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(20),
	datad => VCC,
	cin => \buzzer_module|counter[19]~71\,
	combout => \buzzer_module|counter[20]~72_combout\,
	cout => \buzzer_module|counter[20]~73\);

-- Location: FF_X32_Y9_N9
\buzzer_module|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[20]~72_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(20));

-- Location: LCCOMB_X32_Y9_N10
\buzzer_module|counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[21]~74_combout\ = (\buzzer_module|counter\(21) & (!\buzzer_module|counter[20]~73\)) # (!\buzzer_module|counter\(21) & ((\buzzer_module|counter[20]~73\) # (GND)))
-- \buzzer_module|counter[21]~75\ = CARRY((!\buzzer_module|counter[20]~73\) # (!\buzzer_module|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(21),
	datad => VCC,
	cin => \buzzer_module|counter[20]~73\,
	combout => \buzzer_module|counter[21]~74_combout\,
	cout => \buzzer_module|counter[21]~75\);

-- Location: FF_X32_Y9_N11
\buzzer_module|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[21]~74_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(21));

-- Location: LCCOMB_X32_Y9_N12
\buzzer_module|counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[22]~76_combout\ = (\buzzer_module|counter\(22) & (\buzzer_module|counter[21]~75\ $ (GND))) # (!\buzzer_module|counter\(22) & (!\buzzer_module|counter[21]~75\ & VCC))
-- \buzzer_module|counter[22]~77\ = CARRY((\buzzer_module|counter\(22) & !\buzzer_module|counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(22),
	datad => VCC,
	cin => \buzzer_module|counter[21]~75\,
	combout => \buzzer_module|counter[22]~76_combout\,
	cout => \buzzer_module|counter[22]~77\);

-- Location: FF_X32_Y9_N13
\buzzer_module|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[22]~76_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(22));

-- Location: LCCOMB_X32_Y9_N14
\buzzer_module|counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[23]~78_combout\ = (\buzzer_module|counter\(23) & (!\buzzer_module|counter[22]~77\)) # (!\buzzer_module|counter\(23) & ((\buzzer_module|counter[22]~77\) # (GND)))
-- \buzzer_module|counter[23]~79\ = CARRY((!\buzzer_module|counter[22]~77\) # (!\buzzer_module|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(23),
	datad => VCC,
	cin => \buzzer_module|counter[22]~77\,
	combout => \buzzer_module|counter[23]~78_combout\,
	cout => \buzzer_module|counter[23]~79\);

-- Location: FF_X32_Y9_N15
\buzzer_module|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[23]~78_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(23));

-- Location: LCCOMB_X32_Y9_N16
\buzzer_module|counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[24]~80_combout\ = (\buzzer_module|counter\(24) & (\buzzer_module|counter[23]~79\ $ (GND))) # (!\buzzer_module|counter\(24) & (!\buzzer_module|counter[23]~79\ & VCC))
-- \buzzer_module|counter[24]~81\ = CARRY((\buzzer_module|counter\(24) & !\buzzer_module|counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(24),
	datad => VCC,
	cin => \buzzer_module|counter[23]~79\,
	combout => \buzzer_module|counter[24]~80_combout\,
	cout => \buzzer_module|counter[24]~81\);

-- Location: FF_X32_Y9_N17
\buzzer_module|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[24]~80_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(24));

-- Location: LCCOMB_X32_Y9_N18
\buzzer_module|counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[25]~82_combout\ = (\buzzer_module|counter\(25) & (!\buzzer_module|counter[24]~81\)) # (!\buzzer_module|counter\(25) & ((\buzzer_module|counter[24]~81\) # (GND)))
-- \buzzer_module|counter[25]~83\ = CARRY((!\buzzer_module|counter[24]~81\) # (!\buzzer_module|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(25),
	datad => VCC,
	cin => \buzzer_module|counter[24]~81\,
	combout => \buzzer_module|counter[25]~82_combout\,
	cout => \buzzer_module|counter[25]~83\);

-- Location: FF_X32_Y9_N19
\buzzer_module|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[25]~82_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(25));

-- Location: LCCOMB_X32_Y9_N20
\buzzer_module|counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[26]~84_combout\ = (\buzzer_module|counter\(26) & (\buzzer_module|counter[25]~83\ $ (GND))) # (!\buzzer_module|counter\(26) & (!\buzzer_module|counter[25]~83\ & VCC))
-- \buzzer_module|counter[26]~85\ = CARRY((\buzzer_module|counter\(26) & !\buzzer_module|counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(26),
	datad => VCC,
	cin => \buzzer_module|counter[25]~83\,
	combout => \buzzer_module|counter[26]~84_combout\,
	cout => \buzzer_module|counter[26]~85\);

-- Location: FF_X32_Y9_N21
\buzzer_module|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[26]~84_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(26));

-- Location: LCCOMB_X32_Y9_N22
\buzzer_module|counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[27]~86_combout\ = (\buzzer_module|counter\(27) & (!\buzzer_module|counter[26]~85\)) # (!\buzzer_module|counter\(27) & ((\buzzer_module|counter[26]~85\) # (GND)))
-- \buzzer_module|counter[27]~87\ = CARRY((!\buzzer_module|counter[26]~85\) # (!\buzzer_module|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(27),
	datad => VCC,
	cin => \buzzer_module|counter[26]~85\,
	combout => \buzzer_module|counter[27]~86_combout\,
	cout => \buzzer_module|counter[27]~87\);

-- Location: FF_X32_Y9_N23
\buzzer_module|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[27]~86_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(27));

-- Location: LCCOMB_X32_Y9_N24
\buzzer_module|counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[28]~88_combout\ = (\buzzer_module|counter\(28) & (\buzzer_module|counter[27]~87\ $ (GND))) # (!\buzzer_module|counter\(28) & (!\buzzer_module|counter[27]~87\ & VCC))
-- \buzzer_module|counter[28]~89\ = CARRY((\buzzer_module|counter\(28) & !\buzzer_module|counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(28),
	datad => VCC,
	cin => \buzzer_module|counter[27]~87\,
	combout => \buzzer_module|counter[28]~88_combout\,
	cout => \buzzer_module|counter[28]~89\);

-- Location: FF_X32_Y9_N25
\buzzer_module|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[28]~88_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(28));

-- Location: LCCOMB_X32_Y9_N26
\buzzer_module|counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[29]~90_combout\ = (\buzzer_module|counter\(29) & (!\buzzer_module|counter[28]~89\)) # (!\buzzer_module|counter\(29) & ((\buzzer_module|counter[28]~89\) # (GND)))
-- \buzzer_module|counter[29]~91\ = CARRY((!\buzzer_module|counter[28]~89\) # (!\buzzer_module|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(29),
	datad => VCC,
	cin => \buzzer_module|counter[28]~89\,
	combout => \buzzer_module|counter[29]~90_combout\,
	cout => \buzzer_module|counter[29]~91\);

-- Location: FF_X32_Y9_N27
\buzzer_module|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[29]~90_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(29));

-- Location: LCCOMB_X32_Y9_N28
\buzzer_module|counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[30]~92_combout\ = (\buzzer_module|counter\(30) & (\buzzer_module|counter[29]~91\ $ (GND))) # (!\buzzer_module|counter\(30) & (!\buzzer_module|counter[29]~91\ & VCC))
-- \buzzer_module|counter[30]~93\ = CARRY((\buzzer_module|counter\(30) & !\buzzer_module|counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \buzzer_module|counter\(30),
	datad => VCC,
	cin => \buzzer_module|counter[29]~91\,
	combout => \buzzer_module|counter[30]~92_combout\,
	cout => \buzzer_module|counter[30]~93\);

-- Location: FF_X32_Y9_N29
\buzzer_module|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[30]~92_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(30));

-- Location: LCCOMB_X32_Y9_N30
\buzzer_module|counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|counter[31]~94_combout\ = \buzzer_module|counter\(31) $ (\buzzer_module|counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(31),
	cin => \buzzer_module|counter[30]~93\,
	combout => \buzzer_module|counter[31]~94_combout\);

-- Location: FF_X32_Y9_N31
\buzzer_module|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|counter[31]~94_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	ena => \buzzer_module|counter[17]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|counter\(31));

-- Location: LCCOMB_X31_Y10_N14
\buzzer_module|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~0_combout\ = ((!\buzzer_module|counter\(6) & ((!\buzzer_module|counter\(4)) # (!\buzzer_module|counter\(5))))) # (!\buzzer_module|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(5),
	datab => \buzzer_module|counter\(4),
	datac => \buzzer_module|counter\(7),
	datad => \buzzer_module|counter\(6),
	combout => \buzzer_module|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y10_N4
\buzzer_module|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~1_combout\ = ((!\buzzer_module|counter\(8) & (\buzzer_module|LessThan0~0_combout\ & !\buzzer_module|counter\(9)))) # (!\buzzer_module|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(10),
	datab => \buzzer_module|counter\(8),
	datac => \buzzer_module|LessThan0~0_combout\,
	datad => \buzzer_module|counter\(9),
	combout => \buzzer_module|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y10_N10
\buzzer_module|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~4_combout\ = (!\buzzer_module|counter\(21) & (!\buzzer_module|counter\(20) & (!\buzzer_module|counter\(22) & !\buzzer_module|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(21),
	datab => \buzzer_module|counter\(20),
	datac => \buzzer_module|counter\(22),
	datad => \buzzer_module|counter\(19),
	combout => \buzzer_module|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y10_N24
\buzzer_module|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~5_combout\ = (!\buzzer_module|counter\(23) & (!\buzzer_module|counter\(24) & (!\buzzer_module|counter\(25) & !\buzzer_module|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(23),
	datab => \buzzer_module|counter\(24),
	datac => \buzzer_module|counter\(25),
	datad => \buzzer_module|counter\(26),
	combout => \buzzer_module|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y10_N8
\buzzer_module|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~3_combout\ = (!\buzzer_module|counter\(15) & (!\buzzer_module|counter\(16) & (!\buzzer_module|counter\(17) & !\buzzer_module|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(15),
	datab => \buzzer_module|counter\(16),
	datac => \buzzer_module|counter\(17),
	datad => \buzzer_module|counter\(18),
	combout => \buzzer_module|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y10_N18
\buzzer_module|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~6_combout\ = (!\buzzer_module|counter\(27) & (!\buzzer_module|counter\(30) & (!\buzzer_module|counter\(29) & !\buzzer_module|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|counter\(27),
	datab => \buzzer_module|counter\(30),
	datac => \buzzer_module|counter\(29),
	datad => \buzzer_module|counter\(28),
	combout => \buzzer_module|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y10_N12
\buzzer_module|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~7_combout\ = (\buzzer_module|LessThan0~4_combout\ & (\buzzer_module|LessThan0~5_combout\ & (\buzzer_module|LessThan0~3_combout\ & \buzzer_module|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|LessThan0~4_combout\,
	datab => \buzzer_module|LessThan0~5_combout\,
	datac => \buzzer_module|LessThan0~3_combout\,
	datad => \buzzer_module|LessThan0~6_combout\,
	combout => \buzzer_module|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y10_N22
\buzzer_module|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|LessThan0~8_combout\ = (\buzzer_module|counter\(31)) # ((\buzzer_module|LessThan0~2_combout\ & (\buzzer_module|LessThan0~1_combout\ & \buzzer_module|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|LessThan0~2_combout\,
	datab => \buzzer_module|counter\(31),
	datac => \buzzer_module|LessThan0~1_combout\,
	datad => \buzzer_module|LessThan0~7_combout\,
	combout => \buzzer_module|LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y10_N20
\buzzer_module|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer_module|state~0_combout\ = (\buzzer_module|LessThan0~8_combout\ & !\buzzer_module|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buzzer_module|LessThan0~8_combout\,
	datac => \buzzer_module|state~q\,
	combout => \buzzer_module|state~0_combout\);

-- Location: FF_X31_Y10_N21
\buzzer_module|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockmodifier_module|clk_out_intem~clkctrl_outclk\,
	d => \buzzer_module|state~0_combout\,
	sclr => \controller_module|ALT_INV_en_buzz~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_module|state~q\);

-- Location: LCCOMB_X17_Y12_N28
\uart_module|u_TX|r_INDEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~0_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & (\uart_module|u_TX|r_INDEX\(1) $ (\uart_module|u_TX|r_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(1),
	datad => \uart_module|u_TX|r_INDEX\(0),
	combout => \uart_module|u_TX|r_INDEX~0_combout\);

-- Location: LCCOMB_X17_Y9_N0
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

-- Location: LCCOMB_X17_Y9_N6
\uart_module|u_TX|r_PRESCALER[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[3]~15_combout\ = (\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER[2]~14\)) # (!\uart_module|u_TX|r_PRESCALER\(3) & ((\uart_module|u_TX|r_PRESCALER[2]~14\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[3]~16\ = CARRY((!\uart_module|u_TX|r_PRESCALER[2]~14\) # (!\uart_module|u_TX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(3),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[2]~14\,
	combout => \uart_module|u_TX|r_PRESCALER[3]~15_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[3]~16\);

-- Location: LCCOMB_X17_Y9_N8
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

-- Location: LCCOMB_X17_Y12_N2
\uart_module|u_TX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan1~0_combout\ = ((!\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_INDEX\(2) & !\uart_module|u_TX|r_INDEX\(1)))) # (!\uart_module|u_TX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(3),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(2),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y9_N24
\uart_module|u_TX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~1_combout\ = (\uart_module|u_TX|r_PRESCALER\(6) & (\uart_module|u_TX|r_PRESCALER\(7) & (\uart_module|u_TX|r_PRESCALER\(4) & !\uart_module|u_TX|r_PRESCALER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(6),
	datab => \uart_module|u_TX|r_PRESCALER\(7),
	datac => \uart_module|u_TX|r_PRESCALER\(4),
	datad => \uart_module|u_TX|r_PRESCALER\(5),
	combout => \uart_module|u_TX|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y9_N28
\uart_module|u_TX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~2_combout\ = (!\uart_module|u_TX|r_PRESCALER\(8) & (\uart_module|u_TX|Equal0~0_combout\ & \uart_module|u_TX|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datac => \uart_module|u_TX|Equal0~0_combout\,
	datad => \uart_module|u_TX|Equal0~1_combout\,
	combout => \uart_module|u_TX|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y10_N2
\uart_module|u_TX|o_BUSY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|o_BUSY~0_combout\ = (\uart_module|u_TX|o_BUSY~q\ & (((\uart_module|u_TX|LessThan1~0_combout\) # (!\uart_module|u_TX|s_TRANSMITING_FLAG~q\)))) # (!\uart_module|u_TX|o_BUSY~q\ & (\uart_module|s_TX_START~q\ & 
-- (!\uart_module|u_TX|s_TRANSMITING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|s_TX_START~q\,
	datab => \uart_module|u_TX|o_BUSY~q\,
	datac => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	datad => \uart_module|u_TX|LessThan1~0_combout\,
	combout => \uart_module|u_TX|o_BUSY~0_combout\);

-- Location: LCCOMB_X18_Y10_N28
\uart_module|u_TX|o_BUSY~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|o_BUSY~1_combout\ = (\uart_module|u_TX|o_BUSY~0_combout\) # ((!\uart_module|u_TX|Equal0~2_combout\ & \uart_module|u_TX|o_BUSY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|Equal0~2_combout\,
	datac => \uart_module|u_TX|o_BUSY~q\,
	datad => \uart_module|u_TX|o_BUSY~0_combout\,
	combout => \uart_module|u_TX|o_BUSY~1_combout\);

-- Location: FF_X18_Y10_N29
\uart_module|u_TX|o_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|o_BUSY~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|o_BUSY~q\);

-- Location: LCCOMB_X18_Y10_N26
\uart_module|transmission~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|transmission~0_combout\ = (!\uart_module|u_TX|o_BUSY~q\ & \imgprocessing_module|processing_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|o_BUSY~q\,
	datad => \imgprocessing_module|processing_done~q\,
	combout => \uart_module|transmission~0_combout\);

-- Location: LCCOMB_X18_Y10_N4
\uart_module|s_TX_START~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_TX_START~feeder_combout\ = \uart_module|transmission~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|transmission~0_combout\,
	combout => \uart_module|s_TX_START~feeder_combout\);

-- Location: FF_X18_Y10_N5
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

-- Location: LCCOMB_X18_Y10_N30
\uart_module|u_TX|s_TRANSMITING_FLAG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\ = (\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & ((\uart_module|u_TX|LessThan1~0_combout\) # ((!\uart_module|u_TX|Equal0~2_combout\)))) # (!\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & 
-- (((\uart_module|s_TX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|LessThan1~0_combout\,
	datab => \uart_module|u_TX|Equal0~2_combout\,
	datac => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	datad => \uart_module|s_TX_START~q\,
	combout => \uart_module|u_TX|s_TRANSMITING_FLAG~0_combout\);

-- Location: FF_X18_Y10_N31
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

-- Location: FF_X17_Y9_N9
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

-- Location: LCCOMB_X17_Y9_N10
\uart_module|u_TX|r_PRESCALER[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[5]~19_combout\ = (\uart_module|u_TX|r_PRESCALER\(5) & (!\uart_module|u_TX|r_PRESCALER[4]~18\)) # (!\uart_module|u_TX|r_PRESCALER\(5) & ((\uart_module|u_TX|r_PRESCALER[4]~18\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[5]~20\ = CARRY((!\uart_module|u_TX|r_PRESCALER[4]~18\) # (!\uart_module|u_TX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(5),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[4]~18\,
	combout => \uart_module|u_TX|r_PRESCALER[5]~19_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[5]~20\);

-- Location: FF_X17_Y9_N11
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

-- Location: LCCOMB_X17_Y9_N12
\uart_module|u_TX|r_PRESCALER[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[6]~21_combout\ = (\uart_module|u_TX|r_PRESCALER\(6) & (\uart_module|u_TX|r_PRESCALER[5]~20\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(6) & (!\uart_module|u_TX|r_PRESCALER[5]~20\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[6]~22\ = CARRY((\uart_module|u_TX|r_PRESCALER\(6) & !\uart_module|u_TX|r_PRESCALER[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(6),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[5]~20\,
	combout => \uart_module|u_TX|r_PRESCALER[6]~21_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[6]~22\);

-- Location: FF_X17_Y9_N13
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

-- Location: LCCOMB_X17_Y9_N14
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

-- Location: FF_X17_Y9_N15
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

-- Location: LCCOMB_X17_Y9_N16
\uart_module|u_TX|r_PRESCALER[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[8]~25_combout\ = \uart_module|u_TX|r_PRESCALER\(8) $ (!\uart_module|u_TX|r_PRESCALER[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	cin => \uart_module|u_TX|r_PRESCALER[7]~24\,
	combout => \uart_module|u_TX|r_PRESCALER[8]~25_combout\);

-- Location: FF_X17_Y9_N17
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

-- Location: LCCOMB_X17_Y9_N22
\uart_module|u_TX|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~0_combout\ = (!\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER\(1) & (!\uart_module|u_TX|r_PRESCALER\(2) & !\uart_module|u_TX|r_PRESCALER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(3),
	datab => \uart_module|u_TX|r_PRESCALER\(1),
	datac => \uart_module|u_TX|r_PRESCALER\(2),
	datad => \uart_module|u_TX|r_PRESCALER\(0),
	combout => \uart_module|u_TX|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y9_N20
\uart_module|u_TX|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~1_combout\ = (!\uart_module|u_TX|r_PRESCALER\(6) & (((\uart_module|u_TX|LessThan0~0_combout\) # (!\uart_module|u_TX|r_PRESCALER\(5))) # (!\uart_module|u_TX|r_PRESCALER\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(6),
	datab => \uart_module|u_TX|r_PRESCALER\(4),
	datac => \uart_module|u_TX|LessThan0~0_combout\,
	datad => \uart_module|u_TX|r_PRESCALER\(5),
	combout => \uart_module|u_TX|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y9_N18
\uart_module|u_TX|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|LessThan0~2_combout\ = (\uart_module|u_TX|r_PRESCALER\(8) & (\uart_module|u_TX|r_PRESCALER\(7) & !\uart_module|u_TX|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datac => \uart_module|u_TX|r_PRESCALER\(7),
	datad => \uart_module|u_TX|LessThan0~1_combout\,
	combout => \uart_module|u_TX|LessThan0~2_combout\);

-- Location: FF_X17_Y9_N1
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

-- Location: LCCOMB_X17_Y9_N2
\uart_module|u_TX|r_PRESCALER[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[1]~11_combout\ = (\uart_module|u_TX|r_PRESCALER\(1) & (!\uart_module|u_TX|r_PRESCALER[0]~10\)) # (!\uart_module|u_TX|r_PRESCALER\(1) & ((\uart_module|u_TX|r_PRESCALER[0]~10\) # (GND)))
-- \uart_module|u_TX|r_PRESCALER[1]~12\ = CARRY((!\uart_module|u_TX|r_PRESCALER[0]~10\) # (!\uart_module|u_TX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(1),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[0]~10\,
	combout => \uart_module|u_TX|r_PRESCALER[1]~11_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[1]~12\);

-- Location: FF_X17_Y9_N3
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

-- Location: LCCOMB_X17_Y9_N4
\uart_module|u_TX|r_PRESCALER[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_PRESCALER[2]~13_combout\ = (\uart_module|u_TX|r_PRESCALER\(2) & (\uart_module|u_TX|r_PRESCALER[1]~12\ $ (GND))) # (!\uart_module|u_TX|r_PRESCALER\(2) & (!\uart_module|u_TX|r_PRESCALER[1]~12\ & VCC))
-- \uart_module|u_TX|r_PRESCALER[2]~14\ = CARRY((\uart_module|u_TX|r_PRESCALER\(2) & !\uart_module|u_TX|r_PRESCALER[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_PRESCALER\(2),
	datad => VCC,
	cin => \uart_module|u_TX|r_PRESCALER[1]~12\,
	combout => \uart_module|u_TX|r_PRESCALER[2]~13_combout\,
	cout => \uart_module|u_TX|r_PRESCALER[2]~14\);

-- Location: FF_X17_Y9_N5
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

-- Location: FF_X17_Y9_N7
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

-- Location: LCCOMB_X17_Y9_N26
\uart_module|u_TX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Equal0~0_combout\ = (\uart_module|u_TX|r_PRESCALER\(3) & (!\uart_module|u_TX|r_PRESCALER\(1) & (\uart_module|u_TX|r_PRESCALER\(2) & !\uart_module|u_TX|r_PRESCALER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_PRESCALER\(3),
	datab => \uart_module|u_TX|r_PRESCALER\(1),
	datac => \uart_module|u_TX|r_PRESCALER\(2),
	datad => \uart_module|u_TX|r_PRESCALER\(0),
	combout => \uart_module|u_TX|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\uart_module|u_TX|o_TX_LINE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|o_TX_LINE~0_combout\ = (\uart_module|u_TX|Equal0~0_combout\ & (!\uart_module|u_TX|r_PRESCALER\(8) & (\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & \uart_module|u_TX|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|Equal0~0_combout\,
	datab => \uart_module|u_TX|r_PRESCALER\(8),
	datac => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	datad => \uart_module|u_TX|Equal0~1_combout\,
	combout => \uart_module|u_TX|o_TX_LINE~0_combout\);

-- Location: FF_X17_Y12_N29
\uart_module|u_TX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~0_combout\,
	ena => \uart_module|u_TX|o_TX_LINE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(1));

-- Location: LCCOMB_X17_Y12_N16
\uart_module|u_TX|r_INDEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~1_combout\ = (!\uart_module|u_TX|r_INDEX\(0) & (((!\uart_module|u_TX|r_INDEX\(2) & !\uart_module|u_TX|r_INDEX\(1))) # (!\uart_module|u_TX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(2),
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|r_INDEX\(0),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|r_INDEX~1_combout\);

-- Location: FF_X17_Y12_N17
\uart_module|u_TX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~1_combout\,
	ena => \uart_module|u_TX|o_TX_LINE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(0));

-- Location: LCCOMB_X17_Y12_N22
\uart_module|u_TX|r_INDEX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~2_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & (\uart_module|u_TX|r_INDEX\(2) $ (((\uart_module|u_TX|r_INDEX\(0) & \uart_module|u_TX|r_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(3),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(2),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|r_INDEX~2_combout\);

-- Location: FF_X17_Y12_N23
\uart_module|u_TX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~2_combout\,
	ena => \uart_module|u_TX|o_TX_LINE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(2));

-- Location: LCCOMB_X17_Y12_N0
\uart_module|u_TX|r_INDEX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_INDEX~3_combout\ = (\uart_module|u_TX|r_INDEX\(2) & (\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_INDEX\(3) & \uart_module|u_TX|r_INDEX\(1)))) # (!\uart_module|u_TX|r_INDEX\(2) & (!\uart_module|u_TX|r_INDEX\(0) & 
-- (\uart_module|u_TX|r_INDEX\(3) & !\uart_module|u_TX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(2),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_INDEX\(3),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|r_INDEX~3_combout\);

-- Location: FF_X17_Y12_N1
\uart_module|u_TX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_INDEX~3_combout\,
	ena => \uart_module|u_TX|o_TX_LINE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_INDEX\(3));

-- Location: LCCOMB_X14_Y10_N14
\uart_module|pixval_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|pixval_count[0]~1_combout\ = \uart_module|pixval_count\(0) $ (((!\uart_module|pixval_count\(1) & (\imgprocessing_module|processing_done~q\ & !\uart_module|u_TX|o_BUSY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \imgprocessing_module|processing_done~q\,
	datac => \uart_module|pixval_count\(0),
	datad => \uart_module|u_TX|o_BUSY~q\,
	combout => \uart_module|pixval_count[0]~1_combout\);

-- Location: FF_X14_Y10_N15
\uart_module|pixval_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|pixval_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|pixval_count\(0));

-- Location: LCCOMB_X14_Y10_N22
\uart_module|pixval_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|pixval_count[1]~0_combout\ = (\imgprocessing_module|processing_done~q\ & ((\uart_module|u_TX|o_BUSY~q\ & ((\uart_module|pixval_count\(1)))) # (!\uart_module|u_TX|o_BUSY~q\ & (\uart_module|pixval_count\(0))))) # 
-- (!\imgprocessing_module|processing_done~q\ & (((\uart_module|pixval_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \imgprocessing_module|processing_done~q\,
	datac => \uart_module|pixval_count\(1),
	datad => \uart_module|u_TX|o_BUSY~q\,
	combout => \uart_module|pixval_count[1]~0_combout\);

-- Location: FF_X14_Y10_N23
\uart_module|pixval_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|pixval_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|pixval_count\(1));

-- Location: LCCOMB_X13_Y10_N0
\uart_module|s_mem_addr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_mem_addr~0_combout\ = (!\uart_module|pixval_count\(0) & \uart_module|pixval_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|pixval_count\(0),
	datad => \uart_module|pixval_count\(1),
	combout => \uart_module|s_mem_addr~0_combout\);

-- Location: LCCOMB_X13_Y10_N2
\uart_module|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~3_combout\ = \uart_module|s_mem_addr\(0) $ (VCC)
-- \uart_module|Add1~4\ = CARRY(\uart_module|s_mem_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_mem_addr\(0),
	datad => VCC,
	combout => \uart_module|Add1~3_combout\,
	cout => \uart_module|Add1~4\);

-- Location: LCCOMB_X13_Y10_N4
\uart_module|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~6_combout\ = (\uart_module|s_mem_addr\(1) & (!\uart_module|Add1~4\)) # (!\uart_module|s_mem_addr\(1) & ((\uart_module|Add1~4\) # (GND)))
-- \uart_module|Add1~7\ = CARRY((!\uart_module|Add1~4\) # (!\uart_module|s_mem_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_mem_addr\(1),
	datad => VCC,
	cin => \uart_module|Add1~4\,
	combout => \uart_module|Add1~6_combout\,
	cout => \uart_module|Add1~7\);

-- Location: LCCOMB_X13_Y10_N24
\uart_module|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~8_combout\ = (\uart_module|Add1~2_combout\ & ((\uart_module|s_mem_addr\(1)) # ((\uart_module|Add1~6_combout\ & \uart_module|s_mem_addr~0_combout\)))) # (!\uart_module|Add1~2_combout\ & (\uart_module|Add1~6_combout\ & 
-- ((\uart_module|s_mem_addr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Add1~2_combout\,
	datab => \uart_module|Add1~6_combout\,
	datac => \uart_module|s_mem_addr\(1),
	datad => \uart_module|s_mem_addr~0_combout\,
	combout => \uart_module|Add1~8_combout\);

-- Location: FF_X13_Y10_N25
\uart_module|s_mem_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|Add1~8_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_mem_addr\(1));

-- Location: LCCOMB_X13_Y10_N6
\uart_module|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~9_combout\ = (\uart_module|s_mem_addr\(2) & (\uart_module|Add1~7\ $ (GND))) # (!\uart_module|s_mem_addr\(2) & (!\uart_module|Add1~7\ & VCC))
-- \uart_module|Add1~10\ = CARRY((\uart_module|s_mem_addr\(2) & !\uart_module|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_mem_addr\(2),
	datad => VCC,
	cin => \uart_module|Add1~7\,
	combout => \uart_module|Add1~9_combout\,
	cout => \uart_module|Add1~10\);

-- Location: LCCOMB_X13_Y10_N20
\uart_module|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~11_combout\ = (\uart_module|Add1~2_combout\ & ((\uart_module|s_mem_addr\(2)) # ((\uart_module|Add1~9_combout\ & \uart_module|s_mem_addr~0_combout\)))) # (!\uart_module|Add1~2_combout\ & (((\uart_module|Add1~9_combout\ & 
-- \uart_module|s_mem_addr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Add1~2_combout\,
	datab => \uart_module|s_mem_addr\(2),
	datac => \uart_module|Add1~9_combout\,
	datad => \uart_module|s_mem_addr~0_combout\,
	combout => \uart_module|Add1~11_combout\);

-- Location: FF_X13_Y10_N19
\uart_module|s_mem_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|Add1~11_combout\,
	sload => VCC,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_mem_addr\(2));

-- Location: LCCOMB_X13_Y10_N8
\uart_module|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~12_combout\ = (\uart_module|s_mem_addr\(3) & (!\uart_module|Add1~10\)) # (!\uart_module|s_mem_addr\(3) & ((\uart_module|Add1~10\) # (GND)))
-- \uart_module|Add1~13\ = CARRY((!\uart_module|Add1~10\) # (!\uart_module|s_mem_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_mem_addr\(3),
	datad => VCC,
	cin => \uart_module|Add1~10\,
	combout => \uart_module|Add1~12_combout\,
	cout => \uart_module|Add1~13\);

-- Location: LCCOMB_X13_Y10_N28
\uart_module|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~14_combout\ = (\uart_module|Add1~2_combout\ & ((\uart_module|s_mem_addr\(3)) # ((\uart_module|Add1~12_combout\ & \uart_module|s_mem_addr~0_combout\)))) # (!\uart_module|Add1~2_combout\ & (\uart_module|Add1~12_combout\ & 
-- ((\uart_module|s_mem_addr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Add1~2_combout\,
	datab => \uart_module|Add1~12_combout\,
	datac => \uart_module|s_mem_addr\(3),
	datad => \uart_module|s_mem_addr~0_combout\,
	combout => \uart_module|Add1~14_combout\);

-- Location: FF_X13_Y10_N29
\uart_module|s_mem_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|Add1~14_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_mem_addr\(3));

-- Location: LCCOMB_X13_Y10_N10
\uart_module|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~15_combout\ = (\uart_module|s_mem_addr\(4) & (\uart_module|Add1~13\ $ (GND))) # (!\uart_module|s_mem_addr\(4) & (!\uart_module|Add1~13\ & VCC))
-- \uart_module|Add1~16\ = CARRY((\uart_module|s_mem_addr\(4) & !\uart_module|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_mem_addr\(4),
	datad => VCC,
	cin => \uart_module|Add1~13\,
	combout => \uart_module|Add1~15_combout\,
	cout => \uart_module|Add1~16\);

-- Location: LCCOMB_X13_Y10_N16
\uart_module|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~17_combout\ = (\uart_module|Add1~2_combout\ & ((\uart_module|s_mem_addr\(4)) # ((\uart_module|s_mem_addr~0_combout\ & \uart_module|Add1~15_combout\)))) # (!\uart_module|Add1~2_combout\ & (\uart_module|s_mem_addr~0_combout\ & 
-- ((\uart_module|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Add1~2_combout\,
	datab => \uart_module|s_mem_addr~0_combout\,
	datac => \uart_module|s_mem_addr\(4),
	datad => \uart_module|Add1~15_combout\,
	combout => \uart_module|Add1~17_combout\);

-- Location: FF_X13_Y10_N17
\uart_module|s_mem_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|Add1~17_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_mem_addr\(4));

-- Location: FF_X13_Y10_N15
\uart_module|s_mem_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|Add1~21_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_mem_addr\(5));

-- Location: LCCOMB_X13_Y10_N30
\uart_module|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~2_combout\ = (!\uart_module|s_mem_addr~0_combout\ & ((\uart_module|LessThan0~0_combout\) # ((!\uart_module|s_mem_addr\(5)) # (!\uart_module|s_mem_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|LessThan0~0_combout\,
	datab => \uart_module|s_mem_addr\(4),
	datac => \uart_module|s_mem_addr\(5),
	datad => \uart_module|s_mem_addr~0_combout\,
	combout => \uart_module|Add1~2_combout\);

-- Location: LCCOMB_X13_Y10_N22
\uart_module|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~5_combout\ = (\uart_module|Add1~2_combout\ & ((\uart_module|s_mem_addr\(0)) # ((\uart_module|s_mem_addr~0_combout\ & \uart_module|Add1~3_combout\)))) # (!\uart_module|Add1~2_combout\ & (\uart_module|s_mem_addr~0_combout\ & 
-- ((\uart_module|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Add1~2_combout\,
	datab => \uart_module|s_mem_addr~0_combout\,
	datac => \uart_module|s_mem_addr\(0),
	datad => \uart_module|Add1~3_combout\,
	combout => \uart_module|Add1~5_combout\);

-- Location: FF_X13_Y10_N23
\uart_module|s_mem_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|Add1~5_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_mem_addr\(0));

-- Location: LCCOMB_X13_Y10_N18
\uart_module|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|LessThan0~0_combout\ = (((!\uart_module|s_mem_addr\(3)) # (!\uart_module|s_mem_addr\(2))) # (!\uart_module|s_mem_addr\(1))) # (!\uart_module|s_mem_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|s_mem_addr\(0),
	datab => \uart_module|s_mem_addr\(1),
	datac => \uart_module|s_mem_addr\(2),
	datad => \uart_module|s_mem_addr\(3),
	combout => \uart_module|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y10_N26
\uart_module|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~18_combout\ = (\uart_module|s_mem_addr\(5) & (!\uart_module|s_mem_addr~0_combout\ & ((\uart_module|LessThan0~0_combout\) # (!\uart_module|s_mem_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|LessThan0~0_combout\,
	datab => \uart_module|s_mem_addr\(4),
	datac => \uart_module|s_mem_addr\(5),
	datad => \uart_module|s_mem_addr~0_combout\,
	combout => \uart_module|Add1~18_combout\);

-- Location: LCCOMB_X13_Y10_N12
\uart_module|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~19_combout\ = \uart_module|s_mem_addr\(5) $ (\uart_module|Add1~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|s_mem_addr\(5),
	cin => \uart_module|Add1~16\,
	combout => \uart_module|Add1~19_combout\);

-- Location: LCCOMB_X13_Y10_N14
\uart_module|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Add1~21_combout\ = (\uart_module|Add1~18_combout\) # ((\uart_module|pixval_count\(1) & (!\uart_module|pixval_count\(0) & \uart_module|Add1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Add1~18_combout\,
	datab => \uart_module|pixval_count\(1),
	datac => \uart_module|pixval_count\(0),
	datad => \uart_module|Add1~19_combout\,
	combout => \uart_module|Add1~21_combout\);

-- Location: LCCOMB_X18_Y10_N12
\imgprocessing_module|temp_img_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[12]~feeder_combout\ = \uart_module|Add1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|Add1~21_combout\,
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X18_Y10_N13
\imgprocessing_module|temp_img_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[12]~feeder_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(12));

-- Location: FF_X18_Y10_N19
\imgprocessing_module|temp_img_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|pixelcounter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(11));

-- Location: FF_X18_Y10_N23
\imgprocessing_module|temp_img_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|Add1~17_combout\,
	sload => VCC,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(10));

-- Location: LCCOMB_X19_Y10_N6
\imgprocessing_module|temp_img_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[9]~feeder_combout\ = \imgprocessing_module|pixelcounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|pixelcounter\(4),
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X19_Y10_N7
\imgprocessing_module|temp_img_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(9));

-- Location: LCCOMB_X18_Y10_N22
\uart_module|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mux0~2_combout\ = (\imgprocessing_module|temp_img_rtl_0_bypass\(12) & (\imgprocessing_module|temp_img_rtl_0_bypass\(11) & (\imgprocessing_module|temp_img_rtl_0_bypass\(10) $ (!\imgprocessing_module|temp_img_rtl_0_bypass\(9))))) # 
-- (!\imgprocessing_module|temp_img_rtl_0_bypass\(12) & (!\imgprocessing_module|temp_img_rtl_0_bypass\(11) & (\imgprocessing_module|temp_img_rtl_0_bypass\(10) $ (!\imgprocessing_module|temp_img_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0_bypass\(12),
	datab => \imgprocessing_module|temp_img_rtl_0_bypass\(11),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(10),
	datad => \imgprocessing_module|temp_img_rtl_0_bypass\(9),
	combout => \uart_module|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y10_N6
\imgprocessing_module|temp_img_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[8]~feeder_combout\ = \uart_module|Add1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|Add1~14_combout\,
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X18_Y10_N7
\imgprocessing_module|temp_img_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[8]~feeder_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(8));

-- Location: LCCOMB_X18_Y10_N0
\imgprocessing_module|temp_img_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[7]~feeder_combout\ = \imgprocessing_module|pixelcounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|pixelcounter\(3),
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X18_Y10_N1
\imgprocessing_module|temp_img_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(7));

-- Location: FF_X18_Y10_N25
\imgprocessing_module|temp_img_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|Add1~11_combout\,
	sload => VCC,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(6));

-- Location: LCCOMB_X19_Y10_N24
\imgprocessing_module|temp_img_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[5]~feeder_combout\ = \imgprocessing_module|pixelcounter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|pixelcounter\(2),
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X19_Y10_N25
\imgprocessing_module|temp_img_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(5));

-- Location: LCCOMB_X18_Y10_N24
\uart_module|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mux0~1_combout\ = (\imgprocessing_module|temp_img_rtl_0_bypass\(8) & (\imgprocessing_module|temp_img_rtl_0_bypass\(7) & (\imgprocessing_module|temp_img_rtl_0_bypass\(6) $ (!\imgprocessing_module|temp_img_rtl_0_bypass\(5))))) # 
-- (!\imgprocessing_module|temp_img_rtl_0_bypass\(8) & (!\imgprocessing_module|temp_img_rtl_0_bypass\(7) & (\imgprocessing_module|temp_img_rtl_0_bypass\(6) $ (!\imgprocessing_module|temp_img_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0_bypass\(8),
	datab => \imgprocessing_module|temp_img_rtl_0_bypass\(7),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(6),
	datad => \imgprocessing_module|temp_img_rtl_0_bypass\(5),
	combout => \uart_module|Mux0~1_combout\);

-- Location: FF_X18_Y10_N15
\imgprocessing_module|temp_img_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|o_pixel_receive~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(0));

-- Location: FF_X18_Y10_N27
\imgprocessing_module|temp_img_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|pixelcounter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(3));

-- Location: LCCOMB_X18_Y10_N8
\imgprocessing_module|temp_img_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[1]~feeder_combout\ = \imgprocessing_module|pixelcounter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|pixelcounter\(0),
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X18_Y10_N9
\imgprocessing_module|temp_img_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(1));

-- Location: FF_X18_Y10_N11
\imgprocessing_module|temp_img_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|Add1~5_combout\,
	sload => VCC,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(2));

-- Location: LCCOMB_X18_Y10_N20
\imgprocessing_module|temp_img_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[4]~feeder_combout\ = \uart_module|Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|Add1~8_combout\,
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X18_Y10_N21
\imgprocessing_module|temp_img_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[4]~feeder_combout\,
	ena => \uart_module|transmission~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(4));

-- Location: LCCOMB_X18_Y10_N10
\uart_module|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mux0~0_combout\ = (\imgprocessing_module|temp_img_rtl_0_bypass\(3) & (\imgprocessing_module|temp_img_rtl_0_bypass\(4) & (\imgprocessing_module|temp_img_rtl_0_bypass\(1) $ (!\imgprocessing_module|temp_img_rtl_0_bypass\(2))))) # 
-- (!\imgprocessing_module|temp_img_rtl_0_bypass\(3) & (!\imgprocessing_module|temp_img_rtl_0_bypass\(4) & (\imgprocessing_module|temp_img_rtl_0_bypass\(1) $ (!\imgprocessing_module|temp_img_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0_bypass\(3),
	datab => \imgprocessing_module|temp_img_rtl_0_bypass\(1),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(2),
	datad => \imgprocessing_module|temp_img_rtl_0_bypass\(4),
	combout => \uart_module|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y10_N14
\uart_module|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|Mux0~3_combout\ = (\uart_module|Mux0~2_combout\ & (\uart_module|Mux0~1_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(0) & \uart_module|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mux0~2_combout\,
	datab => \uart_module|Mux0~1_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(0),
	datad => \uart_module|Mux0~0_combout\,
	combout => \uart_module|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y15_N30
\uart_module|u_RX|r_DATA_BUFFER[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[8]~2_combout\ = (\uart_module|u_RX|r_INDEX\(0) & (((\uart_module|u_RX|r_DATA_BUFFER\(8))))) # (!\uart_module|u_RX|r_INDEX\(0) & ((\uart_module|u_RX|Decoder0~0_combout\ & (\i_Rx~input_o\)) # 
-- (!\uart_module|u_RX|Decoder0~0_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_DATA_BUFFER\(8),
	datad => \uart_module|u_RX|Decoder0~0_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[8]~2_combout\);

-- Location: FF_X18_Y15_N31
\uart_module|u_RX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(8));

-- Location: LCCOMB_X16_Y15_N16
\uart_module|u_RX|rgb[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][7]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(8),
	combout => \uart_module|u_RX|rgb[2][7]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N28
\uart_module|u_RX|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~3_combout\ = (!\uart_module|u_RX|rgb_elcount\(0) & (\uart_module|u_RX|rgb_elcount\(1) & (\uart_module|u_RX|rgb_elcount[0]~0_combout\ & \uart_module|u_RX|r_INDEX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(0),
	datab => \uart_module|u_RX|rgb_elcount\(1),
	datac => \uart_module|u_RX|rgb_elcount[0]~0_combout\,
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|Decoder1~3_combout\);

-- Location: FF_X16_Y15_N17
\uart_module|u_RX|rgb[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][7]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][7]~q\);

-- Location: LCCOMB_X16_Y12_N18
\uart_module|u_RX|r_MEM_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[29]~feeder_combout\ = \uart_module|u_RX|rgb[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[2][7]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X16_Y12_N19
\uart_module|u_RX|r_MEM_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(29));

-- Location: LCCOMB_X19_Y11_N10
\uart_module|u_RX|r_MEM_rtl_0_bypass[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[11]~6_combout\ = !\uart_module|u_RX|mem_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|mem_addr\(5),
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[11]~6_combout\);

-- Location: FF_X19_Y11_N11
\uart_module|u_RX|r_MEM_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(11));

-- Location: FF_X18_Y11_N5
\uart_module|u_RX|r_MEM_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Add0~18_combout\,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(10));

-- Location: FF_X18_Y11_N7
\uart_module|u_RX|r_MEM_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Add0~19_combout\,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(12));

-- Location: LCCOMB_X19_Y11_N20
\uart_module|u_RX|r_MEM_rtl_0_bypass[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[9]~5_combout\ = !\uart_module|u_RX|mem_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|mem_addr\(4),
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[9]~5_combout\);

-- Location: FF_X19_Y11_N21
\uart_module|u_RX|r_MEM_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(9));

-- Location: LCCOMB_X19_Y11_N12
\imgprocessing_module|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~2_combout\ = (\uart_module|u_RX|r_MEM_rtl_0_bypass\(11) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(12) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(10) $ (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(9))))) # 
-- (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(11) & (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(12) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(10) $ (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(11),
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(10),
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(12),
	datad => \uart_module|u_RX|r_MEM_rtl_0_bypass\(9),
	combout => \imgprocessing_module|Mux1~2_combout\);

-- Location: FF_X18_Y11_N27
\uart_module|u_RX|r_MEM_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Add0~8_combout\,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(6));

-- Location: FF_X18_Y11_N3
\uart_module|u_RX|r_MEM_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Add0~11_combout\,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(8));

-- Location: LCCOMB_X19_Y11_N22
\uart_module|u_RX|r_MEM_rtl_0_bypass[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[7]~3_combout\ = !\uart_module|u_RX|mem_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(3),
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[7]~3_combout\);

-- Location: FF_X19_Y11_N23
\uart_module|u_RX|r_MEM_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(7));

-- Location: LCCOMB_X19_Y11_N0
\uart_module|u_RX|r_MEM_rtl_0_bypass[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[5]~2_combout\ = !\uart_module|u_RX|mem_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(2),
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[5]~2_combout\);

-- Location: FF_X19_Y11_N1
\uart_module|u_RX|r_MEM_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(5));

-- Location: LCCOMB_X19_Y11_N16
\imgprocessing_module|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~1_combout\ = (\uart_module|u_RX|r_MEM_rtl_0_bypass\(6) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(5) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(8) $ (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(7))))) # 
-- (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(6) & (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(5) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(8) $ (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(6),
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(8),
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(7),
	datad => \uart_module|u_RX|r_MEM_rtl_0_bypass\(5),
	combout => \imgprocessing_module|Mux1~1_combout\);

-- Location: FF_X19_Y11_N3
\uart_module|u_RX|r_MEM_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(0));

-- Location: FF_X18_Y11_N15
\uart_module|u_RX|r_MEM_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|Add0~2_combout\,
	sload => VCC,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(2));

-- Location: FF_X18_Y11_N29
\uart_module|u_RX|r_MEM_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Add0~5_combout\,
	ena => \uart_module|u_RX|o_pixel_receive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(4));

-- Location: LCCOMB_X19_Y11_N26
\uart_module|u_RX|r_MEM_rtl_0_bypass[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[1]~0_combout\ = !\uart_module|u_RX|mem_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(0),
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[1]~0_combout\);

-- Location: FF_X19_Y11_N27
\uart_module|u_RX|r_MEM_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(1));

-- Location: LCCOMB_X19_Y11_N24
\uart_module|u_RX|r_MEM_rtl_0_bypass[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[3]~1_combout\ = !\uart_module|u_RX|mem_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|mem_addr\(1),
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[3]~1_combout\);

-- Location: FF_X19_Y11_N25
\uart_module|u_RX|r_MEM_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(3));

-- Location: LCCOMB_X19_Y11_N6
\imgprocessing_module|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~0_combout\ = (\uart_module|u_RX|r_MEM_rtl_0_bypass\(2) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(1) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(4) $ (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(3))))) # 
-- (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(2) & (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(1) & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(4) $ (!\uart_module|u_RX|r_MEM_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(2),
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(4),
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(1),
	datad => \uart_module|u_RX|r_MEM_rtl_0_bypass\(3),
	combout => \imgprocessing_module|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\imgprocessing_module|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~3_combout\ = (\imgprocessing_module|Mux1~2_combout\ & (\imgprocessing_module|Mux1~1_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(0) & \imgprocessing_module|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Mux1~2_combout\,
	datab => \imgprocessing_module|Mux1~1_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(0),
	datad => \imgprocessing_module|Mux1~0_combout\,
	combout => \imgprocessing_module|Mux1~3_combout\);

-- Location: LCCOMB_X18_Y15_N16
\uart_module|u_RX|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~5_combout\ = (!\uart_module|u_RX|r_INDEX\(3) & (\uart_module|u_RX|r_INDEX\(0) & (\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|s_RECIEVING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|Decoder0~5_combout\);

-- Location: LCCOMB_X17_Y15_N18
\uart_module|u_RX|r_DATA_BUFFER[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[7]~9_combout\ = (\uart_module|u_RX|Decoder0~5_combout\ & ((\uart_module|u_RX|r_INDEX\(2) & (\i_Rx~input_o\)) # (!\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|r_DATA_BUFFER\(7)))))) # 
-- (!\uart_module|u_RX|Decoder0~5_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~5_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(7),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|r_DATA_BUFFER[7]~9_combout\);

-- Location: FF_X17_Y15_N19
\uart_module|u_RX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(7));

-- Location: LCCOMB_X16_Y15_N22
\uart_module|u_RX|rgb[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][6]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(7),
	combout => \uart_module|u_RX|rgb[0][6]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N2
\uart_module|u_RX|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~5_combout\ = (!\uart_module|u_RX|rgb_elcount\(0) & (!\uart_module|u_RX|rgb_elcount\(1) & (\uart_module|u_RX|rgb_elcount[0]~0_combout\ & \uart_module|u_RX|r_INDEX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount\(0),
	datab => \uart_module|u_RX|rgb_elcount\(1),
	datac => \uart_module|u_RX|rgb_elcount[0]~0_combout\,
	datad => \uart_module|u_RX|r_INDEX~0_combout\,
	combout => \uart_module|u_RX|Decoder1~5_combout\);

-- Location: FF_X16_Y15_N23
\uart_module|u_RX|rgb[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][6]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][6]~q\);

-- Location: LCCOMB_X19_Y11_N30
\uart_module|u_RX|mem_addr[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[0]~_wirecell_combout\ = !\uart_module|u_RX|mem_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(0),
	combout => \uart_module|u_RX|mem_addr[0]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y11_N4
\uart_module|u_RX|mem_addr[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[1]~_wirecell_combout\ = !\uart_module|u_RX|mem_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|mem_addr\(1),
	combout => \uart_module|u_RX|mem_addr[1]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y11_N18
\uart_module|u_RX|mem_addr[2]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[2]~_wirecell_combout\ = !\uart_module|u_RX|mem_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(2),
	combout => \uart_module|u_RX|mem_addr[2]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y11_N28
\uart_module|u_RX|mem_addr[3]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[3]~_wirecell_combout\ = !\uart_module|u_RX|mem_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(3),
	combout => \uart_module|u_RX|mem_addr[3]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y11_N14
\uart_module|u_RX|mem_addr[4]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[4]~_wirecell_combout\ = !\uart_module|u_RX|mem_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|mem_addr\(4),
	combout => \uart_module|u_RX|mem_addr[4]~_wirecell_combout\);

-- Location: LCCOMB_X21_Y11_N10
\uart_module|u_RX|mem_addr[5]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|mem_addr[5]~_wirecell_combout\ = !\uart_module|u_RX|mem_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|mem_addr\(5),
	combout => \uart_module|u_RX|mem_addr[5]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y10_N18
\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X16_Y15_N20
\uart_module|u_RX|rgb[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][7]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(8),
	combout => \uart_module|u_RX|rgb[0][7]~feeder_combout\);

-- Location: FF_X16_Y15_N21
\uart_module|u_RX|rgb[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][7]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][7]~q\);

-- Location: LCCOMB_X18_Y15_N18
\uart_module|u_RX|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~6_combout\ = (!\uart_module|u_RX|r_INDEX\(3) & (!\uart_module|u_RX|r_INDEX\(0) & (\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|s_RECIEVING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(3),
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|Decoder0~6_combout\);

-- Location: LCCOMB_X17_Y15_N20
\uart_module|u_RX|r_DATA_BUFFER[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[6]~6_combout\ = (\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|Decoder0~6_combout\ & ((\i_Rx~input_o\))) # (!\uart_module|u_RX|Decoder0~6_combout\ & (\uart_module|u_RX|r_DATA_BUFFER\(6))))) # 
-- (!\uart_module|u_RX|r_INDEX\(2) & (((\uart_module|u_RX|r_DATA_BUFFER\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(2),
	datab => \uart_module|u_RX|Decoder0~6_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(6),
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[6]~6_combout\);

-- Location: FF_X17_Y15_N21
\uart_module|u_RX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(6));

-- Location: LCCOMB_X16_Y15_N30
\uart_module|u_RX|rgb[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][5]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|r_DATA_BUFFER\(6),
	combout => \uart_module|u_RX|rgb[0][5]~feeder_combout\);

-- Location: FF_X16_Y15_N31
\uart_module|u_RX|rgb[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][5]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][5]~q\);

-- Location: LCCOMB_X18_Y15_N10
\uart_module|u_RX|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~3_combout\ = (\uart_module|u_RX|r_INDEX\(0) & (!\uart_module|u_RX|r_INDEX\(3) & \uart_module|u_RX|s_RECIEVING_FLAG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_INDEX\(0),
	datac => \uart_module|u_RX|r_INDEX\(3),
	datad => \uart_module|u_RX|s_RECIEVING_FLAG~q\,
	combout => \uart_module|u_RX|Decoder0~3_combout\);

-- Location: LCCOMB_X17_Y15_N0
\uart_module|u_RX|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder0~4_combout\ = (!\uart_module|u_RX|r_INDEX\(1) & \uart_module|u_RX|r_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(1),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|Decoder0~4_combout\);

-- Location: LCCOMB_X17_Y15_N4
\uart_module|u_RX|r_DATA_BUFFER[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[5]~3_combout\ = (\uart_module|u_RX|Decoder0~3_combout\ & ((\uart_module|u_RX|Decoder0~4_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~4_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(5)))))) # 
-- (!\uart_module|u_RX|Decoder0~3_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~3_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(5),
	datad => \uart_module|u_RX|Decoder0~4_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[5]~3_combout\);

-- Location: FF_X17_Y15_N5
\uart_module|u_RX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(5));

-- Location: LCCOMB_X16_Y15_N14
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

-- Location: FF_X16_Y15_N15
\uart_module|u_RX|rgb[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][4]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][4]~q\);

-- Location: LCCOMB_X17_Y15_N6
\uart_module|u_RX|r_DATA_BUFFER[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[4]~4_combout\ = (\uart_module|u_RX|Decoder0~2_combout\ & ((\uart_module|u_RX|Decoder0~4_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~4_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(4)))))) # 
-- (!\uart_module|u_RX|Decoder0~2_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~2_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(4),
	datad => \uart_module|u_RX|Decoder0~4_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[4]~4_combout\);

-- Location: FF_X17_Y15_N7
\uart_module|u_RX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X16_Y15_N2
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

-- Location: FF_X16_Y15_N3
\uart_module|u_RX|rgb[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][3]~q\);

-- Location: LCCOMB_X17_Y15_N26
\uart_module|u_RX|r_DATA_BUFFER[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[3]~5_combout\ = (\uart_module|u_RX|Decoder0~5_combout\ & ((\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|r_DATA_BUFFER\(3)))) # (!\uart_module|u_RX|r_INDEX\(2) & (\i_Rx~input_o\)))) # 
-- (!\uart_module|u_RX|Decoder0~5_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~5_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(3),
	datad => \uart_module|u_RX|r_INDEX\(2),
	combout => \uart_module|u_RX|r_DATA_BUFFER[3]~5_combout\);

-- Location: FF_X17_Y15_N27
\uart_module|u_RX|r_DATA_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(3));

-- Location: LCCOMB_X16_Y15_N18
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

-- Location: FF_X16_Y15_N19
\uart_module|u_RX|rgb[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][2]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][2]~q\);

-- Location: LCCOMB_X17_Y15_N16
\uart_module|u_RX|r_DATA_BUFFER[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\ = (\uart_module|u_RX|r_INDEX\(2) & (((\uart_module|u_RX|r_DATA_BUFFER\(2))))) # (!\uart_module|u_RX|r_INDEX\(2) & ((\uart_module|u_RX|Decoder0~6_combout\ & ((\i_Rx~input_o\))) # 
-- (!\uart_module|u_RX|Decoder0~6_combout\ & (\uart_module|u_RX|r_DATA_BUFFER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_INDEX\(2),
	datab => \uart_module|u_RX|Decoder0~6_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(2),
	datad => \i_Rx~input_o\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[2]~8_combout\);

-- Location: FF_X17_Y15_N17
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

-- Location: LCCOMB_X16_Y15_N6
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

-- Location: FF_X16_Y15_N7
\uart_module|u_RX|rgb[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][1]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][1]~q\);

-- Location: LCCOMB_X17_Y15_N24
\uart_module|u_RX|r_DATA_BUFFER[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_DATA_BUFFER[1]~7_combout\ = (\uart_module|u_RX|Decoder0~3_combout\ & ((\uart_module|u_RX|Decoder0~1_combout\ & (\i_Rx~input_o\)) # (!\uart_module|u_RX|Decoder0~1_combout\ & ((\uart_module|u_RX|r_DATA_BUFFER\(1)))))) # 
-- (!\uart_module|u_RX|Decoder0~3_combout\ & (((\uart_module|u_RX|r_DATA_BUFFER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Rx~input_o\,
	datab => \uart_module|u_RX|Decoder0~3_combout\,
	datac => \uart_module|u_RX|r_DATA_BUFFER\(1),
	datad => \uart_module|u_RX|Decoder0~1_combout\,
	combout => \uart_module|u_RX|r_DATA_BUFFER[1]~7_combout\);

-- Location: FF_X17_Y15_N25
\uart_module|u_RX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_DATA_BUFFER[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X16_Y15_N10
\uart_module|u_RX|rgb[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[0][0]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|rgb[0][0]~feeder_combout\);

-- Location: FF_X16_Y15_N11
\uart_module|u_RX|rgb[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[0][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[0][0]~q\);

-- Location: LCCOMB_X17_Y15_N22
\uart_module|u_RX|rgb[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[1][7]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(8),
	combout => \uart_module|u_RX|rgb[1][7]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N20
\uart_module|u_RX|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|Decoder1~4_combout\ = (\uart_module|u_RX|rgb_elcount[0]~0_combout\ & (!\uart_module|u_RX|rgb_elcount\(1) & (\uart_module|u_RX|r_INDEX~0_combout\ & \uart_module|u_RX|rgb_elcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|rgb_elcount[0]~0_combout\,
	datab => \uart_module|u_RX|rgb_elcount\(1),
	datac => \uart_module|u_RX|r_INDEX~0_combout\,
	datad => \uart_module|u_RX|rgb_elcount\(0),
	combout => \uart_module|u_RX|Decoder1~4_combout\);

-- Location: FF_X17_Y15_N23
\uart_module|u_RX|rgb[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[1][7]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][7]~q\);

-- Location: LCCOMB_X17_Y15_N30
\uart_module|u_RX|rgb[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[1][6]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(7),
	combout => \uart_module|u_RX|rgb[1][6]~feeder_combout\);

-- Location: FF_X17_Y15_N31
\uart_module|u_RX|rgb[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[1][6]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][6]~q\);

-- Location: LCCOMB_X17_Y15_N2
\uart_module|u_RX|rgb[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[1][5]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(6),
	combout => \uart_module|u_RX|rgb[1][5]~feeder_combout\);

-- Location: FF_X17_Y15_N3
\uart_module|u_RX|rgb[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[1][5]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][5]~q\);

-- Location: FF_X17_Y15_N29
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
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][4]~q\);

-- Location: FF_X17_Y15_N9
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
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][3]~q\);

-- Location: FF_X17_Y15_N11
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
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][2]~q\);

-- Location: LCCOMB_X17_Y15_N14
\uart_module|u_RX|rgb[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[1][1]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(2),
	combout => \uart_module|u_RX|rgb[1][1]~feeder_combout\);

-- Location: FF_X17_Y15_N15
\uart_module|u_RX|rgb[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[1][1]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][1]~q\);

-- Location: LCCOMB_X17_Y15_N12
\uart_module|u_RX|rgb[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[1][0]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(1),
	combout => \uart_module|u_RX|rgb[1][0]~feeder_combout\);

-- Location: FF_X17_Y15_N13
\uart_module|u_RX|rgb[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[1][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[1][0]~q\);

-- Location: LCCOMB_X16_Y15_N28
\uart_module|u_RX|rgb[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|rgb[2][6]~feeder_combout\ = \uart_module|u_RX|r_DATA_BUFFER\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|r_DATA_BUFFER\(7),
	combout => \uart_module|u_RX|rgb[2][6]~feeder_combout\);

-- Location: FF_X16_Y15_N29
\uart_module|u_RX|rgb[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][6]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][6]~q\);

-- Location: LCCOMB_X16_Y15_N24
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

-- Location: FF_X16_Y15_N25
\uart_module|u_RX|rgb[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][5]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][5]~q\);

-- Location: LCCOMB_X16_Y15_N26
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

-- Location: FF_X16_Y15_N27
\uart_module|u_RX|rgb[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][4]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][4]~q\);

-- Location: LCCOMB_X16_Y15_N4
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

-- Location: FF_X16_Y15_N5
\uart_module|u_RX|rgb[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][3]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][3]~q\);

-- Location: LCCOMB_X16_Y15_N8
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

-- Location: FF_X16_Y15_N9
\uart_module|u_RX|rgb[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][2]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][2]~q\);

-- Location: LCCOMB_X16_Y15_N12
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

-- Location: FF_X16_Y15_N13
\uart_module|u_RX|rgb[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][1]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][1]~q\);

-- Location: LCCOMB_X16_Y15_N0
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

-- Location: FF_X16_Y15_N1
\uart_module|u_RX|rgb[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|rgb[2][0]~feeder_combout\,
	ena => \uart_module|u_RX|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|rgb[2][0]~q\);

-- Location: M9K_X15_Y11_N0
\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "uart:uart_module|uart_rx:u_RX|altsyncram:r_MEM_rtl_0|altsyncram_3ci1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \uart_module|u_RX|process_0~0_combout\,
	portbre => VCC,
	portbaddrstall => \uart_module|u_RX|ALT_INV_o_pixel_receive~q\,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y11_N18
\imgprocessing_module|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~4_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(29))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(29),
	datac => \imgprocessing_module|Mux1~3_combout\,
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a16\,
	combout => \imgprocessing_module|Mux1~4_combout\);

-- Location: LCCOMB_X17_Y11_N8
\imgprocessing_module|curr_pixel[0][0][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|curr_pixel[0][0][6]~0_combout\ = (!\imgprocessing_module|pixelcounter\(6) & \uart_module|u_RX|o_pixel_receive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|pixelcounter\(6),
	datad => \uart_module|u_RX|o_pixel_receive~q\,
	combout => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\);

-- Location: FF_X16_Y11_N19
\imgprocessing_module|curr_pixel[2][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~4_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][7]~q\);

-- Location: LCCOMB_X16_Y12_N22
\uart_module|u_RX|r_MEM_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[30]~feeder_combout\ = \uart_module|u_RX|rgb[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[2][6]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X16_Y12_N23
\uart_module|u_RX|r_MEM_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(30));

-- Location: LCCOMB_X16_Y11_N6
\imgprocessing_module|Mux1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~25_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(30))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(30),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a17\,
	combout => \imgprocessing_module|Mux1~25_combout\);

-- Location: FF_X16_Y11_N7
\imgprocessing_module|curr_pixel[2][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~25_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][6]~q\);

-- Location: LCCOMB_X16_Y10_N8
\imgprocessing_module|multiplier|temp_result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~18_combout\ = (\imgprocessing_module|curr_pixel[2][2][7]~q\) # (\imgprocessing_module|curr_pixel[2][2][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	datad => \imgprocessing_module|curr_pixel[2][2][6]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~18_combout\);

-- Location: FF_X16_Y10_N9
\imgprocessing_module|multiplier|result[2][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][7]~q\);

-- Location: FF_X16_Y10_N21
\imgprocessing_module|temp_img_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(29));

-- Location: LCCOMB_X13_Y11_N14
\uart_module|u_RX|r_MEM_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[13]~feeder_combout\ = \uart_module|u_RX|rgb[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[0][6]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X13_Y11_N15
\uart_module|u_RX|r_MEM_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(13));

-- Location: LCCOMB_X14_Y11_N16
\imgprocessing_module|Mux1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~27_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(13))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(13),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~27_combout\);

-- Location: FF_X14_Y11_N17
\imgprocessing_module|curr_pixel[0][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~27_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][6]~q\);

-- Location: LCCOMB_X16_Y12_N10
\uart_module|u_RX|r_MEM_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[14]~feeder_combout\ = \uart_module|u_RX|rgb[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[0][7]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X16_Y12_N11
\uart_module|u_RX|r_MEM_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(14));

-- Location: LCCOMB_X16_Y11_N26
\imgprocessing_module|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~8_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(14))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(14),
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a1\,
	combout => \imgprocessing_module|Mux1~8_combout\);

-- Location: FF_X16_Y11_N27
\imgprocessing_module|curr_pixel[0][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~8_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][7]~q\);

-- Location: LCCOMB_X14_Y11_N22
\imgprocessing_module|multiplier|temp_result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~20_combout\ = (\imgprocessing_module|curr_pixel[0][0][6]~q\) # (\imgprocessing_module|curr_pixel[0][0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|curr_pixel[0][0][6]~q\,
	datad => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~20_combout\);

-- Location: LCCOMB_X17_Y11_N6
\imgprocessing_module|multiplier|result[0][0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|result[0][0][7]~feeder_combout\ = \imgprocessing_module|multiplier|temp_result~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|multiplier|temp_result~20_combout\,
	combout => \imgprocessing_module|multiplier|result[0][0][7]~feeder_combout\);

-- Location: FF_X17_Y11_N7
\imgprocessing_module|multiplier|result[0][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|result[0][0][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][7]~q\);

-- Location: LCCOMB_X13_Y11_N12
\uart_module|u_RX|r_MEM_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[15]~feeder_combout\ = \uart_module|u_RX|rgb[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[0][5]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X13_Y11_N13
\uart_module|u_RX|r_MEM_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(15));

-- Location: LCCOMB_X14_Y11_N6
\imgprocessing_module|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~18_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(15))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(15),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a2\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~18_combout\);

-- Location: FF_X14_Y11_N7
\imgprocessing_module|curr_pixel[0][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~18_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][5]~q\);

-- Location: LCCOMB_X14_Y11_N12
\imgprocessing_module|multiplier|temp_result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~11_combout\ = (\imgprocessing_module|curr_pixel[0][0][5]~q\) # (\imgprocessing_module|curr_pixel[0][0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[0][0][5]~q\,
	datad => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~11_combout\);

-- Location: FF_X14_Y11_N13
\imgprocessing_module|multiplier|result[0][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][6]~q\);

-- Location: FF_X16_Y11_N11
\uart_module|u_RX|r_MEM_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|rgb[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(16));

-- Location: LCCOMB_X16_Y11_N24
\imgprocessing_module|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~9_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(16))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(16),
	datac => \imgprocessing_module|Mux1~3_combout\,
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a3\,
	combout => \imgprocessing_module|Mux1~9_combout\);

-- Location: FF_X16_Y11_N25
\imgprocessing_module|curr_pixel[0][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~9_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][4]~q\);

-- Location: LCCOMB_X16_Y11_N14
\imgprocessing_module|multiplier|temp_result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~2_combout\ = (\imgprocessing_module|curr_pixel[0][0][7]~q\) # (\imgprocessing_module|curr_pixel[0][0][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	datab => \imgprocessing_module|curr_pixel[0][0][4]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~2_combout\);

-- Location: LCCOMB_X17_Y11_N28
\imgprocessing_module|multiplier|result[0][0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|result[0][0][5]~feeder_combout\ = \imgprocessing_module|multiplier|temp_result~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|multiplier|temp_result~2_combout\,
	combout => \imgprocessing_module|multiplier|result[0][0][5]~feeder_combout\);

-- Location: FF_X17_Y11_N29
\imgprocessing_module|multiplier|result[0][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|result[0][0][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][5]~q\);

-- Location: LCCOMB_X13_Y11_N10
\uart_module|u_RX|r_MEM_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[17]~feeder_combout\ = \uart_module|u_RX|rgb[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[0][3]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X13_Y11_N11
\uart_module|u_RX|r_MEM_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(17));

-- Location: LCCOMB_X14_Y11_N26
\imgprocessing_module|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~12_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(17))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(17),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a4\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~12_combout\);

-- Location: FF_X14_Y11_N27
\imgprocessing_module|curr_pixel[0][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~12_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][3]~q\);

-- Location: LCCOMB_X14_Y11_N8
\imgprocessing_module|multiplier|temp_result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~5_combout\ = (\imgprocessing_module|curr_pixel[0][0][3]~q\) # (\imgprocessing_module|curr_pixel[0][0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[0][0][3]~q\,
	datad => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~5_combout\);

-- Location: FF_X14_Y11_N9
\imgprocessing_module|multiplier|result[0][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][4]~q\);

-- Location: LCCOMB_X13_Y11_N26
\uart_module|u_RX|r_MEM_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[18]~feeder_combout\ = \uart_module|u_RX|rgb[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[0][2]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X13_Y11_N27
\uart_module|u_RX|r_MEM_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(18));

-- Location: LCCOMB_X14_Y11_N2
\imgprocessing_module|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~14_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(18))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(18),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a5\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~14_combout\);

-- Location: FF_X14_Y11_N3
\imgprocessing_module|curr_pixel[0][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~14_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][2]~q\);

-- Location: LCCOMB_X14_Y11_N28
\imgprocessing_module|multiplier|temp_result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~7_combout\ = (\imgprocessing_module|curr_pixel[0][0][2]~q\) # (\imgprocessing_module|curr_pixel[0][0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|curr_pixel[0][0][2]~q\,
	datad => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~7_combout\);

-- Location: LCCOMB_X17_Y11_N30
\imgprocessing_module|multiplier|result[0][0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|result[0][0][3]~feeder_combout\ = \imgprocessing_module|multiplier|temp_result~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|multiplier|temp_result~7_combout\,
	combout => \imgprocessing_module|multiplier|result[0][0][3]~feeder_combout\);

-- Location: FF_X17_Y11_N31
\imgprocessing_module|multiplier|result[0][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|result[0][0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][3]~q\);

-- Location: LCCOMB_X16_Y12_N4
\uart_module|u_RX|r_MEM_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[19]~feeder_combout\ = \uart_module|u_RX|rgb[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[0][1]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X16_Y12_N5
\uart_module|u_RX|r_MEM_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(19));

-- Location: LCCOMB_X16_Y11_N8
\imgprocessing_module|Mux1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~24_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(19))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(19),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a6\,
	combout => \imgprocessing_module|Mux1~24_combout\);

-- Location: FF_X16_Y11_N9
\imgprocessing_module|curr_pixel[0][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~24_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][1]~q\);

-- Location: LCCOMB_X16_Y11_N0
\imgprocessing_module|multiplier|temp_result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~17_combout\ = (\imgprocessing_module|curr_pixel[0][0][7]~q\) # (\imgprocessing_module|curr_pixel[0][0][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	datad => \imgprocessing_module|curr_pixel[0][0][1]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~17_combout\);

-- Location: FF_X16_Y11_N1
\imgprocessing_module|multiplier|result[0][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][2]~q\);

-- Location: LCCOMB_X16_Y12_N26
\uart_module|u_RX|r_MEM_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[20]~feeder_combout\ = \uart_module|u_RX|rgb[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[0][0]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X16_Y12_N27
\uart_module|u_RX|r_MEM_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(20));

-- Location: LCCOMB_X16_Y11_N20
\imgprocessing_module|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~20_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(20))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(20),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a7\,
	combout => \imgprocessing_module|Mux1~20_combout\);

-- Location: FF_X16_Y11_N21
\imgprocessing_module|curr_pixel[0][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~20_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[0][0][0]~q\);

-- Location: LCCOMB_X16_Y11_N10
\imgprocessing_module|multiplier|temp_result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~13_combout\ = (\imgprocessing_module|curr_pixel[0][0][7]~q\) # (\imgprocessing_module|curr_pixel[0][0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	datad => \imgprocessing_module|curr_pixel[0][0][0]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~13_combout\);

-- Location: LCCOMB_X17_Y11_N4
\imgprocessing_module|multiplier|result[0][0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|result[0][0][1]~feeder_combout\ = \imgprocessing_module|multiplier|temp_result~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|multiplier|temp_result~13_combout\,
	combout => \imgprocessing_module|multiplier|result[0][0][1]~feeder_combout\);

-- Location: FF_X17_Y11_N5
\imgprocessing_module|multiplier|result[0][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|result[0][0][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][1]~q\);

-- Location: LCCOMB_X16_Y12_N0
\imgprocessing_module|multiplier|result[0][0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|result[0][0][0]~feeder_combout\ = \imgprocessing_module|curr_pixel[0][0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|curr_pixel[0][0][7]~q\,
	combout => \imgprocessing_module|multiplier|result[0][0][0]~feeder_combout\);

-- Location: FF_X16_Y12_N1
\imgprocessing_module|multiplier|result[0][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|result[0][0][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[0][0][0]~q\);

-- Location: LCCOMB_X17_Y11_N2
\uart_module|u_RX|r_MEM_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[21]~feeder_combout\ = \uart_module|u_RX|rgb[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[1][7]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X17_Y11_N3
\uart_module|u_RX|r_MEM_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(21));

-- Location: LCCOMB_X16_Y11_N22
\imgprocessing_module|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~6_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(21))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(21),
	datac => \imgprocessing_module|Mux1~3_combout\,
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a8\,
	combout => \imgprocessing_module|Mux1~6_combout\);

-- Location: FF_X16_Y11_N23
\imgprocessing_module|curr_pixel[1][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~6_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][7]~q\);

-- Location: LCCOMB_X17_Y11_N16
\uart_module|u_RX|r_MEM_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[22]~feeder_combout\ = \uart_module|u_RX|rgb[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[1][6]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X17_Y11_N17
\uart_module|u_RX|r_MEM_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(22));

-- Location: LCCOMB_X14_Y11_N14
\imgprocessing_module|Mux1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~26_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(22))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(22),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a9\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~26_combout\);

-- Location: FF_X14_Y11_N15
\imgprocessing_module|curr_pixel[1][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~26_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][6]~q\);

-- Location: LCCOMB_X13_Y11_N30
\imgprocessing_module|multiplier|temp_result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~19_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datac => \imgprocessing_module|curr_pixel[1][1][6]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~19_combout\);

-- Location: FF_X13_Y11_N31
\imgprocessing_module|multiplier|result[1][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][7]~q\);

-- Location: FF_X14_Y11_N29
\uart_module|u_RX|r_MEM_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|rgb[1][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(23));

-- Location: LCCOMB_X14_Y11_N4
\imgprocessing_module|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~17_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(23))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(23),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a10\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~17_combout\);

-- Location: FF_X14_Y11_N5
\imgprocessing_module|curr_pixel[1][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~17_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][5]~q\);

-- Location: LCCOMB_X14_Y11_N18
\imgprocessing_module|multiplier|temp_result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~10_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datad => \imgprocessing_module|curr_pixel[1][1][5]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~10_combout\);

-- Location: FF_X14_Y11_N19
\imgprocessing_module|multiplier|result[1][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][6]~q\);

-- Location: LCCOMB_X17_Y11_N12
\uart_module|u_RX|r_MEM_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[24]~feeder_combout\ = \uart_module|u_RX|rgb[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[1][4]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X17_Y11_N13
\uart_module|u_RX|r_MEM_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(24));

-- Location: LCCOMB_X16_Y11_N28
\imgprocessing_module|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~7_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(24))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(24),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a11\,
	combout => \imgprocessing_module|Mux1~7_combout\);

-- Location: FF_X16_Y11_N29
\imgprocessing_module|curr_pixel[1][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~7_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][4]~q\);

-- Location: LCCOMB_X17_Y10_N6
\imgprocessing_module|multiplier|temp_result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~1_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datac => \imgprocessing_module|curr_pixel[1][1][4]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~1_combout\);

-- Location: FF_X17_Y10_N7
\imgprocessing_module|multiplier|result[1][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][5]~q\);

-- Location: LCCOMB_X17_Y11_N22
\uart_module|u_RX|r_MEM_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[25]~feeder_combout\ = \uart_module|u_RX|rgb[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[1][3]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X17_Y11_N23
\uart_module|u_RX|r_MEM_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(25));

-- Location: LCCOMB_X14_Y11_N20
\imgprocessing_module|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~11_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(25))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Mux1~3_combout\,
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(25),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a12\,
	combout => \imgprocessing_module|Mux1~11_combout\);

-- Location: FF_X14_Y11_N21
\imgprocessing_module|curr_pixel[1][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~11_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][3]~q\);

-- Location: LCCOMB_X13_Y11_N4
\imgprocessing_module|multiplier|temp_result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~4_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datac => \imgprocessing_module|curr_pixel[1][1][3]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~4_combout\);

-- Location: FF_X13_Y11_N5
\imgprocessing_module|multiplier|result[1][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][4]~q\);

-- Location: LCCOMB_X14_Y12_N4
\uart_module|u_RX|r_MEM_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[26]~feeder_combout\ = \uart_module|u_RX|rgb[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[1][2]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X14_Y12_N5
\uart_module|u_RX|r_MEM_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(26));

-- Location: LCCOMB_X14_Y11_N10
\imgprocessing_module|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~15_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(26))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(26),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a13\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~15_combout\);

-- Location: FF_X14_Y11_N11
\imgprocessing_module|curr_pixel[1][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~15_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][2]~q\);

-- Location: LCCOMB_X13_Y11_N22
\imgprocessing_module|multiplier|temp_result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~8_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datac => \imgprocessing_module|curr_pixel[1][1][2]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~8_combout\);

-- Location: FF_X13_Y11_N23
\imgprocessing_module|multiplier|result[1][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][3]~q\);

-- Location: FF_X14_Y11_N23
\uart_module|u_RX|r_MEM_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|rgb[1][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(27));

-- Location: LCCOMB_X14_Y11_N0
\imgprocessing_module|Mux1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~23_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(27))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(27),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a14\,
	combout => \imgprocessing_module|Mux1~23_combout\);

-- Location: FF_X14_Y11_N1
\imgprocessing_module|curr_pixel[1][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~23_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][1]~q\);

-- Location: LCCOMB_X13_Y11_N20
\imgprocessing_module|multiplier|temp_result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~16_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datac => \imgprocessing_module|curr_pixel[1][1][1]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~16_combout\);

-- Location: FF_X13_Y11_N21
\imgprocessing_module|multiplier|result[1][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][2]~q\);

-- Location: LCCOMB_X17_Y11_N10
\uart_module|u_RX|r_MEM_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[28]~feeder_combout\ = \uart_module|u_RX|rgb[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[1][0]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X17_Y11_N11
\uart_module|u_RX|r_MEM_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(28));

-- Location: LCCOMB_X16_Y11_N16
\imgprocessing_module|Mux1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~21_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(28))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(28),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a15\,
	combout => \imgprocessing_module|Mux1~21_combout\);

-- Location: FF_X16_Y11_N17
\imgprocessing_module|curr_pixel[1][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~21_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[1][1][0]~q\);

-- Location: LCCOMB_X17_Y10_N26
\imgprocessing_module|multiplier|temp_result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~14_combout\ = (\imgprocessing_module|curr_pixel[1][1][7]~q\) # (\imgprocessing_module|curr_pixel[1][1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	datac => \imgprocessing_module|curr_pixel[1][1][0]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~14_combout\);

-- Location: FF_X17_Y10_N27
\imgprocessing_module|multiplier|result[1][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][1]~q\);

-- Location: FF_X14_Y10_N19
\imgprocessing_module|multiplier|result[1][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|curr_pixel[1][1][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[1][0][0]~q\);

-- Location: LCCOMB_X17_Y11_N24
\uart_module|u_RX|r_MEM_rtl_0_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[31]~feeder_combout\ = \uart_module|u_RX|rgb[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[2][5]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X17_Y11_N25
\uart_module|u_RX|r_MEM_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(31));

-- Location: LCCOMB_X16_Y11_N4
\imgprocessing_module|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~16_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(31))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(31),
	datac => \imgprocessing_module|Mux1~3_combout\,
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a18\,
	combout => \imgprocessing_module|Mux1~16_combout\);

-- Location: FF_X16_Y11_N5
\imgprocessing_module|curr_pixel[2][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~16_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][5]~q\);

-- Location: LCCOMB_X17_Y10_N4
\imgprocessing_module|multiplier|temp_result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~9_combout\ = (\imgprocessing_module|curr_pixel[2][2][5]~q\) # (\imgprocessing_module|curr_pixel[2][2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[2][2][5]~q\,
	datad => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~9_combout\);

-- Location: FF_X17_Y10_N5
\imgprocessing_module|multiplier|result[2][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][6]~q\);

-- Location: LCCOMB_X16_Y12_N8
\uart_module|u_RX|r_MEM_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[32]~feeder_combout\ = \uart_module|u_RX|rgb[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[2][4]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X16_Y12_N9
\uart_module|u_RX|r_MEM_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(32));

-- Location: LCCOMB_X16_Y11_N12
\imgprocessing_module|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~5_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(32))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_RX|r_MEM_rtl_0_bypass\(32),
	datac => \imgprocessing_module|Mux1~3_combout\,
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a19\,
	combout => \imgprocessing_module|Mux1~5_combout\);

-- Location: FF_X16_Y11_N13
\imgprocessing_module|curr_pixel[2][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~5_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][4]~q\);

-- Location: LCCOMB_X17_Y10_N16
\imgprocessing_module|multiplier|temp_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~0_combout\ = (\imgprocessing_module|curr_pixel[2][2][4]~q\) # (\imgprocessing_module|curr_pixel[2][2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[2][2][4]~q\,
	datad => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~0_combout\);

-- Location: FF_X17_Y10_N17
\imgprocessing_module|multiplier|result[2][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][5]~q\);

-- Location: LCCOMB_X13_Y11_N16
\uart_module|u_RX|r_MEM_rtl_0_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[33]~feeder_combout\ = \uart_module|u_RX|rgb[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[2][3]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X13_Y11_N17
\uart_module|u_RX|r_MEM_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(33));

-- Location: LCCOMB_X14_Y11_N30
\imgprocessing_module|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~10_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(33))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(33),
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a20\,
	datad => \imgprocessing_module|Mux1~3_combout\,
	combout => \imgprocessing_module|Mux1~10_combout\);

-- Location: FF_X14_Y11_N31
\imgprocessing_module|curr_pixel[2][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~10_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][3]~q\);

-- Location: LCCOMB_X17_Y10_N22
\imgprocessing_module|multiplier|temp_result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~3_combout\ = (\imgprocessing_module|curr_pixel[2][2][3]~q\) # (\imgprocessing_module|curr_pixel[2][2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|curr_pixel[2][2][3]~q\,
	datad => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~3_combout\);

-- Location: FF_X17_Y10_N23
\imgprocessing_module|multiplier|result[2][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][4]~q\);

-- Location: LCCOMB_X13_Y11_N0
\uart_module|u_RX|r_MEM_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[34]~feeder_combout\ = \uart_module|u_RX|rgb[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|u_RX|rgb[2][2]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X13_Y11_N1
\uart_module|u_RX|r_MEM_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(34));

-- Location: LCCOMB_X14_Y11_N24
\imgprocessing_module|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~13_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(34))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0_bypass\(34),
	datad => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a21\,
	combout => \imgprocessing_module|Mux1~13_combout\);

-- Location: FF_X14_Y11_N25
\imgprocessing_module|curr_pixel[2][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~13_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][2]~q\);

-- Location: LCCOMB_X17_Y10_N18
\imgprocessing_module|multiplier|temp_result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~6_combout\ = (\imgprocessing_module|curr_pixel[2][2][2]~q\) # (\imgprocessing_module|curr_pixel[2][2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[2][2][2]~q\,
	datad => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~6_combout\);

-- Location: FF_X17_Y10_N19
\imgprocessing_module|multiplier|result[2][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][3]~q\);

-- Location: FF_X16_Y11_N15
\uart_module|u_RX|r_MEM_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|u_RX|rgb[2][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(35));

-- Location: LCCOMB_X16_Y11_N2
\imgprocessing_module|Mux1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~22_combout\ = (\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0_bypass\(35)))) # (!\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a22\,
	datad => \uart_module|u_RX|r_MEM_rtl_0_bypass\(35),
	combout => \imgprocessing_module|Mux1~22_combout\);

-- Location: FF_X16_Y11_N3
\imgprocessing_module|curr_pixel[2][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~22_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][1]~q\);

-- Location: LCCOMB_X16_Y10_N30
\imgprocessing_module|multiplier|temp_result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~15_combout\ = (\imgprocessing_module|curr_pixel[2][2][7]~q\) # (\imgprocessing_module|curr_pixel[2][2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	datad => \imgprocessing_module|curr_pixel[2][2][1]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~15_combout\);

-- Location: FF_X16_Y10_N31
\imgprocessing_module|multiplier|result[2][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][2]~q\);

-- Location: LCCOMB_X16_Y12_N12
\uart_module|u_RX|r_MEM_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_RX|r_MEM_rtl_0_bypass[36]~feeder_combout\ = \uart_module|u_RX|rgb[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|u_RX|rgb[2][0]~q\,
	combout => \uart_module|u_RX|r_MEM_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X16_Y12_N13
\uart_module|u_RX|r_MEM_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_RX|r_MEM_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_RX|r_MEM_rtl_0_bypass\(36));

-- Location: LCCOMB_X16_Y11_N30
\imgprocessing_module|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|Mux1~19_combout\ = (\imgprocessing_module|Mux1~3_combout\ & (\uart_module|u_RX|r_MEM_rtl_0_bypass\(36))) # (!\imgprocessing_module|Mux1~3_combout\ & ((\uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_RX|r_MEM_rtl_0_bypass\(36),
	datab => \imgprocessing_module|Mux1~3_combout\,
	datac => \uart_module|u_RX|r_MEM_rtl_0|auto_generated|ram_block1a23\,
	combout => \imgprocessing_module|Mux1~19_combout\);

-- Location: FF_X16_Y11_N31
\imgprocessing_module|curr_pixel[2][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|Mux1~19_combout\,
	ena => \imgprocessing_module|curr_pixel[0][0][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|curr_pixel[2][2][0]~q\);

-- Location: LCCOMB_X16_Y10_N4
\imgprocessing_module|multiplier|temp_result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|temp_result~12_combout\ = (\imgprocessing_module|curr_pixel[2][2][7]~q\) # (\imgprocessing_module|curr_pixel[2][2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	datac => \imgprocessing_module|curr_pixel[2][2][0]~q\,
	combout => \imgprocessing_module|multiplier|temp_result~12_combout\);

-- Location: FF_X16_Y10_N5
\imgprocessing_module|multiplier|result[2][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|temp_result~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][1]~q\);

-- Location: LCCOMB_X17_Y10_N8
\imgprocessing_module|multiplier|result[2][0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|multiplier|result[2][0][0]~feeder_combout\ = \imgprocessing_module|curr_pixel[2][2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|curr_pixel[2][2][7]~q\,
	combout => \imgprocessing_module|multiplier|result[2][0][0]~feeder_combout\);

-- Location: FF_X17_Y10_N9
\imgprocessing_module|multiplier|result[2][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|multiplier|result[2][0][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|multiplier|result[2][0][0]~q\);

-- Location: M9K_X15_Y10_N0
\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "img_proc:imgprocessing_module|altsyncram:temp_img_rtl_0|altsyncram_3ci1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \uart_module|u_RX|o_pixel_receive~q\,
	portbre => VCC,
	portbaddrstall => \uart_module|ALT_INV_transmission~0_combout\,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y10_N20
\uart_module|s_tx_data~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~29_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(29))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(29),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a16\,
	combout => \uart_module|s_tx_data~29_combout\);

-- Location: FF_X16_Y10_N3
\imgprocessing_module|temp_img_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(21));

-- Location: FF_X16_Y10_N19
\imgprocessing_module|temp_img_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[0][0][7]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(13));

-- Location: LCCOMB_X16_Y10_N18
\uart_module|s_tx_data~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~30_combout\ = (\uart_module|Mux0~3_combout\ & ((\uart_module|pixval_count\(0)) # ((\imgprocessing_module|temp_img_rtl_0_bypass\(13))))) # (!\uart_module|Mux0~3_combout\ & (!\uart_module|pixval_count\(0) & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mux0~3_combout\,
	datab => \uart_module|pixval_count\(0),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(13),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \uart_module|s_tx_data~30_combout\);

-- Location: LCCOMB_X16_Y10_N2
\uart_module|s_tx_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~31_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|s_tx_data~30_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(21)))) # (!\uart_module|s_tx_data~30_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a8\)))) # (!\uart_module|pixval_count\(0) & (((\uart_module|s_tx_data~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a8\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(21),
	datad => \uart_module|s_tx_data~30_combout\,
	combout => \uart_module|s_tx_data~31_combout\);

-- Location: LCCOMB_X16_Y10_N6
\uart_module|s_tx_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~32_combout\ = (!\uart_module|s_tx_data~29_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|s_tx_data~29_combout\,
	datad => \uart_module|s_tx_data~31_combout\,
	combout => \uart_module|s_tx_data~32_combout\);

-- Location: LCCOMB_X14_Y10_N12
\uart_module|s_tx_data[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data[7]~4_combout\ = (!\uart_module|u_TX|o_BUSY~q\ & (\imgprocessing_module|processing_done~q\ & ((!\uart_module|pixval_count\(1)) # (!\uart_module|pixval_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \uart_module|u_TX|o_BUSY~q\,
	datac => \uart_module|pixval_count\(1),
	datad => \imgprocessing_module|processing_done~q\,
	combout => \uart_module|s_tx_data[7]~4_combout\);

-- Location: FF_X16_Y10_N7
\uart_module|s_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~32_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(7));

-- Location: LCCOMB_X18_Y10_N18
\uart_module|u_TX|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|process_0~0_combout\ = (!\uart_module|u_TX|s_TRANSMITING_FLAG~q\ & \uart_module|s_TX_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|s_TRANSMITING_FLAG~q\,
	datad => \uart_module|s_TX_START~q\,
	combout => \uart_module|u_TX|process_0~0_combout\);

-- Location: FF_X17_Y12_N9
\uart_module|u_TX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|s_tx_data\(7),
	sload => VCC,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(8));

-- Location: LCCOMB_X17_Y12_N8
\uart_module|u_TX|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~5_combout\ = (!\uart_module|u_TX|r_INDEX\(2) & (!\uart_module|u_TX|r_INDEX\(1) & ((\uart_module|u_TX|r_INDEX\(0)) # (!\uart_module|u_TX|r_DATA_BUFFER\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(2),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_DATA_BUFFER\(8),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|Mux0~5_combout\);

-- Location: FF_X16_Y10_N17
\imgprocessing_module|temp_img_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(35));

-- Location: LCCOMB_X16_Y10_N16
\uart_module|s_tx_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~17_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(35))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(35),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a22\,
	combout => \uart_module|s_tx_data~17_combout\);

-- Location: LCCOMB_X17_Y10_N10
\imgprocessing_module|temp_img_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[19]~feeder_combout\ = \imgprocessing_module|multiplier|result[0][0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imgprocessing_module|multiplier|result[0][0][1]~q\,
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X17_Y10_N11
\imgprocessing_module|temp_img_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(19));

-- Location: FF_X17_Y10_N13
\imgprocessing_module|temp_img_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(27));

-- Location: LCCOMB_X17_Y10_N0
\uart_module|s_tx_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~18_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|Mux0~3_combout\) # ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a14\)))) # (!\uart_module|pixval_count\(0) & (!\uart_module|Mux0~3_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a6\,
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a14\,
	combout => \uart_module|s_tx_data~18_combout\);

-- Location: LCCOMB_X17_Y10_N12
\uart_module|s_tx_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~19_combout\ = (\uart_module|Mux0~3_combout\ & ((\uart_module|s_tx_data~18_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(27)))) # (!\uart_module|s_tx_data~18_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0_bypass\(19))))) # (!\uart_module|Mux0~3_combout\ & (((\uart_module|s_tx_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0_bypass\(19),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(27),
	datad => \uart_module|s_tx_data~18_combout\,
	combout => \uart_module|s_tx_data~19_combout\);

-- Location: LCCOMB_X17_Y10_N24
\uart_module|s_tx_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~20_combout\ = (!\uart_module|s_tx_data~17_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~17_combout\,
	datad => \uart_module|s_tx_data~19_combout\,
	combout => \uart_module|s_tx_data~20_combout\);

-- Location: FF_X17_Y10_N25
\uart_module|s_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~20_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(1));

-- Location: LCCOMB_X17_Y12_N26
\uart_module|u_TX|r_DATA_BUFFER[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_DATA_BUFFER[2]~feeder_combout\ = \uart_module|s_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|s_tx_data\(1),
	combout => \uart_module|u_TX|r_DATA_BUFFER[2]~feeder_combout\);

-- Location: FF_X17_Y12_N27
\uart_module|u_TX|r_DATA_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_DATA_BUFFER[2]~feeder_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(2));

-- Location: LCCOMB_X17_Y12_N10
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

-- Location: FF_X17_Y12_N11
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

-- Location: FF_X16_Y10_N11
\imgprocessing_module|temp_img_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[0][0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(20));

-- Location: LCCOMB_X16_Y10_N10
\uart_module|s_tx_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~22_combout\ = (\uart_module|Mux0~3_combout\ & ((\uart_module|pixval_count\(0)) # ((\imgprocessing_module|temp_img_rtl_0_bypass\(20))))) # (!\uart_module|Mux0~3_combout\ & (!\uart_module|pixval_count\(0) & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mux0~3_combout\,
	datab => \uart_module|pixval_count\(0),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(20),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a7\,
	combout => \uart_module|s_tx_data~22_combout\);

-- Location: FF_X16_Y10_N27
\imgprocessing_module|temp_img_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(28));

-- Location: LCCOMB_X16_Y10_N26
\uart_module|s_tx_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~23_combout\ = (\uart_module|s_tx_data~22_combout\ & (((\imgprocessing_module|temp_img_rtl_0_bypass\(28))) # (!\uart_module|pixval_count\(0)))) # (!\uart_module|s_tx_data~22_combout\ & (\uart_module|pixval_count\(0) & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|s_tx_data~22_combout\,
	datab => \uart_module|pixval_count\(0),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(28),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a15\,
	combout => \uart_module|s_tx_data~23_combout\);

-- Location: FF_X16_Y10_N29
\imgprocessing_module|temp_img_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(36));

-- Location: LCCOMB_X16_Y10_N28
\uart_module|s_tx_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~21_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(36))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(36),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a23\,
	combout => \uart_module|s_tx_data~21_combout\);

-- Location: LCCOMB_X16_Y10_N0
\uart_module|s_tx_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~24_combout\ = (!\uart_module|s_tx_data~21_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~23_combout\,
	datad => \uart_module|s_tx_data~21_combout\,
	combout => \uart_module|s_tx_data~24_combout\);

-- Location: FF_X16_Y10_N1
\uart_module|s_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~24_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(0));

-- Location: FF_X17_Y12_N21
\uart_module|u_TX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|s_tx_data\(0),
	sload => VCC,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X17_Y12_N20
\uart_module|u_TX|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~2_combout\ = (\uart_module|u_TX|r_INDEX\(0) & (((\uart_module|u_TX|r_INDEX\(1)) # (!\uart_module|u_TX|r_DATA_BUFFER\(1))))) # (!\uart_module|u_TX|r_INDEX\(0) & (!\uart_module|u_TX|r_DATA_BUFFER\(0) & 
-- ((!\uart_module|u_TX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(0),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_DATA_BUFFER\(1),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|Mux0~2_combout\);

-- Location: FF_X16_Y10_N23
\imgprocessing_module|temp_img_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(34));

-- Location: LCCOMB_X16_Y10_N22
\uart_module|s_tx_data~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~25_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(34))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(34),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a21\,
	combout => \uart_module|s_tx_data~25_combout\);

-- Location: FF_X16_Y10_N13
\imgprocessing_module|temp_img_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(26));

-- Location: FF_X16_Y10_N25
\imgprocessing_module|temp_img_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[0][0][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(18));

-- Location: LCCOMB_X16_Y10_N24
\uart_module|s_tx_data~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~26_combout\ = (\uart_module|Mux0~3_combout\ & ((\uart_module|pixval_count\(0)) # ((\imgprocessing_module|temp_img_rtl_0_bypass\(18))))) # (!\uart_module|Mux0~3_combout\ & (!\uart_module|pixval_count\(0) & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|Mux0~3_combout\,
	datab => \uart_module|pixval_count\(0),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(18),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a5\,
	combout => \uart_module|s_tx_data~26_combout\);

-- Location: LCCOMB_X16_Y10_N12
\uart_module|s_tx_data~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~27_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|s_tx_data~26_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(26)))) # (!\uart_module|s_tx_data~26_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a13\)))) # (!\uart_module|pixval_count\(0) & (((\uart_module|s_tx_data~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a13\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(26),
	datad => \uart_module|s_tx_data~26_combout\,
	combout => \uart_module|s_tx_data~27_combout\);

-- Location: LCCOMB_X16_Y10_N14
\uart_module|s_tx_data~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~28_combout\ = (!\uart_module|s_tx_data~25_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~25_combout\,
	datad => \uart_module|s_tx_data~27_combout\,
	combout => \uart_module|s_tx_data~28_combout\);

-- Location: FF_X16_Y10_N15
\uart_module|s_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~28_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(2));

-- Location: FF_X17_Y12_N25
\uart_module|u_TX|r_DATA_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|s_tx_data\(2),
	sload => VCC,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(3));

-- Location: LCCOMB_X17_Y12_N24
\uart_module|u_TX|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~3_combout\ = (\uart_module|u_TX|Mux0~2_combout\ & (((!\uart_module|u_TX|r_INDEX\(1)) # (!\uart_module|u_TX|r_DATA_BUFFER\(3))))) # (!\uart_module|u_TX|Mux0~2_combout\ & (!\uart_module|u_TX|r_DATA_BUFFER\(2) & 
-- ((\uart_module|u_TX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(2),
	datab => \uart_module|u_TX|Mux0~2_combout\,
	datac => \uart_module|u_TX|r_DATA_BUFFER\(3),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|Mux0~3_combout\);

-- Location: FF_X14_Y10_N27
\imgprocessing_module|temp_img_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(32));

-- Location: LCCOMB_X14_Y10_N26
\uart_module|s_tx_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~5_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(32))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(32),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a19\,
	combout => \uart_module|s_tx_data~5_combout\);

-- Location: FF_X14_Y10_N11
\imgprocessing_module|temp_img_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(24));

-- Location: FF_X14_Y10_N25
\imgprocessing_module|temp_img_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[0][0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(16));

-- Location: LCCOMB_X14_Y10_N24
\uart_module|s_tx_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~6_combout\ = (\uart_module|pixval_count\(0) & (\uart_module|Mux0~3_combout\)) # (!\uart_module|pixval_count\(0) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(16))) # (!\uart_module|Mux0~3_combout\ 
-- & ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(16),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a3\,
	combout => \uart_module|s_tx_data~6_combout\);

-- Location: LCCOMB_X14_Y10_N10
\uart_module|s_tx_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~7_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|s_tx_data~6_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(24)))) # (!\uart_module|s_tx_data~6_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a11\)))) # (!\uart_module|pixval_count\(0) & (((\uart_module|s_tx_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a11\,
	datab => \uart_module|pixval_count\(0),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(24),
	datad => \uart_module|s_tx_data~6_combout\,
	combout => \uart_module|s_tx_data~7_combout\);

-- Location: LCCOMB_X14_Y10_N30
\uart_module|s_tx_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~8_combout\ = (!\uart_module|s_tx_data~5_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~5_combout\,
	datad => \uart_module|s_tx_data~7_combout\,
	combout => \uart_module|s_tx_data~8_combout\);

-- Location: FF_X14_Y10_N31
\uart_module|s_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~8_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(4));

-- Location: LCCOMB_X17_Y12_N30
\uart_module|u_TX|r_DATA_BUFFER[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_DATA_BUFFER[5]~feeder_combout\ = \uart_module|s_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_module|s_tx_data\(4),
	combout => \uart_module|u_TX|r_DATA_BUFFER[5]~feeder_combout\);

-- Location: FF_X17_Y12_N31
\uart_module|u_TX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_DATA_BUFFER[5]~feeder_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(5));

-- Location: FF_X17_Y10_N15
\imgprocessing_module|temp_img_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(33));

-- Location: LCCOMB_X17_Y10_N14
\uart_module|s_tx_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~9_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(33))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(33),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a20\,
	combout => \uart_module|s_tx_data~9_combout\);

-- Location: LCCOMB_X17_Y10_N30
\imgprocessing_module|temp_img_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \imgprocessing_module|temp_img_rtl_0_bypass[17]~feeder_combout\ = \imgprocessing_module|multiplier|result[0][0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \imgprocessing_module|multiplier|result[0][0][3]~q\,
	combout => \imgprocessing_module|temp_img_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X17_Y10_N31
\imgprocessing_module|temp_img_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \imgprocessing_module|temp_img_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(17));

-- Location: FF_X17_Y10_N29
\imgprocessing_module|temp_img_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(25));

-- Location: LCCOMB_X17_Y10_N2
\uart_module|s_tx_data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~10_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|Mux0~3_combout\) # ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a12\)))) # (!\uart_module|pixval_count\(0) & (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a12\,
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a4\,
	combout => \uart_module|s_tx_data~10_combout\);

-- Location: LCCOMB_X17_Y10_N28
\uart_module|s_tx_data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~11_combout\ = (\uart_module|Mux0~3_combout\ & ((\uart_module|s_tx_data~10_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(25)))) # (!\uart_module|s_tx_data~10_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0_bypass\(17))))) # (!\uart_module|Mux0~3_combout\ & (((\uart_module|s_tx_data~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0_bypass\(17),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(25),
	datad => \uart_module|s_tx_data~10_combout\,
	combout => \uart_module|s_tx_data~11_combout\);

-- Location: LCCOMB_X17_Y10_N20
\uart_module|s_tx_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~12_combout\ = (!\uart_module|s_tx_data~9_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~9_combout\,
	datad => \uart_module|s_tx_data~11_combout\,
	combout => \uart_module|s_tx_data~12_combout\);

-- Location: FF_X17_Y10_N21
\uart_module|s_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~12_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(3));

-- Location: FF_X17_Y12_N7
\uart_module|u_TX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|s_tx_data\(3),
	sload => VCC,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X17_Y12_N6
\uart_module|u_TX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~0_combout\ = (\uart_module|u_TX|r_INDEX\(0) & (((\uart_module|u_TX|r_INDEX\(1))) # (!\uart_module|u_TX|r_DATA_BUFFER\(5)))) # (!\uart_module|u_TX|r_INDEX\(0) & (((!\uart_module|u_TX|r_DATA_BUFFER\(4) & 
-- !\uart_module|u_TX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_DATA_BUFFER\(5),
	datab => \uart_module|u_TX|r_INDEX\(0),
	datac => \uart_module|u_TX|r_DATA_BUFFER\(4),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|Mux0~0_combout\);

-- Location: FF_X14_Y10_N5
\imgprocessing_module|temp_img_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(31));

-- Location: LCCOMB_X14_Y10_N4
\uart_module|s_tx_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~0_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(31))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(31),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a18\,
	combout => \uart_module|s_tx_data~0_combout\);

-- Location: FF_X14_Y10_N3
\imgprocessing_module|temp_img_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(23));

-- Location: FF_X14_Y10_N21
\imgprocessing_module|temp_img_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[0][0][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(15));

-- Location: LCCOMB_X14_Y10_N20
\uart_module|s_tx_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~1_combout\ = (\uart_module|pixval_count\(0) & (\uart_module|Mux0~3_combout\)) # (!\uart_module|pixval_count\(0) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(15))) # (!\uart_module|Mux0~3_combout\ 
-- & ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(15),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a2\,
	combout => \uart_module|s_tx_data~1_combout\);

-- Location: LCCOMB_X14_Y10_N2
\uart_module|s_tx_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~2_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|s_tx_data~1_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(23)))) # (!\uart_module|s_tx_data~1_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a10\)))) # (!\uart_module|pixval_count\(0) & (((\uart_module|s_tx_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a10\,
	datab => \uart_module|pixval_count\(0),
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(23),
	datad => \uart_module|s_tx_data~1_combout\,
	combout => \uart_module|s_tx_data~2_combout\);

-- Location: LCCOMB_X14_Y10_N28
\uart_module|s_tx_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~3_combout\ = (!\uart_module|s_tx_data~0_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~0_combout\,
	datad => \uart_module|s_tx_data~2_combout\,
	combout => \uart_module|s_tx_data~3_combout\);

-- Location: FF_X14_Y10_N29
\uart_module|s_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~3_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(5));

-- Location: LCCOMB_X17_Y12_N14
\uart_module|u_TX|r_DATA_BUFFER[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|r_DATA_BUFFER[6]~feeder_combout\ = \uart_module|s_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_module|s_tx_data\(5),
	combout => \uart_module|u_TX|r_DATA_BUFFER[6]~feeder_combout\);

-- Location: FF_X17_Y12_N15
\uart_module|u_TX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|r_DATA_BUFFER[6]~feeder_combout\,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(6));

-- Location: FF_X14_Y10_N9
\imgprocessing_module|temp_img_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[2][0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(30));

-- Location: LCCOMB_X14_Y10_N8
\uart_module|s_tx_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~13_combout\ = (\uart_module|pixval_count\(1) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(30))) # (!\uart_module|Mux0~3_combout\ & 
-- ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(1),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(30),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a17\,
	combout => \uart_module|s_tx_data~13_combout\);

-- Location: FF_X14_Y10_N17
\imgprocessing_module|temp_img_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[1][0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(22));

-- Location: FF_X14_Y10_N7
\imgprocessing_module|temp_img_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \imgprocessing_module|multiplier|result[0][0][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imgprocessing_module|temp_img_rtl_0_bypass\(14));

-- Location: LCCOMB_X14_Y10_N6
\uart_module|s_tx_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~14_combout\ = (\uart_module|pixval_count\(0) & (\uart_module|Mux0~3_combout\)) # (!\uart_module|pixval_count\(0) & ((\uart_module|Mux0~3_combout\ & (\imgprocessing_module|temp_img_rtl_0_bypass\(14))) # (!\uart_module|Mux0~3_combout\ 
-- & ((\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \uart_module|Mux0~3_combout\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(14),
	datad => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a1\,
	combout => \uart_module|s_tx_data~14_combout\);

-- Location: LCCOMB_X14_Y10_N16
\uart_module|s_tx_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~15_combout\ = (\uart_module|pixval_count\(0) & ((\uart_module|s_tx_data~14_combout\ & ((\imgprocessing_module|temp_img_rtl_0_bypass\(22)))) # (!\uart_module|s_tx_data~14_combout\ & 
-- (\imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a9\)))) # (!\uart_module|pixval_count\(0) & (((\uart_module|s_tx_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|pixval_count\(0),
	datab => \imgprocessing_module|temp_img_rtl_0|auto_generated|ram_block1a9\,
	datac => \imgprocessing_module|temp_img_rtl_0_bypass\(22),
	datad => \uart_module|s_tx_data~14_combout\,
	combout => \uart_module|s_tx_data~15_combout\);

-- Location: LCCOMB_X14_Y10_N0
\uart_module|s_tx_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|s_tx_data~16_combout\ = (!\uart_module|s_tx_data~13_combout\ & ((\uart_module|pixval_count\(1)) # (!\uart_module|s_tx_data~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|pixval_count\(1),
	datac => \uart_module|s_tx_data~13_combout\,
	datad => \uart_module|s_tx_data~15_combout\,
	combout => \uart_module|s_tx_data~16_combout\);

-- Location: FF_X14_Y10_N1
\uart_module|s_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|s_tx_data~16_combout\,
	ena => \uart_module|s_tx_data[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|s_tx_data\(6));

-- Location: FF_X17_Y12_N5
\uart_module|u_TX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_module|s_tx_data\(6),
	sload => VCC,
	ena => \uart_module|u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|r_DATA_BUFFER\(7));

-- Location: LCCOMB_X17_Y12_N4
\uart_module|u_TX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~1_combout\ = (\uart_module|u_TX|Mux0~0_combout\ & (((!\uart_module|u_TX|r_INDEX\(1)) # (!\uart_module|u_TX|r_DATA_BUFFER\(7))))) # (!\uart_module|u_TX|Mux0~0_combout\ & (!\uart_module|u_TX|r_DATA_BUFFER\(6) & 
-- ((\uart_module|u_TX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|Mux0~0_combout\,
	datab => \uart_module|u_TX|r_DATA_BUFFER\(6),
	datac => \uart_module|u_TX|r_DATA_BUFFER\(7),
	datad => \uart_module|u_TX|r_INDEX\(1),
	combout => \uart_module|u_TX|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y12_N18
\uart_module|u_TX|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~4_combout\ = (!\uart_module|u_TX|r_INDEX\(3) & ((\uart_module|u_TX|r_INDEX\(2) & ((\uart_module|u_TX|Mux0~1_combout\))) # (!\uart_module|u_TX|r_INDEX\(2) & (\uart_module|u_TX|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_module|u_TX|r_INDEX\(2),
	datab => \uart_module|u_TX|Mux0~3_combout\,
	datac => \uart_module|u_TX|Mux0~1_combout\,
	datad => \uart_module|u_TX|r_INDEX\(3),
	combout => \uart_module|u_TX|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y12_N12
\uart_module|u_TX|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_module|u_TX|Mux0~6_combout\ = (!\uart_module|u_TX|Mux0~4_combout\ & ((!\uart_module|u_TX|Mux0~5_combout\) # (!\uart_module|u_TX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_module|u_TX|r_INDEX\(3),
	datac => \uart_module|u_TX|Mux0~5_combout\,
	datad => \uart_module|u_TX|Mux0~4_combout\,
	combout => \uart_module|u_TX|Mux0~6_combout\);

-- Location: FF_X17_Y12_N13
\uart_module|u_TX|o_TX_LINE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_module|u_TX|Mux0~6_combout\,
	ena => \uart_module|u_TX|o_TX_LINE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_module|u_TX|o_TX_LINE~q\);

-- Location: IOIBUF_X18_Y0_N15
\i_btn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn1,
	o => \i_btn1~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\i_btn2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn2,
	o => \i_btn2~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\i_btn3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn3,
	o => \i_btn3~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\i_btn4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_btn4,
	o => \i_btn4~input_o\);

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


