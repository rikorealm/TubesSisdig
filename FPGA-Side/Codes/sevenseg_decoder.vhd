library ieee;
use ieee.std_logic_1164.all;

entity sevenseg_decoder is
    port (
        i_ascii : in std_logic_vector(7 downto 0);
        o_sevenseg : buffer std_logic_vector(6 downto 0)
    );
end sevenseg_decoder;

architecture behavior of sevenseg_decoder is
    -- constant ZERO : integer    := 0;
    -- constant ONE : integer     := 1;
    -- constant TWO : integer     := 2;
    -- constant THREE : integer   := 3;
    -- constant FOUR : integer    := 4;
    -- constant FIVE : integer    := 5;
    -- constant SIX : integer     := 6;
    -- constant SEVEN : integer   := 7;
    -- constant EIGHT : integer   := 8;
    -- constant NINE : integer    := 9;
    constant ZERO : std_logic_vector(7 downto 0)    := "00110000";
    constant ONE : std_logic_vector(7 downto 0)     := "00110001";
    constant TWO : std_logic_vector(7 downto 0)     := "00110010";
    constant THREE : std_logic_vector(7 downto 0)   := "00110011";
    constant FOUR : std_logic_vector(7 downto 0)    := "00110100";
    constant FIVE : std_logic_vector(7 downto 0)    := "00110101";
    constant SIX : std_logic_vector(7 downto 0)     := "00110110";
    constant SEVEN : std_logic_vector(7 downto 0)   := "00110111";
    constant EIGHT : std_logic_vector(7 downto 0)   := "00111000";
    constant NINE : std_logic_vector(7 downto 0)    := "00111001";
    -- constant A : std_logic_vector(7 downto 0) := "01010";
    -- constant E : std_logic_vector(7 downto 0) := "01011";
    -- constant I : std_logic_vector(7 downto 0) := "01100";
    -- constant N : std_logic_vector(7 downto 0) := "01101";
    -- constant O : std_logic_vector(7 downto 0) := "01110";
    -- constant P : std_logic_vector(7 downto 0) := "01111";
    -- constant R : std_logic_vector(7 downto 0) := "10000";
    -- constant S : std_logic_vector(7 downto 0) := "10001";
    -- constant T : std_logic_vector(7 downto 0) := "10010";
    -- constant U : std_logic_vector(7 downto 0) := "10011";
    constant DASH : std_logic_vector(7 downto 0) := "00101111";
begin
    process(i_ascii)
    begin
        case i_ascii is
            when ZERO => o_sevenseg <= "0000001";
            when ONE => o_sevenseg <= "1001111";
            when TWO => o_sevenseg <= "0010010";
            when THREE => o_sevenseg <= "0000110";
            when FOUR => o_sevenseg <= "1001100";
            when FIVE => o_sevenseg <= "0100100";
            when SIX => o_sevenseg <= "0100000";
            when SEVEN => o_sevenseg <= "0001111";
            when EIGHT => o_sevenseg <= "0000000";
            when NINE => o_sevenseg <= "0000100";
            -- when A => o_sevenseg <= "0001000";
            -- when E => o_sevenseg <= "0110000";
            -- when I => o_sevenseg <= "1001111";
            -- when N => o_sevenseg <= "0001001";
            -- when O => o_sevenseg <= "0000001";
            -- when P => o_sevenseg <= "0011000";
            -- when R => o_sevenseg <= "0111001";
            -- when S => o_sevenseg <= "0100100";
            -- when T => o_sevenseg <= "1110000";
            -- when U => o_sevenseg <= "1000001";
            when others => o_sevenseg <= "1111111";
            end case;
    end process;
end behavior;
