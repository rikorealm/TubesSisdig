library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Adjust to 1400 x 1050 res
-- 60 Hz with 122.61 MHz clock
entity vga is
    port (
        i_clk : in std_logic;
		i_btn1 : in std_logic;
        VGA_HS, VGA_VS : out std_logic;
        -- _vector(3 downto 0)
        VGA_R, VGA_G, VGA_B : out std_logic;
        o_buzz : out std_logic;
        o_led1, o_led2, o_led3, o_led4 : out std_logic
    );
end vga;

architecture main of vga is
    component vgasync is
        port (
            i_clk : in std_logic; --123MHz clock
				i_btn : in std_logic;
            HSYNC, VSYNC : out std_logic;
            -- _vector(3 downto 0)
            R, G, B : out std_logic;
            led1, led2, led3, led4 : out std_logic := '0'
        );
    end component;
	component PLL50to123 is
		port (
			clk_in_clk  : in  std_logic; --  clk_in.clk
			clk_out_clk : out std_logic; -- clk_out.clk
			reset_reset : in  std_logic  --   reset.reset
		);
	end component;
    component PLL50to25 is
        port (
            clk_in_clk    : in  std_logic := '0'; --  clk_in.clk
            clk_out_clk   : out std_logic;        -- clk_out.clk
            clk_res_reset : in  std_logic := '0'  -- clk_res.reset
        );
    end component PLL50to25;
    component clockmodifier is
        port (
            CLKIN_FREQ : integer;
            CLKOUT_FREQ : integer;
            Clk_in : in std_logic;
            Clk_out : out std_logic
        );
    end component;
    component buzzer is
        port (
            freq : in std_logic;
            led : out std_logic;
            o_buzz : buffer std_logic
        );
    end component;
    signal clk_25, clk_200 : std_logic := '0';
    -- signal clk_123 : std_logic := '0';
	signal reset : std_logic := '0';
    signal led : std_logic;
begin
    c1 : vgasync port map(clk_25, i_btn1, VGA_HS, VGA_VS, VGA_R, VGA_G, VGA_B, o_led1, o_led2, o_led3, o_led4);
    pll : PLL50to25 port map(i_clk, clk_25, reset);
    clkmod : clockmodifier port map(25174990, 500, clk_25, clk_200);
    buzz : buzzer port map(clk_200, led, o_buzz);
end architecture;