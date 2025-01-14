library ieee;
use ieee.std_logic.all;

entity counter is
    port (
        clk : in std_logic;
        a : in integer range 0 to 10 := 0;
        b : out integer range 0 to 11 := 0
    );
end counter;

architecture behavior of counter is
    signal count : integer range 0 to 11 := 0;
begin
    increment : process(clk) 
    begin
        if rising_edge(clk) then
            if count <= 10 then
                count <= count + 1;
                a <= a + count;
            else
                count <= 0;
            end if;
            b <= count;
        end if;
    end process;
end architecture;