library ieee;
use ieee.std_logic_1164.all;

package k_pkg is
    type rgbmatrix is array (0 to 2, 0 to 2) of integer;
    type imgmatrix is array (integer range <>, integer range <>) of rgbmatrix;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.k_pkg.all;

entity matrixexpander is
    generic(
        FINAL_WIDTH     : integer := 640;
        FINAL_HEIGHT    : integer := 480
    );
    port (
        i_clk               : in std_logic;
        i_reset             : in std_logic; 
        ORIGINAL_WIDTH      : in integer;
        ORIGINAL_HEIGHT     : in integer;
        ORIGINAL_IMAGE      : in imgmatrix(0 to 99, 0 to 99);
        FINAL_IMAGE         : out imgmatrix(0 to 639, 0 to 479)
    );
end matrixexpander;

architecture rtl of matrixexpander is
    signal WIDTH_RATIO : integer;
    signal HEIGHT_RATIO : integer;    
    signal RATIO : integer;
    signal EXPECTED_WIDTH : integer;
    signal EXPECTED_HEIGHT : integer;
    signal CENTER_WIDTH : integer;
    signal CENTER_HEIGHT : integer;
	 signal ORIGINAL_HEIGHT_NOW : integer;
	 signal ORIGINAL_WIDTH_NOW : integer;
    signal TEMP_IMAGE : imgmatrix(0 to 639, 0 to 479);
	 
	 type state_type is (IDLE, SCALE, FINISH);
	 signal state : state_type := IDLE;
	 signal i, j : integer := 0;
	 
begin
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            case state is
                when IDLE => 
                    WIDTH_RATIO <= FINAL_WIDTH / ORIGINAL_WIDTH;
                    HEIGHT_RATIO <= FINAL_HEIGHT/ ORIGINAL_HEIGHT;

                    if ((WIDTH_RATIO * ORIGINAL_WIDTH) <= FINAL_WIDTH and 
                        (WIDTH_RATIO * ORIGINAL_HEIGHT) <= FINAL_HEIGHT) then
                            RATIO <= WIDTH_RATIO;
                    else 
                            RATIO <= HEIGHT_RATIO;
                    end if;
                        
                    EXPECTED_WIDTH <= RATIO * ORIGINAL_WIDTH;
                    EXPECTED_HEIGHT <= RATIO * ORIGINAL_HEIGHT;
                    
                    CENTER_WIDTH <= (FINAL_WIDTH - EXPECTED_WIDTH)/2;
                    CENTER_HEIGHT <= (FINAL_HEIGHT - EXPECTED_HEIGHT)/2;

                    state <= SCALE;
                when SCALE =>
                    if i < FINAL_HEIGHT then
                        if j < FINAL_WIDTH then
                            ORIGINAL_HEIGHT_NOW <= i / RATIO;
                            ORIGINAL_WIDTH_NOW <= j / RATIO;
                            if (i >= CENTER_HEIGHT and i < CENTER_HEIGHT + EXPECTED_HEIGHT and
                                j >= CENTER_WIDTH and j < CENTER_WIDTH + EXPECTED_WIDTH) then
                                    TEMP_IMAGE(i, j) <= ORIGINAL_IMAGE(ORIGINAL_HEIGHT_NOW, ORIGINAL_WIDTH_NOW);
                            else
                                    TEMP_IMAGE(i, j) <= (
                                        (0, 0, 0),
                                        (0, 0, 0),
                                        (0, 0, 0)
                                    );
									end if;
									 j <= j + 1;
                        else
                            j <= 0;
                            i <= i + 1;
                        end if;
                    else
                        state <= FINISH;
                    end if;

                when FINISH =>
                    FINAL_IMAGE <= TEMP_IMAGE;
                    state <= IDLE;
            end case;
        end if;
    end process;
end rtl;