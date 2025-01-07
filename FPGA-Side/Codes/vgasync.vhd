library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity vgasync is
    port (
        i_clk : in std_logic; --123MHz clock
		i_btn : in std_logic;
        HSYNC, VSYNC : out std_logic;
        -- _vector(3 downto 0)
        R, G, B : out std_logic;
        led1, led2, led3, led4 : out std_logic
    );
end vgasync;

architecture vgasyncprogram of vgasync is
    CONSTANT TH : INTEGER := 800;
    CONSTANT THB1 : INTEGER := 660;
    CONSTANT THB2 : INTEGER := 756;
    CONSTANT THD : INTEGER := 640;

    CONSTANT TV : INTEGER := 525;
    CONSTANT TVB1 : INTEGER := 494;
    CONSTANT TVB2 : INTEGER := 495;
    CONSTANT TVD : INTEGER := 480;
    SIGNAL horiz_sync : std_logic;
    SIGNAL vert_sync : STD_LOGIC;
    SIGNAL video_on : STD_LOGIC;
    SIGNAL video_on_v : STD_LOGIC;
    SIGNAL video_on_h : STD_LOGIC;
    SIGNAL h_count : integer range 0 to 1024;
    SIGNAL v_count : integer range 0 to 1024;


    -- 123MHz HPOS consists of Visible area (1400) + FP (88) + Sync Pulse (152) + BP (240)
    -- 25MHz HPOS consists of Visible area (640) + FP (16) + Sync Pulse (96) + BP (48)
    signal HPOS :  integer range 0 to 800 := 0;
    -- VPOS consists of Visible area (1050) + FP (1) + Sync Pulse (3) + BP (33)
    -- 25MHz VPOS consists of Visible area (480) + FP (10) + Sync Pulse (2) + BP (33)
    signal VPOS :  integer range 0 to 525 := 0;
	signal counter : integer range 0 to 4 := 0;
	-- signal counter2 : integer range 0 to 4 := 0;

    -- type State is (Red, Green, Blue, White, Black);
    -- signal state : State := W;
    signal red, green, blue : std_logic;
    signal b_led1, b_led2, b_led3, b_led4 : std_logic;
begin
    video_on <= video_on_h AND video_on_v;
    HSYNC <= horiz_sync;
    VSYNC <= vert_sync;

    process(i_clk)
    begin
        
        if rising_edge(i_clk) then
			if h_count = 320 or v_count = 240 then
                red <= '1';
                green <= '0';
                blue <= '0';
            elsif h_count = 240 or v_count = 320 then
                red <= '0';
                green <= '1';
                blue <= '0';
            else
                red <= '1';
                green <= '1';
                blue <= '1';
            end if;
				
            if (h_count = TH - 1) then
                h_count <= 0;
            else
                h_count <= h_count + 1;
            end if;

            if (h_count <= THB2 - 1) and (h_count >= THB1 - 1) then
                horiz_sync <= '0';
            else 
                horiz_sync <= '1';
            end if;

            if (v_count >= TV - 1) and h_count >= 699 then
                v_count <= 0;
            elsif (h_count = 699) then
                v_count <= v_count + 1;
            end if;

            IF ( v_count <= TVB2-1 ) AND ( v_count >= TVB1-1 ) THEN
                vert_sync <= '0';
            ELSE
                vert_sync <= '1';
            END IF;
            
            IF ( h_count <= THD-1 ) THEN
                video_on_h <= '1';
                -- o_pixel_column <= h_count;
            ELSE
                video_on_h <= '0';
            END IF;

            IF ( v_count <= TVD-1 ) THEN
                video_on_v <= '1';
                -- o_pixel_row <= v_count;
            ELSE
                video_on_v <= '0';
            END IF;
            

            -- ----------------------------------------------------------------------------------------------------------------------- --

            -- Center is measured by HPOS or VPOS divided by 2 then summed with their respective FP, BP, and Sync Pulse
            -- if HPOS = 480 or VPOS = 285 then
            --     -- (others => '0')
            --     R <= '0';
            --     G <= '0';
            --     B <= '0';
            -- else
            --     R <= '1';
            --     G <= '1';
            --     B <= '1';
            -- end if;
            -- if HPOS < 800 then
            --     HPOS <= HPOS + 1;
            -- else
            --     HPOS <= 0;
            --     if VPOS < 525 then
            --         VPOS <= VPOS + 1;
            --     else
            --         VPOS <= 0;
            --     end if;
            -- end if;
            -- -- If HPOS is greater than FP and less than FP + Sync Pulse
            -- if HPOS > 16 and HPOS < 112 then
            --     HSYNC <= '1';
            -- else
            --     HSYNC <= '0';
            -- end if;
            -- -- If VPOS is greater than FP and less than FP + Sync Pulse
            -- if VPOS > 10 and HPOS < 12 then
            --     VSYNC <= '1';
            -- else
            --     VSYNC <= '0';
            -- end if;
            -- -- If HPOS is greater than 0 and less than FP + Sync Pulse + BP
            -- -- OR VPOS is greater than 0 and less than FP + Sync Pulse + BP
            -- if (HPOS > 0 and HPOS < 160) or (VPOS > 0 and VPOS < 45) then
            --     R <= '0';
            --     G <= '0';
            --     B <= '0';
            -- end if;
        end if;
        led1 <= b_led1 and '0';
        led2 <= b_led2 and '0';
        led3 <= b_led3 and '0';
        led4 <= b_led4 and '0';
        R <= red and video_on;
        G <= green and video_on;
        B <= blue and video_on;
    end process;
end vgasyncprogram;
