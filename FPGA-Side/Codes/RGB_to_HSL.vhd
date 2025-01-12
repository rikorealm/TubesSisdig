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

function Max(A :real; B: real) return real is
begin 
    if A >= B then 
        return A;
    else 
        return B;
    end if;
end function;

function Min(A :real; B: real) return real is
begin 
    if A <= B then 
        return A;
    else 
        return B;
    end if;
end function;



begin
    process(R, G, B)
        -- Intermediate variables
        variable Rf, Gf, Bf :real;
        variable max_val, min_val :real;
        variable delta :real;
        variable H_temp, S_temp, L_temp :real;
    begin
        -- Convert RGB inputs from std_logic_vector to real [0, 1]
        Rf := real(to_integer(unsigned(R))) / 255.0;
        Gf := real(to_integer(unsigned(G))) / 255.0;
        Bf := real(to_integer(unsigned(B))) / 255.0;

        -- Find maximum and minimum of Rf, Gf, Bf
        max_val := Max(Rf, Max(Gf,Bf));
        min_val := Min(Rf, Min(Gf, Bf));

        -- Calculate Lightness
        L_temp := (max_val + min_val) / 2.0;

        -- Calculate Saturation
        delta := max_val - min_val ;
        if delta = 0.0 then
            S_temp := 0.0; -- Grayscale, no saturation
        else
            if L_temp < 0.5 then
                S_temp := delta  / (max_val + min_val);
            else
                S_temp := delta  / (1.0 - (2.0*L_temp -1.0));
            end if;
        end if;

        -- Calculate Hue
        if max_val = min_val then
            H_temp := 0.0; -- Grayscale, no hue
        else
            if max_val = Rf then
                H_temp := 60.0 * ((Gf - Bf)/delta);
            elsif max_val = Gf then
                H_temp := 60.0 * (2.0 + (Bf - Rf) / delta );
            else
                H_temp := 60.0 * (4.0 + (Rf - Gf) / delta );
            end if;
        end if;

        -- Normalize Hue to range [0, 360]
        if H_temp < 0.0 then
            H_temp := H_temp + 360.0;
        end if;

        -- Convert HSL values to std_logic_vector format
        H <= std_logic_vector(to_unsigned(integer(H_temp / 360.0 * 100.0), H'length));
        S <= std_logic_vector(to_unsigned(integer(S_temp * 100.0), S'length));
        L <= std_logic_vector(to_unsigned(integer(L_temp * 100.0), L'length));
    end process;
end Behavioral;
