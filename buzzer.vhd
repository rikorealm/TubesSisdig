library ieee;
use ieee.std_logic_1164.all;

entity buzzer is
    port (
        freq : in std_logic;
        led : out std_logic;
        o_buzz : buffer std_logic
    );
end buzzer;

architecture behavior of buzzer is
    signal state : std_logic := '0';
begin
    process(freq)
    begin
        if rising_edge(freq) then
            state <= not state;
        end if;
        led <= '0';
        o_buzz <= state;
    end process;
end behavior;