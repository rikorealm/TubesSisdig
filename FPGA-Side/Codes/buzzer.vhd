library ieee;
use ieee.std_logic_1164.all;

entity buzzer is
    port (
        en : in boolean;
        note_clk : in std_logic;
        buzz : buffer std_logic
    );
end buzzer;

architecture behavior of buzzer is
    signal state : std_logic := '0';
begin
    process(note_clk, en)
    begin
        if (rising_edge(note_clk) and en) then
            state <= not state;
        end if;
        buzz <= state;
    end process;
end behavior;