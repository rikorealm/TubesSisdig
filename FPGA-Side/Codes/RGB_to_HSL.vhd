library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RGB_to_HSL is
    port (
        R : in std_logic_vector(7 downto 0); -- Red channel (8-bit)
        G : in std_logic_vector(7 downto 0); -- Green channel (8-bit)
        B : in std_logic_vector(7 downto 0); -- Blue channel (8-bit)
        H : out std_logic_vector(7 downto 0); -- Hue (9-bit, range 0-360)
        S : out std_logic_vector(7 downto 0); -- Saturation (7-bit, range 0-100)
        L : out std_logic_vector(7 downto 0)  -- Lightness (7-bit, range 0-100)
    );
end RGB_to_HSL;

architecture Behavioral of RGB_to_HSL is
begin
    process(R, G, B)
        variable R_int, G_int, B_int : integer;
        variable max_val, min_val : integer;
        variable delta : integer;
        variable H_temp, S_temp, L_temp : integer;
    begin
        -- Convert RGB inputs from std_logic_vector to integer
        R_int := to_integer(unsigned(R));
        G_int := to_integer(unsigned(G));
        B_int := to_integer(unsigned(B));

        -- Find maximum and minimum of R_int, G_int, B_int
        max_val := R_int;
        if G_int > max_val then
            max_val := G_int;
        end if;
        if B_int > max_val then
            max_val := B_int;
        end if;

        min_val := R_int;
        if G_int < min_val then
            min_val := G_int;
        end if;
        if B_int < min_val then
            min_val := B_int;
        end if;

        -- Calculate Lightness
        L_temp := (max_val + min_val) * 50 / 255;

        -- Calculate Saturation
        delta := max_val - min_val;
        if delta = 0 then
            S_temp := 0; -- Grayscale, no saturation
        else
            if L_temp <= 50 then
                S_temp := (delta * 100) / (max_val + min_val);
            else
                S_temp := (delta * 100) / (510 - max_val - min_val);
            end if;
        end if;

        -- Calculate Hue
        if delta = 0 then
            H_temp := 0; -- Grayscale, no hue
        else
            if max_val = R_int then
                H_temp := (60 * (G_int - B_int) / delta) mod 360;
            elsif max_val = G_int then
                H_temp := (60 * (2 + (B_int - R_int) / delta)) mod 360;
            else
                H_temp := (60 * (4 + (R_int - G_int) / delta)) mod 360;
            end if;
            if H_temp < 0 then
                H_temp := H_temp + 360;
            end if;
        end if;

        H_temp := H_temp * 100 / 360;

        -- Convert HSL values to std_logic_vector format
        H <= std_logic_vector(to_unsigned(H_temp, H'length));
        S <= std_logic_vector(to_unsigned(S_temp, S'length));
        L <= std_logic_vector(to_unsigned(L_temp, L'length));
    end process;
end Behavioral;