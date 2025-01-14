library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;

entity RGB_to_HSL is
    port (
        clk : in std_logic ;
        R : in std_logic_vector(7 downto 0);
        G : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        H : out std_logic_vector(7 downto 0);
        S : out std_logic_vector(7 downto 0);
        L : out std_logic_vector(7 downto 0)
    );
end RGB_to_HSL;

architecture Behavioral of RGB_to_HSL is
    subtype ufixed_range is ufixed(7 downto -4);

    function Max(A, B, C : ufixed_range) return ufixed_range is
    begin
        if A >= B and A >= C then return A;
        elsif B >= C then return B;
        else return C;
        end if;
    end function;

    function Min(A, B, C : ufixed_range) return ufixed_range is
    begin
        if A <= B and A <= C then return A;
        elsif B <= C then return B;
        else return C;
        end if;
    end function;

    --signal debug_max, debug_min, debug_delta, debug_H_temp, debug_S_temp, debug_L_temp : ufixed_range;

begin
    process(clk)
        variable Rf_var, Gf_var, Bf_var : ufixed_range;
        variable max_var, min_var, delta_var : ufixed_range;
        variable L_temp_var, S_temp_var, H_temp_var : ufixed_range;
    begin
        if rising_edge(clk) then
            -- Konversi RGB ke ufixed
            Rf_var := divide(to_ufixed(to_integer(unsigned(R)), 7, -4), to_ufixed(255, 7, -4));
            Gf_var := divide(to_ufixed(to_integer(unsigned(G)), 7, -4), to_ufixed(255, 7, -4));
            Bf_var := divide(to_ufixed(to_integer(unsigned(B)), 7, -4), to_ufixed(255, 7, -4));

            -- Hitung max dan min
            max_var := Max(Rf_var, Gf_var, Bf_var);
            min_var := Min(Rf_var, Gf_var, Bf_var);

            -- Debugging sinyal
            --debug_max <= max_var;
            --debug_min <= min_var;

            -- Lightness
            L_temp_var := divide((max_var + min_var), to_ufixed(2.0, 7, -4));
            --debug_L_temp <= L_temp_var;

            -- Saturation
            delta_var := max_var - min_var;
            --debug_delta <= delta_var;

            if delta_var = to_ufixed(0, 7, -4) then
                S_temp_var := to_ufixed(0, 7, -4);
            else
                if L_temp_var < to_ufixed(0.5, 7, -4) then
                    S_temp_var := divide(delta_var, (max_var + min_var));
                else
                    S_temp_var := divide(delta_var, (to_ufixed(1, 7, -4) - (to_ufixed(2, 7, -4) * L_temp_var - to_ufixed(1, 7, -4))));
                end if;
            end if;
            --debug_S_temp <= S_temp_var;

            -- Hue
            if delta_var = to_ufixed(0, 7, -4) then
                H_temp_var := to_ufixed(0, 7, -4);
            else
                if max_var = Rf_var then
                    H_temp_var := to_ufixed(60, 7, -4) * divide((Gf_var - Bf_var), delta_var);
                elsif max_var = Gf_var then
                    H_temp_var := to_ufixed(60, 7, -4) * (to_ufixed(2.0, 7, -4) + divide((Bf_var - Rf_var), delta_var));
                else
                    H_temp_var := to_ufixed(60, 7, -4) * (to_ufixed(4.0, 7, -4) + divide((Rf_var - Gf_var), delta_var));
                end if;
            end if;

            if H_temp_var < to_ufixed(0, 7, -4) then
                H_temp_var := H_temp_var + to_ufixed(360, 7, -4);
            end if;
            --debug_H_temp <= H_temp_var;

            -- Assign ke signal
            H <= std_logic_vector(to_unsigned(to_integer(H_temp_var * to_ufixed(255 / 360, 7, -4)), 8));
            S <= std_logic_vector(to_unsigned(to_integer(S_temp_var * to_ufixed(100, 7, -4)), 8));
            L <= std_logic_vector(to_unsigned(to_integer(L_temp_var * to_ufixed(100, 7, -4)), 8));

        end if;
    end process;
end Behavioral;
