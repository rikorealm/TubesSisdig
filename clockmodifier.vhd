library ieee;
use ieee.std_logic_1164.all;

entity clockmodifier is
    port (
        CLKIN_FREQ : integer;
        CLKOUT_FREQ : integer;
        Clk_in : in std_logic;
        Clk_out : out std_logic
    );
end clockmodifier;

architecture behavior of clockmodifier is
    signal counter : integer := 0;
    signal clk_out_intem : std_logic := '0';
begin
    process(Clk_in, counter)
    begin
        if rising_edge(Clk_in) then
            counter <= counter + 1;
            if (counter = (CLKIN_FREQ / (2*CLKOUT_FREQ)) - 1) then
                counter <= 0;
                clk_out_intem <= not clk_out_intem;
            end if;
        end if;
        Clk_out <= clk_out_intem;
    end process;
end behavior;
