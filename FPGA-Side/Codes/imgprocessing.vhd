library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity img_proc is
    port(
        i_clk : in std_logic;
        i_data : in img_mem;
        k : in integer;
        img_received : in std_logic;
        o_data : out img_mem;
        processing : out std_logic := '0'
    );
end img_proc;

architecture rtl of img_proc is
    component matrix_multiplier is
        generic (
            size_A_row : integer := 3; -- Baris matriks A
            size_A_col, size_B_row : integer := 3; -- Kolom matriks A dan Baris matriks B
            size_B_col : integer := 1  -- Kolom matriks B
        );
        Port (
            clk : in std_logic ;
            data_A : in matrix (0 to size_A_row-1, 0 to size_A_col-1);
            data_B : in matrix (0 to size_B_row-1, 0 to size_B_col-1);
            result : out matrix_result (0 to size_A_row-1, 0 to size_B_col-1)
        );
    end component matrix_multiplier;

    -- type procpix is array(0 to 2, 0 to 2) of std_logic_vector(15 downto 0);
    signal curr_pixel : matrix(0 to 2, 0 to 2);
    signal processed_pixel : matrix_result(0 to 2, 0 to 0);
    signal pixelcounter : integer range -1 to 66 := -1;
    signal temp_img : img_mem;
    signal B_matrix : matrix(0 to 2, 0 to 0) := (others => (others => std_logic_vector(to_unsigned(2, 8))));
    signal is_firstrun : std_logic := '1';
    signal processing_done : std_logic := '0';
    
begin
    multiplier : matrix_multiplier port map(
        i_clk,
        curr_pixel,
        B_matrix,
        processed_pixel
    );

    getPixel : process(i_clk, i_data, processing_done)
    begin
        if rising_edge(i_clk) then
            if img_received = '1' and processing_done = '0' then
                if (pixelcounter < 66) then
                    is_firstrun <= '0';

                    if pixelcounter <= 62 then
                        curr_pixel(0,0) <= i_data(pixelcounter+1)(23 downto 16);
                        curr_pixel(1,1) <= i_data(pixelcounter+1)(15 downto 8);
                        curr_pixel(2,2) <= i_data(pixelcounter+1)(7 downto 0);
                    end if;

                    if pixelcounter <= 65 then
                        pixelcounter <= pixelcounter + 1;
                        if pixelcounter <= 64 then
                            if is_firstrun = '0' then
                                temp_img(pixelcounter-1) <= processed_pixel(0,0)&processed_pixel(1,0)&processed_pixel(2,0);
                            end if;
                        end if;
                    end if;

                else
                    processing_done <= '1';
                end if;
            end if;
        end if;
    end process;
    
    o_data <= temp_img;
    processing <= processing_done;
end rtl;