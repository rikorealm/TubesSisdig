library ieee;
use ieee.std_logic_1164.all;

entity counter is
    port (
        clk : in std_logic;
        a : out integer range 0 to 10 := 0;
        b : out integer range 0 to 11 := 0
    );
end counter;

architecture behavior of counter is
    signal k : integer range 0 to 11 := 2;
    signal count : integer range 0 to 11 := 0;
begin
    increment : process(clk) 
    begin
        if rising_edge(clk) then
            if count <= 10 then
                count <= count + 1;
            else
                count <= 0;
                k <= k + 1;
            end if;
            a <= count + k;
            b <= count;
        end if;
    end process;
end architecture;