library ieee;
use ieee.std_logic_1164.all;

entity clockmodifier is
    port (
        CLKIN_FREQ, CLKOUT_FREQ : in integer;
        CLKIN : in std_logic;
        CLKOUT : out std_logic
    );
end clockmodifier;

architecture behavior of clockmodifier is
    signal counter : integer := 0;
    signal clk_out_intem : std_logic := '0';
begin
    process(CLKIN, counter)
    begin
        if rising_edge(CLKIN) then
            counter <= counter + 1;
            if (counter = (CLKIN_FREQ / (2*CLKOUT_FREQ)) - 1) then
                counter <= 0;
                clk_out_intem <= not clk_out_intem;
            end if;
        end if;
        CLKOUT <= clk_out_intem;
    end process;
end behavior;
