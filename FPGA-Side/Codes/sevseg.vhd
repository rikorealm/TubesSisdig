-- library ieee;
-- use ieee.std_logic_1164.all;

-- package sevseg_pkg is
--         type sevsegdata_arr is array(natural range <>) of integer;
-- end package;

library ieee;
use ieee.std_logic_1164.all;
use work.all_pkg.all;

entity sevensegment is
    port (
        -- binary_data : in std_logic_vector(7 downto 0);
        i_clk : in std_logic;
        data : in sevsegdata_arr;
        dig : out std_logic_vector(3 downto 0) := "1111";
        sevseg : out std_logic_vector(6 downto 0) := "1111111"
    );
end sevensegment;

architecture sevsegmentrtl of sevensegment is
    constant ZERO : integer    := 0;-- "00110000";
    constant ONE : integer     := 1;-- "00110001";
    constant TWO : integer     := 2;-- "00110010";
    constant THREE : integer   := 3;-- "00110011";
    constant FOUR : integer    := 4;-- "00110100";
    constant FIVE : integer    := 5;-- "00110101";
    constant SIX : integer     := 6;-- "00110110";
    constant SEVEN : integer   := 7;-- "00110111";
    constant EIGHT : integer   := 8;-- "00111000";
    constant NINE : integer    := 9;-- "00111001";

    -- type arr is array (0 to 3) of integer;
    -- constant seg : arr := (9, 4, 6, 3);

    signal counter : integer := 1;
    signal curr_val : integer := 0;
begin
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if counter = 1 then
                dig <= "1110";
                curr_val <= data(3);
            elsif counter = 2 then
                dig <= "1101";
                curr_val <= data(2);
            elsif counter = 3 then
                dig <= "1011";
                curr_val <= data(1);
            elsif counter = 4 then
                dig <= "0111";
                curr_val <= data(0);
            end if;
            -- dig <= "1110";
            -- curr_val <= seg(0);
            if not (counter = 4) then
                counter <= counter + 1;
            else
                counter <= 1;
            end if;
        end if;
        case curr_val is
            when ZERO => sevseg <= "0000001";
            when ONE => sevseg <= "1001111";
            when TWO => sevseg <= "0010010";
            when THREE => sevseg <= "0000110";
            when FOUR => sevseg <= "1001100";
            when FIVE => sevseg <= "0100100";
            when SIX => sevseg <= "0100000";
            when SEVEN => sevseg <= "0001111";
            when EIGHT => sevseg <= "0000000";
            when NINE => sevseg <= "0000100";
            when others => sevseg <= "1111111";
        end case;
    end process;    
end sevsegmentrtl;