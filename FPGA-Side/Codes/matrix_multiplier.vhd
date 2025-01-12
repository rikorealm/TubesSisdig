library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package matrix_multiplier_pkg is
    type matrix is array (natural range <>, natural range <>) of std_logic_vector (7 downto 0);
    type matrix_result is array (natural range <>, natural range <>) of std_logic_vector (15 downto 0);

end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.matrix_multiplier_pkg.all;
entity matrix_multiplier is
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
end entity;

architecture behavior of matrix_multiplier is

signal temp_data_A : matrix (0 to size_A_row-1, 0 to size_A_col-1);

signal H_temp, S_temp, L_temp : std_logic_vector(7 downto 0);

component RGB_to_HSL
    port(
        R : in std_logic_vector(7 downto 0); -- Red channel (8-bit)
        G : in std_logic_vector(7 downto 0); -- Green channel (8-bit)
        B : in std_logic_vector(7 downto 0); -- Blue channel (8-bit)
        H : out std_logic_vector(7 downto 0); -- Hue (9-bit, range 0-360)
        S : out std_logic_vector(7 downto 0); -- Saturation (7-bit, range 0-100)
        L : out std_logic_vector(7 downto 0)  -- Lightness (7-bit, range 0-100)
    );
end component;

begin

    process (clk)
        variable temp_result : unsigned (15 downto 0);
    begin
        if rising_edge(clk) then
            -- Perkalian matriks
            for i in 0 to size_A_row-1 loop
                for j in 0 to size_B_col-1 loop
                    temp_result := (others => '0'); -- Inisialisasi ulang
                    for k in 0 to size_A_col-1 loop
                        temp_result := temp_result + 
                                       unsigned(temp_data_A(i, k)) * unsigned(data_B(k, j));
                    end loop;
                    result(i, j) <= std_logic_vector(temp_result);
                end loop;
            end loop;
        end if;
    end process;

            
    RGB_to_HSL_inst : RGB_to_HSL
    port map (
            R => data_A(0, 0), G => data_A(1, 1), B => data_A(2, 2), H => H_temp, S => S_temp, L => L_temp
            );

             -- Simpan hasil konversi ke matriks sementara
            temp_data_A(0, 0) <= H_temp; -- Baris 1: Hue
            temp_data_A(0, 1) <= "00000000"; -- Baris 1: Hue
            temp_data_A(0, 2) <= "00000000"; -- Baris 1: Hue
            temp_data_A(1, 0) <= "00000000"; -- Baris 2: Saturation
            temp_data_A(1, 1) <= S_temp; -- Baris 2: Saturation
            temp_data_A(1, 2) <= "00000000"; -- Baris 2: Saturation
            temp_data_A(2, 0) <= "00000000"; -- Baris 3: Lightness
            temp_data_A(2, 1) <= "00000000"; -- Baris 3: Lightness
            temp_data_A(2, 2) <= L_temp; -- Baris 3: Lightness
end behavior;


