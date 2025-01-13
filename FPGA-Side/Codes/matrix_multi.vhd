library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package matrix_multiplier_pkg is
    type matrix is array (natural range <>, natural range <>) of std_logic_vector (7 downto 0);
    type matrix_result is array (natural range <>, natural range <>) of std_logic_vector (7 downto 0);
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.matrix_multiplier_pkg.all;

entity matrix_multi is
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

architecture behavior of matrix_multi is


begin
    process (clk)
    variable temp_result : unsigned (15 downto 0);
    variable value_result : integer;
    begin
        if rising_edge(clk) then 
            for i in 0 to size_A_row-1 loop
                for j in 0 to size_B_col-1 loop
                    temp_result := (others => '0'); -- Inisialisasi ulang
                        for k in 0 to size_A_col-1 loop
                            temp_result := temp_result + (unsigned(data_A(i, k)) * unsigned(data_B(k, j)));
                            value_result := to_integer(temp_result);
                            if value_result > 255 then
                                temp_result := to_unsigned(255,16) ;
                            end if;
                        end loop;
                    result(i, j) <= std_logic_vector(temp_result(7 downto 0));
                end loop;
            end loop;
        end if;
    end process;
end behavior;